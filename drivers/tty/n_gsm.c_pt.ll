; ModuleID = '/llk/IR_all_yes/drivers/tty/n_gsm.c_pt.bc'
source_filename = "../drivers/tty/n_gsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.102 }
%union.anon.102 = type { ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.70, %struct.anon.71, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.70 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.71 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gsm_mux = type { ptr, %struct.spinlock, %struct.mutex, i32, %struct.kref, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i8, i32, i8, i8, i8, ptr, ptr, i32, i32, i32, i8, [64 x ptr], i8, %struct.spinlock, i32, %struct.list_head, %struct.timer_list, i32, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gsm_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gsm_dlci = type { ptr, i32, i32, %struct.mutex, i32, %struct.spinlock, %struct.timer_list, i32, %struct.tty_port, %struct.kfifo, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.sk_buff_head, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.69, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.69 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kfifo = type { %union.anon.123, [0 x i8] }
%union.anon.123 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.gsm_control = type { i8, ptr, i32, i32, i32 }
%struct.gsm_msg = type { %struct.list_head, i8, i8, i32, ptr, [0 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gsm_netconfig = type { i32, i16, i16, [16 x i8], [28 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.108, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.108 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@__param_str_debug = internal constant [12 x i8] c"n_gsm.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.102 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype354 = internal constant [25 x i8] c"n_gsm.parmtype=debug:int\00", section ".modinfo", align 1
@tty_ldisc_packet = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 21, ptr @gsmld_open, ptr @gsmld_close, ptr @gsmld_flush_buffer, ptr @gsmld_read, ptr @gsmld_write, ptr @gsmld_ioctl, ptr null, ptr null, ptr @gsmld_poll, ptr null, ptr @gsmld_receive_buf, ptr @gsmld_write_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@gsm_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_n_gsm__374_3373_gsm_init6 = internal global ptr @gsm_init, section ".initcall6.init", align 4
@__exitcall_gsm_exit = internal global ptr @gsm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file375 = internal constant [29 x i8] c"n_gsm.file=drivers/tty/n_gsm\00", section ".modinfo", align 1
@__UNIQUE_ID_license376 = internal constant [18 x i8] c"n_gsm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias377 = internal constant [25 x i8] c"n_gsm.alias=tty-ldisc-21\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"n_gsm\00", [26 x i8] zeroinitializer }, align 32
@gsm_alloc_mux.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&gsm->lock\00", [21 x i8] zeroinitializer }, align 32
@gsm_alloc_mux.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gsm->mutex\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gsm_activate_mux.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&gsm->t2_timer)\00", [47 x i8] zeroinitializer }, align 32
@gsm_activate_mux.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gsm->event\00", [20 x i8] zeroinitializer }, align 32
@gsm_activate_mux.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&gsm->control_lock\00", [45 x i8] zeroinitializer }, align 32
@gsm_activate_mux.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&gsm->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@gsm_mux_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.72, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@gsm_mux = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Q> \00", [28 x i8] zeroinitializer }, align 32
@gsm_fcs8 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\91\E3r\07\96\E4u\0E\9F\ED|\09\98\EA{\1C\8D\FFn\1B\8A\F8i\12\83\F1`\15\84\F6g8\A9\DBJ?\AE\DCM6\A7\D5D1\A0\D2C$\B5\C7V#\B2\C0Q*\BB\C9X-\BC\CE_p\E1\93\02w\E6\94\05~\EF\9D\0Cy\E8\9A\0Bl\FD\8F\1Ek\FA\88\19b\F3\81\10e\F4\86\17H\D9\AB:O\DE\AC=F\D7\A54A\D0\A23T\C5\B7&S\C2\B0!Z\CB\B9(]\CC\BE/\E0q\03\92\E7v\04\95\EE\7F\0D\9C\E9x\0A\9B\FCm\1F\8E\FBj\18\89\F2c\11\80\F5d\16\87\D8I;\AA\DFN<\AD\D6G5\A4\D1@2\A3\C4U'\B6\C3R \B1\CA[)\B8\CD\\.\BF\90\01s\E2\97\06t\E5\9E\0F}\EC\99\08z\EB\8C\1Do\FE\8B\1Ah\F9\82\13a\F0\85\14f\F7\A89K\DA\AF>L\DD\A67E\D4\A10B\D3\B4%W\C6\B3\22P\C1\BA+Y\C8\BD,^\CF", [64 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016%s %d) %c: \00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gsm_print_packet\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/tty/n_gsm.c\00", [44 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr = internal global ptr @gsm_print_packet._entry, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RC\00", [29 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.14, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cSABM\00", [25 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.18 = internal global ptr @gsm_print_packet._entry.16, section ".printk_index", align 4
@gsm_print_packet._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.14, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01cUA\00", [27 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.21 = internal global ptr @gsm_print_packet._entry.19, section ".printk_index", align 4
@gsm_print_packet._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.14, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cDISC\00", [25 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.24 = internal global ptr @gsm_print_packet._entry.22, section ".printk_index", align 4
@gsm_print_packet._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.14, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01cDM\00", [27 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.27 = internal global ptr @gsm_print_packet._entry.25, section ".printk_index", align 4
@gsm_print_packet._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.14, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01cUI\00", [27 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.30 = internal global ptr @gsm_print_packet._entry.28, section ".printk_index", align 4
@gsm_print_packet._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.14, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01cUIH\00", [26 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.33 = internal global ptr @gsm_print_packet._entry.31, section ".printk_index", align 4
@gsm_print_packet._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.13, ptr @.str.14, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01cI N(S)%d N(R)%d\00", [46 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.36 = internal global ptr @gsm_print_packet._entry.34, section ".printk_index", align 4
@gsm_print_packet._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.13, ptr @.str.14, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cRR(%d)\00", [23 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.39 = internal global ptr @gsm_print_packet._entry.37, section ".printk_index", align 4
@gsm_print_packet._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.13, ptr @.str.14, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cRNR(%d)\00", [22 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.42 = internal global ptr @gsm_print_packet._entry.40, section ".printk_index", align 4
@gsm_print_packet._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.13, ptr @.str.14, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cREJ(%d)\00", [22 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.45 = internal global ptr @gsm_print_packet._entry.43, section ".printk_index", align 4
@gsm_print_packet._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.13, ptr @.str.14, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c[%02X]\00", [23 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.48 = internal global ptr @gsm_print_packet._entry.46, section ".printk_index", align 4
@gsm_print_packet._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.13, ptr @.str.14, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c(P)\00", [26 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.51 = internal global ptr @gsm_print_packet._entry.49, section ".printk_index", align 4
@gsm_print_packet._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.13, ptr @.str.14, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c(F)\00", [26 x i8] zeroinitializer }, align 32
@gsm_print_packet._entry_ptr.54 = internal global ptr @gsm_print_packet._entry.52, section ".printk_index", align 4
@gsm_print_packet.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.14, ptr @.str.55, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@gsm_data_kick.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.14, ptr @.str.58, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gsm_data_kick\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsm_data_kick: \00", [16 x i8] zeroinitializer }, align 32
@gsmld_output.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.14, ptr @.str.60, i8 2, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gsmld_output\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gsmld_output: \00", [17 x i8] zeroinitializer }, align 32
@gsm0_receive.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.14, ptr @.str.62, i8 1, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gsm0_receive\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: unhandled state: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@gsm_queue.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.14, ptr @.str.64, i8 1, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gsm_queue\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BAD FCS %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<--\00", [28 x i8] zeroinitializer }, align 32
@addr_open = internal global { [256 x i32], [256 x i8] } zeroinitializer, align 32
@addr_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gsm_queue.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.14, ptr @.str.62, i8 1, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-->\00", [28 x i8] zeroinitializer }, align 32
@gsm_dlci_open.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.14, ptr @.str.68, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gsm_dlci_open\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DLCI %d goes open.\0A\00", [44 x i8] zeroinitializer }, align 32
@gsm_dlci_close.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.14, ptr @.str.70, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gsm_dlci_close\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DLCI %d goes closed.\0A\00", [42 x i8] zeroinitializer }, align 32
@gsm1_receive.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.14, ptr @.str.62, i8 2, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gsm1_receive\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gsm_mux_lock\00", [19 x i8] zeroinitializer }, align 32
@gsm_dlci_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dlci->lock\00", [20 x i8] zeroinitializer }, align 32
@gsm_dlci_alloc.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dlci->mutex\00", [19 x i8] zeroinitializer }, align 32
@gsm_dlci_alloc.__key.76 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&dlci->t1)\00", [20 x i8] zeroinitializer }, align 32
@gsm_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr @gsm_carrier_raised, ptr @gsm_dtr_rts, ptr null, ptr null, ptr @gsm_dlci_free }, [44 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@gsm_dlci_t1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.14, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016DLCI %d opening in ADM mode.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gsm_dlci_t1\00", [20 x i8] zeroinitializer }, align 32
@gsm_dlci_t1._entry_ptr = internal global ptr @gsm_dlci_t1._entry, section ".printk_index", align 4
@gsm_dlci_t1.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.14, ptr @.str.62, i8 1, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gsm_dlci_data.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.14, ptr @.str.82, i8 1, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gsm_dlci_data\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d bytes for tty\0A\00", [46 x i8] zeroinitializer }, align 32
@gsm_destroy_network.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.14, ptr @.str.84, i8 2, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gsm_destroy_network\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"destroy network interface\0A\00", [37 x i8] zeroinitializer }, align 32
@gsm_copy_config_values.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.14, ptr @.str.86, i8 2, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gsm_copy_config_values\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ftype %d i %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@gsmld_receive_buf.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.14, ptr @.str.91, i8 2, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gsmld_receive_buf\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsmld_receive: \00", [16 x i8] zeroinitializer }, align 32
@gsmld_receive_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: unknown flag %d\0A\00", [43 x i8] zeroinitializer }, align 32
@gsm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.14, i32 3329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013n_gsm: can't register line discipline (err = %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gsm_init\00", [23 x i8] zeroinitializer }, align 32
@gsm_init._entry_ptr = internal global ptr @gsm_init._entry, section ".printk_index", align 4
@gsm_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.14, i32 3336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013gsm_init: tty allocation failed.\0A\00", [60 x i8] zeroinitializer }, align 32
@gsm_init._entry_ptr.97 = internal global ptr @gsm_init._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gsmtty\00", [25 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@gsmtty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @gsmtty_install, ptr null, ptr @gsmtty_open, ptr @gsmtty_close, ptr null, ptr @gsmtty_cleanup, ptr @gsmtty_write, ptr null, ptr null, ptr @gsmtty_write_room, ptr @gsmtty_chars_in_buffer, ptr @gsmtty_ioctl, ptr null, ptr @gsmtty_set_termios, ptr @gsmtty_throttle, ptr @gsmtty_unthrottle, ptr null, ptr null, ptr @gsmtty_hangup, ptr @gsmtty_break_ctl, ptr @gsmtty_flush_buffer, ptr null, ptr @gsmtty_wait_until_sent, ptr null, ptr @gsmtty_tiocmget, ptr @gsmtty_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@gsm_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.94, ptr @.str.14, i32 3352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gsm_init: tty registration failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@gsm_init._entry_ptr.101 = internal global ptr @gsm_init._entry.99, section ".printk_index", align 4
@gsm_init.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.14, ptr @.str.102, i8 3, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gsm_init: loaded as %d,%d.\0A\00", [36 x i8] zeroinitializer }, align 32
@gsm_create_network.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.14, ptr @.str.104, i8 2, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gsm_create_network\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"create network interface\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gsm%d\00", [26 x i8] zeroinitializer }, align 32
@gsm_create_network._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.103, ptr @.str.14, i32 2907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013alloc_netdev failed\0A\00", [41 x i8] zeroinitializer }, align 32
@gsm_create_network._entry_ptr = internal global ptr @gsm_create_network._entry, section ".printk_index", align 4
@gsm_create_network.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.14, ptr @.str.107, i8 2, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"register netdev\0A\00", [47 x i8] zeroinitializer }, align 32
@gsm_create_network._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.14, i32 2928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013network register fail %d\0A\00", [36 x i8] zeroinitializer }, align 32
@gsm_create_network._entry_ptr.110 = internal global ptr @gsm_create_network._entry.108, section ".printk_index", align 4
@gsm_mux_net_init.gsm_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @gsm_mux_net_open, ptr @gsm_mux_net_close, ptr @gsm_mux_net_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsm_mux_net_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@gsm_mux_net_open.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.14, ptr @.str.112, i8 2, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gsm_mux_net_open\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@gsm_mux_net_tx_timeout.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.14, ptr @.str.114, i8 2, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gsm_mux_net_tx_timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx timed out.\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1078740737, i64 2147763972, i64 2152482560]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 2, i64 3, i64 5, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 125, i64 126]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.120 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 19]
@__sancov_gen_cov_switch_values.122 = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 15, i64 47, i64 67, i64 99, i64 239]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 9]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 7, i64 17, i64 19]
@__sancov_gen_cov_switch_values.125 = internal global [12 x i64] [i64 10, i64 8, i64 3, i64 15, i64 19, i64 31, i64 63, i64 83, i64 99, i64 115, i64 239, i64 255]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 7, i64 17, i64 19]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 7, i64 17, i64 19]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 7, i64 17, i64 19]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.134 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 4, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 18179, i64 1077167874]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 55, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"tty_ldisc_packet\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2936, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant [15 x i8] c"gsm_tty_driver\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 272, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2939, i32 21 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2292, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2293, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2196, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2197, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2198, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2199, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [13 x i8] c"gsm_mux_lock\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [8 x i8] c"gsm_mux\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 269, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 761, i32 19 }
@___asan_gen_.196 = private unnamed_addr constant [9 x i8] c"gsm_fcs8\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 333, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 466, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 470, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 473, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 476, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 479, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 482, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 485, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 489, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 493, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 496, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 499, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 502, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 507, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 509, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 511, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 701, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2432, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2011, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1812, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1822, i32 19 }
@___asan_gen_.325 = private unnamed_addr constant [10 x i8] c"addr_open\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 275, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant [9 x i8] c"addr_cnt\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 277, i32 12 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 604, i32 19 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1487, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1455, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2088, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 270, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1691, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1692, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1699, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [13 x i8] c"gsm_port_ops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 3013, i32 41 }
@___asan_gen_.373 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1984, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1521, i32 5 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 1608, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2870, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2325, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 174, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2509, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2526, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 3328, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 3336, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 3340, i32 32 }
@___asan_gen_.436 = private unnamed_addr constant [11 x i8] c"gsmtty_ops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 3301, i32 36 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 3352, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 3356, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2899, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2901, i32 12 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2907, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2925, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2928, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant [15 x i8] c"gsm_netdev_ops\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2848, i32 37 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2741, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.485 = private constant [23 x i8] c"../drivers/tty/n_gsm.c\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 2808, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_alias377, ptr @__UNIQUE_ID_debugtype354, ptr @__UNIQUE_ID_file375, ptr @__UNIQUE_ID_license376, ptr @__exitcall_gsm_exit, ptr @__initcall__kmod_n_gsm__374_3373_gsm_init6, ptr @__param_debug, ptr @gsm_create_network._entry, ptr @gsm_create_network._entry.108, ptr @gsm_create_network._entry_ptr, ptr @gsm_create_network._entry_ptr.110, ptr @gsm_dlci_t1._entry, ptr @gsm_dlci_t1._entry_ptr, ptr @gsm_exit, ptr @gsm_init._entry, ptr @gsm_init._entry.95, ptr @gsm_init._entry.99, ptr @gsm_init._entry_ptr, ptr @gsm_init._entry_ptr.101, ptr @gsm_init._entry_ptr.97, ptr @gsm_print_packet._entry, ptr @gsm_print_packet._entry.16, ptr @gsm_print_packet._entry.19, ptr @gsm_print_packet._entry.22, ptr @gsm_print_packet._entry.25, ptr @gsm_print_packet._entry.28, ptr @gsm_print_packet._entry.31, ptr @gsm_print_packet._entry.34, ptr @gsm_print_packet._entry.37, ptr @gsm_print_packet._entry.40, ptr @gsm_print_packet._entry.43, ptr @gsm_print_packet._entry.46, ptr @gsm_print_packet._entry.49, ptr @gsm_print_packet._entry.52, ptr @gsm_print_packet._entry_ptr, ptr @gsm_print_packet._entry_ptr.18, ptr @gsm_print_packet._entry_ptr.21, ptr @gsm_print_packet._entry_ptr.24, ptr @gsm_print_packet._entry_ptr.27, ptr @gsm_print_packet._entry_ptr.30, ptr @gsm_print_packet._entry_ptr.33, ptr @gsm_print_packet._entry_ptr.36, ptr @gsm_print_packet._entry_ptr.39, ptr @gsm_print_packet._entry_ptr.42, ptr @gsm_print_packet._entry_ptr.45, ptr @gsm_print_packet._entry_ptr.48, ptr @gsm_print_packet._entry_ptr.51, ptr @gsm_print_packet._entry_ptr.54, ptr @debug, ptr @tty_ldisc_packet, ptr @gsm_tty_driver, ptr @.str, ptr @gsm_alloc_mux.__key, ptr @.str.1, ptr @gsm_alloc_mux.__key.2, ptr @.str.3, ptr @gsm_activate_mux.__key, ptr @.str.4, ptr @gsm_activate_mux.__key.5, ptr @.str.6, ptr @gsm_activate_mux.__key.7, ptr @.str.8, ptr @gsm_activate_mux.__key.9, ptr @.str.10, ptr @gsm_mux_lock, ptr @gsm_mux, ptr @.str.11, ptr @gsm_fcs8, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @addr_open, ptr @addr_cnt, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @gsm_dlci_alloc.__key, ptr @.str.73, ptr @gsm_dlci_alloc.__key.74, ptr @.str.75, ptr @gsm_dlci_alloc.__key.76, ptr @.str.77, ptr @gsm_port_ops, ptr @skb_queue_head_init.__key, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @gsmtty_ops, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @gsm_mux_net_init.gsm_netdev_ops, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_ldisc_packet to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_alloc_mux.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_alloc_mux.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_activate_mux.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_activate_mux.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_activate_mux.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_activate_mux.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_mux_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_mux to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_fcs8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_print_packet._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_open to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_dlci_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_dlci_alloc.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_dlci_alloc.__key.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_dlci_t1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsmtty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_create_network._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_create_network._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsm_mux_net_init.gsm_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gsm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @tty_ldisc_packet) #16
  %0 = load ptr, ptr @gsm_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #16
  %1 = load ptr, ptr @gsm_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gsm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @tty_ldisc_packet) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %call) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__tty_alloc_driver(i32 noundef 256, ptr noundef null, i32 noundef 44) #16
  store ptr %call2, ptr @gsm_tty_driver, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #19
  %0 = load ptr, ptr @gsm_tty_driver, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %err_unreg_ldisc

if.end11:                                         ; preds = %if.end
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 4
  %2 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.98, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.98, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 7
  %4 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 8
  %5 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 11
  %7 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12
  %8 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %c_lflag = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12, i32 3
  %9 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_lflag, align 4
  %and = and i32 %10, -9
  store i32 %and, ptr %c_lflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 20
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gsmtty_ops, ptr %ops.i, align 4
  %call13 = tail call i32 @tty_register_driver(ptr noundef %call2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %do.body21, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #19
  %12 = load ptr, ptr @gsm_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %12) #16
  br label %err_unreg_ldisc

do.body21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_init.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_init, %if.then27)) #16
          to label %cleanup [label %if.then27], !srcloc !252

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  %13 = load ptr, ptr @gsm_tty_driver, align 4
  %major28 = getelementptr inbounds %struct.tty_driver, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %major28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %major28, align 4
  %minor_start29 = getelementptr inbounds %struct.tty_driver, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %minor_start29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %minor_start29, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_init.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.102, i32 noundef %15, i32 noundef %17) #16
  br label %cleanup

err_unreg_ldisc:                                  ; preds = %do.end17, %do.end7
  %status.0 = phi i32 [ %1, %do.end7 ], [ -16, %do.end17 ]
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @tty_ldisc_packet) #16
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_ldisc, %if.then27, %do.body21, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %status.0, %err_unreg_ldisc ], [ 0, %if.then27 ], [ 0, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmld_open(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 712) #20
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 1501) #20
  %buf.i = getelementptr %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %buf.i, align 8
  %cmp3.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp3.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i37.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 3002) #20
  %txframe.i = getelementptr %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %txframe.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i37.i, ptr %txframe.i, align 8
  %cmp8.i = icmp eq ptr %call7.i37.i, null
  br i1 %cmp8.i, label %if.then9.i, label %if.end3

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf.i, align 8
  tail call void @kfree(ptr noundef %10) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %cleanup

if.end3:                                          ; preds = %if.end5.i
  %lock.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @gsm_alloc_mux.__key, i16 noundef signext 3) #16
  %mutex.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @gsm_alloc_mux.__key.2) #16
  %ref.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  %11 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %ref.i, align 8
  %tx_list.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 26
  %12 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 26, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tx_list.i, ptr %prev.i.i, align 8
  %t1.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 33
  %14 = ptrtoint ptr %t1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %t1.i, align 8
  %t2.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 34
  %15 = ptrtoint ptr %t2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 34, ptr %t2.i, align 4
  %n2.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 35
  %16 = ptrtoint ptr %n2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %n2.i, align 8
  %ftype.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 32
  %17 = ptrtoint ptr %ftype.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -17, ptr %ftype.i, align 4
  %adaption.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 31
  %18 = ptrtoint ptr %adaption.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %adaption.i, align 8
  %encoding.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 12
  %mru.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 18
  %19 = ptrtoint ptr %mru.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %mru.i, align 8
  %mtu.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %mtu.i, align 4
  %dead.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 21
  %21 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dead.i, align 4
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %22 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i, ptr %disc_data, align 4
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %23 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65536, ptr %receive_room, align 4
  %24 = ptrtoint ptr %encoding.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %encoding.i, align 8
  %tobool.not.i.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i.i, label %if.end3.tty_kref_get.exit.i_crit_edge, label %if.then.i.i

if.end3.tty_kref_get.exit.i_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %tty_kref_get.exit.i

if.then.i.i:                                      ; preds = %if.end3
  %kref.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #16
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #16, !srcloc !253
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !254

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.tty_kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !255

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.tty_kref_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %tty_kref_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #16
  br label %tty_kref_get.exit.i

tty_kref_get.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.tty_kref_get.exit.i_crit_edge, %if.end3.tty_kref_get.exit.i_crit_edge
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tty, ptr %call7.i.i.i, align 8
  %call2.i = tail call fastcc i32 @gsm_activate_mux(ptr noundef nonnull %call7.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %gsmld_attach_gsm.exit.thread26

gsmld_attach_gsm.exit.thread26:                   ; preds = %tty_kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @tty_kref_put(ptr noundef %29) #16
  br label %if.then6

if.else.i:                                        ; preds = %tty_kref_get.exit.i
  %initiator.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 20
  %30 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %initiator.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.else.i.cleanup_crit_edge, label %if.then4.i18

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4.i18:                                     ; preds = %if.else.i
  %num.i.i = getelementptr inbounds %struct.gsm_mux, ptr %call7.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num.i.i, align 4
  %mul.i.i = shl i32 %33, 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc16.i.for.body.i_crit_edge, %if.then4.i18
  %i.045.i = phi i32 [ 1, %if.then4.i18 ], [ %inc.i, %for.inc16.i.for.body.i_crit_edge ]
  %34 = load ptr, ptr @gsm_tty_driver, align 4
  %add.i = add nuw nsw i32 %i.045.i, %mul.i.i
  %call7.i = tail call ptr @tty_register_device(ptr noundef %34, i32 noundef %add.i, ptr noundef null) #16
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.cond10.preheader.i, label %for.inc16.i

for.cond10.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.045.i)
  %cmp1141.i = icmp ugt i32 %i.045.i, 1
  br i1 %cmp1141.i, label %for.body12.preheader.i, label %for.cond10.preheader.i.gsmld_attach_gsm.exit_crit_edge

for.cond10.preheader.i.gsmld_attach_gsm.exit_crit_edge: ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmld_attach_gsm.exit

for.body12.preheader.i:                           ; preds = %for.cond10.preheader.i
  %i.140.i = add nsw i32 %i.045.i, -1
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.preheader.i
  %i.142.i = phi i32 [ %i.1.i, %for.body12.i.for.body12.i_crit_edge ], [ %i.140.i, %for.body12.preheader.i ]
  %35 = load ptr, ptr @gsm_tty_driver, align 4
  %add13.i = add i32 %i.142.i, %mul.i.i
  tail call void @tty_unregister_device(ptr noundef %35, i32 noundef %add13.i) #16
  %i.1.i = add nsw i32 %i.142.i, -1
  %cmp11.i.not = icmp eq i32 %i.1.i, 0
  br i1 %cmp11.i.not, label %for.body12.i.gsmld_attach_gsm.exit_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i

for.body12.i.gsmld_attach_gsm.exit_crit_edge:     ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmld_attach_gsm.exit

for.inc16.i:                                      ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not, label %for.inc16.i.cleanup_crit_edge, label %for.inc16.i.for.body.i_crit_edge

for.inc16.i.for.body.i_crit_edge:                 ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc16.i.cleanup_crit_edge:                    ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

gsmld_attach_gsm.exit:                            ; preds = %for.body12.i.gsmld_attach_gsm.exit_crit_edge, %for.cond10.preheader.i.gsmld_attach_gsm.exit_crit_edge
  %36 = ptrtoint ptr %call7.i to i32
  br label %if.then6

if.then6:                                         ; preds = %gsmld_attach_gsm.exit, %gsmld_attach_gsm.exit.thread26
  %retval.2.i29 = phi i32 [ %call2.i, %gsmld_attach_gsm.exit.thread26 ], [ %36, %gsmld_attach_gsm.exit ]
  tail call fastcc void @gsm_cleanup_mux(ptr noundef nonnull %call7.i.i.i)
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #16, !srcloc !257
  %asmresult.i.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i20, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i21, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i20)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !255

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #16
  br label %cleanup

if.then.i.i21:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !258
  %38 = ptrtoint ptr %txframe.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %txframe.i, align 8
  tail call void @kfree(ptr noundef %39) #16
  %40 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf.i, align 8
  tail call void @kfree(ptr noundef %41) #16
  tail call void @kfree(ptr noundef %call7.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i21, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %for.inc16.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then9.i, %if.then4.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.2.i29, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %retval.2.i29, %if.then10.i.i.i.i.i ], [ %retval.2.i29, %if.then.i.i21 ], [ -12, %if.then4.i ], [ -12, %if.then9.i ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %for.inc16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmld_close(ptr noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %num.i.i = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %mul.i.i = shl i32 %3, 6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not.i = icmp eq ptr %5, %tty
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !255

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2492, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %initiator.i = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %initiator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not.i = icmp eq i32 %7, 0
  br i1 %tobool20.not.i, label %if.end.i.gsmld_detach_gsm.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.gsmld_detach_gsm.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmld_detach_gsm.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end.i.for.body.i_crit_edge ]
  %8 = load ptr, ptr @gsm_tty_driver, align 4
  %add.i = add nuw nsw i32 %i.034.i, %mul.i.i
  tail call void @tty_unregister_device(ptr noundef %8, i32 noundef %add.i) #16
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.body.i.gsmld_detach_gsm.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.gsmld_detach_gsm.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmld_detach_gsm.exit

gsmld_detach_gsm.exit:                            ; preds = %for.body.i.gsmld_detach_gsm.exit_crit_edge, %if.end.i.gsmld_detach_gsm.exit_crit_edge
  tail call fastcc void @gsm_cleanup_mux(ptr noundef %1) #16
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @tty_kref_put(ptr noundef %10) #16
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %1, align 4
  %ref.i = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #16, !srcloc !257
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %gsmld_detach_gsm.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mux_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !255

if.end5.i.i.i.i.i.mux_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mux_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #16
  br label %mux_put.exit

if.then.i.i:                                      ; preds = %gsmld_detach_gsm.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !258
  %txframe.i.i.i = getelementptr %struct.gsm_mux, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %txframe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txframe.i.i.i, align 4
  tail call void @kfree(ptr noundef %14) #16
  %buf.i.i.i = getelementptr %struct.gsm_mux, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf.i.i.i, align 4
  tail call void @kfree(ptr noundef %16) #16
  tail call void @kfree(ptr noundef %1) #16
  br label %mux_put.exit

mux_put.exit:                                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mux_put.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gsmld_flush_buffer(ptr nocapture noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gsmld_read(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %nr, ptr nocapture noundef readnone %cookie, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmld_write(ptr noundef %tty, ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_write_room(ptr noundef %tty) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %nr)
  %cmp.not = icmp ult i32 %call, %nr
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %call1 = tail call i32 %3(ptr noundef %tty, ptr noundef %buf, i32 noundef %nr) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -105, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmld_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %c = alloca %struct.gsm_config, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %c) #16
  %0 = call ptr @memset(ptr %c, i32 255, i32 76)
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %1 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disc_data, align 4
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 -2142484736, label %sw.bb
    i32 1078740737, label %sw.bb1
    i32 -2147203324, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %c, i32 28
  %5 = call ptr @memset(ptr %4, i32 0, i32 48)
  %adaption.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 31
  %6 = ptrtoint ptr %adaption.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adaption.i, align 4
  %8 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %c, align 4
  %encoding.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 12
  %9 = ptrtoint ptr %encoding.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoding.i, align 4
  %encapsulation.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 1
  %11 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %encapsulation.i, align 4
  %initiator.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 20
  %12 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %initiator.i, align 4
  %initiator2.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 2
  %14 = ptrtoint ptr %initiator2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %initiator2.i, align 4
  %t1.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 33
  %15 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t1.i, align 4
  %t13.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 3
  %17 = ptrtoint ptr %t13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %t13.i, align 4
  %t2.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 34
  %18 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t2.i, align 4
  %t24.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 4
  %20 = ptrtoint ptr %t24.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %t24.i, align 4
  %t3.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 5
  %21 = ptrtoint ptr %t3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %t3.i, align 4
  %n2.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 35
  %22 = ptrtoint ptr %n2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n2.i, align 4
  %n25.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 6
  %24 = ptrtoint ptr %n25.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %n25.i, align 4
  %ftype.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 32
  %25 = ptrtoint ptr %ftype.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ftype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %26)
  %cmp.i = icmp eq i8 %26, -17
  %spec.select.i = select i1 %cmp.i, i32 1, i32 2
  %27 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 10
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select.i, ptr %27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_copy_config_values.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsmld_ioctl, %if.then10.i)) #16
          to label %gsm_copy_config_values.exit [label %if.then10.i], !srcloc !252

if.then10.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %ftype.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ftype.i, align 4
  %conv12.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_copy_config_values.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.86, i32 noundef %conv12.i, i32 noundef %32) #16
  br label %gsm_copy_config_values.exit

gsm_copy_config_values.exit:                      ; preds = %if.then10.i, %sw.bb
  %mru.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 18
  %33 = ptrtoint ptr %mru.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mru.i, align 4
  %mru15.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 7
  %35 = ptrtoint ptr %mru15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mru15.i, align 4
  %mtu.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 19
  %36 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mtu.i, align 4
  %mtu16.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 8
  %38 = ptrtoint ptr %mtu16.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %mtu16.i, align 4
  %k.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 9
  %39 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %k.i, align 4
  %40 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.89, i32 noundef 174) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %gsm_copy_config_values.exit.cleanup_crit_edge, label %if.end.i.i

gsm_copy_config_values.exit.cleanup_crit_edge:    ; preds = %gsm_copy_config_values.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %gsm_copy_config_values.exit
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 76, i32 -1226833920) #21, !srcloc !259
  %asmresult.i.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %c, i32 noundef 76) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %40, ptr noundef nonnull %c, i32 noundef 76) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %42 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.89, i32 noundef 156) #16
  %call.i.i25 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i25, label %sw.bb1.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb1.if.then11.i.i_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb1
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %42, i32 76, i32 -1226833920) #21, !srcloc !260
  %asmresult.i.i26 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i26)
  %cmp.i6.i27 = icmp eq i32 %asmresult.i.i26, 0
  br i1 %cmp.i6.i27, label %if.end.i.i29, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !255

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i29:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i28 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %c, i32 noundef 76) #16
  %44 = call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !261
  %and.i.i.i.i = and i32 %46, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !263
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %c, ptr noundef %42, i32 noundef 76) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #16, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i29.if.then11.i.i_crit_edge, !prof !255

if.end.i.i29.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i29.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb1.if.then11.i.i_crit_edge
  %res.0.i.i45 = phi i32 [ %call1.i.i.i, %if.end.i.i29.if.then11.i.i_crit_edge ], [ 76, %sw.bb1.if.then11.i.i_crit_edge ], [ 76, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 76, %res.0.i.i45
  %add.ptr.i.i = getelementptr i8, ptr %c, i32 %sub.i.i
  %47 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i45)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i29
  %48 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %c, align 4
  %.off.i = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %lor.lhs.false.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end5
  %k.i31 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 9
  %50 = ptrtoint ptr %k.i31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %k.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mru.i32 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 7
  %52 = ptrtoint ptr %mru.i32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mru.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %53)
  %cmp3.i = icmp ugt i32 %53, 1500
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %mtu.i33 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 8
  %54 = ptrtoint ptr %mtu.i33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mtu.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %55)
  %cmp5.i = icmp ugt i32 %55, 1500
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %53)
  %cmp8.i = icmp ult i32 %53, 8
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp11.i = icmp ult i32 %55, 8
  %or.cond192.i = or i1 %cmp11.i, %or.cond.i
  br i1 %or.cond192.i, label %lor.lhs.false4.i.cleanup_crit_edge, label %if.end13.i

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13.i:                                       ; preds = %lor.lhs.false4.i
  %n2.i34 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 6
  %56 = ptrtoint ptr %n2.i34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n2.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp14.i = icmp ult i32 %57, 3
  br i1 %cmp14.i, label %if.end13.i.cleanup_crit_edge, label %if.end16.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16.i:                                       ; preds = %if.end13.i
  %encapsulation.i35 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 1
  %58 = ptrtoint ptr %encapsulation.i35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %encapsulation.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp17.i = icmp ugt i32 %59, 1
  br i1 %cmp17.i, label %if.end16.i.cleanup_crit_edge, label %if.end19.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19.i:                                       ; preds = %if.end16.i
  %initiator.i36 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 2
  %60 = ptrtoint ptr %initiator.i36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %initiator.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp20.i = icmp ugt i32 %61, 1
  br i1 %cmp20.i, label %if.end19.i.cleanup_crit_edge, label %if.end22.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end22.i:                                       ; preds = %if.end19.i
  %i.i = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 10
  %62 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i.i, align 4
  %64 = add i32 %63, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %64)
  %65 = icmp ult i32 %64, -2
  br i1 %65, label %if.end22.i.cleanup_crit_edge, label %if.end28.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28.i:                                       ; preds = %if.end22.i
  %t1.i37 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 3
  %66 = ptrtoint ptr %t1.i37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %t1.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp29.not.i = icmp eq i32 %67, 0
  br i1 %cmp29.not.i, label %if.end28.i.if.end35.i_crit_edge, label %land.lhs.true30.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i

land.lhs.true30.i:                                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  %t132.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 33
  %68 = ptrtoint ptr %t132.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %t132.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp33.not.i = icmp ne i32 %67, %69
  %spec.select.i38 = zext i1 %cmp33.not.i to i32
  br label %if.end35.i

if.end35.i:                                       ; preds = %land.lhs.true30.i, %if.end28.i.if.end35.i_crit_edge
  %need_restart.0.i = phi i32 [ 0, %if.end28.i.if.end35.i_crit_edge ], [ %spec.select.i38, %land.lhs.true30.i ]
  %t2.i39 = getelementptr inbounds %struct.gsm_config, ptr %c, i32 0, i32 4
  %70 = ptrtoint ptr %t2.i39 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %t2.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp36.not.i = icmp eq i32 %71, 0
  br i1 %cmp36.not.i, label %if.end35.i.if.end42.i_crit_edge, label %land.lhs.true37.i

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i

land.lhs.true37.i:                                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  %t239.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 34
  %72 = ptrtoint ptr %t239.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %t239.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp40.not.i = icmp eq i32 %71, %73
  %spec.select194.i = select i1 %cmp40.not.i, i32 %need_restart.0.i, i32 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true37.i, %if.end35.i.if.end42.i_crit_edge
  %need_restart.1.i = phi i32 [ %need_restart.0.i, %if.end35.i.if.end42.i_crit_edge ], [ %spec.select194.i, %land.lhs.true37.i ]
  %encoding.i40 = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 12
  %74 = ptrtoint ptr %encoding.i40 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %encoding.i40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %75)
  %cmp44.not.i = icmp eq i32 %59, %75
  %adaption48.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 31
  %76 = ptrtoint ptr %adaption48.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %adaption48.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %77)
  %cmp49.not.i = icmp eq i32 %49, %77
  %initiator53.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 20
  %78 = ptrtoint ptr %initiator53.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %initiator53.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %79)
  %cmp54.not.i = icmp eq i32 %61, %79
  %mru58.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 18
  %80 = ptrtoint ptr %mru58.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mru58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %81)
  %cmp59.not.i = icmp eq i32 %53, %81
  %mtu63.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 19
  %82 = ptrtoint ptr %mtu63.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mtu63.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %83)
  %cmp64.not.i = icmp eq i32 %55, %83
  %84 = select i1 %cmp64.not.i, i1 %cmp59.not.i, i1 false
  %85 = select i1 %84, i1 %cmp49.not.i, i1 false
  %86 = select i1 %85, i1 %cmp44.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool68.not.i = icmp eq i32 %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_restart.1.i)
  %tobool72.not198.i = icmp eq i32 %need_restart.1.i, 0
  %tobool72.not.i = select i1 %86, i1 %tobool72.not198.i, i1 false
  %or.cond196.i = select i1 %cmp54.not.i, i1 %tobool72.not.i, i1 false
  %or.cond197.i = select i1 %tobool68.not.i, i1 true, i1 %or.cond196.i
  br i1 %or.cond197.i, label %if.end42.i.if.end77.i_crit_edge, label %if.then73.i

if.end42.i.if.end77.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.i

if.then73.i:                                      ; preds = %if.end42.i
  %call.i = call fastcc i32 @gsm_disconnect(ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool74.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool74.not.i, label %if.then73.i.if.end77.i_crit_edge, label %if.then73.i.cleanup_crit_edge

if.then73.i.cleanup_crit_edge:                    ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then73.i.if.end77.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then73.i.if.end77.i_crit_edge, %if.end42.i.if.end77.i_crit_edge
  br i1 %tobool72.not.i, label %if.end77.i.if.end80.i_crit_edge, label %if.then79.i

if.end77.i.if.end80.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80.i

if.then79.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @gsm_cleanup_mux(ptr noundef %2) #16
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %if.end77.i.if.end80.i_crit_edge
  %87 = ptrtoint ptr %initiator.i36 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %initiator.i36, align 4
  %89 = ptrtoint ptr %initiator53.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %initiator53.i, align 4
  %90 = ptrtoint ptr %mru.i32 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mru.i32, align 4
  %92 = ptrtoint ptr %mru58.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %mru58.i, align 4
  %93 = ptrtoint ptr %mtu.i33 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mtu.i33, align 4
  %95 = ptrtoint ptr %mtu63.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %mtu63.i, align 4
  %96 = ptrtoint ptr %encapsulation.i35 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %encapsulation.i35, align 4
  %98 = ptrtoint ptr %encoding.i40 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %encoding.i40, align 4
  %99 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %c, align 4
  %101 = ptrtoint ptr %adaption48.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %adaption48.i, align 4
  %102 = ptrtoint ptr %n2.i34 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %n2.i34, align 4
  %n292.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 35
  %104 = ptrtoint ptr %n292.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %n292.i, align 4
  %105 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %i.i, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %106, label %if.end80.i.if.end101.i_crit_edge [
    i32 1, label %if.end80.i.if.end101.sink.split.i_crit_edge
    i32 2, label %if.then98.i
  ]

if.end80.i.if.end101.sink.split.i_crit_edge:      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101.sink.split.i

if.end80.i.if.end101.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101.i

if.then98.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101.sink.split.i

if.end101.sink.split.i:                           ; preds = %if.then98.i, %if.end80.i.if.end101.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 3, %if.then98.i ], [ -17, %if.end80.i.if.end101.sink.split.i_crit_edge ]
  %ftype99.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 32
  %108 = ptrtoint ptr %ftype99.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %.sink.i, ptr %ftype99.i, align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.end101.sink.split.i, %if.end80.i.if.end101.i_crit_edge
  %109 = ptrtoint ptr %t1.i37 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %t1.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool103.not.i = icmp eq i32 %110, 0
  br i1 %tobool103.not.i, label %if.end101.i.if.end107.i_crit_edge, label %if.then104.i

if.end101.i.if.end107.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107.i

if.then104.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #18
  %t1106.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 33
  %111 = ptrtoint ptr %t1106.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %t1106.i, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then104.i, %if.end101.i.if.end107.i_crit_edge
  %112 = ptrtoint ptr %t2.i39 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %t2.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool109.not.i = icmp eq i32 %113, 0
  br i1 %tobool109.not.i, label %if.end107.i.if.end113.i_crit_edge, label %if.then110.i

if.end107.i.if.end113.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113.i

if.then110.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #18
  %t2112.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 34
  %114 = ptrtoint ptr %t2112.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %t2112.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then110.i, %if.end107.i.if.end113.i_crit_edge
  br i1 %tobool72.not.i, label %if.end113.i.if.end117.i_crit_edge, label %if.then115.i

if.end113.i.if.end117.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end117.i

if.then115.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #18
  %call116.i = call fastcc i32 @gsm_activate_mux(ptr noundef %2) #16
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then115.i, %if.end113.i.if.end117.i_crit_edge
  %115 = ptrtoint ptr %initiator53.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %initiator53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool119.not.i = icmp eq i32 %116, 0
  %brmerge.i = select i1 %tobool119.not.i, i1 true, i1 %cmp54.not.i
  br i1 %brmerge.i, label %if.end117.i.cleanup_crit_edge, label %if.then122.i

if.end117.i.cleanup_crit_edge:                    ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then122.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #18
  %dlci.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 22
  %117 = ptrtoint ptr %dlci.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dlci.i, align 4
  call fastcc void @gsm_dlci_begin_open(ptr noundef %118) #16
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %num.i = getelementptr inbounds %struct.gsm_mux, ptr %2, i32 0, i32 3
  %119 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num.i, align 4
  %mul.i = shl i32 %120, 6
  %121 = inttoptr i32 %arg to ptr
  %add = or i32 %mul.i, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 2728) #16
  %122 = tail call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 4
  %124 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !261
  %and.i = and i32 %124, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !263
  %125 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %121, i32 %add, i32 -1226833921) #16, !srcloc !264
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #16, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !263
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 @n_tty_ioctl_helper(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb7, %if.then122.i, %if.end117.i.cleanup_crit_edge, %if.then73.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %gsm_copy_config_values.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %sw.default ], [ %125, %sw.bb7 ], [ %call.i, %if.then73.i.cleanup_crit_edge ], [ -95, %if.end5.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %lor.lhs.false4.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end13.i.cleanup_crit_edge ], [ -22, %if.end16.i.cleanup_crit_edge ], [ -22, %if.end19.i.cleanup_crit_edge ], [ -22, %if.end22.i.cleanup_crit_edge ], [ 0, %if.end117.i.cleanup_crit_edge ], [ 0, %if.then122.i ], [ -14, %gsm_copy_config_values.exit.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %c) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmld_poll(ptr noundef %tty, ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %read_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 27
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit28_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit28_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit28

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %read_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i26_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i26_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true.i26

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %3(ptr noundef %file, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #16
  br label %land.lhs.true.i26

land.lhs.true.i26:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i26_crit_edge
  %write_wait29 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i23 = icmp eq ptr %5, null
  %tobool3.not.i24 = icmp eq ptr %write_wait29, null
  %or.cond.i25 = or i1 %tobool3.not.i24, %tobool1.not.i23
  br i1 %or.cond.i25, label %land.lhs.true.i26.poll_wait.exit28_crit_edge, label %if.then.i27

land.lhs.true.i26.poll_wait.exit28_crit_edge:     ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit28

if.then.i27:                                      ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %5(ptr noundef %file, ptr noundef nonnull %write_wait29, ptr noundef nonnull %wait) #16
  br label %poll_wait.exit28

poll_wait.exit28:                                 ; preds = %if.then.i27, %land.lhs.true.i26.poll_wait.exit28_crit_edge, %entry.poll_wait.exit28_crit_edge
  %call = tail call i32 @tty_hung_up_p(ptr noundef %file) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 16
  %atomic_write_lock = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 8
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %atomic_write_lock) #16
  br i1 %call1, label %poll_wait.exit28.if.end5_crit_edge, label %land.lhs.true

poll_wait.exit28.if.end5_crit_edge:               ; preds = %poll_wait.exit28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

land.lhs.true:                                    ; preds = %poll_wait.exit28
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 @tty_write_room(ptr noundef %tty) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  %or4 = or i32 %spec.select, 260
  %spec.select20 = select i1 %cmp.not, i32 %spec.select, i32 %or4
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %poll_wait.exit28.if.end5_crit_edge
  %mask.1 = phi i32 [ %spec.select, %poll_wait.exit28.if.end5_crit_edge ], [ %spec.select20, %land.lhs.true ]
  %dead = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dead, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %or8 = or i32 %mask.1, 16
  %spec.select21 = select i1 %tobool6.not, i32 %mask.1, i32 %or8
  ret i32 %spec.select21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmld_receive_buf(ptr noundef %tty, ptr noundef %cp, ptr noundef readonly %fp, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsmld_receive_buf.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsmld_receive_buf, %if.then4)) #16
          to label %if.end5 [label %if.then4], !srcloc !252

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @print_hex_dump(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.91, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %cp, i32 noundef %count, i1 noundef zeroext true) #16
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body, %entry.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool6.not72 = icmp eq i32 %count, 0
  br i1 %tobool6.not72, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %state.i = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 7
  %io_error.i = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 38
  %receive = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cp.addr.076 = phi ptr [ %cp, %for.body.lr.ph ], [ %incdec.ptr58, %for.inc.for.body_crit_edge ]
  %fp.addr.075 = phi ptr [ %fp, %for.body.lr.ph ], [ %fp.addr.1, %for.inc.for.body_crit_edge ]
  %count.addr.074 = phi i32 [ %count, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %flags.073 = phi i8 [ 0, %for.body.lr.ph ], [ %flags.1, %for.inc.for.body_crit_edge ]
  %tobool7.not = icmp eq ptr %fp.addr.075, null
  br i1 %tobool7.not, label %for.body.if.end9_crit_edge, label %if.then8

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %incdec.ptr = getelementptr i8, ptr %fp.addr.075, i32 1
  %3 = ptrtoint ptr %fp.addr.075 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fp.addr.075, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.body.if.end9_crit_edge
  %flags.1 = phi i8 [ %4, %if.then8 ], [ %flags.073, %for.body.if.end9_crit_edge ]
  %fp.addr.1 = phi ptr [ %incdec.ptr, %if.then8 ], [ null, %for.body.if.end9_crit_edge ]
  %conv = zext i8 %flags.1 to i32
  %5 = zext i8 %flags.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %flags.1, label %land.end [
    i8 0, label %sw.bb
    i8 4, label %if.end9.sw.bb10_crit_edge
    i8 1, label %if.end9.sw.bb10_crit_edge78
    i8 3, label %if.end9.sw.bb10_crit_edge79
    i8 2, label %if.end9.sw.bb10_crit_edge80
  ]

if.end9.sw.bb10_crit_edge80:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb10

if.end9.sw.bb10_crit_edge79:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb10

if.end9.sw.bb10_crit_edge78:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb10

if.end9.sw.bb10_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb10

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %receive, align 4
  %8 = ptrtoint ptr %cp.addr.076 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cp.addr.076, align 1
  tail call void %7(ptr noundef %1, i8 noundef zeroext %9) #16
  br label %for.inc

sw.bb10:                                          ; preds = %if.end9.sw.bb10_crit_edge, %if.end9.sw.bb10_crit_edge78, %if.end9.sw.bb10_crit_edge79, %if.end9.sw.bb10_crit_edge80
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state.i, align 4
  %11 = ptrtoint ptr %io_error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_error.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %io_error.i, align 4
  br label %for.inc

land.end:                                         ; preds = %if.end9
  %.b70 = load i1, ptr @gsmld_receive_buf.__already_done, align 1
  br i1 %.b70, label %land.end.for.inc_crit_edge, label %if.then22, !prof !255

land.end.for.inc_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then22:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @gsmld_receive_buf.__already_done, align 1
  %call35 = tail call ptr @tty_name(ptr noundef %tty) #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2527, i32 noundef 9, ptr noundef nonnull @.str.92, ptr noundef %call35, i32 noundef %conv) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.end.for.inc_crit_edge, %sw.bb10, %sw.bb
  %dec = add i32 %count.addr.074, -1
  %incdec.ptr58 = getelementptr i8, ptr %cp.addr.076, i32 1
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmld_write_wakeup(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %flags1 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags1) #16
  %tx_lock = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #16
  tail call fastcc void @gsm_data_kick(ptr noundef %1, ptr noundef null)
  %tx_bytes = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %cmp6 = icmp ult i32 %3, 2048
  br i1 %cmp6, label %entry.if.end.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

while.body.ithread-pre-split:                     ; preds = %cleanup.i
  %4 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %tx_bytes, align 4
  %cmp1.i = icmp ugt i32 %.pr, 8192
  br i1 %cmp1.i, label %while.body.ithread-pre-split.if.end_crit_edge, label %while.body.ithread-pre-split.if.end.i_crit_edge

while.body.ithread-pre-split.if.end.i_crit_edge:  ; preds = %while.body.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

while.body.ithread-pre-split.if.end_crit_edge:    ; preds = %while.body.ithread-pre-split
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %while.body.ithread-pre-split.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %i.034.i15 = phi i32 [ %spec.select.i, %while.body.ithread-pre-split.if.end.i_crit_edge ], [ 1, %entry.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gsm_mux, ptr %1, i32 0, i32 22, i32 %i.034.i15
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %6, null
  br i1 %cmp3.i, label %if.end.i.cleanup.i_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %constipated.i = getelementptr inbounds %struct.gsm_dlci, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %constipated.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %constipated.i, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end5.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %adaption.i = getelementptr inbounds %struct.gsm_dlci, ptr %6, i32 0, i32 10
  %9 = ptrtoint ptr %adaption.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %adaption.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp6.i = icmp slt i32 %10, 3
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %net.i = getelementptr inbounds %struct.gsm_dlci, ptr %6, i32 0, i32 21
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  %tobool7.not.i = icmp eq ptr %12, null
  br i1 %tobool7.not.i, label %if.then8.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call fastcc i32 @gsm_dlci_data_output(ptr noundef %1, ptr noundef nonnull %6) #16
  br label %if.end10.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %call9.i = tail call fastcc i32 @gsm_dlci_data_output_framed(ptr noundef %1, ptr noundef nonnull %6) #16
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then8.i
  %len.0.i = phi i32 [ %call9.i, %if.else.i ], [ %call.i, %if.then8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp11.i = icmp slt i32 %len.0.i, 0
  br i1 %cmp11.i, label %if.end10.i.if.end_crit_edge, label %if.end13.i

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp14.i = icmp eq i32 %len.0.i, 0
  %inc16.i = zext i1 %cmp14.i to i32
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %lor.lhs.false.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  %inc16.sink.i = phi i32 [ %inc16.i, %if.end13.i ], [ 1, %lor.lhs.false.i.cleanup.i_crit_edge ], [ 1, %if.end.i.cleanup.i_crit_edge ]
  %spec.select.i = add nuw nsw i32 %inc16.sink.i, %i.034.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select.i)
  %cmp.i = icmp ult i32 %spec.select.i, 64
  br i1 %cmp.i, label %while.body.ithread-pre-split, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.end10.i.if.end_crit_edge, %while.body.ithread-pre-split.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_cleanup_mux(ptr noundef %gsm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dlci1 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 22
  %0 = ptrtoint ptr %dlci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlci1, align 4
  %dead = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 21
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dead, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @gsm_mux_lock) #16
  %3 = load ptr, ptr @gsm_mux, align 4
  %cmp3 = icmp eq ptr %3, %gsm
  br i1 %cmp3, label %entry.if.end7_crit_edge, label %for.inc

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc:                                          ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 1), align 4
  %cmp3.1 = icmp eq ptr %4, %gsm
  br i1 %cmp3.1, label %for.inc.if.end7_crit_edge, label %for.inc.1

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc.1:                                        ; preds = %for.inc
  %5 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 2), align 4
  %cmp3.2 = icmp eq ptr %5, %gsm
  br i1 %cmp3.2, label %for.inc.1.if.end7_crit_edge, label %for.inc.2

for.inc.1.if.end7_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc.2:                                        ; preds = %for.inc.1
  %6 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 3), align 4
  %cmp3.3 = icmp eq ptr %6, %gsm
  br i1 %cmp3.3, label %for.inc.2.if.end7_crit_edge, label %for.inc.3

for.inc.2.if.end7_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gsm_mux_lock) #16
  br label %cleanup

if.end7:                                          ; preds = %for.inc.2.if.end7_crit_edge, %for.inc.1.if.end7_crit_edge, %for.inc.if.end7_crit_edge, %entry.if.end7_crit_edge
  %arrayidx2.lcssa = phi ptr [ @gsm_mux, %entry.if.end7_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 1), %for.inc.if.end7_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 2), %for.inc.1.if.end7_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 3), %for.inc.2.if.end7_crit_edge ]
  %7 = ptrtoint ptr %arrayidx2.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx2.lcssa, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gsm_mux_lock) #16
  %t2_timer = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 27
  %call = tail call i32 @del_timer_sync(ptr noundef %t2_timer) #16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end7.if.end10_crit_edge, label %if.then8

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %dead9 = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %dead9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dead9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7.if.end10_crit_edge
  %mutex = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  br label %for.body13

for.body13:                                       ; preds = %for.inc21.for.body13_crit_edge, %if.end10
  %i.171 = phi i32 [ 0, %if.end10 ], [ %inc22, %for.inc21.for.body13_crit_edge ]
  %arrayidx15 = getelementptr %struct.gsm_mux, ptr %gsm, i32 0, i32 22, i32 %i.171
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %for.body13.for.inc21_crit_edge, label %if.then17

for.body13.for.inc21_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc21

if.then17:                                        ; preds = %for.body13
  %port.i = getelementptr inbounds %struct.gsm_dlci, ptr %10, i32 0, i32 8
  %call.i = tail call ptr @tty_port_tty_get(ptr noundef %port.i) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then17.gsm_dlci_release.exit_crit_edge, label %if.then.i

if.then17.gsm_dlci_release.exit_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_dlci_release.exit

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  %mutex.i = getelementptr inbounds %struct.gsm_dlci, ptr %10, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #16
  tail call fastcc void @gsm_destroy_network(ptr noundef nonnull %10) #16
  tail call void @mutex_unlock(ptr noundef %mutex.i) #16
  tail call void @tty_vhangup(ptr noundef nonnull %call.i) #16
  tail call void @tty_port_tty_set(ptr noundef %port.i, ptr noundef null) #16
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #16
  br label %gsm_dlci_release.exit

gsm_dlci_release.exit:                            ; preds = %if.then.i, %if.then17.gsm_dlci_release.exit_crit_edge
  %state.i = getelementptr inbounds %struct.gsm_dlci, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %state.i, align 4
  tail call void @tty_port_put(ptr noundef %port.i) #16
  br label %for.inc21

for.inc21:                                        ; preds = %gsm_dlci_release.exit, %for.body13.for.inc21_crit_edge
  %inc22 = add nuw nsw i32 %i.171, 1
  %exitcond.not = icmp eq i32 %inc22, 64
  br i1 %exitcond.not, label %for.end23, label %for.inc21.for.body13_crit_edge

for.inc21.for.body13_crit_edge:                   ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body13

for.end23:                                        ; preds = %for.inc21
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  %tx_list = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 26
  %12 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_list, align 4
  %cmp32.not72 = icmp eq ptr %13, %tx_list
  br i1 %cmp32.not72, label %for.end23.for.end40_crit_edge, label %for.end23.for.body33_crit_edge

for.end23.for.body33_crit_edge:                   ; preds = %for.end23
  br label %for.body33

for.end23.for.end40_crit_edge:                    ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end40

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.end23.for.body33_crit_edge
  %txq.073 = phi ptr [ %ntxq.0, %for.body33.for.body33_crit_edge ], [ %13, %for.end23.for.body33_crit_edge ]
  %14 = ptrtoint ptr %txq.073 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ntxq.0 = load ptr, ptr %txq.073, align 4
  tail call void @kfree(ptr noundef %txq.073) #16
  %cmp32.not = icmp eq ptr %ntxq.0, %tx_list
  br i1 %cmp32.not, label %for.body33.for.end40_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body33

for.body33.for.end40_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end40

for.end40:                                        ; preds = %for.body33.for.end40_crit_edge, %for.end23.for.end40_crit_edge
  %15 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  %prev.i = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 26, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx_list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end40, %for.inc.3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsm_activate_mux(ptr noundef %gsm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %t2_timer = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 27
  tail call void @init_timer_key(ptr noundef %t2_timer, ptr noundef nonnull @gsm_control_retransmit, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @gsm_activate_mux.__key) #16
  %event = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %event, ptr noundef nonnull @.str.6, ptr noundef nonnull @gsm_activate_mux.__key.5) #16
  %control_lock = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %control_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @gsm_activate_mux.__key.7, i16 noundef signext 3) #16
  %tx_lock = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @gsm_activate_mux.__key.9, i16 noundef signext 3) #16
  %encoding = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 12
  %0 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %spec.select = select i1 %cmp, ptr @gsm0_receive, ptr @gsm1_receive
  %2 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @gsm_mux_lock) #16
  %4 = load ptr, ptr @gsm_mux, align 4
  %cmp13 = icmp eq ptr %4, null
  br i1 %cmp13, label %entry.if.end19_crit_edge, label %for.inc

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

for.inc:                                          ; preds = %entry
  %5 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 1), align 4
  %cmp13.1 = icmp eq ptr %5, null
  br i1 %cmp13.1, label %for.inc.if.end19_crit_edge, label %for.inc.1

for.inc.if.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

for.inc.1:                                        ; preds = %for.inc
  %6 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 2), align 4
  %cmp13.2 = icmp eq ptr %6, null
  br i1 %cmp13.2, label %for.inc.1.if.end19_crit_edge, label %for.inc.2

for.inc.1.if.end19_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

for.inc.2:                                        ; preds = %for.inc.1
  %7 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 3), align 4
  %cmp13.3 = icmp eq ptr %7, null
  br i1 %cmp13.3, label %for.inc.2.if.end19_crit_edge, label %for.inc.3

for.inc.2.if.end19_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gsm_mux_lock) #16
  br label %cleanup

if.end19:                                         ; preds = %for.inc.2.if.end19_crit_edge, %for.inc.1.if.end19_crit_edge, %for.inc.if.end19_crit_edge, %entry.if.end19_crit_edge
  %i.042.lcssa = phi i32 [ 0, %entry.if.end19_crit_edge ], [ 1, %for.inc.if.end19_crit_edge ], [ 2, %for.inc.1.if.end19_crit_edge ], [ 3, %for.inc.2.if.end19_crit_edge ]
  %arrayidx.lcssa = phi ptr [ @gsm_mux, %entry.if.end19_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 1), %for.inc.if.end19_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 2), %for.inc.1.if.end19_crit_edge ], [ getelementptr inbounds ([4 x ptr], ptr @gsm_mux, i32 0, i32 3), %for.inc.2.if.end19_crit_edge ]
  %num = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 3
  %8 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.042.lcssa, ptr %num, align 4
  %9 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %gsm, ptr %arrayidx.lcssa, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gsm_mux_lock) #16
  %call20 = tail call fastcc ptr @gsm_dlci_alloc(ptr noundef %gsm, i32 noundef 0)
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %dead = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 21
  %10 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dead, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %for.inc.3
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -16, %for.inc.3 ], [ -12, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_register_device(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm_control_retransmit(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -572
  %control_lock = getelementptr i8, ptr %t, i32 56
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %control_lock) #16
  %pending_cmd = getelementptr i8, ptr %t, i32 52
  %0 = ptrtoint ptr %pending_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then:                                          ; preds = %entry
  %cretries = getelementptr i8, ptr %t, i32 48
  %2 = ptrtoint ptr %cretries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cretries, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %cretries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %pending_cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pending_cmd, align 4
  %error = getelementptr inbounds %struct.gsm_control, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -110, ptr %error, align 4
  %done = getelementptr inbounds %struct.gsm_control, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %done, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %control_lock, i32 noundef %call3) #16
  %event = getelementptr i8, ptr %t, i32 -424
  tail call void @__wake_up(ptr noundef %event, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @gsm_control_transmit(ptr noundef %add.ptr, ptr noundef nonnull %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %t2 = getelementptr i8, ptr %t, i32 112
  %8 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t2, align 4
  %mul = mul i32 %9, 100
  %div = sdiv i32 %mul, 100
  %add = add i32 %div, %7
  %call12 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #16
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %control_lock, i32 noundef %call3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm0_receive(ptr noundef %gsm, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %1, label %do.body [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb12
    i32 8, label %sw.bb17
    i32 9, label %sw.bb39
    i32 5, label %sw.bb62
    i32 6, label %sw.bb72
    i32 10, label %sw.bb74
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %c)
  %cmp = icmp eq i8 %c, -7
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %state, align 4
  %address = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 9
  %4 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %address, align 4
  %len3 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 8
  %5 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %len3, align 4
  %fcs = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %6 = ptrtoint ptr %fcs to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %fcs, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %fcs5 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %7 = ptrtoint ptr %fcs5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fcs5, align 1
  %xor2.i = xor i8 %8, %c
  %xor.i = zext i8 %xor2.i to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  store i8 %10, ptr %fcs5, align 1
  %address7 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 9
  %11 = ptrtoint ptr %address7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address7, align 4
  %shl.i = shl i32 %12, 7
  %conv.i = zext i8 %c to i32
  %13 = lshr i32 %conv.i, 1
  %or.i = or i32 %shl.i, %13
  store i32 %or.i, ptr %address7, align 4
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %sw.bb4.sw.epilog_crit_edge, label %if.then9

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %state, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fcs13 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %15 = ptrtoint ptr %fcs13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fcs13, align 1
  %xor2.i144 = xor i8 %16, %c
  %xor.i145 = zext i8 %xor2.i144 to i32
  %arrayidx.i146 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i145
  %17 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i146, align 1
  store i8 %18, ptr %fcs13, align 1
  %control = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 13
  %19 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %c, ptr %control, align 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %state, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %fcs18 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %21 = ptrtoint ptr %fcs18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fcs18, align 1
  %xor2.i147 = xor i8 %22, %c
  %xor.i148 = zext i8 %xor2.i147 to i32
  %arrayidx.i149 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i148
  %23 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i149, align 1
  store i8 %24, ptr %fcs18, align 1
  %len21 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 8
  %25 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len21, align 4
  %shl.i150 = shl i32 %26, 7
  %conv.i151 = zext i8 %c to i32
  %27 = lshr i32 %conv.i151, 1
  %or.i152 = or i32 %shl.i150, %27
  store i32 %or.i152, ptr %len21, align 4
  %and.i153 = and i32 %conv.i151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool23.not = icmp eq i32 %and.i153, 0
  br i1 %tobool23.not, label %if.end37, label %if.then24

if.then24:                                        ; preds = %sw.bb17
  %mru = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 18
  %28 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mru, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i152, i32 %29)
  %cmp26 = icmp ugt i32 %or.i152, %29
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  %bad_size = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 39
  %30 = ptrtoint ptr %bad_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bad_size, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %bad_size, align 4
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state, align 4
  br label %sw.epilog

if.end30:                                         ; preds = %if.then24
  %count = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 10
  %33 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i152)
  %tobool32.not = icmp eq i32 %or.i152, 0
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %state, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %state, align 4
  br label %sw.epilog

if.end37:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 9, ptr %state, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %fcs40 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %37 = ptrtoint ptr %fcs40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fcs40, align 1
  %xor2.i154 = xor i8 %38, %c
  %xor.i155 = zext i8 %xor2.i154 to i32
  %arrayidx.i156 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i155
  %39 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i156, align 1
  store i8 %40, ptr %fcs40, align 1
  %conv43 = zext i8 %c to i32
  %shl = shl nuw nsw i32 %conv43, 7
  %len44 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 8
  %41 = ptrtoint ptr %len44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len44, align 4
  %or = or i32 %42, %shl
  store i32 %or, ptr %len44, align 4
  %mru46 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 18
  %43 = ptrtoint ptr %mru46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mru46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %44)
  %cmp47 = icmp ugt i32 %or, %44
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #18
  %bad_size50 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 39
  %45 = ptrtoint ptr %bad_size50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bad_size50, align 4
  %inc51 = add i32 %46, 1
  store i32 %inc51, ptr %bad_size50, align 4
  %47 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %state, align 4
  br label %sw.epilog

if.end53:                                         ; preds = %sw.bb39
  %count54 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 10
  %48 = ptrtoint ptr %count54 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %count54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool56.not = icmp eq i32 %or, 0
  br i1 %tobool56.not, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 6, ptr %state, align 4
  br label %sw.epilog

if.else59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %state, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 6
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf, align 4
  %count63 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 10
  %53 = ptrtoint ptr %count63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count63, align 4
  %inc64 = add i32 %54, 1
  store i32 %inc64, ptr %count63, align 4
  %arrayidx = getelementptr i8, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %c, ptr %arrayidx, align 1
  %56 = load i32, ptr %count63, align 4
  %len66 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 8
  %57 = ptrtoint ptr %len66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp67 = icmp eq i32 %56, %58
  br i1 %cmp67, label %if.then69, label %sw.bb62.sw.epilog_crit_edge

sw.bb62.sw.epilog_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then69:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #18
  %59 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %state, align 4
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %received_fcs = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 15
  %60 = ptrtoint ptr %received_fcs to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %c, ptr %received_fcs, align 2
  tail call fastcc void @gsm_queue(ptr noundef %gsm)
  %61 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 10, ptr %state, align 4
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %c)
  %cmp76 = icmp eq i8 %c, -7
  br i1 %cmp76, label %if.then78, label %sw.bb74.sw.epilog_crit_edge

sw.bb74.sw.epilog_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then78:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #18
  %62 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %state, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm0_receive.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm0_receive, %if.then85)) #16
          to label %sw.epilog [label %if.then85], !srcloc !252

if.then85:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm0_receive.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %64) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then85, %do.body, %if.then78, %sw.bb74.sw.epilog_crit_edge, %sw.bb72, %if.then69, %sw.bb62.sw.epilog_crit_edge, %if.else59, %if.then57, %if.then49, %if.end37, %if.else, %if.then33, %if.then28, %sw.bb12, %if.then9, %sw.bb4.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm1_receive(ptr noundef %gsm, i8 noundef zeroext %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %c to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %c, label %if.end21 [
    i8 126, label %if.then
    i8 125, label %if.then20
  ]

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 7
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %2, label %if.then.if.then13_crit_edge [
    i32 5, label %land.lhs.true
    i32 1, label %if.then.sw.epilog_crit_edge
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

land.lhs.true:                                    ; preds = %if.then
  %count = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 10
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.then13_crit_edge, label %if.then4

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add i32 %5, -1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %count, align 4
  %fcs = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %7 = ptrtoint ptr %fcs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fcs, align 1
  %buf = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 6
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %dec
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %xor2.i = xor i8 %12, %8
  %xor.i = zext i8 %xor2.i to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  store i8 %14, ptr %fcs, align 1
  %len = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 8
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec, ptr %len, align 4
  tail call fastcc void @gsm_queue(ptr noundef %gsm)
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

if.then13:                                        ; preds = %land.lhs.true.if.then13_crit_edge, %if.then.if.then13_crit_edge
  %malformed = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 37
  %17 = ptrtoint ptr %malformed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %malformed, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %malformed, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state, align 4
  br label %sw.epilog

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %escape = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 11
  %20 = ptrtoint ptr %escape to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %escape, align 4
  br label %sw.epilog

if.end21:                                         ; preds = %entry
  %state22 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 7
  %21 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp23 = icmp eq i32 %22, 0
  br i1 %cmp23, label %if.end21.sw.epilog_crit_edge, label %if.end26

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end26:                                         ; preds = %if.end21
  %escape27 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 11
  %23 = ptrtoint ptr %escape27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %escape27, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool28.not = icmp eq i8 %24, 0
  br i1 %tobool28.not, label %if.end26.if.end33_crit_edge, label %if.then29

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %25 = xor i8 %c, 32
  %26 = ptrtoint ptr %escape27 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %escape27, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26.if.end33_crit_edge
  %c.addr.0 = phi i8 [ %25, %if.then29 ], [ %c, %if.end26.if.end33_crit_edge ]
  %27 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %22, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %if.end33.sw.bb37_crit_edge
    i32 3, label %sw.bb47
    i32 5, label %sw.bb53
    i32 7, label %if.end33.sw.epilog_crit_edge
  ]

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end33.sw.bb37_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb37

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %address = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 9
  %28 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %address, align 4
  %29 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %state22, align 4
  %fcs36 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %30 = ptrtoint ptr %fcs36 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %fcs36, align 1
  br label %sw.bb37

sw.bb37:                                          ; preds = %sw.bb, %if.end33.sw.bb37_crit_edge
  %fcs38 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %31 = ptrtoint ptr %fcs38 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fcs38, align 1
  %xor2.i117 = xor i8 %32, %c.addr.0
  %xor.i118 = zext i8 %xor2.i117 to i32
  %arrayidx.i119 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i118
  %33 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i119, align 1
  store i8 %34, ptr %fcs38, align 1
  %address41 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 9
  %35 = ptrtoint ptr %address41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address41, align 4
  %shl.i = shl i32 %36, 7
  %conv.i = zext i8 %c.addr.0 to i32
  %37 = lshr i32 %conv.i, 1
  %or.i = or i32 %shl.i, %37
  store i32 %or.i, ptr %address41, align 4
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not = icmp eq i32 %and.i, 0
  br i1 %tobool43.not, label %sw.bb37.sw.epilog_crit_edge, label %if.then44

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then44:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %state22, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %fcs48 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %39 = ptrtoint ptr %fcs48 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fcs48, align 1
  %xor2.i120 = xor i8 %40, %c.addr.0
  %xor.i121 = zext i8 %xor2.i120 to i32
  %arrayidx.i122 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i121
  %41 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i122, align 1
  store i8 %42, ptr %fcs48, align 1
  %control = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 13
  %43 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %c.addr.0, ptr %control, align 4
  %count51 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 10
  %44 = ptrtoint ptr %count51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %count51, align 4
  %45 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 5, ptr %state22, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end33
  %count54 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 10
  %46 = ptrtoint ptr %count54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count54, align 4
  %mru = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 18
  %48 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mru, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp55 = icmp ugt i32 %47, %49
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 7, ptr %state22, align 4
  %bad_size = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 39
  %51 = ptrtoint ptr %bad_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bad_size, align 4
  %inc59 = add i32 %52, 1
  store i32 %inc59, ptr %bad_size, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #18
  %buf60 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 6
  %53 = ptrtoint ptr %buf60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf60, align 4
  %inc62 = add i32 %47, 1
  %55 = ptrtoint ptr %count54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc62, ptr %count54, align 4
  %arrayidx63 = getelementptr i8, ptr %54, i32 %47
  %56 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %c.addr.0, ptr %arrayidx63, align 1
  br label %sw.epilog

do.body:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm1_receive.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm1_receive, %if.then69)) #16
          to label %sw.epilog [label %if.then69], !srcloc !252

if.then69:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state22, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm1_receive.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.71, i32 noundef %58) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then69, %do.body, %if.else, %if.then57, %sw.bb47, %if.then44, %sw.bb37.sw.epilog_crit_edge, %if.end33.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge, %if.then20, %if.then13, %if.then4, %if.then.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gsm_dlci_alloc(ptr noundef %gsm, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 892) #20
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.73, ptr noundef nonnull @gsm_dlci_alloc.__key, i16 noundef signext 3) #16
  %mutex = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.75, ptr noundef nonnull @gsm_dlci_alloc.__key.74) #16
  %fifo = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 9
  %call5 = tail call i32 @__kfifo_alloc(ptr noundef %fifo, i32 noundef 4096, i32 noundef 1, i32 noundef 3264) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp7 = icmp slt i32 %call5, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

if.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %skb_list = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 18
  %lock.i = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 18, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %1 = ptrtoint ptr %skb_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %skb_list, ptr %skb_list, align 8
  %prev.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 18, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 8
  %t1 = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %t1, ptr noundef nonnull @gsm_dlci_t1, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull @gsm_dlci_alloc.__key.76) #16
  %port = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 8
  tail call void @tty_port_init(ptr noundef %port) #16
  %ops = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @gsm_port_ops, ptr %ops, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %gsm, ptr %call7.i.i, align 8
  %addr15 = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %addr15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %addr, ptr %addr15, align 4
  %adaption = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 31
  %7 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %adaption, align 4
  %adaption16 = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %adaption16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %adaption16, align 8
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %tobool.not = icmp eq i32 %addr, 0
  %spec.select = select i1 %tobool.not, ptr @gsm_dlci_command, ptr @gsm_dlci_data
  %11 = getelementptr inbounds %struct.gsm_dlci, ptr %call7.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.select, ptr %11, align 8
  %arrayidx = getelementptr %struct.gsm_mux, ptr %gsm, i32 0, i32 22, i32 %addr
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then8 ], [ %call7.i.i, %if.end9 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_control_transmit(ptr nocapture noundef readonly %gsm, ptr nocapture noundef readonly %ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.gsm_control, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %ftype = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 32
  %2 = ptrtoint ptr %ftype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ftype, align 4
  %add1.i = add i32 %1, 27
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i, i32 noundef 2592) #22
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add = add i32 %1, 1
  %buffer.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 5
  %add.ptr2.i = getelementptr i8, ptr %buffer.i, i32 5
  %data.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr2.i, ptr %data.i, align 16
  %len3.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %len3.i, align 4
  %addr4.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %addr4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr4.i, align 8
  %ctrl5.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %ctrl5.i, align 1
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call9.i.i, ptr %call9.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl, align 4
  %shl = shl i8 %11, 1
  %or1 = or i8 %shl, 3
  %12 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or1, ptr %add.ptr2.i, align 1
  %add.ptr = getelementptr i8, ptr %buffer.i, i32 6
  %data4 = getelementptr inbounds %struct.gsm_control, ptr %ctrl, i32 0, i32 1
  %13 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data4, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %14, i32 %16)
  %dlci = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 22
  %18 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dlci, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tx_lock.i = getelementptr inbounds %struct.gsm_mux, ptr %21, i32 0, i32 24
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %19, ptr noundef nonnull %call9.i.i) #16
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %tx_lock6.i = getelementptr inbounds %struct.gsm_mux, ptr %23, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock6.i, i32 noundef %call2.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__gsm_data_queue(ptr noundef %dlci, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlci, align 4
  %data = getelementptr inbounds %struct.gsm_msg, ptr %msg, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.gsm_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %encoding = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp3 = icmp ult i32 %5, 128
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %.tr103 = trunc i32 %5 to i8
  %8 = shl nuw i8 %.tr103, 1
  %conv = or i8 %8, 1
  %incdec.ptr = getelementptr i8, ptr %3, i32 -1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %incdec.ptr, align 1
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %shr = lshr i32 %5, 7
  %conv7 = trunc i32 %shr to i8
  %incdec.ptr8 = getelementptr i8, ptr %3, i32 -1
  %10 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %incdec.ptr8, align 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %.tr = trunc i32 %12 to i8
  %conv11 = shl i8 %.tr, 1
  %incdec.ptr12 = getelementptr i8, ptr %3, i32 -2
  %13 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11, ptr %incdec.ptr12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4, %entry.if.end13_crit_edge
  %dp.0 = phi ptr [ %incdec.ptr, %if.then4 ], [ %incdec.ptr12, %if.else ], [ %3, %entry.if.end13_crit_edge ]
  %ctrl = getelementptr inbounds %struct.gsm_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl, align 1
  %incdec.ptr14 = getelementptr i8, ptr %dp.0, i32 -1
  %16 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %incdec.ptr14, align 1
  %initiator = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %addr23 = getelementptr inbounds %struct.gsm_msg, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %addr23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr23, align 4
  %shl25 = shl i8 %20, 2
  br i1 %tobool.not, label %if.else22, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %or19 = or i8 %shl25, 3
  %incdec.ptr21 = getelementptr i8, ptr %dp.0, i32 -2
  %21 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or19, ptr %incdec.ptr21, align 1
  br label %if.end29

if.else22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %or26 = or i8 %shl25, 1
  %incdec.ptr28 = getelementptr i8, ptr %dp.0, i32 -2
  %22 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or26, ptr %incdec.ptr28, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else22, %if.then15
  %dp.1 = phi ptr [ %incdec.ptr21, %if.then15 ], [ %incdec.ptr28, %if.else22 ]
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %dp.1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %tobool.not4.i = icmp eq i32 %sub.ptr.sub, 0
  br i1 %tobool.not4.i, label %if.end29.gsm_fcs_add_block.exit_crit_edge, label %if.end29.while.body.i_crit_edge

if.end29.while.body.i_crit_edge:                  ; preds = %if.end29
  br label %while.body.i

if.end29.gsm_fcs_add_block.exit_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_fcs_add_block.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end29.while.body.i_crit_edge
  %len.addr.07.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %sub.ptr.sub, %if.end29.while.body.i_crit_edge ]
  %c.addr.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %dp.1, %if.end29.while.body.i_crit_edge ]
  %fcs.addr.05.i = phi i8 [ %28, %while.body.i.while.body.i_crit_edge ], [ -1, %if.end29.while.body.i_crit_edge ]
  %dec.i = add i32 %len.addr.07.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %c.addr.06.i, i32 1
  %25 = ptrtoint ptr %c.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %c.addr.06.i, align 1
  %xor3.i = xor i8 %26, %fcs.addr.05.i
  %xor.i = zext i8 %xor3.i to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.gsm_fcs_add_block.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.gsm_fcs_add_block.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_fcs_add_block.exit

gsm_fcs_add_block.exit:                           ; preds = %while.body.i.gsm_fcs_add_block.exit_crit_edge, %if.end29.gsm_fcs_add_block.exit_crit_edge
  %fcs.addr.0.lcssa.i = phi i8 [ -1, %if.end29.gsm_fcs_add_block.exit_crit_edge ], [ %28, %while.body.i.gsm_fcs_add_block.exit_crit_edge ]
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %fcs.addr.0.lcssa.i, ptr %add.ptr, align 1
  %30 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ctrl, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %31, label %gsm_fcs_add_block.exit.if.end43_crit_edge [
    i8 3, label %gsm_fcs_add_block.exit.if.then39_crit_edge
    i8 19, label %gsm_fcs_add_block.exit.if.then39_crit_edge123
  ]

gsm_fcs_add_block.exit.if.then39_crit_edge123:    ; preds = %gsm_fcs_add_block.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then39

gsm_fcs_add_block.exit.if.then39_crit_edge:       ; preds = %gsm_fcs_add_block.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then39

gsm_fcs_add_block.exit.if.end43_crit_edge:        ; preds = %gsm_fcs_add_block.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then39:                                        ; preds = %gsm_fcs_add_block.exit.if.then39_crit_edge, %gsm_fcs_add_block.exit.if.then39_crit_edge123
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not4.i104 = icmp eq i32 %34, 0
  br i1 %tobool.not4.i104, label %if.then39.gsm_fcs_add_block.exit116_crit_edge, label %while.body.i114.preheader

if.then39.gsm_fcs_add_block.exit116_crit_edge:    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_fcs_add_block.exit116

while.body.i114.preheader:                        ; preds = %if.then39
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  br label %while.body.i114

while.body.i114:                                  ; preds = %while.body.i114.while.body.i114_crit_edge, %while.body.i114.preheader
  %len.addr.07.i105 = phi i32 [ %dec.i108, %while.body.i114.while.body.i114_crit_edge ], [ %34, %while.body.i114.preheader ]
  %c.addr.06.i106 = phi ptr [ %incdec.ptr.i109, %while.body.i114.while.body.i114_crit_edge ], [ %36, %while.body.i114.preheader ]
  %fcs.addr.05.i107 = phi i8 [ %40, %while.body.i114.while.body.i114_crit_edge ], [ %fcs.addr.0.lcssa.i, %while.body.i114.preheader ]
  %dec.i108 = add i32 %len.addr.07.i105, -1
  %incdec.ptr.i109 = getelementptr i8, ptr %c.addr.06.i106, i32 1
  %37 = ptrtoint ptr %c.addr.06.i106 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %c.addr.06.i106, align 1
  %xor3.i110 = xor i8 %38, %fcs.addr.05.i107
  %xor.i111 = zext i8 %xor3.i110 to i32
  %arrayidx.i112 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i111
  %39 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i112, align 1
  %tobool.not.i113 = icmp eq i32 %dec.i108, 0
  br i1 %tobool.not.i113, label %while.body.i114.gsm_fcs_add_block.exit116_crit_edge, label %while.body.i114.while.body.i114_crit_edge

while.body.i114.while.body.i114_crit_edge:        ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i114

while.body.i114.gsm_fcs_add_block.exit116_crit_edge: ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_fcs_add_block.exit116

gsm_fcs_add_block.exit116:                        ; preds = %while.body.i114.gsm_fcs_add_block.exit116_crit_edge, %if.then39.gsm_fcs_add_block.exit116_crit_edge
  %fcs.addr.0.lcssa.i115 = phi i8 [ %fcs.addr.0.lcssa.i, %if.then39.gsm_fcs_add_block.exit116_crit_edge ], [ %40, %while.body.i114.gsm_fcs_add_block.exit116_crit_edge ]
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %fcs.addr.0.lcssa.i115, ptr %add.ptr, align 1
  br label %if.end43

if.end43:                                         ; preds = %gsm_fcs_add_block.exit116, %gsm_fcs_add_block.exit.if.end43_crit_edge
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr, align 1
  %44 = xor i8 %43, -1
  store i8 %44, ptr %add.ptr, align 1
  %addr46 = getelementptr inbounds %struct.gsm_msg, ptr %msg, i32 0, i32 1
  %45 = ptrtoint ptr %addr46 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %addr46, align 4
  %conv47 = zext i8 %46 to i32
  %47 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %initiator, align 4
  %49 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ctrl, align 1
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  tail call fastcc void @gsm_print_packet(ptr noundef nonnull @.str.11, i32 noundef %conv47, i32 noundef %48, i8 noundef zeroext %50, ptr noundef %52, i32 noundef %54)
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast53 = ptrtoint ptr %56 to i32
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %sub.ptr.sub55 = sub i32 1, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub55, %sub.ptr.lhs.cast53
  %add57 = add i32 %add, %58
  store i32 %add57, ptr %len, align 4
  store ptr %dp.1, ptr %data, align 4
  %tx_list = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 26
  %prev.i = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 26, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %60, ptr noundef %tx_list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.list_add_tail.exit_crit_edge

if.end43.list_add_tail.exit_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg, ptr %prev.i, align 4
  %62 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %tx_list, ptr %msg, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %msg, ptr %60, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end43.list_add_tail.exit_crit_edge
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 25
  %67 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_bytes, align 4
  %add60 = add i32 %68, %66
  store i32 %add60, ptr %tx_bytes, align 4
  tail call fastcc void @gsm_data_kick(ptr noundef %1, ptr noundef %dlci)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_print_packet(ptr noundef %hdr, i32 noundef %addr, i32 noundef %cr, i8 noundef zeroext %control, ptr noundef %data, i32 noundef %dlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end101_crit_edge, label %do.end

entry.do.end101_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end101

do.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], ptr @.str.15, i32 0, i32 %cr
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %hdr, i32 noundef %addr, i32 noundef %conv) #19
  %conv1 = zext i8 %control to i32
  %and2 = and i8 %control, -17
  %3 = zext i8 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %and2, label %sw.default [
    i8 47, label %do.end4
    i8 99, label %do.end9
    i8 67, label %do.end14
    i8 15, label %do.end19
    i8 3, label %do.end24
    i8 -17, label %do.end29
  ]

do.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #19
  br label %sw.epilog78

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #19
  br label %sw.epilog78

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #19
  br label %sw.epilog78

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #19
  br label %sw.epilog78

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #19
  br label %sw.epilog78

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #19
  br label %sw.epilog78

sw.default:                                       ; preds = %do.end
  %and33 = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end37, label %if.else

do.end37:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  %and40 = lshr i32 %conv1, 1
  %4 = and i32 %and40, 7
  %5 = lshr i32 %conv1, 5
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %4, i32 noundef %5) #19
  br label %sw.epilog78

if.else:                                          ; preds = %sw.default
  %and46 = and i32 %conv1, 15
  %6 = zext i32 %and46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %and46, label %do.end73 [
    i32 1, label %do.end49
    i32 5, label %do.end57
    i32 9, label %do.end65
  ]

do.end49:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %7 = lshr i32 %conv1, 5
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %7) #19
  br label %sw.epilog78

do.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %8 = lshr i32 %conv1, 5
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %8) #19
  br label %sw.epilog78

do.end65:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %9 = lshr i32 %conv1, 5
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %9) #19
  br label %sw.epilog78

do.end73:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv1) #19
  br label %sw.epilog78

sw.epilog78:                                      ; preds = %do.end73, %do.end65, %do.end57, %do.end49, %do.end37, %do.end29, %do.end24, %do.end19, %do.end14, %do.end9, %do.end4
  %and80 = and i32 %conv1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %.str.53..str.50 = select i1 %tobool81.not, ptr @.str.53, ptr @.str.50
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.53..str.50) #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_print_packet.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_print_packet, %if.then99)) #16
          to label %do.end101 [label %if.then99], !srcloc !252

if.then99:                                        ; preds = %sw.epilog78
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @print_hex_dump(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %dlen, i1 noundef zeroext true) #16
  br label %do.end101

do.end101:                                        ; preds = %if.then99, %sw.epilog78, %entry.do.end101_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_data_kick(ptr noundef %gsm, ptr noundef %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_list = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 26
  %0 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_list, align 4
  %cmp.not116 = icmp eq ptr %1, %tx_list
  br i1 %cmp.not116, label %entry.for.end72_crit_edge, label %for.body.lr.ph

entry.for.end72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end72

for.body.lr.ph:                                   ; preds = %entry
  %constipated = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 23
  %encoding = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 12
  %txframe = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 16
  %tx_bytes = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 25
  %tobool50.not = icmp eq ptr %dlci, null
  %port = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc66.for.body_crit_edge, %for.body.lr.ph
  %msg.0117 = phi ptr [ %1, %for.body.lr.ph ], [ %nmsg.0119, %for.inc66.for.body_crit_edge ]
  %2 = ptrtoint ptr %msg.0117 to i32
  call void @__asan_load4_noabort(i32 %2)
  %nmsg.0119 = load ptr, ptr %msg.0117, align 4
  %3 = ptrtoint ptr %constipated to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %constipated, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %addr = getelementptr inbounds %struct.gsm_msg, ptr %msg.0117, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc66_crit_edge

land.lhs.true.for.inc66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc66

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %7 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not = icmp eq i32 %8, 0
  %9 = ptrtoint ptr %txframe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %txframe, align 4
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 126, ptr %10, align 1
  %len13 = getelementptr inbounds %struct.gsm_msg, ptr %msg.0117, i32 0, i32 3
  %12 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not31.i = icmp eq i32 %13, 0
  br i1 %tobool.not31.i, label %if.then10.gsm_stuff_frame.exit_crit_edge, label %while.body.i.preheader

if.then10.gsm_stuff_frame.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_stuff_frame.exit

while.body.i.preheader:                           ; preds = %if.then10
  %14 = ptrtoint ptr %txframe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %txframe, align 4
  %data = getelementptr inbounds %struct.gsm_msg, ptr %msg.0117, i32 0, i32 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec37.in.i = phi i32 [ %dec37.i, %if.end.i.while.body.i_crit_edge ], [ %13, %while.body.i.preheader ]
  %olen.035.i = phi i32 [ %inc20.i, %if.end.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %incdec.ptr.pn.i.pn = phi ptr [ %incdec.ptr.pn.i, %if.end.i.while.body.i_crit_edge ], [ %15, %while.body.i.preheader ]
  %input.addr.032.i = phi ptr [ %input.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ %17, %while.body.i.preheader ]
  %output.addr.033.i = getelementptr i8, ptr %incdec.ptr.pn.i.pn, i32 1
  %dec37.i = add i32 %dec37.in.i, -1
  %18 = ptrtoint ptr %input.addr.032.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %input.addr.032.i, align 1
  %.off.i = add i8 %19, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %while.body.i.if.then.i_crit_edge, label %lor.lhs.false5.i

while.body.i.if.then.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %while.body.i
  %trunc.i = trunc i8 %19 to i7
  %20 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.124)
  switch i7 %trunc.i, label %if.else.i [
    i7 17, label %lor.lhs.false5.i.if.then.i_crit_edge
    i7 19, label %lor.lhs.false5.i.if.then.i_crit_edge120
  ]

lor.lhs.false5.i.if.then.i_crit_edge120:          ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false5.i.if.then.i_crit_edge, %lor.lhs.false5.i.if.then.i_crit_edge120, %while.body.i.if.then.i_crit_edge
  %incdec.ptr.i = getelementptr i8, ptr %incdec.ptr.pn.i.pn, i32 2
  %21 = ptrtoint ptr %output.addr.033.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 125, ptr %output.addr.033.i, align 1
  %22 = ptrtoint ptr %input.addr.032.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %input.addr.032.i, align 1
  %24 = xor i8 %23, 32
  %25 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %incdec.ptr.i, align 1
  %inc.i = add i32 %olen.035.i, 1
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %output.addr.033.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %19, ptr %output.addr.033.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %incdec.ptr.pn.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %output.addr.033.i, %if.else.i ]
  %olen.1.i = phi i32 [ %inc.i, %if.then.i ], [ %olen.035.i, %if.else.i ]
  %input.addr.1.i = getelementptr i8, ptr %input.addr.032.i, i32 1
  %inc20.i = add i32 %olen.1.i, 1
  %tobool.not.i = icmp eq i32 %dec37.i, 0
  br i1 %tobool.not.i, label %if.end.i.gsm_stuff_frame.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end.i.gsm_stuff_frame.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_stuff_frame.exit

gsm_stuff_frame.exit:                             ; preds = %if.end.i.gsm_stuff_frame.exit_crit_edge, %if.then10.gsm_stuff_frame.exit_crit_edge
  %olen.0.lcssa.i = phi i32 [ 0, %if.then10.gsm_stuff_frame.exit_crit_edge ], [ %inc20.i, %if.end.i.gsm_stuff_frame.exit_crit_edge ]
  %27 = ptrtoint ptr %txframe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txframe, align 4
  %add = add i32 %olen.0.lcssa.i, 1
  %arrayidx15 = getelementptr i8, ptr %28, i32 %add
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 126, ptr %arrayidx15, align 1
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -7, ptr %10, align 1
  %31 = ptrtoint ptr %txframe to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %txframe, align 4
  %add.ptr20 = getelementptr i8, ptr %32, i32 1
  %data21 = getelementptr inbounds %struct.gsm_msg, ptr %msg.0117, i32 0, i32 4
  %33 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data21, align 4
  %len22 = getelementptr inbounds %struct.gsm_msg, ptr %msg.0117, i32 0, i32 3
  %35 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len22, align 4
  %37 = call ptr @memcpy(ptr %add.ptr20, ptr %34, i32 %36)
  %38 = load ptr, ptr %txframe, align 4
  %39 = load i32, ptr %len22, align 4
  %add25 = add i32 %39, 1
  %arrayidx26 = getelementptr i8, ptr %38, i32 %add25
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -7, ptr %arrayidx26, align 1
  %41 = load i32, ptr %len22, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %gsm_stuff_frame.exit
  %len.0.in = phi i32 [ %olen.0.lcssa.i, %gsm_stuff_frame.exit ], [ %41, %if.else ]
  %len.0 = add i32 %len.0.in, 2
  %42 = load i32, ptr @debug, align 4
  %and = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end29.if.end41_crit_edge, label %do.body

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

do.body:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_data_kick.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_data_kick, %if.then38)) #16
          to label %if.end41 [label %if.then38], !srcloc !252

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %txframe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txframe, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.58, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %44, i32 noundef %len.0, i1 noundef zeroext true) #16
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %do.body, %if.end29.if.end41_crit_edge
  %45 = ptrtoint ptr %txframe to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %txframe, align 4
  %47 = ptrtoint ptr %gsm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gsm, align 4
  %call.i = tail call i32 @tty_write_room(ptr noundef %48) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %len.0)
  %cmp.i = icmp ult i32 %call.i, %len.0
  br i1 %cmp.i, label %gsmld_output.exit.thread, label %if.end.i109

gsmld_output.exit.thread:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %gsm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gsm, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %50, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #16
  br label %for.end72

if.end.i109:                                      ; preds = %if.end41
  %51 = load i32, ptr @debug, align 4
  %and.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i108 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i108, label %if.end.i109.gsmld_output.exit_crit_edge, label %do.body.i

if.end.i109.gsmld_output.exit_crit_edge:          ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmld_output.exit

do.body.i:                                        ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsmld_output.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_data_kick, %if.then7.i)) #16
          to label %gsmld_output.exit [label %if.then7.i], !srcloc !252

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @print_hex_dump(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %46, i32 noundef %len.0, i1 noundef zeroext true) #16
  br label %gsmld_output.exit

gsmld_output.exit:                                ; preds = %if.then7.i, %do.body.i, %if.end.i109.gsmld_output.exit_crit_edge
  %52 = ptrtoint ptr %gsm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gsm, align 4
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write.i, align 4
  %call12.i = tail call i32 %57(ptr noundef %53, ptr noundef %46, i32 noundef %len.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp44 = icmp slt i32 %call12.i, 1
  br i1 %cmp44, label %gsmld_output.exit.for.end72_crit_edge, label %if.end47

gsmld_output.exit.for.end72_crit_edge:            ; preds = %gsmld_output.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end72

if.end47:                                         ; preds = %gsmld_output.exit
  %len48 = getelementptr inbounds %struct.gsm_msg, ptr %msg.0117, i32 0, i32 3
  %58 = ptrtoint ptr %len48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len48, align 4
  %60 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_bytes, align 4
  %sub = sub i32 %61, %59
  store i32 %sub, ptr %tx_bytes, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.0117) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end47.list_del.exit_crit_edge

if.end47.list_del.exit_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg.0117, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %msg.0117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %msg.0117, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end47.list_del.exit_crit_edge
  %68 = ptrtoint ptr %msg.0117 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.0117, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %msg.0117, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %msg.0117) #16
  br i1 %tobool50.not, label %list_del.exit.for.body56_crit_edge, label %if.then51

list_del.exit.for.body56_crit_edge:               ; preds = %list_del.exit
  br label %for.body56

if.then51:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @tty_port_tty_wakeup(ptr noundef %port) #16
  br label %for.inc66

for.body56:                                       ; preds = %for.inc.for.body56_crit_edge, %list_del.exit.for.body56_crit_edge
  %i.0114 = phi i32 [ %inc, %for.inc.for.body56_crit_edge ], [ 0, %list_del.exit.for.body56_crit_edge ]
  %arrayidx58 = getelementptr %struct.gsm_mux, ptr %gsm, i32 0, i32 22, i32 %i.0114
  %70 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %71, null
  br i1 %tobool59.not, label %for.body56.for.inc_crit_edge, label %if.then60

for.body56.for.inc_crit_edge:                     ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then60:                                        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #18
  %port63 = getelementptr inbounds %struct.gsm_dlci, ptr %71, i32 0, i32 8
  tail call void @tty_port_tty_wakeup(ptr noundef %port63) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %for.body56.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.for.inc66_crit_edge, label %for.inc.for.body56_crit_edge

for.inc.for.body56_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body56

for.inc.for.inc66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc66

for.inc66:                                        ; preds = %for.inc.for.inc66_crit_edge, %if.then51, %land.lhs.true.for.inc66_crit_edge
  %cmp.not = icmp eq ptr %nmsg.0119, %tx_list
  br i1 %cmp.not, label %for.inc66.for.end72_crit_edge, label %for.inc66.for.body_crit_edge

for.inc66.for.body_crit_edge:                     ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc66.for.end72_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end72

for.end72:                                        ; preds = %for.inc66.for.end72_crit_edge, %gsmld_output.exit.for.end72_crit_edge, %gsmld_output.exit.thread, %entry.for.end72_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_queue(ptr noundef %gsm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %control = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 13
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %control, align 4
  %2 = and i8 %1, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp eq i8 %2, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %fcs = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %3 = ptrtoint ptr %fcs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fcs, align 1
  %len = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 8
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not4.i = icmp eq i32 %6, 0
  br i1 %tobool.not4.i, label %if.then.gsm_fcs_add_block.exit_crit_edge, label %while.body.i.preheader

if.then.gsm_fcs_add_block.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_fcs_add_block.exit

while.body.i.preheader:                           ; preds = %if.then
  %buf = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 6
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %len.addr.07.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %6, %while.body.i.preheader ]
  %c.addr.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %8, %while.body.i.preheader ]
  %fcs.addr.05.i = phi i8 [ %12, %while.body.i.while.body.i_crit_edge ], [ %4, %while.body.i.preheader ]
  %dec.i = add i32 %len.addr.07.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %c.addr.06.i, i32 1
  %9 = ptrtoint ptr %c.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %c.addr.06.i, align 1
  %xor3.i = xor i8 %10, %fcs.addr.05.i
  %xor.i = zext i8 %xor3.i to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.gsm_fcs_add_block.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.gsm_fcs_add_block.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_fcs_add_block.exit

gsm_fcs_add_block.exit:                           ; preds = %while.body.i.gsm_fcs_add_block.exit_crit_edge, %if.then.gsm_fcs_add_block.exit_crit_edge
  %fcs.addr.0.lcssa.i = phi i8 [ %4, %if.then.gsm_fcs_add_block.exit_crit_edge ], [ %12, %while.body.i.gsm_fcs_add_block.exit_crit_edge ]
  %13 = ptrtoint ptr %fcs to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %fcs.addr.0.lcssa.i, ptr %fcs, align 1
  br label %if.end

if.end:                                           ; preds = %gsm_fcs_add_block.exit, %entry.if.end_crit_edge
  %encoding = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 12
  %14 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3 = icmp eq i32 %15, 0
  br i1 %cmp3, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %fcs6 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %16 = ptrtoint ptr %fcs6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fcs6, align 1
  %received_fcs = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 15
  %18 = ptrtoint ptr %received_fcs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %received_fcs, align 2
  %xor2.i = xor i8 %19, %17
  %xor.i255 = zext i8 %xor2.i to i32
  %arrayidx.i256 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i255
  %20 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i256, align 1
  store i8 %21, ptr %fcs6, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %fcs10 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 14
  %22 = ptrtoint ptr %fcs10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fcs10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %23)
  %cmp12.not = icmp eq i8 %23, -49
  br i1 %cmp12.not, label %if.end26, label %if.then14

if.then14:                                        ; preds = %if.end9
  %bad_fcs = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 36
  %24 = ptrtoint ptr %bad_fcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bad_fcs, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %bad_fcs, align 4
  %26 = load i32, ptr @debug, align 4
  %and15 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.then14.cleanup_crit_edge, label %do.body

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_queue.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_queue, %if.then21)) #16
          to label %cleanup [label %if.then21], !srcloc !252

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %fcs10 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fcs10, align 1
  %conv23 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_queue.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.64, i32 noundef %conv23) #16
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  %address27 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 9
  %29 = ptrtoint ptr %address27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %address27, align 4
  %shr = lshr i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %30)
  %cmp28 = icmp ugt i32 %30, 127
  br i1 %cmp28, label %if.end26.invalid_crit_edge, label %if.end31

if.end26.invalid_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalid

if.end31:                                         ; preds = %if.end26
  %conv34 = and i32 %30, 1
  %initiator = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 20
  %31 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool35.not = icmp eq i32 %32, 0
  %cond = zext i1 %tobool35.not to i32
  %xor = xor i32 %conv34, %cond
  %buf40 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 6
  %33 = ptrtoint ptr %buf40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf40, align 4
  %len41 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 8
  %35 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len41, align 4
  tail call fastcc void @gsm_print_packet(ptr noundef nonnull @.str.65, i32 noundef %shr, i32 noundef %xor, i8 noundef zeroext %1, ptr noundef %34, i32 noundef %36)
  %dlci42 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 22
  %arrayidx = getelementptr %struct.gsm_mux, ptr %gsm, i32 0, i32 22, i32 %shr
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %control, align 4
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %40, label %if.end31.invalid_crit_edge [
    i8 63, label %sw.bb
    i8 83, label %sw.bb67
    i8 99, label %if.end31.sw.bb117_crit_edge
    i8 115, label %if.end31.sw.bb117_crit_edge277
    i8 15, label %if.end31.sw.bb146_crit_edge
    i8 31, label %if.end31.sw.bb146_crit_edge278
    i8 3, label %if.end31.sw.bb154_crit_edge
    i8 19, label %if.end31.sw.bb154_crit_edge279
    i8 -17, label %if.end31.sw.bb154_crit_edge280
    i8 -1, label %if.end31.sw.bb154_crit_edge281
  ]

if.end31.sw.bb154_crit_edge281:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb154

if.end31.sw.bb154_crit_edge280:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb154

if.end31.sw.bb154_crit_edge279:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb154

if.end31.sw.bb154_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb154

if.end31.sw.bb146_crit_edge278:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb146

if.end31.sw.bb146_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb146

if.end31.sw.bb117_crit_edge277:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb117

if.end31.sw.bb117_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb117

if.end31.invalid_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalid

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %xor)
  %cmp46 = icmp eq i32 %xor, 1
  br i1 %cmp46, label %sw.bb.invalid_crit_edge, label %if.end49

sw.bb.invalid_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalid

if.end49:                                         ; preds = %sw.bb
  %cmp50 = icmp eq ptr %38, null
  br i1 %cmp50, label %if.end54, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.end54:                                         ; preds = %if.end49
  %call53 = tail call fastcc ptr @gsm_dlci_alloc(ptr noundef %gsm, i32 noundef %shr)
  %cmp55 = icmp eq ptr %call53, null
  br i1 %cmp55, label %if.end54.cleanup_crit_edge, label %if.end54.if.end58_crit_edge

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end58:                                         ; preds = %if.end54.if.end58_crit_edge, %if.end49.if.end58_crit_edge
  %dlci.0260 = phi ptr [ %call53, %if.end54.if.end58_crit_edge ], [ %38, %if.end49.if.end58_crit_edge ]
  %dead = getelementptr inbounds %struct.gsm_dlci, ptr %dlci.0260, i32 0, i32 14
  %42 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dead, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool59.not = icmp eq i8 %43, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @gsm_send(ptr noundef %gsm, i32 noundef %shr, i32 noundef 0, i32 noundef 31) #16
  br label %cleanup

if.else:                                          ; preds = %if.end58
  tail call fastcc void @gsm_send(ptr noundef %gsm, i32 noundef %shr, i32 noundef 0, i32 noundef 115) #16
  tail call fastcc void @gsm_dlci_open(ptr noundef nonnull %dlci.0260)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %tobool61.not = icmp ult i32 %30, 2
  br i1 %tobool61.not, label %if.else.cleanup_crit_edge, label %if.then62

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %44 = load i32, ptr @addr_cnt, align 4
  %arrayidx63 = getelementptr [256 x i32], ptr @addr_open, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr, ptr %arrayidx63, align 4
  %inc64 = add i32 %44, 1
  store i32 %inc64, ptr @addr_cnt, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %xor)
  %cmp69 = icmp eq i32 %xor, 1
  br i1 %cmp69, label %sw.bb67.invalid_crit_edge, label %if.end72

sw.bb67.invalid_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalid

if.end72:                                         ; preds = %sw.bb67
  %cmp73 = icmp eq ptr %38, null
  br i1 %cmp73, label %if.end72.if.then77_crit_edge, label %lor.lhs.false

if.end72.if.then77_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.end72
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %38, i32 0, i32 2
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp75 = icmp eq i32 %47, 0
  br i1 %cmp75, label %lor.lhs.false.if.then77_crit_edge, label %if.end78

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.end72.if.then77_crit_edge
  tail call fastcc void @gsm_send(ptr noundef %gsm, i32 noundef %shr, i32 noundef 0, i32 noundef 31) #16
  br label %cleanup

if.end78:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %tobool79.not = icmp ult i32 %30, 2
  br i1 %tobool79.not, label %if.then80, label %if.else94

if.then80:                                        ; preds = %if.end78
  %48 = load i32, ptr @addr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp81 = icmp sgt i32 %48, 0
  br i1 %cmp81, label %for.cond.preheader, label %if.then80.if.end91_crit_edge

if.then80.if.end91_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

for.cond.preheader:                               ; preds = %if.then80
  %49 = load i32, ptr @addr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp84268 = icmp sgt i32 %49, 0
  br i1 %cmp84268, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end91_crit_edge

for.cond.preheader.if.end91_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0269 = phi i32 [ %inc90, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx86 = getelementptr [256 x i32], ptr @addr_open, i32 0, i32 %i.0269
  %50 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx86, align 4
  %arrayidx88 = getelementptr %struct.gsm_mux, ptr %gsm, i32 0, i32 22, i32 %51
  %52 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx88, align 4
  tail call fastcc void @gsm_dlci_close(ptr noundef %53)
  %54 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx86, align 4
  %inc90 = add nuw nsw i32 %i.0269, 1
  %55 = load i32, ptr @addr_cnt, align 4
  %cmp84 = icmp slt i32 %inc90, %55
  br i1 %cmp84, label %for.body.for.body_crit_edge, label %for.body.if.end91_crit_edge

for.body.if.end91_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end91:                                         ; preds = %for.body.if.end91_crit_edge, %for.cond.preheader.if.end91_crit_edge, %if.then80.if.end91_crit_edge
  %56 = ptrtoint ptr %dlci42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dlci42, align 4
  tail call fastcc void @gsm_dlci_close(ptr noundef %57)
  store i32 0, ptr @addr_cnt, align 4
  tail call fastcc void @gsm_send(ptr noundef %gsm, i32 noundef 0, i32 noundef 0, i32 noundef 115) #16
  br label %cleanup

if.else94:                                        ; preds = %if.end78
  tail call fastcc void @gsm_send(ptr noundef %gsm, i32 noundef %shr, i32 noundef 0, i32 noundef 115) #16
  tail call fastcc void @gsm_dlci_close(ptr noundef nonnull %38)
  %58 = load i32, ptr @addr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp96264 = icmp sgt i32 %58, 0
  br i1 %cmp96264, label %if.else94.for.body98_crit_edge, label %if.else94.cleanup_crit_edge

if.else94.cleanup_crit_edge:                      ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else94.for.body98_crit_edge:                   ; preds = %if.else94
  br label %for.body98

for.body98:                                       ; preds = %for.inc113.for.body98_crit_edge, %if.else94.for.body98_crit_edge
  %j.0265 = phi i32 [ %inc114, %for.inc113.for.body98_crit_edge ], [ 0, %if.else94.for.body98_crit_edge ]
  %arrayidx99 = getelementptr [256 x i32], ptr @addr_open, i32 0, i32 %j.0265
  %59 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %shr)
  %cmp100 = icmp eq i32 %60, %shr
  br i1 %cmp100, label %for.cond103.preheader, label %for.inc113

for.cond103.preheader:                            ; preds = %for.body98
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0265, i32 %58)
  %cmp104266 = icmp slt i32 %j.0265, %58
  br i1 %cmp104266, label %for.cond103.preheader.for.body106_crit_edge, label %for.cond103.preheader.for.end111_crit_edge

for.cond103.preheader.for.end111_crit_edge:       ; preds = %for.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end111

for.cond103.preheader.for.body106_crit_edge:      ; preds = %for.cond103.preheader
  br label %for.body106

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.cond103.preheader.for.body106_crit_edge
  %k.0267 = phi i32 [ %add, %for.body106.for.body106_crit_edge ], [ %j.0265, %for.cond103.preheader.for.body106_crit_edge ]
  %add = add nuw nsw i32 %k.0267, 1
  %arrayidx107 = getelementptr [256 x i32], ptr @addr_open, i32 0, i32 %add
  %61 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx107, align 4
  %arrayidx108 = getelementptr [256 x i32], ptr @addr_open, i32 0, i32 %k.0267
  %63 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx108, align 4
  %exitcond272.not = icmp eq i32 %add, %58
  br i1 %exitcond272.not, label %for.body106.for.end111_crit_edge, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body106

for.body106.for.end111_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end111

for.end111:                                       ; preds = %for.body106.for.end111_crit_edge, %for.cond103.preheader.for.end111_crit_edge
  %dec = add nsw i32 %58, -1
  store i32 %dec, ptr @addr_cnt, align 4
  br label %cleanup

for.inc113:                                       ; preds = %for.body98
  %inc114 = add nuw nsw i32 %j.0265, 1
  %exitcond.not = icmp eq i32 %inc114, %58
  br i1 %exitcond.not, label %for.inc113.cleanup_crit_edge, label %for.inc113.for.body98_crit_edge

for.inc113.for.body98_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body98

for.inc113.cleanup_crit_edge:                     ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb117:                                         ; preds = %if.end31.sw.bb117_crit_edge, %if.end31.sw.bb117_crit_edge277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %cmp119 = icmp eq i32 %xor, 0
  %cmp122 = icmp eq ptr %38, null
  %or.cond = select i1 %cmp119, i1 true, i1 %cmp122
  br i1 %or.cond, label %sw.bb117.cleanup_crit_edge, label %if.end125

sw.bb117.cleanup_crit_edge:                       ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end125:                                        ; preds = %sw.bb117
  %state126 = getelementptr inbounds %struct.gsm_dlci, ptr %38, i32 0, i32 2
  %64 = ptrtoint ptr %state126 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state126, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %65, label %do.body129 [
    i32 3, label %sw.bb127
    i32 1, label %sw.bb128
  ]

sw.bb127:                                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @gsm_dlci_close(ptr noundef nonnull %38)
  br label %cleanup

sw.bb128:                                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @gsm_dlci_open(ptr noundef nonnull %38)
  br label %cleanup

do.body129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_queue.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_queue, %if.then141)) #16
          to label %cleanup [label %if.then141], !srcloc !252

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %state126 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %state126, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_queue.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef %68) #16
  br label %cleanup

sw.bb146:                                         ; preds = %if.end31.sw.bb146_crit_edge, %if.end31.sw.bb146_crit_edge278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool147.not = icmp eq i32 %xor, 0
  br i1 %tobool147.not, label %if.end149, label %sw.bb146.invalid_crit_edge

sw.bb146.invalid_crit_edge:                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #18
  br label %invalid

if.end149:                                        ; preds = %sw.bb146
  %cmp150 = icmp eq ptr %38, null
  br i1 %cmp150, label %if.end149.cleanup_crit_edge, label %if.end153

if.end149.cleanup_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end153:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @gsm_dlci_close(ptr noundef nonnull %38)
  br label %cleanup

sw.bb154:                                         ; preds = %if.end31.sw.bb154_crit_edge, %if.end31.sw.bb154_crit_edge279, %if.end31.sw.bb154_crit_edge280, %if.end31.sw.bb154_crit_edge281
  %cmp155 = icmp eq ptr %38, null
  br i1 %cmp155, label %sw.bb154.if.then161_crit_edge, label %lor.lhs.false157

sw.bb154.if.then161_crit_edge:                    ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then161

lor.lhs.false157:                                 ; preds = %sw.bb154
  %state158 = getelementptr inbounds %struct.gsm_dlci, ptr %38, i32 0, i32 2
  %69 = ptrtoint ptr %state158 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %state158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp159.not = icmp eq i32 %70, 2
  br i1 %cmp159.not, label %if.end162, label %lor.lhs.false157.if.then161_crit_edge

lor.lhs.false157.if.then161_crit_edge:            ; preds = %lor.lhs.false157
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then161

if.then161:                                       ; preds = %lor.lhs.false157.if.then161_crit_edge, %sw.bb154.if.then161_crit_edge
  tail call fastcc void @gsm_send(ptr noundef %gsm, i32 noundef %shr, i32 noundef 1, i32 noundef 31) #16
  br label %cleanup

if.end162:                                        ; preds = %lor.lhs.false157
  call void @__sanitizer_cov_trace_pc() #18
  %data = getelementptr inbounds %struct.gsm_dlci, ptr %38, i32 0, i32 19
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %73 = ptrtoint ptr %buf40 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf40, align 4
  %75 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len41, align 4
  tail call void %72(ptr noundef nonnull %38, ptr noundef %74, i32 noundef %76) #16
  br label %cleanup

invalid:                                          ; preds = %sw.bb146.invalid_crit_edge, %sw.bb67.invalid_crit_edge, %sw.bb.invalid_crit_edge, %if.end31.invalid_crit_edge, %if.end26.invalid_crit_edge
  %malformed = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 37
  %77 = ptrtoint ptr %malformed to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %malformed, align 4
  %inc167 = add i32 %78, 1
  store i32 %inc167, ptr %malformed, align 4
  br label %cleanup

cleanup:                                          ; preds = %invalid, %if.end162, %if.then161, %if.end153, %if.end149.cleanup_crit_edge, %if.then141, %do.body129, %sw.bb128, %sw.bb127, %sw.bb117.cleanup_crit_edge, %for.inc113.cleanup_crit_edge, %for.end111, %if.else94.cleanup_crit_edge, %if.end91, %if.then77, %if.then62, %if.else.cleanup_crit_edge, %if.then60, %if.end54.cleanup_crit_edge, %if.then21, %do.body, %if.then14.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_dlci_open(ptr noundef %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 6
  %call = tail call i32 @del_timer(ptr noundef %t1) #16
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %state, align 4
  %1 = load i32, ptr @debug, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_dlci_open.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_dlci_open, %if.then5)) #16
          to label %if.end6 [label %if.then5], !srcloc !252

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %addr = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_dlci_open.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.68, i32 noundef %3) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %4 = load ptr, ptr @gsm_tty_driver, align 4
  %addr7 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 1
  %5 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr7, align 4
  %call8 = tail call ptr @tty_register_device(ptr noundef %4, i32 noundef %6, ptr noundef null) #16
  %7 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dlci, align 4
  %event = getelementptr inbounds %struct.gsm_mux, ptr %8, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %event, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_dlci_close(ptr noundef %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 6
  %call = tail call i32 @del_timer(ptr noundef %t1) #16
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_dlci_close.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_dlci_close, %if.then5)) #16
          to label %if.end6 [label %if.then5], !srcloc !252

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %addr = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_dlci_close.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.70, i32 noundef %2) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  %addr7 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 1
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %port = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8
  tail call void @tty_port_tty_hangup(ptr noundef %port, i1 noundef zeroext false) #16
  %fifo = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 9
  %out = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 9, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %out, align 4
  %7 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fifo, align 4
  %iflags.i = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %iflags.i) #16
  %open_wait = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8, i32 8
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlci, align 4
  %dead = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %dead, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %11 = load ptr, ptr @gsm_tty_driver, align 4
  %12 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr7, align 4
  tail call void @tty_unregister_device(ptr noundef %11, i32 noundef %13) #16
  %14 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dlci, align 4
  %event = getelementptr inbounds %struct.gsm_mux, ptr %15, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %event, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_send(ptr nocapture noundef readonly %gsm, i32 noundef %addr, i32 noundef %cr, i32 noundef %control) unnamed_addr #2 align 64 {
entry:
  %cbuf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cbuf) #16
  %0 = getelementptr inbounds [10 x i8], ptr %cbuf, i32 0, i32 1
  %initiator = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 20
  %1 = call ptr @memset(ptr %cbuf, i32 255, i32 10)
  %2 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = zext i1 %tobool.not to i32
  %xor = xor i32 %cond, %cr
  %encoding = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 12
  %4 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encoding, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb11_crit_edge
    i32 2, label %entry.sw.bb11_crit_edge100
  ]

entry.sw.bb11_crit_edge100:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb11

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = getelementptr inbounds [10 x i8], ptr %cbuf, i32 0, i32 5
  %8 = getelementptr inbounds [10 x i8], ptr %cbuf, i32 0, i32 4
  %9 = getelementptr inbounds [10 x i8], ptr %cbuf, i32 0, i32 3
  %10 = getelementptr inbounds [10 x i8], ptr %cbuf, i32 0, i32 2
  %11 = ptrtoint ptr %cbuf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -7, ptr %cbuf, align 1
  %shl = shl i32 %addr, 2
  %shl1 = shl i32 %xor, 1
  %or = or i32 %shl1, %shl
  %12 = trunc i32 %or to i8
  %conv = or i8 %12, 1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %0, align 1
  %conv4 = trunc i32 %control to i8
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %10, align 1
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %9, align 1
  %xor3.i = and i32 %or, 254
  %xor.i = xor i32 %xor3.i, 254
  %arrayidx.i = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %xor3.i.1 = xor i8 %17, %conv4
  %xor.i.1 = zext i8 %xor3.i.1 to i32
  %arrayidx.i.1 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i.1
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.1, align 1
  %xor3.i.2 = xor i8 %19, 1
  %xor.i.2 = zext i8 %xor3.i.2 to i32
  %arrayidx.i.2 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i.2
  %20 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.2, align 1
  %22 = xor i8 %21, -1
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %8, align 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -7, ptr %7, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge100
  %shl12 = shl i32 %addr, 2
  %shl13 = shl i32 %xor, 1
  %or14 = or i32 %shl13, %shl12
  %25 = trunc i32 %or14 to i8
  %conv16 = or i8 %25, 1
  %conv18 = trunc i32 %control to i8
  %xor3.i81 = and i32 %or14, 254
  %xor.i82 = xor i32 %xor3.i81, 254
  %arrayidx.i83 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i82
  %26 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i83, align 1
  %xor3.i81.1 = xor i8 %27, %conv18
  %xor.i82.1 = zext i8 %xor3.i81.1 to i32
  %arrayidx.i83.1 = getelementptr [256 x i8], ptr @gsm_fcs8, i32 0, i32 %xor.i82.1
  %28 = ptrtoint ptr %arrayidx.i83.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i83.1, align 1
  %30 = xor i8 %29, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %25)
  %switch.i = icmp eq i8 %25, 124
  br i1 %switch.i, label %sw.bb11.if.then.i_crit_edge, label %lor.lhs.false5.i

sw.bb11.if.then.i_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %sw.bb11
  %trunc.i = trunc i8 %conv16 to i7
  %31 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.128)
  switch i7 %trunc.i, label %if.else.i [
    i7 17, label %lor.lhs.false5.i.if.then.i_crit_edge
    i7 19, label %lor.lhs.false5.i.if.then.i_crit_edge101
  ]

lor.lhs.false5.i.if.then.i_crit_edge101:          ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false5.i.if.then.i_crit_edge, %lor.lhs.false5.i.if.then.i_crit_edge101, %sw.bb11.if.then.i_crit_edge
  %incdec.ptr.i88 = getelementptr inbounds [10 x i8], ptr %cbuf, i32 0, i32 2
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 125, ptr %0, align 1
  %33 = xor i8 %25, 33
  %34 = ptrtoint ptr %incdec.ptr.i88 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %incdec.ptr.i88, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv16, ptr %0, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %36 = phi i32 [ 2, %if.then.i ], [ 1, %if.else.i ]
  %37 = getelementptr inbounds [10 x i8], ptr %cbuf, i32 0, i32 %36
  %output.addr.1.i = getelementptr i8, ptr %37, i32 1
  %.off.i.1 = add i8 %conv18, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.1)
  %switch.i.1 = icmp ult i8 %.off.i.1, 2
  br i1 %switch.i.1, label %if.end.i.if.then.i.1_crit_edge, label %lor.lhs.false5.i.1

if.end.i.if.then.i.1_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.1

lor.lhs.false5.i.1:                               ; preds = %if.end.i
  %trunc.i.1 = trunc i32 %control to i7
  %38 = zext i7 %trunc.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.129)
  switch i7 %trunc.i.1, label %if.else.i.1 [
    i7 17, label %lor.lhs.false5.i.1.if.then.i.1_crit_edge
    i7 19, label %lor.lhs.false5.i.1.if.then.i.1_crit_edge102
  ]

lor.lhs.false5.i.1.if.then.i.1_crit_edge102:      ; preds = %lor.lhs.false5.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.1

lor.lhs.false5.i.1.if.then.i.1_crit_edge:         ; preds = %lor.lhs.false5.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.1

if.else.i.1:                                      ; preds = %lor.lhs.false5.i.1
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %output.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv18, ptr %output.addr.1.i, align 1
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %lor.lhs.false5.i.1.if.then.i.1_crit_edge, %lor.lhs.false5.i.1.if.then.i.1_crit_edge102, %if.end.i.if.then.i.1_crit_edge
  %incdec.ptr.i88.1 = getelementptr i8, ptr %37, i32 2
  %40 = ptrtoint ptr %output.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 125, ptr %output.addr.1.i, align 1
  %41 = xor i8 %conv18, 32
  %42 = ptrtoint ptr %incdec.ptr.i88.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %incdec.ptr.i88.1, align 1
  %inc.i.1 = add nuw nsw i32 %36, 1
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.else.i.1
  %43 = phi i32 [ 2, %if.then.i.1 ], [ 1, %if.else.i.1 ]
  %olen.1.i.1 = phi i32 [ %inc.i.1, %if.then.i.1 ], [ %36, %if.else.i.1 ]
  %44 = getelementptr i8, ptr %37, i32 %43
  %output.addr.1.i.1 = getelementptr i8, ptr %44, i32 1
  %inc20.i.1 = add nuw nsw i32 %olen.1.i.1, 1
  %45 = add i8 %29, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %switch.i.2 = icmp ult i8 %45, 2
  br i1 %switch.i.2, label %if.end.i.1.if.then.i.2_crit_edge, label %lor.lhs.false5.i.2

if.end.i.1.if.then.i.2_crit_edge:                 ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.2

lor.lhs.false5.i.2:                               ; preds = %if.end.i.1
  %trunc.i.2 = trunc i8 %30 to i7
  %46 = zext i7 %trunc.i.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.130)
  switch i7 %trunc.i.2, label %if.else.i.2 [
    i7 17, label %lor.lhs.false5.i.2.if.then.i.2_crit_edge
    i7 19, label %lor.lhs.false5.i.2.if.then.i.2_crit_edge103
  ]

lor.lhs.false5.i.2.if.then.i.2_crit_edge103:      ; preds = %lor.lhs.false5.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.2

lor.lhs.false5.i.2.if.then.i.2_crit_edge:         ; preds = %lor.lhs.false5.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.2

if.else.i.2:                                      ; preds = %lor.lhs.false5.i.2
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %output.addr.1.i.1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %30, ptr %output.addr.1.i.1, align 1
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %lor.lhs.false5.i.2.if.then.i.2_crit_edge, %lor.lhs.false5.i.2.if.then.i.2_crit_edge103, %if.end.i.1.if.then.i.2_crit_edge
  %incdec.ptr.i88.2 = getelementptr i8, ptr %output.addr.1.i.1, i32 1
  %48 = ptrtoint ptr %output.addr.1.i.1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 125, ptr %output.addr.1.i.1, align 1
  %49 = xor i8 %29, -33
  %50 = ptrtoint ptr %incdec.ptr.i88.2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %incdec.ptr.i88.2, align 1
  %inc.i.2 = add nuw nsw i32 %olen.1.i.1, 2
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.else.i.2
  %olen.1.i.2 = phi i32 [ %inc.i.2, %if.then.i.2 ], [ %inc20.i.1, %if.else.i.2 ]
  %51 = ptrtoint ptr %cbuf to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 126, ptr %cbuf, align 1
  %add = add nuw nsw i32 %olen.1.i.2, 2
  %arrayidx31 = getelementptr [10 x i8], ptr %cbuf, i32 0, i32 %add
  %52 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 126, ptr %arrayidx31, align 1
  %add32 = add nuw nsw i32 %olen.1.i.2, 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 596, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i.2, %sw.bb
  %len.0 = phi i32 [ %add32, %if.end.i.2 ], [ 6, %sw.bb ]
  %53 = ptrtoint ptr %gsm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gsm, align 4
  %call.i = tail call i32 @tty_write_room(ptr noundef %54) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %len.0)
  %cmp.i = icmp ult i32 %call.i, %len.0
  br i1 %cmp.i, label %if.then.i90, label %if.end.i92

if.then.i90:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %gsm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gsm, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %56, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #16
  br label %gsmld_output.exit

if.end.i92:                                       ; preds = %sw.epilog
  %57 = load i32, ptr @debug, align 4
  %and.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i91 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i91, label %if.end.i92.if.end9.i_crit_edge, label %do.body.i

if.end.i92.if.end9.i_crit_edge:                   ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

do.body.i:                                        ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsmld_output.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_send, %if.then7.i)) #16
          to label %if.end9.i [label %if.then7.i], !srcloc !252

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @print_hex_dump(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %cbuf, i32 noundef %len.0, i1 noundef zeroext true) #16
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %do.body.i, %if.end.i92.if.end9.i_crit_edge
  %58 = ptrtoint ptr %gsm to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gsm, align 4
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write.i, align 4
  %call12.i = call i32 %63(ptr noundef %59, ptr noundef nonnull %cbuf, i32 noundef %len.0) #16
  br label %gsmld_output.exit

gsmld_output.exit:                                ; preds = %if.end9.i, %if.then.i90
  %64 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool51.not = icmp eq i32 %65, 0
  %and54 = and i32 %control, 239
  %spec.select = select i1 %tobool51.not, i32 %and54, i32 %control
  %spec.select75 = select i1 %tobool51.not, i32 0, i32 %cr
  %conv56 = trunc i32 %spec.select to i8
  call fastcc void @gsm_print_packet(ptr noundef nonnull @.str.66, i32 noundef %addr, i32 noundef %spec.select75, i8 noundef zeroext %conv56, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %gsmld_output.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cbuf) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm_dlci_t1(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -152
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %state = getelementptr i8, ptr %t, i32 -144
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %3, label %do.body33 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %retries = getelementptr i8, ptr %t, i32 48
  %5 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %retries, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %addr5 = getelementptr i8, ptr %t, i32 -148
  %7 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @gsm_send(ptr noundef %1, i32 noundef %8, i32 noundef 1, i32 noundef 63) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %t14 = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %t14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t14, align 4
  %mul = mul i32 %11, 100
  %div = sdiv i32 %mul, 100
  %add = add i32 %div, %9
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #16
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.else.if.else14_crit_edge

if.else.if.else14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else14

land.lhs.true:                                    ; preds = %if.else
  %control = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %control, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %13)
  %cmp = icmp eq i8 %13, 31
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.else14_crit_edge

land.lhs.true.if.else14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else14

if.then8:                                         ; preds = %land.lhs.true
  %14 = load i32, ptr @debug, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then8.if.end_crit_edge, label %do.end

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef 0) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then8.if.end_crit_edge
  %mode = getelementptr i8, ptr %t, i32 -48
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %mode, align 4
  %call.i = tail call i32 @del_timer(ptr noundef %t) #16
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %state, align 4
  %17 = load i32, ptr @debug, align 4
  %and.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.gsm_dlci_open.exit_crit_edge, label %do.body.i

if.end.gsm_dlci_open.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_dlci_open.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_dlci_open.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_dlci_t1, %if.then5.i)) #16
          to label %gsm_dlci_open.exit [label %if.then5.i], !srcloc !252

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr5, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_dlci_open.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.68, i32 noundef %19) #16
  br label %gsm_dlci_open.exit

gsm_dlci_open.exit:                               ; preds = %if.then5.i, %do.body.i, %if.end.gsm_dlci_open.exit_crit_edge
  %20 = load ptr, ptr @gsm_tty_driver, align 4
  %21 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr5, align 4
  %call8.i = tail call ptr @tty_register_device(ptr noundef %20, i32 noundef %22, ptr noundef null) #16
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %event.i = getelementptr inbounds %struct.gsm_mux, ptr %24, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %sw.epilog

if.else14:                                        ; preds = %land.lhs.true.if.else14_crit_edge, %if.else.if.else14_crit_edge
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %26, label %if.end.i [
    i32 0, label %if.else14.sw.epilog_crit_edge
    i32 3, label %if.else14.sw.epilog_crit_edge69
  ]

if.else14.sw.epilog_crit_edge69:                  ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.else14.sw.epilog_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i:                                         ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #18
  %n2.i = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 35
  %28 = ptrtoint ptr %n2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n2.i, align 4
  %30 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %retries, align 4
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %state, align 4
  %32 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr5, align 4
  tail call fastcc void @gsm_send(ptr noundef %1, i32 noundef %33, i32 noundef 1, i32 noundef 83) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %t16.i = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 33
  %35 = ptrtoint ptr %t16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %t16.i, align 4
  %mul.i = mul i32 %36, 100
  %div.i = sdiv i32 %mul.i, 100
  %add.i = add i32 %div.i, %34
  %call.i67 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #16
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %retries18 = getelementptr i8, ptr %t, i32 48
  %37 = ptrtoint ptr %retries18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retries18, align 4
  %dec19 = add i32 %38, -1
  store i32 %dec19, ptr %retries18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec19)
  %tobool21.not = icmp eq i32 %dec19, 0
  br i1 %tobool21.not, label %if.else31, label %if.then22

if.then22:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #18
  %addr24 = getelementptr i8, ptr %t, i32 -148
  %39 = ptrtoint ptr %addr24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr24, align 4
  tail call fastcc void @gsm_send(ptr noundef %1, i32 noundef %40, i32 noundef 1, i32 noundef 83) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %t126 = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 33
  %42 = ptrtoint ptr %t126 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %t126, align 4
  %mul27 = mul i32 %43, 100
  %div28 = sdiv i32 %mul27, 100
  %add29 = add i32 %div28, %41
  %call30 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add29) #16
  br label %sw.epilog

if.else31:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @gsm_dlci_close(ptr noundef %add.ptr)
  br label %sw.epilog

do.body33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_dlci_t1.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_dlci_t1, %if.then39)) #16
          to label %sw.epilog [label %if.then39], !srcloc !252

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_dlci_t1.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.80, i32 noundef %45) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then39, %do.body33, %if.else31, %if.then22, %if.end.i, %if.else14.sw.epilog_crit_edge, %if.else14.sw.epilog_crit_edge69, %gsm_dlci_open.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm_dlci_data(ptr noundef %dlci, ptr noundef %data, i32 noundef %clen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_dlci_data.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_dlci_data, %if.then5)) #16
          to label %if.end6 [label %if.then5], !srcloc !252

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_dlci_data.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.82, i32 noundef %clen) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %adaption = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 10
  %1 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %adaption, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %2, label %if.end6.sw.default_crit_edge [
    i32 4, label %if.end6.cleanup_crit_edge
    i32 3, label %if.end6.cleanup_crit_edge60
    i32 2, label %if.end6.while.cond_crit_edge
  ]

if.end6.while.cond_crit_edge:                     ; preds = %if.end6
  br label %while.cond

if.end6.cleanup_crit_edge60:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6.sw.default_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end6.while.cond_crit_edge
  %modem.0 = phi i32 [ %or.i, %while.body.while.cond_crit_edge ], [ 0, %if.end6.while.cond_crit_edge ]
  %len.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ %clen, %if.end6.while.cond_crit_edge ]
  %slen.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %if.end6.while.cond_crit_edge ]
  %data.addr.0 = phi ptr [ %incdec.ptr, %while.body.while.cond_crit_edge ], [ %data, %if.end6.while.cond_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %data.addr.0, i32 1
  %4 = ptrtoint ptr %data.addr.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.addr.0, align 1
  %shl.i = shl i32 %modem.0, 7
  %conv.i = zext i8 %5 to i32
  %6 = lshr i32 %conv.i, 1
  %or.i = or i32 %6, %shl.i
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add i32 %len.0, -1
  %inc = add i32 %slen.0, 1
  %cmp8 = icmp eq i32 %dec, 0
  br i1 %cmp8, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call12 = tail call ptr @tty_port_tty_get(ptr noundef %port1) #16
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %while.end.sw.default_crit_edge, label %if.then14

while.end.sw.default_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %inc11 = add i32 %slen.0, 1
  tail call fastcc void @gsm_process_modem(ptr noundef nonnull %call12, ptr noundef %dlci, i32 noundef %or.i, i32 noundef %inc11)
  tail call void @tty_kref_put(ptr noundef nonnull %call12) #16
  br label %sw.default

sw.default:                                       ; preds = %if.then14, %while.end.sw.default_crit_edge, %if.end6.sw.default_crit_edge
  %len.1 = phi i32 [ %clen, %if.end6.sw.default_crit_edge ], [ %len.0, %if.then14 ], [ %len.0, %while.end.sw.default_crit_edge ]
  %data.addr.1 = phi ptr [ %data, %if.end6.sw.default_crit_edge ], [ %incdec.ptr, %if.then14 ], [ %incdec.ptr, %while.end.sw.default_crit_edge ]
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %port1, ptr noundef %data.addr.1, i8 noundef zeroext 0, i32 noundef %len.1) #16
  tail call void @tty_flip_buffer_push(ptr noundef %port1) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %while.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end6.cleanup_crit_edge60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm_dlci_command(ptr nocapture noundef readonly %dlci, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %command.0 = phi i32 [ 0, %entry ], [ %or.i, %while.body.while.cond_crit_edge ]
  %data.addr.0 = phi ptr [ %data, %entry ], [ %incdec.ptr, %while.body.while.cond_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp = icmp sgt i32 %len.addr.0, 0
  br i1 %cmp, label %while.body, label %while.cond.cleanup11_crit_edge

while.cond.cleanup11_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %len.addr.0, -1
  %incdec.ptr = getelementptr i8, ptr %data.addr.0, i32 1
  %0 = ptrtoint ptr %data.addr.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.0, align 1
  %shl.i = shl i32 %command.0, 7
  %conv.i = zext i8 %1 to i32
  %2 = lshr i32 %conv.i, 1
  %or.i = or i32 %2, %shl.i
  %and.i = and i32 %conv.i, 1
  %cmp1.not = icmp eq i32 %and.i, 0
  br i1 %cmp1.not, label %while.body.while.cond_crit_edge, label %if.then

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.then:                                          ; preds = %while.body
  %incdec.ptr2 = getelementptr i8, ptr %data.addr.0, i32 2
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr, align 1
  %dec3 = add nsw i32 %len.addr.0, -2
  %5 = lshr i8 %4, 1
  %6 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec3, i32 %6)
  %cmp4 = icmp slt i32 %dec3, %6
  br i1 %cmp4, label %if.then.cleanup11_crit_edge, label %if.end

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end:                                           ; preds = %if.then
  %7 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlci, align 4
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %10 = add i32 %or.i, -17
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 29) #16
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %11, label %sw.default.i [
    i32 10, label %sw.bb.i
    i32 0, label %sw.bb10.i
    i32 8, label %sw.bb11.i
    i32 4, label %sw.bb18.i
    i32 12, label %if.then7.while.cond.i.i_crit_edge
    i32 3, label %if.then7.while.cond.i119.i_crit_edge
    i32 2, label %sw.bb22.i
  ]

if.then7.while.cond.i119.i_crit_edge:             ; preds = %if.then7
  br label %while.cond.i119.i

if.then7.while.cond.i.i_crit_edge:                ; preds = %if.then7
  br label %while.cond.i.i

sw.bb.i:                                          ; preds = %if.then7
  %13 = load i32, ptr @addr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp sgt i32 %13, 0
  br i1 %cmp.i, label %sw.bb.i.for.body.i_crit_edge, label %sw.bb.i.if.end.i_crit_edge

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

sw.bb.i.for.body.i_crit_edge:                     ; preds = %sw.bb.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.i.for.body.i_crit_edge
  %i.0249.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x i32], ptr @addr_open, i32 0, i32 %i.0249.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.gsm_mux, ptr %9, i32 0, i32 22, i32 %15
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3.i, align 4
  tail call fastcc void @gsm_dlci_close(ptr noundef %17) #16
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0249.i, 1
  %19 = load i32, ptr @addr_cnt, align 4
  %cmp1.i = icmp slt i32 %inc.i, %19
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %sw.bb.i.if.end.i_crit_edge
  %dlci5.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 22
  %20 = ptrtoint ptr %dlci5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dlci5.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i.cleanup11_crit_edge, label %if.then7.i

if.end.i.cleanup11_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %dead.i = getelementptr inbounds %struct.gsm_dlci, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %dead.i, align 4
  %dead8.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 21
  %23 = ptrtoint ptr %dead8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %dead8.i, align 4
  tail call fastcc void @gsm_dlci_close(ptr noundef nonnull %21) #16
  store i32 0, ptr @addr_cnt, align 4
  tail call fastcc void @gsm_send(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 115) #16
  br label %cleanup11

sw.bb10.i:                                        ; preds = %if.then7
  %ftype.i.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 32
  %24 = ptrtoint ptr %ftype.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ftype.i.i, align 4
  %add1.i.i.i = add nuw nsw i32 %6, 28
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i.i.i, i32 noundef 2592) #22
  %cmp.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %cmp.i.i.i, label %sw.bb10.i.cleanup11_crit_edge, label %if.end.i.i

sw.bb10.i.cleanup11_crit_edge:                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end.i.i:                                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i.i = add nuw nsw i32 %6, 2
  %buffer.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i, i32 0, i32 5
  %add.ptr2.i.i.i = getelementptr i8, ptr %buffer.i.i.i, i32 5
  %data.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr2.i.i.i, ptr %data.i.i.i, align 16
  %len3.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %len3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i.i, ptr %len3.i.i.i, align 4
  %addr4.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %addr4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %addr4.i.i.i, align 8
  %ctrl5.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %ctrl5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %ctrl5.i.i.i, align 1
  %30 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call9.i.i.i.i, ptr %call9.i.i.i.i, align 128
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %32 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 33, ptr %add.ptr2.i.i.i, align 1
  %conv4.i.i = or i8 %4, 1
  %arrayidx6.i.i = getelementptr i8, ptr %buffer.i.i.i, i32 6
  %33 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv4.i.i, ptr %arrayidx6.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %buffer.i.i.i, i32 7
  %34 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %incdec.ptr2, i32 %6)
  %dlci.i.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 22
  %35 = ptrtoint ptr %dlci.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dlci.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tx_lock.i.i.i = getelementptr inbounds %struct.gsm_mux, ptr %38, i32 0, i32 24
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i.i.i) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %36, ptr noundef nonnull %call9.i.i.i.i) #16
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %tx_lock6.i.i.i = getelementptr inbounds %struct.gsm_mux, ptr %40, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock6.i.i.i, i32 noundef %call2.i.i.i) #16
  br label %cleanup11

sw.bb11.i:                                        ; preds = %if.then7
  %constipated.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 23
  %41 = ptrtoint ptr %constipated.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %constipated.i, align 4
  %ftype.i52.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 32
  %42 = ptrtoint ptr %ftype.i52.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ftype.i52.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i58.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 2592, i32 noundef 28) #20
  %cmp.i.i61.i = icmp eq ptr %call7.i.i.i58.i, null
  br i1 %cmp.i.i61.i, label %sw.bb11.i.gsm_control_reply.exit78.i_crit_edge, label %if.end.i77.i

sw.bb11.i.gsm_control_reply.exit78.i_crit_edge:   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_control_reply.exit78.i

if.end.i77.i:                                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #18
  %buffer.i.i64.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i58.i, i32 0, i32 5
  %add.ptr2.i.i65.i = getelementptr i8, ptr %buffer.i.i64.i, i32 5
  %data.i.i66.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i58.i, i32 0, i32 4
  %45 = ptrtoint ptr %data.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr2.i.i65.i, ptr %data.i.i66.i, align 8
  %len3.i.i67.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i58.i, i32 0, i32 3
  %46 = ptrtoint ptr %len3.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %len3.i.i67.i, align 4
  %addr4.i.i68.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i58.i, i32 0, i32 1
  %47 = ptrtoint ptr %addr4.i.i68.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %addr4.i.i68.i, align 8
  %ctrl5.i.i69.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i58.i, i32 0, i32 2
  %48 = ptrtoint ptr %ctrl5.i.i69.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %43, ptr %ctrl5.i.i69.i, align 1
  %49 = ptrtoint ptr %call7.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call7.i.i.i58.i, ptr %call7.i.i.i58.i, align 8
  %prev.i.i.i70.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i58.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i.i58.i, ptr %prev.i.i.i70.i, align 4
  %51 = ptrtoint ptr %add.ptr2.i.i65.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -95, ptr %add.ptr2.i.i65.i, align 1
  %arrayidx6.i71.i = getelementptr i8, ptr %buffer.i.i64.i, i32 6
  %52 = ptrtoint ptr %arrayidx6.i71.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %arrayidx6.i71.i, align 2
  %dlci.i73.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 22
  %53 = ptrtoint ptr %dlci.i73.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dlci.i73.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %tx_lock.i.i74.i = getelementptr inbounds %struct.gsm_mux, ptr %56, i32 0, i32 24
  %call2.i.i75.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i.i74.i) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %54, ptr noundef nonnull %call7.i.i.i58.i) #16
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %tx_lock6.i.i76.i = getelementptr inbounds %struct.gsm_mux, ptr %58, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock6.i.i76.i, i32 noundef %call2.i.i75.i) #16
  br label %gsm_control_reply.exit78.i

gsm_control_reply.exit78.i:                       ; preds = %if.end.i77.i, %sw.bb11.i.gsm_control_reply.exit78.i_crit_edge
  %tx_lock.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 24
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #16
  tail call fastcc void @gsm_data_kick(ptr noundef %9, ptr noundef null) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call14.i) #16
  br label %cleanup11

sw.bb18.i:                                        ; preds = %if.then7
  %constipated19.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 23
  %59 = ptrtoint ptr %constipated19.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %constipated19.i, align 4
  %ftype.i79.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 32
  %60 = ptrtoint ptr %ftype.i79.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ftype.i79.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i85.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 2592, i32 noundef 28) #20
  %cmp.i.i88.i = icmp eq ptr %call7.i.i.i85.i, null
  br i1 %cmp.i.i88.i, label %sw.bb18.i.cleanup11_crit_edge, label %if.end.i104.i

sw.bb18.i.cleanup11_crit_edge:                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end.i104.i:                                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #18
  %buffer.i.i91.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i85.i, i32 0, i32 5
  %add.ptr2.i.i92.i = getelementptr i8, ptr %buffer.i.i91.i, i32 5
  %data.i.i93.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i85.i, i32 0, i32 4
  %63 = ptrtoint ptr %data.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr2.i.i92.i, ptr %data.i.i93.i, align 8
  %len3.i.i94.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i85.i, i32 0, i32 3
  %64 = ptrtoint ptr %len3.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %len3.i.i94.i, align 4
  %addr4.i.i95.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i85.i, i32 0, i32 1
  %65 = ptrtoint ptr %addr4.i.i95.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %addr4.i.i95.i, align 8
  %ctrl5.i.i96.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i85.i, i32 0, i32 2
  %66 = ptrtoint ptr %ctrl5.i.i96.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %61, ptr %ctrl5.i.i96.i, align 1
  %67 = ptrtoint ptr %call7.i.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call7.i.i.i85.i, ptr %call7.i.i.i85.i, align 8
  %prev.i.i.i97.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i85.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i.i85.i, ptr %prev.i.i.i97.i, align 4
  %69 = ptrtoint ptr %add.ptr2.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 97, ptr %add.ptr2.i.i92.i, align 1
  %arrayidx6.i98.i = getelementptr i8, ptr %buffer.i.i91.i, i32 6
  %70 = ptrtoint ptr %arrayidx6.i98.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %arrayidx6.i98.i, align 2
  %dlci.i100.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 22
  %71 = ptrtoint ptr %dlci.i100.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dlci.i100.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %tx_lock.i.i101.i = getelementptr inbounds %struct.gsm_mux, ptr %74, i32 0, i32 24
  %call2.i.i102.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i.i101.i) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %72, ptr noundef nonnull %call7.i.i.i85.i) #16
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 4
  %tx_lock6.i.i103.i = getelementptr inbounds %struct.gsm_mux, ptr %76, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock6.i.i103.i, i32 noundef %call2.i.i102.i) #16
  br label %cleanup11

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then7.while.cond.i.i_crit_edge
  %addr.0.i.i = phi i32 [ %or.i.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ 0, %if.then7.while.cond.i.i_crit_edge ]
  %len.0.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %6, %if.then7.while.cond.i.i_crit_edge ]
  %dp.0.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %incdec.ptr2, %if.then7.while.cond.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %dp.0.i.i, i32 1
  %77 = ptrtoint ptr %dp.0.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dp.0.i.i, align 1
  %shl.i.i.i = shl i32 %addr.0.i.i, 7
  %conv.i.i.i = zext i8 %78 to i32
  %79 = lshr i32 %conv.i.i.i, 1
  %or.i.i.i = or i32 %79, %shl.i.i.i
  %and.i.i.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  %dec.i.i = add i32 %len.0.i.i, -1
  br i1 %cmp.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %cmp1.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i.cleanup11_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.i

while.body.i.i.cleanup11_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %cmp3.i.i = icmp slt i32 %dec.i.i, 1
  %80 = add i32 %or.i.i.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %80)
  %81 = icmp ult i32 %80, -126
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %81
  br i1 %or.cond.i.i, label %while.end.i.i.cleanup11_crit_edge, label %lor.lhs.false8.i.i

while.end.i.i.cleanup11_crit_edge:                ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

lor.lhs.false8.i.i:                               ; preds = %while.end.i.i
  %shr.i.i = lshr i32 %or.i.i.i, 1
  %arrayidx.i.i = getelementptr %struct.gsm_mux, ptr %9, i32 0, i32 22, i32 %shr.i.i
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp10.i.i = icmp eq ptr %83, null
  br i1 %cmp10.i.i, label %lor.lhs.false8.i.i.cleanup11_crit_edge, label %lor.lhs.false8.i.i.while.cond15.i.i_crit_edge

lor.lhs.false8.i.i.while.cond15.i.i_crit_edge:    ; preds = %lor.lhs.false8.i.i
  br label %while.cond15.i.i

lor.lhs.false8.i.i.cleanup11_crit_edge:           ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

while.cond15.i.i:                                 ; preds = %while.body19.i.i.while.cond15.i.i_crit_edge, %lor.lhs.false8.i.i.while.cond15.i.i_crit_edge
  %modem.0.i.i = phi i32 [ %or.i71.i.i, %while.body19.i.i.while.cond15.i.i_crit_edge ], [ 0, %lor.lhs.false8.i.i.while.cond15.i.i_crit_edge ]
  %len.1.i.i = phi i32 [ %dec20.i.i, %while.body19.i.i.while.cond15.i.i_crit_edge ], [ %dec.i.i, %lor.lhs.false8.i.i.while.cond15.i.i_crit_edge ]
  %dp.1.i.i = phi ptr [ %incdec.ptr16.i.i, %while.body19.i.i.while.cond15.i.i_crit_edge ], [ %incdec.ptr.i.i, %lor.lhs.false8.i.i.while.cond15.i.i_crit_edge ]
  %incdec.ptr16.i.i = getelementptr i8, ptr %dp.1.i.i, i32 1
  %84 = ptrtoint ptr %dp.1.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %dp.1.i.i, align 1
  %shl.i69.i.i = shl i32 %modem.0.i.i, 7
  %conv.i70.i.i = zext i8 %85 to i32
  %86 = lshr i32 %conv.i70.i.i, 1
  %or.i71.i.i = or i32 %86, %shl.i69.i.i
  %and.i72.i.i = and i32 %conv.i70.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72.i.i)
  %cmp18.i.i = icmp eq i32 %and.i72.i.i, 0
  %dec20.i.i = add i32 %len.1.i.i, -1
  br i1 %cmp18.i.i, label %while.body19.i.i, label %while.end24.i.i

while.body19.i.i:                                 ; preds = %while.cond15.i.i
  %cmp21.i.i = icmp eq i32 %dec20.i.i, 0
  br i1 %cmp21.i.i, label %while.body19.i.i.cleanup11_crit_edge, label %while.body19.i.i.while.cond15.i.i_crit_edge

while.body19.i.i.while.cond15.i.i_crit_edge:      ; preds = %while.body19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond15.i.i

while.body19.i.i.cleanup11_crit_edge:             ; preds = %while.body19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

while.end24.i.i:                                  ; preds = %while.cond15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec20.i.i)
  %cmp26.i.i = icmp sgt i32 %dec20.i.i, 0
  br i1 %cmp26.i.i, label %while.end24.i.i.while.cond28.i.i_crit_edge, label %while.end24.i.i.if.end38.i.i_crit_edge

while.end24.i.i.if.end38.i.i_crit_edge:           ; preds = %while.end24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38.i.i

while.end24.i.i.while.cond28.i.i_crit_edge:       ; preds = %while.end24.i.i
  br label %while.cond28.i.i

while.cond28.i.i:                                 ; preds = %while.body32.i.i.while.cond28.i.i_crit_edge, %while.end24.i.i.while.cond28.i.i_crit_edge
  %len.2.i.i = phi i32 [ %dec33.i.i, %while.body32.i.i.while.cond28.i.i_crit_edge ], [ %dec20.i.i, %while.end24.i.i.while.cond28.i.i_crit_edge ]
  %dp.2.i.i = phi ptr [ %incdec.ptr29.i.i, %while.body32.i.i.while.cond28.i.i_crit_edge ], [ %incdec.ptr16.i.i, %while.end24.i.i.while.cond28.i.i_crit_edge ]
  %87 = ptrtoint ptr %dp.2.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dp.2.i.i, align 1
  %89 = and i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp31.i.i = icmp eq i8 %89, 0
  br i1 %cmp31.i.i, label %while.body32.i.i, label %while.end37.i.i

while.body32.i.i:                                 ; preds = %while.cond28.i.i
  %incdec.ptr29.i.i = getelementptr i8, ptr %dp.2.i.i, i32 1
  %dec33.i.i = add i32 %len.2.i.i, -1
  %cmp34.i.i = icmp eq i32 %dec33.i.i, 0
  br i1 %cmp34.i.i, label %while.body32.i.i.cleanup11_crit_edge, label %while.body32.i.i.while.cond28.i.i_crit_edge

while.body32.i.i.while.cond28.i.i_crit_edge:      ; preds = %while.body32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond28.i.i

while.body32.i.i.cleanup11_crit_edge:             ; preds = %while.body32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

while.end37.i.i:                                  ; preds = %while.cond28.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %90 = lshr i8 %88, 1
  %91 = zext i8 %90 to i32
  %shl.i.i = shl i32 %or.i71.i.i, 7
  %or.i.i = or i32 %shl.i.i, %91
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %while.end37.i.i, %while.end24.i.i.if.end38.i.i_crit_edge
  %modem.1.i.i = phi i32 [ %or.i.i, %while.end37.i.i ], [ %or.i71.i.i, %while.end24.i.i.if.end38.i.i_crit_edge ]
  %port.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %83, i32 0, i32 8
  %call39.i.i = tail call ptr @tty_port_tty_get(ptr noundef %port.i.i) #16
  tail call fastcc void @gsm_process_modem(ptr noundef %call39.i.i, ptr noundef nonnull %83, i32 noundef %modem.1.i.i, i32 noundef %dec.i.i) #16
  %tobool.not.i.i = icmp eq ptr %call39.i.i, null
  br i1 %tobool.not.i.i, label %if.end38.i.i.if.end41.i.i_crit_edge, label %if.then40.i.i

if.end38.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41.i.i

if.then40.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @tty_wakeup(ptr noundef nonnull %call39.i.i) #16
  tail call void @tty_kref_put(ptr noundef nonnull %call39.i.i) #16
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then40.i.i, %if.end38.i.i.if.end41.i.i_crit_edge
  %ftype.i.i.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 32
  %92 = ptrtoint ptr %ftype.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ftype.i.i.i, align 4
  %add1.i.i.i.i = add nuw nsw i32 %6, 28
  %call9.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i.i.i.i, i32 noundef 2592) #22
  %cmp.i.i.i109.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %cmp.i.i.i109.i, label %if.end41.i.i.cleanup11_crit_edge, label %if.end.i.i.i

if.end41.i.i.cleanup11_crit_edge:                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end.i.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i.i.i = add nuw nsw i32 %6, 2
  %buffer.i.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i.i, i32 0, i32 5
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %buffer.i.i.i.i, i32 5
  %data.i.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr2.i.i.i.i, ptr %data.i.i.i.i, align 16
  %len3.i.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %len3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add.i.i.i, ptr %len3.i.i.i.i, align 4
  %addr4.i.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %addr4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %addr4.i.i.i.i, align 8
  %ctrl5.i.i.i.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %ctrl5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %93, ptr %ctrl5.i.i.i.i, align 1
  %98 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %call9.i.i.i.i.i, ptr %call9.i.i.i.i.i, align 128
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call9.i.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %100 = ptrtoint ptr %add.ptr2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -31, ptr %add.ptr2.i.i.i.i, align 1
  %conv4.i.i.i = or i8 %4, 1
  %arrayidx6.i.i.i = getelementptr i8, ptr %buffer.i.i.i.i, i32 6
  %101 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv4.i.i.i, ptr %arrayidx6.i.i.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %buffer.i.i.i.i, i32 7
  %102 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %incdec.ptr2, i32 %6)
  %dlci.i.i.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 22
  %103 = ptrtoint ptr %dlci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dlci.i.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %tx_lock.i.i.i.i = getelementptr inbounds %struct.gsm_mux, ptr %106, i32 0, i32 24
  %call2.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i.i.i.i) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %104, ptr noundef nonnull %call9.i.i.i.i.i) #16
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %104, align 4
  %tx_lock6.i.i.i.i = getelementptr inbounds %struct.gsm_mux, ptr %108, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock6.i.i.i.i, i32 noundef %call2.i.i.i.i) #16
  br label %cleanup11

while.cond.i119.i:                                ; preds = %while.body.i122.i.while.cond.i119.i_crit_edge, %if.then7.while.cond.i119.i_crit_edge
  %addr.0.i110.i = phi i32 [ %or.i.i116.i, %while.body.i122.i.while.cond.i119.i_crit_edge ], [ 0, %if.then7.while.cond.i119.i_crit_edge ]
  %len.0.i111.i = phi i32 [ %dec.i120.i, %while.body.i122.i.while.cond.i119.i_crit_edge ], [ %6, %if.then7.while.cond.i119.i_crit_edge ]
  %dp.0.i112.i = phi ptr [ %incdec.ptr.i113.i, %while.body.i122.i.while.cond.i119.i_crit_edge ], [ %incdec.ptr2, %if.then7.while.cond.i119.i_crit_edge ]
  %incdec.ptr.i113.i = getelementptr i8, ptr %dp.0.i112.i, i32 1
  %109 = ptrtoint ptr %dp.0.i112.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %dp.0.i112.i, align 1
  %shl.i.i114.i = shl i32 %addr.0.i110.i, 7
  %conv.i.i115.i = zext i8 %110 to i32
  %111 = lshr i32 %conv.i.i115.i, 1
  %or.i.i116.i = or i32 %111, %shl.i.i114.i
  %and.i.i117.i = and i32 %conv.i.i115.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i117.i)
  %cmp.i118.i = icmp eq i32 %and.i.i117.i, 0
  %dec.i120.i = add i32 %len.0.i111.i, -1
  br i1 %cmp.i118.i, label %while.body.i122.i, label %while.end.i126.i

while.body.i122.i:                                ; preds = %while.cond.i119.i
  %cmp1.i121.i = icmp eq i32 %dec.i120.i, 0
  br i1 %cmp1.i121.i, label %while.body.i122.i.cleanup11_crit_edge, label %while.body.i122.i.while.cond.i119.i_crit_edge

while.body.i122.i.while.cond.i119.i_crit_edge:    ; preds = %while.body.i122.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i119.i

while.body.i122.i.cleanup11_crit_edge:            ; preds = %while.body.i122.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

while.end.i126.i:                                 ; preds = %while.cond.i119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i120.i)
  %cmp3.i124.i = icmp slt i32 %dec.i120.i, 1
  %112 = add i32 %or.i.i116.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %112)
  %113 = icmp ult i32 %112, -126
  %or.cond.i125.i = select i1 %cmp3.i124.i, i1 true, i1 %113
  br i1 %or.cond.i125.i, label %while.end.i126.i.cleanup11_crit_edge, label %lor.lhs.false8.i129.i

while.end.i126.i.cleanup11_crit_edge:             ; preds = %while.end.i126.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

lor.lhs.false8.i129.i:                            ; preds = %while.end.i126.i
  %shr.i127.i = lshr i32 %or.i.i116.i, 1
  %arrayidx.i128.i = getelementptr %struct.gsm_mux, ptr %9, i32 0, i32 22, i32 %shr.i127.i
  %114 = ptrtoint ptr %arrayidx.i128.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i128.i, align 4
  %cmp9.i.i = icmp eq ptr %115, null
  br i1 %cmp9.i.i, label %lor.lhs.false8.i129.i.cleanup11_crit_edge, label %if.end11.i.i

lor.lhs.false8.i129.i.cleanup11_crit_edge:        ; preds = %lor.lhs.false8.i129.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end11.i.i:                                     ; preds = %lor.lhs.false8.i129.i
  %116 = ptrtoint ptr %incdec.ptr.i113.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %incdec.ptr.i113.i, align 1
  %conv.i.i = zext i8 %117 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp12.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp12.i.i, label %if.end11.i.i.cleanup11_crit_edge, label %if.end15.i.i

if.end11.i.i.cleanup11_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end15.i.i:                                     ; preds = %if.end11.i.i
  %port18.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %115, i32 0, i32 8
  %and20.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool.not.i130.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool.not.i130.i, label %if.end15.i.i.if.end23.i.i_crit_edge, label %if.then21.i.i

if.end15.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i.i

if.then21.i.i:                                    ; preds = %if.end15.i.i
  %tail.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %115, i32 0, i32 8, i32 0, i32 8
  %118 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tail.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %flags.i.i.i, align 4
  %and.i54.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i54.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then21.i.i.if.end12.i.i.i_crit_edge

if.then21.i.i.if.end12.i.i.i_crit_edge:           ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then21.i.i
  %used.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 1
  %122 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %used.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 2
  %124 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp3.i.i.i = icmp slt i32 %123, %125
  br i1 %cmp3.i.i.i, label %if.end.i.i131.i, label %land.lhs.true.i.i.i.if.end12.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i.i.i

if.end.i.i131.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 6
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i.i, i32 %123
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %125
  %126 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 4, ptr %add.ptr.i.i.i.i, align 1
  %127 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %128, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  %add.ptr.i1.i.i.i = getelementptr i8, ptr %data.i.i.i.i.i, i32 %128
  %129 = ptrtoint ptr %add.ptr.i1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %add.ptr.i1.i.i.i, align 1
  br label %if.end23.i.i

if.end12.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end12.i.i.i_crit_edge, %if.then21.i.i.if.end12.i.i.i_crit_edge
  %call13.i.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port18.i.i, i8 noundef zeroext 0, i8 noundef zeroext 4) #16
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end12.i.i.i, %if.end.i.i131.i, %if.end15.i.i.if.end23.i.i_crit_edge
  %and25.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end23.i.i.if.end29.i.i_crit_edge, label %if.then27.i.i

if.end23.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

if.then27.i.i:                                    ; preds = %if.end23.i.i
  %tail.i55.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %115, i32 0, i32 8, i32 0, i32 8
  %130 = ptrtoint ptr %tail.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tail.i55.i.i, align 4
  %flags.i56.i.i = getelementptr inbounds %struct.tty_buffer, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %flags.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i56.i.i, align 4
  %and.i57.i.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.i.i)
  %tobool.not.i58.i.i = icmp eq i32 %and.i57.i.i, 0
  br i1 %tobool.not.i58.i.i, label %land.lhs.true.i62.i.i, label %if.then27.i.i.if.end12.i70.i.i_crit_edge

if.then27.i.i.if.end12.i70.i.i_crit_edge:         ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i70.i.i

land.lhs.true.i62.i.i:                            ; preds = %if.then27.i.i
  %used.i59.i.i = getelementptr inbounds %struct.tty_buffer, ptr %131, i32 0, i32 1
  %134 = ptrtoint ptr %used.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %used.i59.i.i, align 4
  %size.i60.i.i = getelementptr inbounds %struct.tty_buffer, ptr %131, i32 0, i32 2
  %136 = ptrtoint ptr %size.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %size.i60.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp3.i61.i.i = icmp slt i32 %135, %137
  br i1 %cmp3.i61.i.i, label %if.end.i68.i.i, label %land.lhs.true.i62.i.i.if.end12.i70.i.i_crit_edge

land.lhs.true.i62.i.i.if.end12.i70.i.i_crit_edge: ; preds = %land.lhs.true.i62.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i70.i.i

if.end.i68.i.i:                                   ; preds = %land.lhs.true.i62.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i63.i.i = getelementptr inbounds %struct.tty_buffer, ptr %131, i32 0, i32 6
  %add.ptr.i.i.i64.i.i = getelementptr i8, ptr %data.i.i.i63.i.i, i32 %135
  %add.ptr.i.i65.i.i = getelementptr i8, ptr %add.ptr.i.i.i64.i.i, i32 %137
  %138 = ptrtoint ptr %add.ptr.i.i65.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 3, ptr %add.ptr.i.i65.i.i, align 1
  %139 = ptrtoint ptr %used.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %used.i59.i.i, align 4
  %inc.i66.i.i = add i32 %140, 1
  store i32 %inc.i66.i.i, ptr %used.i59.i.i, align 4
  %add.ptr.i1.i67.i.i = getelementptr i8, ptr %data.i.i.i63.i.i, i32 %140
  %141 = ptrtoint ptr %add.ptr.i1.i67.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %add.ptr.i1.i67.i.i, align 1
  br label %if.end29.i.i

if.end12.i70.i.i:                                 ; preds = %land.lhs.true.i62.i.i.if.end12.i70.i.i_crit_edge, %if.then27.i.i.if.end12.i70.i.i_crit_edge
  %call13.i69.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port18.i.i, i8 noundef zeroext 0, i8 noundef zeroext 3) #16
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end12.i70.i.i, %if.end.i68.i.i, %if.end23.i.i.if.end29.i.i_crit_edge
  %and31.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end29.i.i.if.end35.i.i_crit_edge, label %if.then33.i.i

if.end29.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i.i

if.then33.i.i:                                    ; preds = %if.end29.i.i
  %tail.i72.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %115, i32 0, i32 8, i32 0, i32 8
  %142 = ptrtoint ptr %tail.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tail.i72.i.i, align 4
  %flags.i73.i.i = getelementptr inbounds %struct.tty_buffer, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %flags.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags.i73.i.i, align 4
  %and.i74.i.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74.i.i)
  %tobool.not.i75.i.i = icmp eq i32 %and.i74.i.i, 0
  br i1 %tobool.not.i75.i.i, label %land.lhs.true.i79.i.i, label %if.then33.i.i.if.end12.i87.i.i_crit_edge

if.then33.i.i.if.end12.i87.i.i_crit_edge:         ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i87.i.i

land.lhs.true.i79.i.i:                            ; preds = %if.then33.i.i
  %used.i76.i.i = getelementptr inbounds %struct.tty_buffer, ptr %143, i32 0, i32 1
  %146 = ptrtoint ptr %used.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %used.i76.i.i, align 4
  %size.i77.i.i = getelementptr inbounds %struct.tty_buffer, ptr %143, i32 0, i32 2
  %148 = ptrtoint ptr %size.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %size.i77.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %149)
  %cmp3.i78.i.i = icmp slt i32 %147, %149
  br i1 %cmp3.i78.i.i, label %if.end.i85.i.i, label %land.lhs.true.i79.i.i.if.end12.i87.i.i_crit_edge

land.lhs.true.i79.i.i.if.end12.i87.i.i_crit_edge: ; preds = %land.lhs.true.i79.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i87.i.i

if.end.i85.i.i:                                   ; preds = %land.lhs.true.i79.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i80.i.i = getelementptr inbounds %struct.tty_buffer, ptr %143, i32 0, i32 6
  %add.ptr.i.i.i81.i.i = getelementptr i8, ptr %data.i.i.i80.i.i, i32 %147
  %add.ptr.i.i82.i.i = getelementptr i8, ptr %add.ptr.i.i.i81.i.i, i32 %149
  %150 = ptrtoint ptr %add.ptr.i.i82.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 2, ptr %add.ptr.i.i82.i.i, align 1
  %151 = ptrtoint ptr %used.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %used.i76.i.i, align 4
  %inc.i83.i.i = add i32 %152, 1
  store i32 %inc.i83.i.i, ptr %used.i76.i.i, align 4
  %add.ptr.i1.i84.i.i = getelementptr i8, ptr %data.i.i.i80.i.i, i32 %152
  %153 = ptrtoint ptr %add.ptr.i1.i84.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %add.ptr.i1.i84.i.i, align 1
  br label %if.end35.i.i

if.end12.i87.i.i:                                 ; preds = %land.lhs.true.i79.i.i.if.end12.i87.i.i_crit_edge, %if.then33.i.i.if.end12.i87.i.i_crit_edge
  %call13.i86.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port18.i.i, i8 noundef zeroext 0, i8 noundef zeroext 2) #16
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.end12.i87.i.i, %if.end.i85.i.i, %if.end29.i.i.if.end35.i.i_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %port18.i.i) #16
  %ftype.i.i133.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 32
  %154 = ptrtoint ptr %ftype.i.i133.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ftype.i.i133.i, align 4
  %add1.i.i.i134.i = add nuw nsw i32 %6, 28
  %call9.i.i.i.i160.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i.i.i134.i, i32 noundef 2592) #22
  %cmp.i.i.i163.i = icmp eq ptr %call9.i.i.i.i160.i, null
  br i1 %cmp.i.i.i163.i, label %if.end35.i.i.cleanup11_crit_edge, label %if.end.i89.i.i

if.end35.i.i.cleanup11_crit_edge:                 ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end.i89.i.i:                                   ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i.i132.i = add nuw nsw i32 %6, 2
  %buffer.i.i.i166.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i160.i, i32 0, i32 5
  %add.ptr2.i.i.i167.i = getelementptr i8, ptr %buffer.i.i.i166.i, i32 5
  %data.i.i.i168.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i160.i, i32 0, i32 4
  %156 = ptrtoint ptr %data.i.i.i168.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %add.ptr2.i.i.i167.i, ptr %data.i.i.i168.i, align 16
  %len3.i.i.i169.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i160.i, i32 0, i32 3
  %157 = ptrtoint ptr %len3.i.i.i169.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add.i.i132.i, ptr %len3.i.i.i169.i, align 4
  %addr4.i.i.i170.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i160.i, i32 0, i32 1
  %158 = ptrtoint ptr %addr4.i.i.i170.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %addr4.i.i.i170.i, align 8
  %ctrl5.i.i.i171.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i.i.i160.i, i32 0, i32 2
  %159 = ptrtoint ptr %ctrl5.i.i.i171.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %155, ptr %ctrl5.i.i.i171.i, align 1
  %160 = ptrtoint ptr %call9.i.i.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %call9.i.i.i.i160.i, ptr %call9.i.i.i.i160.i, align 128
  %prev.i.i.i.i172.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i160.i, i32 0, i32 1
  %161 = ptrtoint ptr %prev.i.i.i.i172.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call9.i.i.i.i160.i, ptr %prev.i.i.i.i172.i, align 4
  %162 = ptrtoint ptr %add.ptr2.i.i.i167.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 81, ptr %add.ptr2.i.i.i167.i, align 1
  %conv4.i.i174.i = or i8 %4, 1
  %arrayidx6.i.i175.i = getelementptr i8, ptr %buffer.i.i.i166.i, i32 6
  %163 = ptrtoint ptr %arrayidx6.i.i175.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv4.i.i174.i, ptr %arrayidx6.i.i175.i, align 2
  %add.ptr.i.i176.i = getelementptr i8, ptr %buffer.i.i.i166.i, i32 7
  %164 = call ptr @memcpy(ptr %add.ptr.i.i176.i, ptr %incdec.ptr2, i32 %6)
  %dlci.i.i177.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 22
  %165 = ptrtoint ptr %dlci.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dlci.i.i177.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %tx_lock.i.i.i178.i = getelementptr inbounds %struct.gsm_mux, ptr %168, i32 0, i32 24
  %call2.i.i.i179.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i.i.i178.i) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %166, ptr noundef nonnull %call9.i.i.i.i160.i) #16
  %169 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %166, align 4
  %tx_lock6.i.i.i180.i = getelementptr inbounds %struct.gsm_mux, ptr %170, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock6.i.i.i180.i, i32 noundef %call2.i.i.i179.i) #16
  br label %cleanup11

sw.bb22.i:                                        ; preds = %if.then7
  %ftype.i181.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 32
  %171 = ptrtoint ptr %ftype.i181.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %ftype.i181.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %173 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i187.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %173, i32 noundef 2592, i32 noundef 28) #20
  %cmp.i.i190.i = icmp eq ptr %call7.i.i.i187.i, null
  br i1 %cmp.i.i190.i, label %sw.bb22.i.cleanup11_crit_edge, label %if.end.i206.i

sw.bb22.i.cleanup11_crit_edge:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end.i206.i:                                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #18
  %buffer.i.i193.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i187.i, i32 0, i32 5
  %add.ptr2.i.i194.i = getelementptr i8, ptr %buffer.i.i193.i, i32 5
  %data.i.i195.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i187.i, i32 0, i32 4
  %174 = ptrtoint ptr %data.i.i195.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %add.ptr2.i.i194.i, ptr %data.i.i195.i, align 8
  %len3.i.i196.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i187.i, i32 0, i32 3
  %175 = ptrtoint ptr %len3.i.i196.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 2, ptr %len3.i.i196.i, align 4
  %addr4.i.i197.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i187.i, i32 0, i32 1
  %176 = ptrtoint ptr %addr4.i.i197.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %addr4.i.i197.i, align 8
  %ctrl5.i.i198.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i187.i, i32 0, i32 2
  %177 = ptrtoint ptr %ctrl5.i.i198.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %172, ptr %ctrl5.i.i198.i, align 1
  %178 = ptrtoint ptr %call7.i.i.i187.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %call7.i.i.i187.i, ptr %call7.i.i.i187.i, align 8
  %prev.i.i.i199.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i187.i, i32 0, i32 1
  %179 = ptrtoint ptr %prev.i.i.i199.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call7.i.i.i187.i, ptr %prev.i.i.i199.i, align 4
  %180 = ptrtoint ptr %add.ptr2.i.i194.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 65, ptr %add.ptr2.i.i194.i, align 1
  %arrayidx6.i200.i = getelementptr i8, ptr %buffer.i.i193.i, i32 6
  %181 = ptrtoint ptr %arrayidx6.i200.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 1, ptr %arrayidx6.i200.i, align 2
  %dlci.i202.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 22
  %182 = ptrtoint ptr %dlci.i202.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dlci.i202.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %tx_lock.i.i203.i = getelementptr inbounds %struct.gsm_mux, ptr %185, i32 0, i32 24
  %call2.i.i204.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i.i203.i) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %183, ptr noundef nonnull %call7.i.i.i187.i) #16
  %186 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %183, align 4
  %tx_lock6.i.i205.i = getelementptr inbounds %struct.gsm_mux, ptr %187, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock6.i.i205.i, i32 noundef %call2.i.i204.i) #16
  br label %cleanup11

sw.default.i:                                     ; preds = %if.then7
  %ftype.i208.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 32
  %188 = ptrtoint ptr %ftype.i208.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %ftype.i208.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %190 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i214.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %190, i32 noundef 2592, i32 noundef 29) #20
  %cmp.i.i217.i = icmp eq ptr %call7.i.i.i214.i, null
  br i1 %cmp.i.i217.i, label %sw.default.i.cleanup11_crit_edge, label %if.end.i233.i

sw.default.i.cleanup11_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup11

if.end.i233.i:                                    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv24.i = trunc i32 %or.i to i8
  %buffer.i.i220.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i214.i, i32 0, i32 5
  %add.ptr2.i.i221.i = getelementptr i8, ptr %buffer.i.i220.i, i32 5
  %data.i.i222.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i214.i, i32 0, i32 4
  %191 = ptrtoint ptr %data.i.i222.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %add.ptr2.i.i221.i, ptr %data.i.i222.i, align 8
  %len3.i.i223.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i214.i, i32 0, i32 3
  %192 = ptrtoint ptr %len3.i.i223.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 3, ptr %len3.i.i223.i, align 4
  %addr4.i.i224.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i214.i, i32 0, i32 1
  %193 = ptrtoint ptr %addr4.i.i224.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %addr4.i.i224.i, align 8
  %ctrl5.i.i225.i = getelementptr inbounds %struct.gsm_msg, ptr %call7.i.i.i214.i, i32 0, i32 2
  %194 = ptrtoint ptr %ctrl5.i.i225.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %189, ptr %ctrl5.i.i225.i, align 1
  %195 = ptrtoint ptr %call7.i.i.i214.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %call7.i.i.i214.i, ptr %call7.i.i.i214.i, align 8
  %prev.i.i.i226.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i214.i, i32 0, i32 1
  %196 = ptrtoint ptr %prev.i.i.i226.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call7.i.i.i214.i, ptr %prev.i.i.i226.i, align 4
  %197 = ptrtoint ptr %add.ptr2.i.i221.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 17, ptr %add.ptr2.i.i221.i, align 1
  %arrayidx6.i227.i = getelementptr i8, ptr %buffer.i.i220.i, i32 6
  %198 = ptrtoint ptr %arrayidx6.i227.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 3, ptr %arrayidx6.i227.i, align 2
  %add.ptr.i228.i = getelementptr i8, ptr %buffer.i.i220.i, i32 7
  %199 = ptrtoint ptr %add.ptr.i228.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv24.i, ptr %add.ptr.i228.i, align 1
  %dlci.i229.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 22
  %200 = ptrtoint ptr %dlci.i229.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dlci.i229.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %tx_lock.i.i230.i = getelementptr inbounds %struct.gsm_mux, ptr %203, i32 0, i32 24
  %call2.i.i231.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i.i230.i) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %201, ptr noundef nonnull %call7.i.i.i214.i) #16
  %204 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %201, align 4
  %tx_lock6.i.i232.i = getelementptr inbounds %struct.gsm_mux, ptr %205, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock6.i.i232.i, i32 noundef %call2.i.i231.i) #16
  br label %cleanup11

if.else:                                          ; preds = %if.end
  %control_lock.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 30
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %control_lock.i) #16
  %pending_cmd.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 29
  %206 = ptrtoint ptr %pending_cmd.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %pending_cmd.i, align 4
  %cmp5.not.i = icmp eq ptr %207, null
  br i1 %cmp5.not.i, label %if.else.gsm_control_response.exit_crit_edge, label %land.lhs.true.i

if.else.gsm_control_response.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_control_response.exit

land.lhs.true.i:                                  ; preds = %if.else
  %or.i21 = or i32 %or.i, 1
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %207, align 4
  %conv7.i = zext i8 %209 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i21, i32 %conv7.i)
  %cmp8.i = icmp eq i32 %or.i21, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %or.i21)
  %cmp10.i = icmp eq i32 %or.i21, 9
  %or.cond.i = or i1 %cmp10.i, %cmp8.i
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.gsm_control_response.exit_crit_edge

land.lhs.true.i.gsm_control_response.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_control_response.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %t2_timer.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 27
  %call12.i = tail call i32 @del_timer(ptr noundef %t2_timer.i) #16
  %210 = ptrtoint ptr %pending_cmd.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %pending_cmd.i, align 4
  br i1 %cmp10.i, label %if.then16.i, label %if.then.i.if.end.i22_crit_edge

if.then.i.if.end.i22_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i22

if.then16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %error.i = getelementptr inbounds %struct.gsm_control, ptr %207, i32 0, i32 4
  %211 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 -95, ptr %error.i, align 4
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then16.i, %if.then.i.if.end.i22_crit_edge
  %done.i = getelementptr inbounds %struct.gsm_control, ptr %207, i32 0, i32 3
  %212 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 1, ptr %done.i, align 4
  %event.i = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %event.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %gsm_control_response.exit

gsm_control_response.exit:                        ; preds = %if.end.i22, %land.lhs.true.i.gsm_control_response.exit_crit_edge, %if.else.gsm_control_response.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %control_lock.i, i32 noundef %call2.i) #16
  br label %cleanup11

cleanup11:                                        ; preds = %gsm_control_response.exit, %if.end.i233.i, %sw.default.i.cleanup11_crit_edge, %if.end.i206.i, %sw.bb22.i.cleanup11_crit_edge, %if.end.i89.i.i, %if.end35.i.i.cleanup11_crit_edge, %if.end11.i.i.cleanup11_crit_edge, %lor.lhs.false8.i129.i.cleanup11_crit_edge, %while.end.i126.i.cleanup11_crit_edge, %while.body.i122.i.cleanup11_crit_edge, %if.end.i.i.i, %if.end41.i.i.cleanup11_crit_edge, %while.body32.i.i.cleanup11_crit_edge, %while.body19.i.i.cleanup11_crit_edge, %lor.lhs.false8.i.i.cleanup11_crit_edge, %while.end.i.i.cleanup11_crit_edge, %while.body.i.i.cleanup11_crit_edge, %if.end.i104.i, %sw.bb18.i.cleanup11_crit_edge, %gsm_control_reply.exit78.i, %if.end.i.i, %sw.bb10.i.cleanup11_crit_edge, %if.then7.i, %if.end.i.cleanup11_crit_edge, %if.then.cleanup11_crit_edge, %while.cond.cleanup11_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gsm_carrier_raised(ptr nocapture noundef readonly %port) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %state = getelementptr i8, ptr %port, i32 -196
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %encoding = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end3
  %dlci5 = getelementptr inbounds %struct.gsm_mux, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %dlci5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dlci5, align 4
  %mode = getelementptr inbounds %struct.gsm_dlci, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6 = icmp eq i32 %10, 1
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %modem_rx = getelementptr i8, ptr %port, i32 604
  %11 = ptrtoint ptr %modem_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %modem_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end10_crit_edge

land.lhs.true7.if.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true7.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %modem_rx11 = getelementptr i8, ptr %port, i32 604
  %13 = ptrtoint ptr %modem_rx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %modem_rx11, align 4
  %and12 = and i32 %14, 64
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and12, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %land.lhs.true7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm_dtr_rts(ptr nocapture noundef %port, i32 noundef %onoff) #2 align 64 {
entry:
  %modembits.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -204
  %modem_tx1 = getelementptr i8, ptr %port, i32 608
  %0 = ptrtoint ptr %modem_tx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %modem_tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %and = and i32 %1, -7
  %masksel = select i1 %tobool.not, i32 0, i32 6
  %modem_tx.0 = or i32 %and, %masksel
  call void @__sanitizer_cov_trace_cmp4(i32 %modem_tx.0, i32 %1)
  %cmp.not = icmp eq i32 %modem_tx.0, %1
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %entry
  %2 = ptrtoint ptr %modem_tx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %modem_tx.0, ptr %modem_tx1, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %modembits.i) #16
  %3 = getelementptr inbounds [5 x i8], ptr %modembits.i, i32 0, i32 1
  %4 = getelementptr inbounds [5 x i8], ptr %modembits.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %modembits.i, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 -1, ptr %5, align 1
  %7 = ptrtoint ptr %modembits.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %modembits.i, align 1
  %addr.i = getelementptr i8, ptr %port, i32 -200
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 4
  %.tr.i = trunc i32 %9 to i8
  %10 = shl i8 %.tr.i, 2
  %conv3.i = or i8 %10, 3
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3.i, ptr %3, align 1
  %throttled.i.i = getelementptr i8, ptr %port, i32 613
  %12 = ptrtoint ptr %throttled.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %throttled.i.i, align 1, !range !265
  %14 = trunc i32 %modem_tx.0 to i8
  %15 = and i8 %14, 2
  %16 = or i8 %15, %13
  %17 = and i8 %14, 4
  %18 = or i8 %16, %17
  %19 = lshr i8 %14, 2
  %20 = and i8 %19, 32
  %21 = or i8 %18, %20
  %and25.i.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %lor.lhs.false.i.i, label %if.then3.if.then28.i.i_crit_edge

if.then3.if.then28.i.i_crit_edge:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

lor.lhs.false.i.i:                                ; preds = %if.then3
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %initiator.i.i = getelementptr inbounds %struct.gsm_mux, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %initiator.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %initiator.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool27.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool27.not.i.i, label %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then28.i.i_crit_edge

lor.lhs.false.i.i.if.then28.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_encode_modem.exit.i

if.then28.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then28.i.i_crit_edge, %if.then3.if.then28.i.i_crit_edge
  %26 = or i8 %21, 64
  br label %gsm_encode_modem.exit.i

gsm_encode_modem.exit.i:                          ; preds = %if.then28.i.i, %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge
  %modembits.4.i.i = phi i8 [ %26, %if.then28.i.i ], [ %21, %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge ]
  %shl6.i = shl i8 %modembits.4.i.i, 1
  %or7.i = or i8 %shl6.i, 1
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or7.i, ptr %4, align 1
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %call19.i = call fastcc ptr @gsm_control_send(ptr noundef %29, i32 noundef 113, ptr noundef nonnull %modembits.i, i32 noundef 3) #16
  %cmp.i = icmp eq ptr %call19.i, null
  br i1 %cmp.i, label %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge, label %if.end22.i

gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge: ; preds = %gsm_encode_modem.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmtty_modem_update.exit

if.end22.i:                                       ; preds = %gsm_encode_modem.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %call24.i = call fastcc i32 @gsm_control_wait(ptr noundef %31, ptr noundef nonnull %call19.i) #16
  br label %gsmtty_modem_update.exit

gsmtty_modem_update.exit:                         ; preds = %if.end22.i, %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %modembits.i) #16
  br label %if.end5

if.end5:                                          ; preds = %gsmtty_modem_update.exit, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm_dlci_free(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %port, i32 -204
  %t1 = getelementptr i8, ptr %port, i32 -52
  %call = tail call i32 @del_timer_sync(ptr noundef %t1) #16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %addr = getelementptr i8, ptr %port, i32 -200
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %arrayidx = getelementptr %struct.gsm_mux, ptr %1, i32 0, i32 22, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %fifo = getelementptr i8, ptr %port, i32 576
  tail call void @__kfifo_free(ptr noundef %fifo) #16
  %skb_list = getelementptr i8, ptr %port, i32 620
  %call211 = tail call ptr @skb_dequeue(ptr noundef %skb_list) #16
  %skb = getelementptr i8, ptr %port, i32 616
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call211, ptr %skb, align 4
  %tobool.not12 = icmp eq ptr %call211, null
  br i1 %tobool.not12, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call213 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call211, %entry.while.body_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call213) #16
  %call2 = tail call ptr @skb_dequeue(ptr noundef %skb_list) #16
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %skb, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsmtty_modem_update(ptr nocapture noundef readonly %dlci, i8 noundef zeroext %brk) unnamed_addr #2 align 64 {
entry:
  %modembits = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %modembits) #16
  %0 = getelementptr inbounds [5 x i8], ptr %modembits, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %modembits, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %modembits, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %brk)
  %tobool.not = icmp eq i8 %brk, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 3
  %len.0.tr = trunc i32 %spec.select to i8
  %3 = shl nuw nsw i8 %len.0.tr, 1
  %conv = or i8 %3, 1
  %4 = getelementptr inbounds i8, ptr %modembits, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 -1, ptr %4, align 1
  %6 = ptrtoint ptr %modembits to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %modembits, align 1
  %addr = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %.tr = trunc i32 %8 to i8
  %9 = shl i8 %.tr, 2
  %conv3 = or i8 %9, 3
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3, ptr %0, align 1
  %throttled.i = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 15
  %11 = ptrtoint ptr %throttled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %throttled.i, align 1, !range !265
  %modem_tx.i = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 13
  %13 = ptrtoint ptr %modem_tx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %modem_tx.i, align 4
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 2
  %17 = or i8 %16, %12
  %18 = and i8 %15, 4
  %19 = or i8 %17, %18
  %20 = lshr i8 %15, 2
  %21 = and i8 %20, 32
  %22 = or i8 %19, %21
  %and25.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i, label %entry.if.then28.i_crit_edge

entry.if.then28.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i

lor.lhs.false.i:                                  ; preds = %entry
  %23 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dlci, align 4
  %initiator.i = getelementptr inbounds %struct.gsm_mux, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %initiator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not.i = icmp eq i32 %26, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i.gsm_encode_modem.exit_crit_edge, label %lor.lhs.false.i.if.then28.i_crit_edge

lor.lhs.false.i.if.then28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i

lor.lhs.false.i.gsm_encode_modem.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_encode_modem.exit

if.then28.i:                                      ; preds = %lor.lhs.false.i.if.then28.i_crit_edge, %entry.if.then28.i_crit_edge
  %27 = or i8 %22, 64
  br label %gsm_encode_modem.exit

gsm_encode_modem.exit:                            ; preds = %if.then28.i, %lor.lhs.false.i.gsm_encode_modem.exit_crit_edge
  %modembits.4.i = phi i8 [ %27, %if.then28.i ], [ %22, %lor.lhs.false.i.gsm_encode_modem.exit_crit_edge ]
  %shl6 = shl i8 %modembits.4.i, 1
  %or7 = or i8 %shl6, 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %or7, ptr %1, align 1
  br i1 %tobool.not, label %gsm_encode_modem.exit.if.end18_crit_edge, label %if.then11

gsm_encode_modem.exit.if.end18_crit_edge:         ; preds = %gsm_encode_modem.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then11:                                        ; preds = %gsm_encode_modem.exit
  call void @__sanitizer_cov_trace_pc() #18
  %shl13 = shl i8 %brk, 4
  %or15 = or i8 %shl13, 3
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or15, ptr %2, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %gsm_encode_modem.exit.if.end18_crit_edge
  %30 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dlci, align 4
  %add = add nuw nsw i32 %spec.select, 1
  %call19 = call fastcc ptr @gsm_control_send(ptr noundef %31, i32 noundef 113, ptr noundef nonnull %modembits, i32 noundef %add)
  %cmp = icmp eq ptr %call19, null
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dlci, align 4
  %call24 = call fastcc i32 @gsm_control_wait(ptr noundef %33, ptr noundef nonnull %call19)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end22 ], [ -12, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %modembits) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gsm_control_send(ptr noundef %gsm, i32 noundef %command, ptr noundef %data, i32 noundef %clen) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #20
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup42_crit_edge, label %retry.preheader

entry.cleanup42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup42

retry.preheader:                                  ; preds = %entry
  %pending_cmd = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 29
  %event = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 5
  %control_lock = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 30
  br label %retry

retry:                                            ; preds = %if.then29, %retry.preheader
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 1392) #16
  %1 = ptrtoint ptr %pending_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pending_cmd, align 4
  %cmp5 = icmp eq ptr %2, null
  br i1 %cmp5, label %retry.do.body17_crit_edge, label %if.end7

retry.do.body17_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body17

if.end7:                                          ; preds = %retry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %call868 = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %4 = ptrtoint ptr %pending_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_cmd, align 4
  %cmp1069 = icmp eq ptr %5, null
  br i1 %cmp1069, label %if.end7.for.end_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  br label %cleanup

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  call void @schedule() #16
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %6 = ptrtoint ptr %pending_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_cmd, align 4
  %cmp10 = icmp eq ptr %7, null
  br i1 %cmp10, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end7.for.end_crit_edge
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.body17

do.body17:                                        ; preds = %for.end, %retry.do.body17_crit_edge
  %call21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %control_lock) #16
  %8 = ptrtoint ptr %pending_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pending_cmd, align 4
  %cmp27.not = icmp eq ptr %9, null
  br i1 %cmp27.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %control_lock, i32 noundef %call21) #16
  br label %retry

if.end31:                                         ; preds = %do.body17
  %conv32 = trunc i32 %command to i8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv32, ptr %call7.i.i, align 8
  %data33 = getelementptr inbounds %struct.gsm_control, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %data33, align 4
  %len = getelementptr inbounds %struct.gsm_control, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %clen, ptr %len, align 8
  %13 = ptrtoint ptr %pending_cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %pending_cmd, align 4
  %dlci = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 22
  %14 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dlci, align 4
  %mode = getelementptr inbounds %struct.gsm_dlci, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp35 = icmp eq i32 %17, 1
  br i1 %cmp35, label %if.end31.if.end39_crit_edge, label %if.else

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  %n2 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 35
  %18 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n2, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.end31.if.end39_crit_edge
  %.sink = phi i32 [ %19, %if.else ], [ 1, %if.end31.if.end39_crit_edge ]
  %20 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 28
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 4
  %t2_timer = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %t2 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 34
  %23 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t2, align 4
  %mul = mul i32 %24, 100
  %div = sdiv i32 %mul, 100
  %add = add i32 %div, %22
  %call40 = call i32 @mod_timer(ptr noundef %t2_timer, i32 noundef %add) #16
  call fastcc void @gsm_control_transmit(ptr noundef %gsm, ptr noundef nonnull %call7.i.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %control_lock, i32 noundef %call21) #16
  br label %cleanup42

cleanup42:                                        ; preds = %if.end39, %entry.cleanup42_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsm_control_wait(ptr noundef %gsm, ptr noundef %control) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 1428) #16
  %done = getelementptr inbounds %struct.gsm_control, ptr %control, i32 0, i32 3
  %0 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %event = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 5
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %3 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp620 = icmp eq i32 %4, 1
  br i1 %cmp620, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #16
  %call = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %5 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %done, align 4
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  %error = getelementptr inbounds %struct.gsm_control, ptr %control, i32 0, i32 4
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @kfree(ptr noundef %control) #16
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_process_modem(ptr noundef %tty, ptr noundef %dlci, i32 noundef %modem, i32 noundef %slen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slen)
  %cmp = icmp eq i32 %slen, 1
  %shr = lshr i32 %modem, 7
  %phi.bo = and i32 %modem, 1
  %modem.addr.0.in = select i1 %cmp, i32 %modem, i32 %shr
  %0 = and i32 %modem.addr.0.in, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %.not = icmp eq i32 %0, 4
  %constipated13 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 16
  %1 = ptrtoint ptr %constipated13 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %constipated13, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool14.not = icmp eq i8 %2, 0
  br i1 %.not, label %land.lhs.true12.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool14.not, label %if.then8, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %constipated13 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %constipated13, align 2
  br label %if.end19

land.lhs.true12.critedge:                         ; preds = %entry
  br i1 %tobool14.not, label %land.lhs.true12.critedge.if.end19_crit_edge, label %if.then16

land.lhs.true12.critedge.if.end19_crit_edge:      ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %constipated13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %constipated13, align 2
  tail call fastcc void @gsm_dlci_data_kick(ptr noundef %dlci)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true12.critedge.if.end19_crit_edge, %if.then8, %land.lhs.true.if.end19_crit_edge
  %and34 = and i32 %modem.addr.0.in, 64
  %tobool39.not = icmp ne ptr %tty, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp42 = icmp eq i32 %and34, 0
  %or.cond = and i1 %tobool39.not, %cmp42
  br i1 %or.cond, label %land.lhs.true44, label %if.end19.if.end53_crit_edge

if.end19.if.end53_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

land.lhs.true44:                                  ; preds = %if.end19
  %modem_rx = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 12
  %5 = ptrtoint ptr %modem_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %modem_rx, align 4
  %and45 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true44.if.end53_crit_edge, label %if.then47

land.lhs.true44.if.end53_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then47:                                        ; preds = %land.lhs.true44
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %7 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_cflag, align 4
  %and48 = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then50, label %if.then47.if.end53_crit_edge

if.then47.if.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @tty_hangup(ptr noundef nonnull %tty) #16
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.then47.if.end53_crit_edge, %land.lhs.true44.if.end53_crit_edge, %if.end19.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %tobool56.not83 = icmp eq i32 %phi.bo, 0
  %tobool56.not = or i1 %cmp, %tobool56.not83
  br i1 %tobool56.not, label %if.end53.if.end58_crit_edge, label %if.then57

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then57:                                        ; preds = %if.end53
  %port = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8
  %tail.i = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8, i32 0, i32 8
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then57.if.end12.i_crit_edge

if.then57.if.end12.i_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.then57
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.i = icmp slt i32 %14, %16
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %10, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %14
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %16
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %add.ptr.i.i, align 1
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %19
  %20 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %if.end58

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.then57.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %port, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %if.end58

if.end58:                                         ; preds = %if.end12.i, %if.end.i, %if.end53.if.end58_crit_edge
  %and29 = shl i32 %modem.addr.0.in, 2
  %21 = and i32 %and29, 128
  %and4 = and i32 %modem.addr.0.in, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %and20 = and i32 %modem.addr.0.in, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %spec.select = select i1 %tobool21.not, i32 0, i32 258
  %or27 = or i32 %spec.select, 36
  %mlines.1 = select i1 %tobool5.not, i32 %spec.select, i32 %or27
  %22 = or i32 %21, %and34
  %23 = or i32 %22, %mlines.1
  %modem_rx59 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 12
  %24 = ptrtoint ptr %modem_rx59 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %modem_rx59, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_dlci_data_kick(ptr noundef %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %constipated = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 16
  %0 = ptrtoint ptr %constipated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %constipated, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body1:                                         ; preds = %entry
  %2 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlci, align 4
  %tx_lock = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 24
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #16
  %4 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dlci, align 4
  %tx_bytes = getelementptr inbounds %struct.gsm_mux, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %cmp6 = icmp ult i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10 = icmp eq i32 %7, 0
  br i1 %cmp10, label %if.then12, label %do.body1.if.end20_crit_edge

do.body1.if.end20_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then12:                                        ; preds = %do.body1
  %net = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 21
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %call16 = tail call fastcc i32 @gsm_dlci_data_output_framed(ptr noundef %5, ptr noundef %dlci)
  br label %if.end20

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = tail call fastcc i32 @gsm_dlci_data_output(ptr noundef %5, ptr noundef %dlci)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14, %do.body1.if.end20_crit_edge
  br i1 %cmp6, label %if.then22, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  %10 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dlci, align 4
  %tx_bytes.i = getelementptr inbounds %struct.gsm_mux, ptr %11, i32 0, i32 25
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then22
  %i.034.i = phi i32 [ 1, %if.then22 ], [ %spec.select.i, %cleanup.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %13)
  %cmp1.i = icmp ugt i32 %13, 8192
  br i1 %cmp1.i, label %while.body.i.if.end24_crit_edge, label %if.end.i

while.body.i.if.end24_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.end.i:                                         ; preds = %while.body.i
  %arrayidx.i = getelementptr %struct.gsm_mux, ptr %11, i32 0, i32 22, i32 %i.034.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %15, null
  br i1 %cmp3.i, label %if.end.i.cleanup.i_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %constipated.i = getelementptr inbounds %struct.gsm_dlci, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %constipated.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %constipated.i, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end5.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %adaption.i = getelementptr inbounds %struct.gsm_dlci, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %adaption.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %adaption.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp6.i = icmp slt i32 %19, 3
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %net.i = getelementptr inbounds %struct.gsm_dlci, ptr %15, i32 0, i32 21
  %20 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i, align 4
  %tobool7.not.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i, label %if.then8.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call fastcc i32 @gsm_dlci_data_output(ptr noundef %11, ptr noundef nonnull %15) #16
  br label %if.end10.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  %call9.i = tail call fastcc i32 @gsm_dlci_data_output_framed(ptr noundef %11, ptr noundef nonnull %15) #16
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then8.i
  %len.0.i = phi i32 [ %call9.i, %if.else.i ], [ %call.i, %if.then8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp11.i = icmp slt i32 %len.0.i, 0
  br i1 %cmp11.i, label %if.end10.i.if.end24_crit_edge, label %if.end13.i

if.end10.i.if.end24_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp14.i = icmp eq i32 %len.0.i, 0
  %inc16.i = zext i1 %cmp14.i to i32
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %lor.lhs.false.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  %inc16.sink.i = phi i32 [ %inc16.i, %if.end13.i ], [ 1, %lor.lhs.false.i.cleanup.i_crit_edge ], [ 1, %if.end.i.cleanup.i_crit_edge ]
  %spec.select.i = add nuw nsw i32 %inc16.sink.i, %i.034.i
  %cmp.i = icmp ult i32 %spec.select.i, 64
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end24_crit_edge

cleanup.i.if.end24_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end24:                                         ; preds = %cleanup.i.if.end24_crit_edge, %if.end10.i.if.end24_crit_edge, %while.body.i.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %22 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dlci, align 4
  %tx_lock26 = getelementptr inbounds %struct.gsm_mux, ptr %23, i32 0, i32 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock26, i32 noundef %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsm_dlci_data_output_framed(ptr nocapture noundef readonly %gsm, ptr noundef %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %adaption = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 10
  %0 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adaption, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %spec.store.select = zext i1 %cmp to i32
  %skb = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 17
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then2:                                         ; preds = %entry
  %skb_list = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 18
  %call = tail call ptr @skb_dequeue_tail(ptr noundef %skb_list) #16
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %skb, align 4
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then2.cleanup_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %entry.if.end8_crit_edge
  %first.0 = phi i8 [ 1, %entry.if.end8_crit_edge ], [ 65, %if.then2.if.end8_crit_edge ]
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb, align 4
  %len10 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len10, align 4
  %add = add i32 %8, %spec.store.select
  %mtu = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 19
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp11 = icmp ugt i32 %add, %10
  br i1 %cmp11, label %if.then12, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then12:                                        ; preds = %if.end8
  %11 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %adaption, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp14 = icmp eq i32 %12, 3
  br i1 %cmp14, label %if.then15, label %if.then12.if.end20_crit_edge

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef %6, i32 noundef 1) #16
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.then12.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %len.0 = phi i32 [ %10, %if.then12.if.end20_crit_edge ], [ %add, %if.end8.if.end20_crit_edge ]
  %last.0 = phi i8 [ 0, %if.then12.if.end20_crit_edge ], [ -128, %if.end8.if.end20_crit_edge ]
  %add21 = add i32 %len.0, %spec.store.select
  %addr = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %ftype = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 32
  %15 = ptrtoint ptr %ftype to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ftype, align 4
  %add1.i = add i32 %add21, 26
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i, i32 noundef 2592) #22
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %skb_list26 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 18
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb, align 4
  tail call void @skb_queue_tail(ptr noundef %skb_list26, ptr noundef %18) #16
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end20
  %conv = trunc i32 %14 to i8
  %buffer.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 5
  %add.ptr2.i = getelementptr i8, ptr %buffer.i, i32 5
  %data.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr2.i, ptr %data.i, align 16
  %len3.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add21, ptr %len3.i, align 4
  %addr4.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %addr4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %addr4.i, align 8
  %ctrl5.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %ctrl5.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %16, ptr %ctrl5.i, align 1
  %23 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call9.i.i, ptr %call9.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %adaption, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp31 = icmp eq i32 %26, 4
  br i1 %cmp31, label %if.then33, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %or35 = or i8 %first.0, %last.0
  %incdec.ptr = getelementptr i8, ptr %buffer.i, i32 6
  %27 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or35, ptr %add.ptr2.i, align 1
  %dec = add i32 %len.0, -1
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end29.if.end37_crit_edge
  %dp.0 = phi ptr [ %incdec.ptr, %if.then33 ], [ %add.ptr2.i, %if.end29.if.end37_crit_edge ]
  %len.1 = phi i32 [ %dec, %if.then33 ], [ %len.0, %if.end29.if.end37_crit_edge ]
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  %data39 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %data39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data39, align 4
  %32 = call ptr @memcpy(ptr %dp.0, ptr %31, i32 %len.1)
  %call41 = tail call ptr @skb_pull(ptr noundef %29, i32 noundef %len.1) #16
  tail call fastcc void @__gsm_data_queue(ptr noundef %dlci, ptr noundef nonnull %call9.i.i)
  br i1 %cmp11, label %if.end37.cleanup_crit_edge, label %if.then42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %34, i32 noundef 1) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then42, %if.then25, %if.then15
  %retval.0.ph = phi i32 [ %add21, %if.then42 ], [ -12, %if.then25 ], [ 0, %if.then15 ]
  %35 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end37.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2.cleanup_crit_edge ], [ %add21, %if.end37.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsm_dlci_data_output(ptr nocapture noundef readonly %gsm, ptr noundef %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %adaption = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 10
  %0 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adaption, align 4
  %sub = add i32 %1, -1
  %fifo = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 9
  %out = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 9, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo, align 4
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp83 = icmp eq i32 %3, %5
  br i1 %cmp83, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %mtu = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 19
  %addr = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 1
  %ftype = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 32
  %throttled.i = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 15
  %modem_tx.i = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 13
  %lock = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.end45.if.end_crit_edge, %if.end.lr.ph
  %6 = phi i32 [ %5, %if.end.lr.ph ], [ %44, %if.end45.if.end_crit_edge ]
  %7 = phi i32 [ %3, %if.end.lr.ph ], [ %42, %if.end45.if.end_crit_edge ]
  %total_size.084 = phi i32 [ 0, %if.end.lr.ph ], [ %add53, %if.end45.if.end_crit_edge ]
  %sub1 = sub i32 %7, %6
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %sub1, i32 %9)
  %add = add i32 %sub, %10
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %13 = ptrtoint ptr %ftype to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ftype, align 4
  %add1.i = add i32 %add, 26
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i, i32 noundef 2592) #22
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv = trunc i32 %12 to i8
  %buffer.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 5
  %add.ptr2.i = getelementptr i8, ptr %buffer.i, i32 5
  %data.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr2.i, ptr %data.i, align 16
  %len3.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %len3.i, align 4
  %addr4.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %addr4.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %addr4.i, align 8
  %ctrl5.i = getelementptr inbounds %struct.gsm_msg, ptr %call9.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %ctrl5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %14, ptr %ctrl5.i, align 1
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call9.i.i, ptr %call9.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %adaption, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cond = icmp eq i32 %22, 2
  br i1 %cond, label %sw.bb, label %if.end9.sw.epilog_crit_edge

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  %23 = ptrtoint ptr %throttled.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %throttled.i, align 1, !range !265
  %25 = ptrtoint ptr %modem_tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %modem_tx.i, align 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 2
  %29 = or i8 %28, %24
  %30 = and i8 %27, 4
  %31 = or i8 %29, %30
  %32 = lshr i8 %27, 2
  %33 = and i8 %32, 32
  %34 = or i8 %31, %33
  %and25.i = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i, label %sw.bb.if.then28.i_crit_edge

sw.bb.if.then28.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %35 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dlci, align 4
  %initiator.i = getelementptr inbounds %struct.gsm_mux, ptr %36, i32 0, i32 20
  %37 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %initiator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool27.not.i = icmp eq i32 %38, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i.gsm_encode_modem.exit_crit_edge, label %lor.lhs.false.i.if.then28.i_crit_edge

lor.lhs.false.i.if.then28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i

lor.lhs.false.i.gsm_encode_modem.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_encode_modem.exit

if.then28.i:                                      ; preds = %lor.lhs.false.i.if.then28.i_crit_edge, %sw.bb.if.then28.i_crit_edge
  %39 = or i8 %34, 64
  br label %gsm_encode_modem.exit

gsm_encode_modem.exit:                            ; preds = %if.then28.i, %lor.lhs.false.i.gsm_encode_modem.exit_crit_edge
  %modembits.4.i = phi i8 [ %39, %if.then28.i ], [ %34, %lor.lhs.false.i.gsm_encode_modem.exit_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %buffer.i, i32 6
  %40 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %modembits.4.i, ptr %add.ptr2.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %gsm_encode_modem.exit, %if.end9.sw.epilog_crit_edge
  %dp.0 = phi ptr [ %incdec.ptr, %gsm_encode_modem.exit ], [ %add.ptr2.i, %if.end9.sw.epilog_crit_edge ]
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %call22 = tail call i32 @__kfifo_out(ptr noundef %fifo, ptr noundef %dp.0, i32 noundef %10) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %10)
  %cmp27.not = icmp eq i32 %call22, %10
  br i1 %cmp27.not, label %sw.epilog.if.end45_crit_edge, label %do.end39, !prof !255

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

do.end39:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 838, i32 noundef 9, ptr noundef null) #16
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %sw.epilog.if.end45_crit_edge
  tail call fastcc void @__gsm_data_queue(ptr noundef %dlci, ptr noundef nonnull %call9.i.i)
  %add53 = add i32 %add, %total_size.084
  %41 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fifo, align 4
  %43 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %out, align 4
  %cmp = icmp eq i32 %42, %44
  br i1 %cmp, label %if.end45.cleanup_crit_edge, label %if.end45.if.end_crit_edge

if.end45.if.end_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end45.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %add53, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue_tail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_destroy_network(ptr nocapture noundef readonly %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_destroy_network.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_destroy_network, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_destroy_network.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.84) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %net = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 21
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #16, !srcloc !257
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !255

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #16
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !258
  %dlci1.i.i = getelementptr i8, ptr %1, i32 2308
  %3 = ptrtoint ptr %dlci1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dlci1.i.i, align 4
  %net.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i1.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i1.i:                                     ; preds = %if.then.i.i
  tail call void @unregister_netdev(ptr noundef nonnull %6) #16
  %7 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end17.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2755, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end17.i.i.i:                                   ; preds = %if.then.i1.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev_adaption.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %4, i32 0, i32 11
  %9 = ptrtoint ptr %prev_adaption.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prev_adaption.i.i.i, align 4
  %adaption.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %4, i32 0, i32 10
  %11 = ptrtoint ptr %adaption.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %adaption.i.i.i, align 4
  %prev_data.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %4, i32 0, i32 20
  %12 = ptrtoint ptr %prev_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev_data.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %4, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %data.i.i.i, align 4
  tail call void @free_netdev(ptr noundef nonnull %8) #16
  %15 = ptrtoint ptr %net.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %net.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i.i.i, %do.end.i.i.i, %if.then.i.i.cleanup_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlci_net_free(ptr nocapture noundef %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 21
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2755, i32 noundef 9, ptr noundef null) #16
  br label %return

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev_adaption = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 11
  %2 = ptrtoint ptr %prev_adaption to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prev_adaption, align 4
  %adaption = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 10
  %4 = ptrtoint ptr %adaption to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %adaption, align 4
  %prev_data = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 20
  %5 = ptrtoint ptr %prev_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev_data, align 4
  %data = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %data, align 4
  tail call void @free_netdev(ptr noundef nonnull %1) #16
  %8 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %net, align 4
  br label %return

return:                                           ; preds = %if.end17, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsm_disconnect(ptr noundef %gsm) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dlci1 = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 22
  %0 = ptrtoint ptr %dlci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlci1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @gsm_control_send(ptr noundef %gsm, i32 noundef 97, ptr noundef null, i32 noundef 0)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call fastcc i32 @gsm_control_wait(ptr noundef %gsm, ptr noundef nonnull %call)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %t2_timer = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 27
  %call6 = tail call i32 @del_timer_sync(ptr noundef %t2_timer) #16
  %state.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %3, label %if.end.i [
    i32 0, label %if.end5.gsm_dlci_begin_close.exit_crit_edge
    i32 3, label %if.end5.gsm_dlci_begin_close.exit_crit_edge52
  ]

if.end5.gsm_dlci_begin_close.exit_crit_edge52:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_dlci_begin_close.exit

if.end5.gsm_dlci_begin_close.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_dlci_begin_close.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %n2.i = getelementptr inbounds %struct.gsm_mux, ptr %6, i32 0, i32 35
  %7 = ptrtoint ptr %n2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n2.i, align 4
  %retries.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %retries.i, align 4
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %state.i, align 4
  %addr.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  tail call fastcc void @gsm_send(ptr noundef %6, i32 noundef %12, i32 noundef 1, i32 noundef 83) #16
  %t1.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %t16.i = getelementptr inbounds %struct.gsm_mux, ptr %6, i32 0, i32 33
  %14 = ptrtoint ptr %t16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t16.i, align 4
  %mul.i = mul i32 %15, 100
  %div.i = sdiv i32 %mul.i, 100
  %add.i = add i32 %div.i, %13
  %call.i = tail call i32 @mod_timer(ptr noundef %t1.i, i32 noundef %add.i) #16
  br label %gsm_dlci_begin_close.exit

gsm_dlci_begin_close.exit:                        ; preds = %if.end.i, %if.end5.gsm_dlci_begin_close.exit_crit_edge, %if.end5.gsm_dlci_begin_close.exit_crit_edge52
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 2128) #16
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %gsm_dlci_begin_close.exit.if.end21_crit_edge, label %if.then10

gsm_dlci_begin_close.exit.if.end21_crit_edge:     ; preds = %gsm_dlci_begin_close.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then10:                                        ; preds = %gsm_dlci_begin_close.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %event = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 5
  %call1249 = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1450 = icmp eq i32 %20, 0
  br i1 %cmp1450, label %if.then10.for.end_crit_edge, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  br label %if.end16

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end16:                                         ; preds = %cleanup.if.end16_crit_edge, %if.then10.if.end16_crit_edge
  %call1251 = phi i32 [ %call12, %cleanup.if.end16_crit_edge ], [ %call1249, %if.then10.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1251)
  %tobool17.not = icmp eq i32 %call1251, 0
  br i1 %tobool17.not, label %cleanup, label %if.end16.__out_crit_edge

if.end16.__out_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %__out

cleanup:                                          ; preds = %if.end16
  call void @schedule() #16
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #16
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i, align 4
  %cmp14 = icmp eq i32 %22, 0
  br i1 %cmp14, label %cleanup.for.end_crit_edge, label %cleanup.if.end16_crit_edge

cleanup.if.end16_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry) #16
  br label %__out

__out:                                            ; preds = %for.end, %if.end16.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %if.end21

if.end21:                                         ; preds = %__out, %gsm_dlci_begin_close.exit.if.end21_crit_edge
  %23 = call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stack.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end21.cleanup28_crit_edge, !prof !255

if.end21.cleanup28_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

signal_pending.exit:                              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %28, align 4
  %and1.i.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool25.not = icmp eq i32 %and1.i.i.i.i.i, 0
  %spec.select = select i1 %tobool25.not, i32 0, i32 -4
  br label %cleanup28

cleanup28:                                        ; preds = %signal_pending.exit, %if.end21.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup28_crit_edge ], [ -4, %if.end21.cleanup28_crit_edge ], [ %spec.select, %signal_pending.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsm_dlci_begin_open(ptr noundef %dlci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlci, align 4
  %n2 = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n2, align 4
  %retries = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 7
  %6 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %retries, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %state, align 4
  %addr = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  tail call fastcc void @gsm_send(ptr noundef %3, i32 noundef %9, i32 noundef 1, i32 noundef 63) #16
  %t1 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %t16 = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 33
  %11 = ptrtoint ptr %t16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %t16, align 4
  %mul = mul i32 %12, 100
  %div = sdiv i32 %mul, 100
  %add = add i32 %div, %10
  %call = tail call i32 @mod_timer(ptr noundef %t1, i32 noundef %add) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_hung_up_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmtty_install(ptr noundef %driver, ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %and = and i32 %1, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %div1.i = lshr i32 %1, 6
  %arrayidx = getelementptr [4 x ptr], ptr @gsm_mux, i32 0, i32 %div1.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = add nsw i32 %and, -62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %4)
  %5 = icmp ult i32 %4, -61
  br i1 %5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %dead = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dead, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %mutex = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %dlci11 = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %dlci11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlci11, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end10.if.end19_crit_edge, label %land.lhs.true

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp16.not = icmp eq i32 %11, 2
  br i1 %cmp16.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %arrayidx21 = getelementptr %struct.gsm_mux, ptr %3, i32 0, i32 22, i32 %and
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx21, align 4
  %cmp22 = icmp eq ptr %13, null
  br i1 %cmp22, label %if.end25, label %if.end29.thread

if.end25:                                         ; preds = %if.end19
  %call24 = tail call fastcc ptr @gsm_dlci_alloc(ptr noundef nonnull %3, i32 noundef %and)
  %cmp26 = icmp eq ptr %call24, null
  br i1 %cmp26, label %if.end25.cleanup.sink.split_crit_edge, label %if.end29

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end25
  %port = getelementptr inbounds %struct.gsm_dlci, ptr %call24, i32 0, i32 8
  %call30 = tail call i32 @tty_port_install(ptr noundef %port, ptr noundef %driver, ptr noundef %tty) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.if.end37_crit_edge, label %if.then34

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.end29.thread:                                  ; preds = %if.end19
  %port78 = getelementptr inbounds %struct.gsm_dlci, ptr %13, i32 0, i32 8
  %call3079 = tail call i32 @tty_port_install(ptr noundef %port78, ptr noundef %driver, ptr noundef %tty) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3079)
  %tobool31.not80 = icmp eq i32 %call3079, 0
  br i1 %tobool31.not80, label %if.end29.thread.if.end37_crit_edge, label %if.end29.thread.cleanup.sink.split_crit_edge

if.end29.thread.cleanup.sink.split_crit_edge:     ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end29.thread.if.end37_crit_edge:               ; preds = %if.end29.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @tty_port_put(ptr noundef %port) #16
  br label %cleanup.sink.split

if.end37:                                         ; preds = %if.end29.thread.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %dlci.07681 = phi ptr [ %13, %if.end29.thread.if.end37_crit_edge ], [ %call24, %if.end29.if.end37_crit_edge ]
  tail call fastcc void @dlci_get(ptr noundef nonnull %dlci.07681)
  %14 = ptrtoint ptr %dlci11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dlci11, align 4
  tail call fastcc void @dlci_get(ptr noundef %15)
  tail call fastcc void @mux_get(ptr noundef nonnull %3)
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dlci.07681, ptr %driver_data, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end37, %if.then34, %if.end29.thread.cleanup.sink.split_crit_edge, %if.end25.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end37 ], [ -45, %land.lhs.true.cleanup.sink.split_crit_edge ], [ -12, %if.end25.cleanup.sink.split_crit_edge ], [ %call30, %if.then34 ], [ %call3079, %if.end29.thread.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -49, %if.end.cleanup_crit_edge ], [ -44, %if.end3.cleanup_crit_edge ], [ -51, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmtty_open(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port1 = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %count = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %count, align 4
  tail call void @tty_port_tty_set(ptr noundef %port1, ptr noundef %tty) #16
  %modem_rx = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %modem_rx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %modem_rx, align 4
  %iflags.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 8, i32 11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %iflags.i) #16
  %initiator = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %n2.i = getelementptr inbounds %struct.gsm_mux, ptr %12, i32 0, i32 35
  %13 = ptrtoint ptr %n2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n2.i, align 4
  %retries.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %retries.i, align 4
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state.i, align 4
  %addr.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i, align 4
  tail call fastcc void @gsm_send(ptr noundef %12, i32 noundef %18, i32 noundef 1, i32 noundef 63) #16
  %t1.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %t16.i = getelementptr inbounds %struct.gsm_mux, ptr %12, i32 0, i32 33
  %20 = ptrtoint ptr %t16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t16.i, align 4
  %mul.i = mul i32 %21, 100
  %div.i = sdiv i32 %mul.i, 100
  %add.i = add i32 %div.i, %19
  %call.i = tail call i32 @mod_timer(ptr noundef %t1.i, i32 noundef %add.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @tty_port_block_til_ready(ptr noundef %port1, ptr noundef %tty, ptr noundef %filp) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmtty_close(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  tail call fastcc void @gsm_destroy_network(ptr noundef nonnull %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #16
  %port = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 8
  %call = tail call i32 @tty_port_close_start(ptr noundef %port, ptr noundef %tty, ptr noundef %filp) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %5, label %if.end.i [
    i32 0, label %if.end7.gsm_dlci_begin_close.exit_crit_edge
    i32 3, label %if.end7.gsm_dlci_begin_close.exit_crit_edge28
  ]

if.end7.gsm_dlci_begin_close.exit_crit_edge28:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_dlci_begin_close.exit

if.end7.gsm_dlci_begin_close.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_dlci_begin_close.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %n2.i = getelementptr inbounds %struct.gsm_mux, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %n2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n2.i, align 4
  %retries.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %retries.i, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state, align 4
  %addr.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 4
  tail call fastcc void @gsm_send(ptr noundef %8, i32 noundef %14, i32 noundef 1, i32 noundef 83) #16
  %t1.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %t16.i = getelementptr inbounds %struct.gsm_mux, ptr %8, i32 0, i32 33
  %16 = ptrtoint ptr %t16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t16.i, align 4
  %mul.i = mul i32 %17, 100
  %div.i = sdiv i32 %mul.i, 100
  %add.i = add i32 %div.i, %15
  %call.i = tail call i32 @mod_timer(ptr noundef %t1.i, i32 noundef %add.i) #16
  br label %gsm_dlci_begin_close.exit

gsm_dlci_begin_close.exit:                        ; preds = %if.end.i, %if.end7.gsm_dlci_begin_close.exit_crit_edge, %if.end7.gsm_dlci_begin_close.exit_crit_edge28
  %iflags.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 8, i32 11
  %18 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %gsm_dlci_begin_close.exit.if.end12_crit_edge, label %land.lhs.true

gsm_dlci_begin_close.exit.if.end12_crit_edge:     ; preds = %gsm_dlci_begin_close.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

land.lhs.true:                                    ; preds = %gsm_dlci_begin_close.exit
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c_cflag, align 4
  %and = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @tty_port_lower_dtr_rts(ptr noundef %port) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %gsm_dlci_begin_close.exit.if.end12_crit_edge
  tail call void @tty_port_close_end(ptr noundef %port, ptr noundef %tty) #16
  tail call void @tty_port_tty_set(ptr noundef %port, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmtty_cleanup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %port.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 8
  tail call void @tty_port_put(ptr noundef %port.i) #16
  %dlci2 = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %dlci2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dlci2, align 4
  %port.i5 = getelementptr inbounds %struct.gsm_dlci, ptr %5, i32 0, i32 8
  tail call void @tty_port_put(ptr noundef %port.i5) #16
  %ref.i = getelementptr inbounds %struct.gsm_mux, ptr %3, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #16, !srcloc !257
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mux_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !255

if.end5.i.i.i.i.i.mux_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mux_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #16
  br label %mux_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !258
  %txframe.i.i.i = getelementptr %struct.gsm_mux, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %txframe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txframe.i.i.i, align 4
  tail call void @kfree(ptr noundef %8) #16
  %buf.i.i.i = getelementptr %struct.gsm_mux, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf.i.i.i, align 4
  tail call void @kfree(ptr noundef %10) #16
  tail call void @kfree(ptr noundef %3) #16
  br label %mux_put.exit

mux_put.exit:                                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mux_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmtty_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %fifo = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 9
  %call7 = tail call i32 @__kfifo_in(ptr noundef %fifo, ptr noundef %buf, i32 noundef %len) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #16
  tail call fastcc void @gsm_dlci_data_kick(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gsmtty_write_room(ptr nocapture noundef readonly %tty) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fifo = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub.neg = sub i32 512, %5
  %sub1 = add i32 %sub.neg, %7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gsmtty_chars_in_buffer(ptr nocapture noundef readonly %tty) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fifo = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo, align 4
  %out = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub = sub i32 %5, %7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmtty_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %nc = alloca %struct.gsm_netconfig, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %nc) #16
  %2 = call ptr @memset(ptr %nc, i32 255, i32 52)
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1077167874, label %sw.bb
    i32 18179, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %6 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.89, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 52, i32 -1226833920) #21
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !255

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %nc, i32 noundef 52) #16
  %8 = call i32 @llvm.read_register.i32(metadata !242) #16
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !261
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !263
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %nc, ptr noundef %6, i32 noundef 52) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #16, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end59.i.i27, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !255

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.0.i.i36 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 52, %sw.bb.if.then11.i.i_crit_edge ], [ 52, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 52, %res.0.i.i36
  %add.ptr.i.i = getelementptr i8, ptr %nc, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i36)
  br label %cleanup

if.end59.i.i27:                                   ; preds = %if.end.i.i
  %arrayidx = getelementptr inbounds %struct.gsm_netconfig, ptr %nc, i32 0, i32 3, i32 15
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %mutex = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %call3 = call fastcc i32 @gsm_create_network(ptr noundef %1, ptr noundef nonnull %nc)
  call void @mutex_unlock(ptr noundef %mutex) #16
  call void @__might_fault(ptr noundef nonnull @.str.89, i32 noundef 174) #16
  %call.i.i28 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i28, label %if.end59.i.i27.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i27.cleanup_crit_edge:                 ; preds = %if.end59.i.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i27
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i32 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %nc, i32 noundef 52) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %nc, i32 noundef 52) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool6.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool6.not, i32 %call3, i32 -14
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %call10 = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call10, label %if.end12, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #18
  %mutex13 = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex13, i32 noundef 0) #16
  tail call fastcc void @gsm_destroy_network(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex13) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.bb9.cleanup_crit_edge, %copy_to_user.exit, %if.end59.i.i27.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %sw.bb9.cleanup_crit_edge ], [ -515, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i27.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %nc) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmtty_set_termios(ptr noundef %tty, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call void @tty_termios_copy_hw(ptr noundef %termios, ptr noundef %old) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmtty_throttle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %modembits.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %modem_tx = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %modem_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modem_tx, align 4
  %and2 = and i32 %7, -5
  store i32 %and2, ptr %modem_tx, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %throttled = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %throttled, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %modembits.i) #16
  %9 = getelementptr inbounds [5 x i8], ptr %modembits.i, i32 0, i32 1
  %10 = getelementptr inbounds [5 x i8], ptr %modembits.i, i32 0, i32 2
  %11 = getelementptr inbounds i8, ptr %modembits.i, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 -1, ptr %11, align 1
  %13 = ptrtoint ptr %modembits.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %modembits.i, align 1
  %addr.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 4
  %.tr.i = trunc i32 %15 to i8
  %16 = shl i8 %.tr.i, 2
  %conv3.i = or i8 %16, 3
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i, ptr %9, align 1
  %modem_tx.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %modem_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %modem_tx.i.i, align 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 6
  %22 = lshr i8 %20, 2
  %23 = and i8 %22, 32
  %24 = or i8 %23, %21
  %and25.i.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %lor.lhs.false.i.i, label %if.end3.if.then28.i.i_crit_edge

if.end3.if.then28.i.i_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

lor.lhs.false.i.i:                                ; preds = %if.end3
  %25 = or i8 %24, 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %initiator.i.i = getelementptr inbounds %struct.gsm_mux, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %initiator.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %initiator.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool27.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool27.not.i.i, label %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then28.i.i_crit_edge

lor.lhs.false.i.i.if.then28.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_encode_modem.exit.i

if.then28.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then28.i.i_crit_edge, %if.end3.if.then28.i.i_crit_edge
  %30 = or i8 %24, 65
  br label %gsm_encode_modem.exit.i

gsm_encode_modem.exit.i:                          ; preds = %if.then28.i.i, %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge
  %modembits.4.i.i = phi i8 [ %30, %if.then28.i.i ], [ %25, %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge ]
  %shl6.i = shl i8 %modembits.4.i.i, 1
  %or7.i = or i8 %shl6.i, 1
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %or7.i, ptr %10, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call19.i = call fastcc ptr @gsm_control_send(ptr noundef %33, i32 noundef 113, ptr noundef nonnull %modembits.i, i32 noundef 3) #16
  %cmp.i = icmp eq ptr %call19.i, null
  br i1 %cmp.i, label %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge, label %if.end22.i

gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge: ; preds = %gsm_encode_modem.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmtty_modem_update.exit

if.end22.i:                                       ; preds = %gsm_encode_modem.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call24.i = call fastcc i32 @gsm_control_wait(ptr noundef %35, ptr noundef nonnull %call19.i) #16
  br label %gsmtty_modem_update.exit

gsmtty_modem_update.exit:                         ; preds = %if.end22.i, %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %modembits.i) #16
  br label %cleanup

cleanup:                                          ; preds = %gsmtty_modem_update.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmtty_unthrottle(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %modembits.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %modem_tx = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %modem_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modem_tx, align 4
  %or = or i32 %7, 4
  store i32 %or, ptr %modem_tx, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %throttled = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %throttled, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %modembits.i) #16
  %9 = getelementptr inbounds [5 x i8], ptr %modembits.i, i32 0, i32 1
  %10 = getelementptr inbounds [5 x i8], ptr %modembits.i, i32 0, i32 2
  %11 = getelementptr inbounds i8, ptr %modembits.i, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 -1, ptr %11, align 1
  %13 = ptrtoint ptr %modembits.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %modembits.i, align 1
  %addr.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 4
  %.tr.i = trunc i32 %15 to i8
  %16 = shl i8 %.tr.i, 2
  %conv3.i = or i8 %16, 3
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i, ptr %9, align 1
  %modem_tx.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %modem_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %modem_tx.i.i, align 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 6
  %22 = lshr i8 %20, 2
  %23 = and i8 %22, 32
  %24 = or i8 %23, %21
  %and25.i.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %lor.lhs.false.i.i, label %if.end2.if.then28.i.i_crit_edge

if.end2.if.then28.i.i_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

lor.lhs.false.i.i:                                ; preds = %if.end2
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %initiator.i.i = getelementptr inbounds %struct.gsm_mux, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %initiator.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %initiator.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool27.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool27.not.i.i, label %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then28.i.i_crit_edge

lor.lhs.false.i.i.if.then28.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_encode_modem.exit.i

if.then28.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then28.i.i_crit_edge, %if.end2.if.then28.i.i_crit_edge
  %29 = or i8 %24, 64
  br label %gsm_encode_modem.exit.i

gsm_encode_modem.exit.i:                          ; preds = %if.then28.i.i, %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge
  %modembits.4.i.i = phi i8 [ %29, %if.then28.i.i ], [ %24, %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge ]
  %shl6.i = shl i8 %modembits.4.i.i, 1
  %or7.i = or i8 %shl6.i, 1
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or7.i, ptr %10, align 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call19.i = call fastcc ptr @gsm_control_send(ptr noundef %32, i32 noundef 113, ptr noundef nonnull %modembits.i, i32 noundef 3) #16
  %cmp.i = icmp eq ptr %call19.i, null
  br i1 %cmp.i, label %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge, label %if.end22.i

gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge: ; preds = %gsm_encode_modem.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmtty_modem_update.exit

if.end22.i:                                       ; preds = %gsm_encode_modem.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call24.i = call fastcc i32 @gsm_control_wait(ptr noundef %34, ptr noundef nonnull %call19.i) #16
  br label %gsmtty_modem_update.exit

gsmtty_modem_update.exit:                         ; preds = %if.end22.i, %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %modembits.i) #16
  br label %cleanup

cleanup:                                          ; preds = %gsmtty_modem_update.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsmtty_hangup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 8
  tail call void @tty_port_hangup(ptr noundef %port) #16
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %5, label %if.end.i [
    i32 0, label %if.end.cleanup_crit_edge
    i32 3, label %if.end.cleanup_crit_edge3
  ]

if.end.cleanup_crit_edge3:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %n2.i = getelementptr inbounds %struct.gsm_mux, ptr %8, i32 0, i32 35
  %9 = ptrtoint ptr %n2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n2.i, align 4
  %retries.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %retries.i, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state, align 4
  %addr.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 4
  tail call fastcc void @gsm_send(ptr noundef %8, i32 noundef %14, i32 noundef 1, i32 noundef 83) #16
  %t1.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %t16.i = getelementptr inbounds %struct.gsm_mux, ptr %8, i32 0, i32 33
  %16 = ptrtoint ptr %t16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t16.i, align 4
  %mul.i = mul i32 %17, 100
  %div.i = sdiv i32 %mul.i, 100
  %add.i = add i32 %div.i, %15
  %call.i = tail call i32 @mod_timer(ptr noundef %t1.i, i32 noundef %add.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmtty_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state1 = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %state)
  %cmp2 = icmp eq i32 %state, -1
  br i1 %cmp2, label %if.end.if.end10_crit_edge, label %if.else

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp4 = icmp sgt i32 %state, 0
  br i1 %cmp4, label %if.then5, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %div16 = udiv i32 %state, 200
  %4 = tail call i32 @llvm.smin.i32(i32 %div16, i32 15)
  %phi.cast = trunc i32 %4 to i8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.else.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %encode.0 = phi i8 [ %phi.cast, %if.then5 ], [ 0, %if.else.if.end10_crit_edge ], [ 15, %if.end.if.end10_crit_edge ]
  %call = tail call fastcc i32 @gsmtty_modem_update(ptr noundef %1, i8 noundef zeroext %encode.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gsmtty_flush_buffer(ptr nocapture noundef readonly %tty) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fifo = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 9
  %out = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %out, align 4
  %5 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fifo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gsmtty_wait_until_sent(ptr nocapture noundef %tty, i32 noundef %timeout) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gsmtty_tiocmget(ptr nocapture noundef readonly %tty) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %modem_rx = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %modem_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %modem_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsmtty_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  %modembits.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %modem_tx1 = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 13
  %state = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %modem_tx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %modem_tx1, align 4
  %neg = xor i32 %clear, -1
  %and = and i32 %5, %neg
  %or = or i32 %and, %set
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %5)
  %cmp3.not = icmp eq i32 %or, %5
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %modem_tx1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %modem_tx1, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %modembits.i) #16
  %7 = getelementptr inbounds [5 x i8], ptr %modembits.i, i32 0, i32 1
  %8 = getelementptr inbounds [5 x i8], ptr %modembits.i, i32 0, i32 2
  %9 = getelementptr inbounds i8, ptr %modembits.i, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 -1, ptr %9, align 1
  %11 = ptrtoint ptr %modembits.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %modembits.i, align 1
  %addr.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 4
  %.tr.i = trunc i32 %13 to i8
  %14 = shl i8 %.tr.i, 2
  %conv3.i = or i8 %14, 3
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3.i, ptr %7, align 1
  %throttled.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %throttled.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %throttled.i.i, align 1, !range !265
  %18 = trunc i32 %or to i8
  %19 = lshr i8 %18, 2
  %20 = and i8 %19, 32
  %21 = and i8 %18, 6
  %22 = or i8 %21, %20
  %23 = or i8 %22, %17
  %and25.i.i = and i32 %or, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %lor.lhs.false.i.i, label %if.then4.if.then28.i.i_crit_edge

if.then4.if.then28.i.i_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

lor.lhs.false.i.i:                                ; preds = %if.then4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %initiator.i.i = getelementptr inbounds %struct.gsm_mux, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %initiator.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %initiator.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool27.not.i.i, label %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge, label %lor.lhs.false.i.i.if.then28.i.i_crit_edge

lor.lhs.false.i.i.if.then28.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28.i.i

lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsm_encode_modem.exit.i

if.then28.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then28.i.i_crit_edge, %if.then4.if.then28.i.i_crit_edge
  %28 = or i8 %23, 64
  br label %gsm_encode_modem.exit.i

gsm_encode_modem.exit.i:                          ; preds = %if.then28.i.i, %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge
  %modembits.4.i.i = phi i8 [ %28, %if.then28.i.i ], [ %23, %lor.lhs.false.i.i.gsm_encode_modem.exit.i_crit_edge ]
  %shl6.i = shl i8 %modembits.4.i.i, 1
  %or7.i = or i8 %shl6.i, 1
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or7.i, ptr %8, align 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call19.i = call fastcc ptr @gsm_control_send(ptr noundef %31, i32 noundef 113, ptr noundef nonnull %modembits.i, i32 noundef 3) #16
  %cmp.i = icmp eq ptr %call19.i, null
  br i1 %cmp.i, label %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge, label %if.end22.i

gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge: ; preds = %gsm_encode_modem.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %gsmtty_modem_update.exit

if.end22.i:                                       ; preds = %gsm_encode_modem.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call24.i = call fastcc i32 @gsm_control_wait(ptr noundef %33, ptr noundef nonnull %call19.i) #16
  br label %gsmtty_modem_update.exit

gsmtty_modem_update.exit:                         ; preds = %if.end22.i, %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end22.i ], [ -12, %gsm_encode_modem.exit.i.gsmtty_modem_update.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %modembits.i) #16
  br label %cleanup

cleanup:                                          ; preds = %gsmtty_modem_update.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %gsmtty_modem_update.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlci_get(ptr noundef %dlci) unnamed_addr #12 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %port = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %entry.tty_port_get.exit_crit_edge, label %land.lhs.true.i

entry.tty_port_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %tty_port_get.exit

land.lhs.true.i:                                  ; preds = %entry
  %kref.i = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 8, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #16
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #16
  %0 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %2 = phi i32 [ %1, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #16
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #16
  %4 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %5, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #16, !srcloc !266
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !255

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !255

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #16
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #16
  br label %tty_port_get.exit

tty_port_get.exit:                                ; preds = %kref_get_unless_zero.exit.i, %entry.tty_port_get.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mux_get(ptr noundef %gsm) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %ref = getelementptr inbounds %struct.gsm_mux, ptr %gsm, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #16, !srcloc !253
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !254

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !255

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #16
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_block_til_ready(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_close_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_lower_dtr_rts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsm_create_network(ptr noundef %dlci, ptr noundef %nc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %adaption = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 10
  %0 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adaption, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %protocol = getelementptr inbounds %struct.gsm_netconfig, ptr %nc, i32 0, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp4.not = icmp eq i16 %3, 2048
  br i1 %cmp4.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nc, align 4
  %.off = add i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.body, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_create_network.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_create_network, %if.then19)) #16
          to label %do.end [label %if.then19], !srcloc !252

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_create_network.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.104) #16
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %if_name = getelementptr inbounds %struct.gsm_netconfig, ptr %nc, i32 0, i32 3
  %6 = ptrtoint ptr %if_name to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp22.not = icmp eq i8 %7, 0
  %spec.select = select i1 %cmp22.not, ptr @.str.105, ptr %if_name
  %call27 = tail call ptr @alloc_netdev_mqs(i32 noundef 8, ptr noundef %spec.select, i8 noundef zeroext 0, ptr noundef nonnull @gsm_mux_net_init, i32 noundef 1, i32 noundef 1) #16
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end32, label %if.end35

do.end32:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #19
  br label %cleanup

if.end35:                                         ; preds = %do.end
  %8 = ptrtoint ptr %dlci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlci, align 4
  %mtu = getelementptr inbounds %struct.gsm_mux, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  %mtu36 = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 20
  %12 = ptrtoint ptr %mtu36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mtu36, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 30
  %13 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %min_mtu, align 8
  %14 = load ptr, ptr %dlci, align 4
  %mtu38 = getelementptr inbounds %struct.gsm_mux, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %mtu38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu38, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 31
  %17 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_mtu, align 4
  %add.ptr.i = getelementptr i8, ptr %call27, i32 2304
  %dlci40 = getelementptr i8, ptr %call27, i32 2308
  %18 = ptrtoint ptr %dlci40 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dlci, ptr %dlci40, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %add.ptr.i, align 4
  %call44 = tail call ptr @strncpy(ptr noundef %if_name, ptr noundef nonnull %call27, i32 noundef 16)
  %20 = ptrtoint ptr %adaption to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %adaption, align 4
  %prev_adaption = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 11
  %22 = ptrtoint ptr %prev_adaption to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %prev_adaption, align 4
  %data = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %prev_data = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 20
  %25 = ptrtoint ptr %prev_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %prev_data, align 4
  %26 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nc, align 4
  store i32 %27, ptr %adaption, align 4
  store ptr @gsm_mux_rx_netchar, ptr %data, align 4
  %net49 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 21
  %28 = ptrtoint ptr %net49 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call27, ptr %net49, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_create_network.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_create_network, %if.then62)) #16
          to label %do.end65 [label %if.then62], !srcloc !252

if.then62:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_create_network.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.107) #16
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %if.end35
  %call66 = tail call i32 @register_netdev(ptr noundef nonnull %call27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end74, label %do.end71

do.end71:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #18
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %call66) #19
  tail call fastcc void @dlci_net_free(ptr noundef %dlci)
  br label %cleanup

if.end74:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #18
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call27, i32 0, i32 17
  %29 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifindex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end71, %do.end32, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call66, %do.end71 ], [ %30, %if.end74 ], [ -12, %do.end32 ], [ -1, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -93, %if.end3.cleanup_crit_edge ], [ -93, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @gsm_mux_net_init(ptr nocapture noundef writeonly %net) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @gsm_mux_net_init.gsm_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 115
  %1 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1000, ptr %watchdog_timeo, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4240, ptr %flags, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -2, ptr %type, align 16
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 107
  %4 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %tx_queue_len, align 16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm_mux_rx_netchar(ptr nocapture noundef readonly %dlci, ptr nocapture noundef readonly %in_buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.gsm_dlci, ptr %dlci, i32 0, i32 21
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #16, !srcloc !253
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !254

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.muxnet_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !255

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.muxnet_get.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %muxnet_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %muxnet_get.exit

muxnet_get.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.muxnet_get.exit_crit_edge
  %add = add i32 %size, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %muxnet_get.exit
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %4 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %call.i.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #16, !srcloc !257
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i25, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !255

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #16
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !258
  %dlci1.i.i = getelementptr i8, ptr %1, i32 2308
  %7 = ptrtoint ptr %dlci1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dlci1.i.i, align 4
  %net.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i1.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i1.i:                                     ; preds = %if.then.i.i
  tail call void @unregister_netdev(ptr noundef nonnull %10) #16
  %11 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end17.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2755, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end17.i.i.i:                                   ; preds = %if.then.i1.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev_adaption.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %8, i32 0, i32 11
  %13 = ptrtoint ptr %prev_adaption.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prev_adaption.i.i.i, align 4
  %adaption.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %8, i32 0, i32 10
  %15 = ptrtoint ptr %adaption.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %adaption.i.i.i, align 4
  %prev_data.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %8, i32 0, i32 20
  %16 = ptrtoint ptr %prev_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev_data.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %8, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %data.i.i.i, align 4
  tail call void @free_netdev(ptr noundef nonnull %12) #16
  %19 = ptrtoint ptr %net.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %net.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %muxnet_get.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %21, i32 2
  store ptr %add.ptr.i26, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %23, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %size) #16
  %24 = call ptr @memcpy(ptr %call.i, ptr %in_buf, i32 %size)
  %25 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %25, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2048, ptr %protocol, align 8
  %call4 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #16
  %stats5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %28 = ptrtoint ptr %stats5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats5, align 8
  %inc6 = add i32 %29, 1
  store i32 %inc6, ptr %stats5, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %30 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_bytes, align 8
  %add8 = add i32 %31, %size
  store i32 %add8, ptr %rx_bytes, align 8
  %call.i.i.i.i.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #16
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #16, !srcloc !257
  %asmresult.i.i.i.i.i.i.i.i28 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i28)
  %cmp.i.i.i.i.i29 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i28, 1
  br i1 %cmp.i.i.i.i.i29, label %if.then.i.i36, label %if.end5.i.i.i.i.i31

if.end5.i.i.i.i.i31:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i28)
  %.not.i.i.i.i.i30 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i28, 0
  br i1 %.not.i.i.i.i.i30, label %if.end5.i.i.i.i.i31.cleanup_crit_edge, label %if.then10.i.i.i.i.i32, !prof !255

if.end5.i.i.i.i.i31.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i.i32:                            ; preds = %if.end5.i.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #16
  br label %cleanup

if.then.i.i36:                                    ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !258
  %dlci1.i.i33 = getelementptr i8, ptr %1, i32 2308
  %33 = ptrtoint ptr %dlci1.i.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dlci1.i.i33, align 4
  %net.i.i34 = getelementptr inbounds %struct.gsm_dlci, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %net.i.i34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net.i.i34, align 4
  %tobool.not.i.i35 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i35, label %if.then.i.i36.cleanup_crit_edge, label %if.then.i1.i38

if.then.i.i36.cleanup_crit_edge:                  ; preds = %if.then.i.i36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i1.i38:                                   ; preds = %if.then.i.i36
  tail call void @unregister_netdev(ptr noundef nonnull %36) #16
  %37 = ptrtoint ptr %net.i.i34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i.i34, align 4
  %tobool.not.i.i.i37 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i37, label %do.end.i.i.i39, label %if.end17.i.i.i44

do.end.i.i.i39:                                   ; preds = %if.then.i1.i38
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2755, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end17.i.i.i44:                                 ; preds = %if.then.i1.i38
  call void @__sanitizer_cov_trace_pc() #18
  %prev_adaption.i.i.i40 = getelementptr inbounds %struct.gsm_dlci, ptr %34, i32 0, i32 11
  %39 = ptrtoint ptr %prev_adaption.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prev_adaption.i.i.i40, align 4
  %adaption.i.i.i41 = getelementptr inbounds %struct.gsm_dlci, ptr %34, i32 0, i32 10
  %41 = ptrtoint ptr %adaption.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %adaption.i.i.i41, align 4
  %prev_data.i.i.i42 = getelementptr inbounds %struct.gsm_dlci, ptr %34, i32 0, i32 20
  %42 = ptrtoint ptr %prev_data.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev_data.i.i.i42, align 4
  %data.i.i.i43 = getelementptr inbounds %struct.gsm_dlci, ptr %34, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %data.i.i.i43, align 4
  tail call void @free_netdev(ptr noundef nonnull %38) #16
  %45 = ptrtoint ptr %net.i.i34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %net.i.i34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i.i.i44, %do.end.i.i.i39, %if.then.i.i36.cleanup_crit_edge, %if.then10.i.i.i.i.i32, %if.end5.i.i.i.i.i31.cleanup_crit_edge, %if.end17.i.i.i, %do.end.i.i.i, %if.then.i.i.cleanup_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsm_mux_net_open(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_mux_net_open.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_mux_net_open, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsm_mux_net_open.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.111) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsm_mux_net_close(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsm_mux_net_start_xmit(ptr noundef %skb, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %dlci1 = getelementptr i8, ptr %net, i32 2308
  %0 = ptrtoint ptr %dlci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlci1, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #16, !srcloc !253
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !254

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.muxnet_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !255

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.muxnet_get.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %muxnet_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %muxnet_get.exit

muxnet_get.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.muxnet_get.exit_crit_edge
  %skb_list = getelementptr inbounds %struct.gsm_dlci, ptr %1, i32 0, i32 18
  tail call void @skb_queue_head(ptr noundef %skb_list, ptr noundef %skb) #16
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 1
  %4 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 3
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %tx_bytes, align 4
  tail call fastcc void @gsm_dlci_data_kick(ptr noundef %1)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 12
  %13 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.not.i.i = icmp eq i32 %14, %12
  br i1 %cmp.not.i.i, label %muxnet_get.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

muxnet_get.exit.netif_trans_update.exit_crit_edge: ; preds = %muxnet_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %muxnet_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %12, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %muxnet_get.exit.netif_trans_update.exit_crit_edge
  %call.i.i.i.i.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #16, !srcloc !257
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i11 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11, label %if.end5.i.i.i.i.i.muxnet_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !255

if.end5.i.i.i.i.i.muxnet_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %muxnet_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #16
  br label %muxnet_put.exit

if.then.i.i:                                      ; preds = %netif_trans_update.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !258
  %17 = ptrtoint ptr %dlci1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dlci1, align 4
  %net.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.then.i.i.muxnet_put.exit_crit_edge, label %if.then.i1.i

if.then.i.i.muxnet_put.exit_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %muxnet_put.exit

if.then.i1.i:                                     ; preds = %if.then.i.i
  tail call void @unregister_netdev(ptr noundef nonnull %20) #16
  %21 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end17.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2755, i32 noundef 9, ptr noundef null) #16
  br label %muxnet_put.exit

if.end17.i.i.i:                                   ; preds = %if.then.i1.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev_adaption.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %18, i32 0, i32 11
  %23 = ptrtoint ptr %prev_adaption.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prev_adaption.i.i.i, align 4
  %adaption.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %18, i32 0, i32 10
  %25 = ptrtoint ptr %adaption.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %adaption.i.i.i, align 4
  %prev_data.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %18, i32 0, i32 20
  %26 = ptrtoint ptr %prev_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev_data.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.gsm_dlci, ptr %18, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %data.i.i.i, align 4
  tail call void @free_netdev(ptr noundef nonnull %22) #16
  %29 = ptrtoint ptr %net.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %net.i.i, align 4
  br label %muxnet_put.exit

muxnet_put.exit:                                  ; preds = %if.end17.i.i.i, %do.end.i.i.i, %if.then.i.i.muxnet_put.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.muxnet_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsm_mux_net_tx_timeout(ptr noundef %net, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsm_mux_net_tx_timeout.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsm_mux_net_tx_timeout, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !252

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsm_mux_net_tx_timeout.__UNIQUE_ID_ddebug369, ptr noundef %dev, ptr noundef nonnull @.str.114) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_errors, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_copy_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !43, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !130, !131, !132, !134, !136, !138, !139, !140, !142, !143, !145, !146, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !165, !167, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !188, !190, !191, !192, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !208, !209, !210, !212, !213, !215, !217, !218, !219, !221, !223, !224, !225, !227, !228, !230, !231, !232, !234, !236, !237, !238, !240, !241}
!llvm.named.register.sp = !{!242}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/tty/n_gsm.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype354, !1, !"__UNIQUE_ID_debugtype354", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_n_gsm__374_3373_gsm_init6, !4, !"__initcall__kmod_n_gsm__374_3373_gsm_init6", i1 false, i1 false}
!4 = !{!"../drivers/tty/n_gsm.c", i32 3373, i32 1}
!5 = !{ptr @__exitcall_gsm_exit, !6, !"__exitcall_gsm_exit", i1 false, i1 false}
!6 = !{!"../drivers/tty/n_gsm.c", i32 3374, i32 1}
!7 = !{ptr @__UNIQUE_ID_file375, !8, !"__UNIQUE_ID_file375", i1 false, i1 false}
!8 = !{!"../drivers/tty/n_gsm.c", i32 3377, i32 1}
!9 = !{ptr @__UNIQUE_ID_license376, !8, !"__UNIQUE_ID_license376", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias377, !11, !"__UNIQUE_ID_alias377", i1 false, i1 false}
!11 = !{!"../drivers/tty/n_gsm.c", i32 3378, i32 1}
!12 = !{ptr @debug, !13, !"debug", i1 false, i1 false}
!13 = !{!"../drivers/tty/n_gsm.c", i32 55, i32 12}
!14 = !{ptr @gsm_tty_driver, !15, !"gsm_tty_driver", i1 false, i1 false}
!15 = !{!"../drivers/tty/n_gsm.c", i32 272, i32 27}
!16 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/n_gsm.c", i32 2939, i32 21}
!19 = !{ptr @tty_ldisc_packet, !20, !"tty_ldisc_packet", i1 false, i1 false}
!20 = !{!"../drivers/tty/n_gsm.c", i32 2936, i32 29}
!21 = !{ptr @gsm_alloc_mux.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/tty/n_gsm.c", i32 2292, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gsm_alloc_mux.__key.2, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/tty/n_gsm.c", i32 2293, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @gsm_activate_mux.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/tty/n_gsm.c", i32 2196, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gsm_activate_mux.__key.5, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/tty/n_gsm.c", i32 2197, i32 2}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @gsm_activate_mux.__key.7, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/tty/n_gsm.c", i32 2198, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gsm_activate_mux.__key.9, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/tty/n_gsm.c", i32 2199, i32 2}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/n_gsm.c", i32 761, i32 19}
!41 = !{ptr @gsm_fcs8, !42, !"gsm_fcs8", i1 false, i1 false}
!42 = !{!"../drivers/tty/n_gsm.c", i32 333, i32 17}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/n_gsm.c", i32 466, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @gsm_print_packet._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @gsm_print_packet._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/n_gsm.c", i32 470, i32 3}
!52 = !{ptr @gsm_print_packet._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gsm_print_packet._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/n_gsm.c", i32 473, i32 3}
!56 = !{ptr @gsm_print_packet._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @gsm_print_packet._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/n_gsm.c", i32 476, i32 3}
!60 = !{ptr @gsm_print_packet._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @gsm_print_packet._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/n_gsm.c", i32 479, i32 3}
!64 = !{ptr @gsm_print_packet._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @gsm_print_packet._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/n_gsm.c", i32 482, i32 3}
!68 = !{ptr @gsm_print_packet._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @gsm_print_packet._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/n_gsm.c", i32 485, i32 3}
!72 = !{ptr @gsm_print_packet._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @gsm_print_packet._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/n_gsm.c", i32 489, i32 4}
!76 = !{ptr @gsm_print_packet._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @gsm_print_packet._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/n_gsm.c", i32 493, i32 5}
!80 = !{ptr @gsm_print_packet._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @gsm_print_packet._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/tty/n_gsm.c", i32 496, i32 5}
!84 = !{ptr @gsm_print_packet._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @gsm_print_packet._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/tty/n_gsm.c", i32 499, i32 5}
!88 = !{ptr @gsm_print_packet._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @gsm_print_packet._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/tty/n_gsm.c", i32 502, i32 5}
!92 = !{ptr @gsm_print_packet._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @gsm_print_packet._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/tty/n_gsm.c", i32 507, i32 3}
!96 = !{ptr @gsm_print_packet._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @gsm_print_packet._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/tty/n_gsm.c", i32 509, i32 3}
!100 = !{ptr @gsm_print_packet._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @gsm_print_packet._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/tty/n_gsm.c", i32 511, i32 2}
!104 = !{ptr @gsm_print_packet.__UNIQUE_ID_ddebug355, !103, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!105 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/tty/n_gsm.c", i32 701, i32 4}
!108 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @gsm_data_kick.__UNIQUE_ID_ddebug356, !107, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/tty/n_gsm.c", i32 2432, i32 3}
!112 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @gsmld_output.__UNIQUE_ID_ddebug366, !111, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tty/n_gsm.c", i32 2011, i32 3}
!116 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @gsm0_receive.__UNIQUE_ID_ddebug363, !115, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/tty/n_gsm.c", i32 1812, i32 4}
!120 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @gsm_queue.__UNIQUE_ID_ddebug361, !119, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/tty/n_gsm.c", i32 1822, i32 19}
!124 = !{ptr @gsm_queue.__UNIQUE_ID_ddebug362, !125, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!125 = !{!"../drivers/tty/n_gsm.c", i32 1894, i32 4}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/tty/n_gsm.c", i32 604, i32 19}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/tty/n_gsm.c", i32 1487, i32 3}
!130 = !{ptr @.str.68, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @gsm_dlci_open.__UNIQUE_ID_ddebug358, !129, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!132 = !{ptr @addr_open, !133, !"addr_open", i1 false, i1 false}
!133 = !{!"../drivers/tty/n_gsm.c", i32 275, i32 12}
!134 = !{ptr @addr_cnt, !135, !"addr_cnt", i1 false, i1 false}
!135 = !{!"../drivers/tty/n_gsm.c", i32 277, i32 12}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/tty/n_gsm.c", i32 1455, i32 3}
!138 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @gsm_dlci_close.__UNIQUE_ID_ddebug357, !137, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/n_gsm.c", i32 2088, i32 3}
!142 = !{ptr @gsm1_receive.__UNIQUE_ID_ddebug364, !141, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/tty/n_gsm.c", i32 270, i32 8}
!145 = !{ptr @gsm_mux_lock, !144, !"gsm_mux_lock", i1 false, i1 false}
!146 = !{ptr @gsm_mux, !147, !"gsm_mux", i1 false, i1 false}
!147 = !{!"../drivers/tty/n_gsm.c", i32 269, i32 24}
!148 = !{ptr @gsm_dlci_alloc.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/tty/n_gsm.c", i32 1691, i32 2}
!150 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @gsm_dlci_alloc.__key.74, !152, !"__key", i1 false, i1 false}
!152 = !{!"../drivers/tty/n_gsm.c", i32 1692, i32 2}
!153 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @gsm_dlci_alloc.__key.76, !155, !"__key", i1 false, i1 false}
!155 = !{!"../drivers/tty/n_gsm.c", i32 1699, i32 2}
!156 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @skb_queue_head_init.__key, !158, !"__key", i1 false, i1 false}
!158 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!159 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/tty/n_gsm.c", i32 1521, i32 5}
!162 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @gsm_dlci_t1._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @gsm_dlci_t1._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @gsm_dlci_t1.__UNIQUE_ID_ddebug359, !166, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!166 = !{!"../drivers/tty/n_gsm.c", i32 1539, i32 3}
!167 = !{ptr @gsm_port_ops, !168, !"gsm_port_ops", i1 false, i1 false}
!168 = !{!"../drivers/tty/n_gsm.c", i32 3013, i32 41}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/tty/n_gsm.c", i32 1608, i32 3}
!171 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @gsm_dlci_data.__UNIQUE_ID_ddebug360, !170, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/tty/n_gsm.c", i32 2870, i32 2}
!175 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @gsm_destroy_network.__UNIQUE_ID_ddebug370, !174, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/tty/n_gsm.c", i32 2325, i32 2}
!179 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @gsm_copy_config_values.__UNIQUE_ID_ddebug365, !178, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!183 = distinct !{null, !182, !"<string literal>", i1 false, i1 false}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/tty/n_gsm.c", i32 2509, i32 3}
!190 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @gsmld_receive_buf.__UNIQUE_ID_ddebug367, !189, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../drivers/tty/n_gsm.c", i32 2526, i32 4}
!194 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/tty/n_gsm.c", i32 3328, i32 3}
!197 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @gsm_init._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @gsm_init._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/tty/n_gsm.c", i32 3336, i32 3}
!202 = !{ptr @gsm_init._entry.95, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @gsm_init._entry_ptr.97, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/tty/n_gsm.c", i32 3340, i32 32}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/tty/n_gsm.c", i32 3352, i32 3}
!208 = !{ptr @gsm_init._entry.99, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @gsm_init._entry_ptr.101, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/tty/n_gsm.c", i32 3356, i32 2}
!212 = !{ptr @gsm_init.__UNIQUE_ID_ddebug373, !211, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!213 = !{ptr @gsmtty_ops, !214, !"gsmtty_ops", i1 false, i1 false}
!214 = !{!"../drivers/tty/n_gsm.c", i32 3301, i32 36}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/tty/n_gsm.c", i32 2899, i32 2}
!217 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @gsm_create_network.__UNIQUE_ID_ddebug371, !216, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/tty/n_gsm.c", i32 2901, i32 12}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/tty/n_gsm.c", i32 2907, i32 3}
!223 = !{ptr @gsm_create_network._entry, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @gsm_create_network._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/tty/n_gsm.c", i32 2925, i32 2}
!227 = !{ptr @gsm_create_network.__UNIQUE_ID_ddebug372, !226, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/tty/n_gsm.c", i32 2928, i32 3}
!230 = !{ptr @gsm_create_network._entry.108, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @gsm_create_network._entry_ptr.110, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @gsm_mux_net_init.gsm_netdev_ops, !233, !"gsm_netdev_ops", i1 false, i1 false}
!233 = !{!"../drivers/tty/n_gsm.c", i32 2848, i32 37}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/tty/n_gsm.c", i32 2741, i32 2}
!236 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @gsm_mux_net_open.__UNIQUE_ID_ddebug368, !235, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/tty/n_gsm.c", i32 2808, i32 2}
!240 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @gsm_mux_net_tx_timeout.__UNIQUE_ID_ddebug369, !239, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!242 = !{!"sp"}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{i64 2148255655, i64 2148255660, i64 2148255673, i64 2148255717, i64 2148255751, i64 2148255772}
!253 = !{i64 2148539085, i64 2148539117, i64 2148539146, i64 2148539180, i64 2148539211, i64 2148539234}
!254 = !{!"branch_weights", i32 1, i32 2000}
!255 = !{!"branch_weights", i32 2000, i32 1}
!256 = !{i64 2148627110}
!257 = !{i64 2148541550, i64 2148541582, i64 2148541611, i64 2148541645, i64 2148541676, i64 2148541699}
!258 = !{i64 2149765407}
!259 = !{i64 2150662098, i64 2150662123}
!260 = !{i64 2150661417, i64 2150661442}
!261 = !{i64 3156972}
!262 = !{i64 3157169}
!263 = !{i64 2150642402}
!264 = !{i64 2156590842, i64 2156591122, i64 2156591456, i64 2156591790}
!265 = !{i8 0, i8 2}
!266 = !{i64 1023068, i64 1023092, i64 1023113, i64 1023130, i64 1023147}
