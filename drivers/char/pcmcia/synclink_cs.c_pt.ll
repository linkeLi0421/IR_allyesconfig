; ModuleID = '/llk/IR_all_yes/drivers/char/pcmcia/synclink_cs.c_pt.bc'
source_filename = "../drivers/char/pcmcia/synclink_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.100 }
%union.anon.100 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct._MGSL_PARAMS = type { i32, i8, i16, i8, i32, i8, i16, i8, i8, i32, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct._mgslpc_info = type { %struct.tty_port, ptr, i32, i32, %struct.mgsl_icount, i32, i32, i8, i8, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.timer_list, ptr, i16, i16, i8, %struct.spinlock, %struct.work_struct, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, [25 x i8], i32, i32, %struct._MGSL_PARAMS, i8, i8, i8, i32, ptr, i8, %struct._input_signal_events, ptr, i32, i32, %struct.spinlock, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.67, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.67 = type { ptr }
%struct.llist_head = type { ptr }
%struct.mgsl_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct._input_signal_events = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.RXBUF = type { i32, i8, [1 x i8] }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sync_serial_settings = type { i32, i32, i16 }
%struct.if_settings = type { i32, i32, %union.anon.109 }
%union.anon.109 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__param_str_break_on_load = internal constant [26 x i8] c"synclink_cs.break_on_load\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@break_on_load = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_break_on_load = internal constant %struct.kernel_param { ptr @__param_str_break_on_load, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.100 { ptr @break_on_load } }, section "__param", align 4
@__UNIQUE_ID_break_on_loadtype343 = internal constant [40 x i8] c"synclink_cs.parmtype=break_on_load:bool\00", section ".modinfo", align 1
@__param_str_ttymajor = internal constant [21 x i8] c"synclink_cs.ttymajor\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ttymajor = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ttymajor = internal constant %struct.kernel_param { ptr @__param_str_ttymajor, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.100 { ptr @ttymajor } }, section "__param", align 4
@__UNIQUE_ID_ttymajortype344 = internal constant [34 x i8] c"synclink_cs.parmtype=ttymajor:int\00", section ".modinfo", align 1
@__param_str_debug_level = internal constant [24 x i8] c"synclink_cs.debug_level\00", align 1
@debug_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.100 { ptr @debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype345 = internal constant [37 x i8] c"synclink_cs.parmtype=debug_level:int\00", section ".modinfo", align 1
@__param_str_maxframe = internal constant [21 x i8] c"synclink_cs.maxframe\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_maxframe = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @maxframe }, align 4
@__param_maxframe = internal constant %struct.kernel_param { ptr @__param_str_maxframe, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.100 { ptr @__param_arr_maxframe } }, section "__param", align 4
@__UNIQUE_ID_maxframetype346 = internal constant [43 x i8] c"synclink_cs.parmtype=maxframe:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [49 x i8] c"synclink_cs.file=drivers/char/pcmcia/synclink_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [24 x i8] c"synclink_cs.license=GPL\00", section ".modinfo", align 1
@mgslpc_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @mgslpc_probe, ptr @mgslpc_detach, ptr @mgslpc_suspend, ptr @mgslpc_resume, ptr null, ptr @mgslpc_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@serial_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_synclink_cs__367_2856_synclink_cs_init6 = internal global ptr @synclink_cs_init, section ".initcall6.init", align 4
@__exitcall_synclink_cs_exit = internal global ptr @synclink_cs_exit, section ".exitcall.exit", align 4
@maxframe = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"synclink_cs\00", [20 x i8] zeroinitializer }, align 32
@mgslpc_ids = internal constant { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 709, i16 80, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mgslpc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mgslpc_attach\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mgslpc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/char/pcmcia/synclink_cs.c\00", [62 x i8] zeroinitializer }, align 32
@mgslpc_probe._entry_ptr = internal global ptr @mgslpc_probe._entry, section ".printk_index", align 4
@mgslpc_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error can't allocate device instance data\0A\00", [53 x i8] zeroinitializer }, align 32
@mgslpc_probe._entry_ptr.6 = internal global ptr @mgslpc_probe._entry.4, section ".printk_index", align 4
@mgslpc_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr @carrier_raised, ptr @dtr_rts, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mgslpc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&info->task)\00", [33 x i8] zeroinitializer }, align 32
@mgslpc_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&info->status_event_wait_q\00", [37 x i8] zeroinitializer }, align 32
@mgslpc_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&info->event_wait_q\00", [44 x i8] zeroinitializer }, align 32
@mgslpc_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@mgslpc_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&info->netlock\00", [17 x i8] zeroinitializer }, align 32
@default_params = internal constant { %struct._MGSL_PARAMS, [32 x i8] } { %struct._MGSL_PARAMS { i32 2, i8 0, i16 1, i8 3, i32 0, i8 -1, i16 1, i8 0, i8 0, i32 9600, i8 8, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bh_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(%d):bh_handler(%s) entry\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bh_handler\00", [21 x i8] zeroinitializer }, align 32
@bh_handler._entry_ptr = internal global ptr @bh_handler._entry, section ".printk_index", align 4
@bh_handler._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(%d):bh_handler() work item action=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@bh_handler._entry_ptr.20 = internal global ptr @bh_handler._entry.18, section ".printk_index", align 4
@bh_handler._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown work item ID=%08X!\0A\00", [36 x i8] zeroinitializer }, align 32
@bh_handler._entry_ptr.23 = internal global ptr @bh_handler._entry.21, section ".printk_index", align 4
@bh_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%d):bh_handler(%s) exit\0A\00", [36 x i8] zeroinitializer }, align 32
@bh_handler._entry_ptr.26 = internal global ptr @bh_handler._entry.24, section ".printk_index", align 4
@rx_get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 3668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(%d):rx_get_frame(%s) status=%04X size=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_get_frame\00", [19 x i8] zeroinitializer }, align 32
@rx_get_frame._entry_ptr = internal global ptr @rx_get_frame._entry, section ".printk_index", align 4
@trace_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 3795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s tx data:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"trace_block\00", [20 x i8] zeroinitializer }, align 32
@trace_block._entry_ptr = internal global ptr @trace_block._entry, section ".printk_index", align 4
@trace_block._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 3797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s rx data:\0A\00", [19 x i8] zeroinitializer }, align 32
@trace_block._entry_ptr.33 = internal global ptr @trace_block._entry.31, section ".printk_index", align 4
@trace_block._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 3806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@trace_block._entry_ptr.36 = internal global ptr @trace_block._entry.34, section ".printk_index", align 4
@trace_block._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.3, i32 3808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@trace_block._entry_ptr.39 = internal global ptr @trace_block._entry.37, section ".printk_index", align 4
@trace_block._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.3, i32 3811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@trace_block._entry_ptr.42 = internal global ptr @trace_block._entry.40, section ".printk_index", align 4
@trace_block._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.3, i32 3813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@trace_block._entry_ptr.45 = internal global ptr @trace_block._entry.43, section ".printk_index", align 4
@trace_block._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.30, ptr @.str.3, i32 3815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@trace_block._entry_ptr.48 = internal global ptr @trace_block._entry.46, section ".printk_index", align 4
@hdlcdev_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 4201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdlcdev_rx(%s)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdlcdev_rx\00", [21 x i8] zeroinitializer }, align 32
@hdlcdev_rx._entry_ptr = internal global ptr @hdlcdev_rx._entry, section ".printk_index", align 4
@hdlcdev_rx._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 4204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015%s: can't alloc skb, dropping packet\0A\00", [56 x i8] zeroinitializer }, align 32
@hdlcdev_rx._entry_ptr.53 = internal global ptr @hdlcdev_rx._entry.51, section ".printk_index", align 4
@bh_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bh_transmit() entry on %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bh_transmit\00", [20 x i8] zeroinitializer }, align 32
@bh_transmit._entry_ptr = internal global ptr @bh_transmit._entry, section ".printk_index", align 4
@mgslpc_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mgslpc_config(0x%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mgslpc_config\00", [18 x i8] zeroinitializer }, align 32
@mgslpc_config._entry_ptr = internal global ptr @mgslpc_config._entry, section ".printk_index", align 4
@mgslpc_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mgslpc_isr(%d) entry.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mgslpc_isr\00", [21 x i8] zeroinitializer }, align 32
@mgslpc_isr._entry_ptr = internal global ptr @mgslpc_isr._entry, section ".printk_index", align 4
@mgslpc_isr._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mgslpc_isr %s gis=%04X\0A\00", [40 x i8] zeroinitializer }, align 32
@mgslpc_isr._entry_ptr.62 = internal global ptr @mgslpc_isr._entry.60, section ".printk_index", align 4
@mgslpc_isr._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.3, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"synclink_cs:hardware failed or ejected\0A\00", [56 x i8] zeroinitializer }, align 32
@mgslpc_isr._entry_ptr.65 = internal global ptr @mgslpc_isr._entry.63, section ".printk_index", align 4
@mgslpc_isr._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.3, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(%d):%s queueing bh task.\0A\00", [35 x i8] zeroinitializer }, align 32
@mgslpc_isr._entry_ptr.68 = internal global ptr @mgslpc_isr._entry.66, section ".printk_index", align 4
@mgslpc_isr._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.3, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%d):mgslpc_isr(%d)exit.\0A\00", [36 x i8] zeroinitializer }, align 32
@mgslpc_isr._entry_ptr.71 = internal global ptr @mgslpc_isr._entry.69, section ".printk_index", align 4
@dcd_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s CD now %s...\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dcd_change\00", [21 x i8] zeroinitializer }, align 32
@dcd_change._entry_ptr = internal global ptr @dcd_change._entry, section ".printk_index", align 4
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@dcd_change._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.3, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"doing serial hangup...\00", [41 x i8] zeroinitializer }, align 32
@dcd_change._entry_ptr.78 = internal global ptr @dcd_change._entry.76, section ".printk_index", align 4
@cts_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CTS tx start...\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cts_change\00", [21 x i8] zeroinitializer }, align 32
@cts_change._entry_ptr = internal global ptr @cts_change._entry, section ".printk_index", align 4
@cts_change._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CTS tx stop...\00", [17 x i8] zeroinitializer }, align 32
@cts_change._entry_ptr.83 = internal global ptr @cts_change._entry.81, section ".printk_index", align 4
@tx_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 3278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(%d):tx_start(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_start\00", [23 x i8] zeroinitializer }, align 32
@tx_start._entry_ptr = internal global ptr @tx_start._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tx_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 3316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(%d):tx_stop(%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_stop\00", [24 x i8] zeroinitializer }, align 32
@tx_stop._entry_ptr = internal global ptr @tx_stop._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rx_ready_hdlc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(%d):rx_ready_hdlc(eom=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_ready_hdlc\00", [18 x i8] zeroinitializer }, align 32
@rx_ready_hdlc._entry_ptr = internal global ptr @rx_ready_hdlc._entry, section ".printk_index", align 4
@rx_ready_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(%d):rx_ready_async\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_ready_async\00", [17 x i8] zeroinitializer }, align 32
@rx_ready_async._entry_ptr = internal global ptr @rx_ready_async._entry, section ".printk_index", align 4
@rx_ready_async._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.3, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(%d):rx=%d brk=%d parity=%d frame=%d overrun=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@rx_ready_async._entry_ptr.94 = internal global ptr @rx_ready_async._entry.92, section ".printk_index", align 4
@tx_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(%d):tx_ready(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_ready\00", [23 x i8] zeroinitializer }, align 32
@tx_ready._entry_ptr = internal global ptr @tx_ready._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mgslpc_device_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ttySLP%d\00", [23 x i8] zeroinitializer }, align 32
@mgslpc_device_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mgslpc_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 2701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SyncLink PC Card %s:IO=%04X IRQ=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mgslpc_add_device\00", [46 x i8] zeroinitializer }, align 32
@mgslpc_add_device._entry_ptr = internal global ptr @mgslpc_add_device._entry, section ".printk_index", align 4
@hdlcdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 4245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s:hdlc device allocation failure\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdlcdev_init\00", [19 x i8] zeroinitializer }, align 32
@hdlcdev_init._entry_ptr = internal global ptr @hdlcdev_init._entry, section ".printk_index", align 4
@hdlcdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hdlcdev_open, ptr @hdlcdev_close, ptr @hdlc_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdlcdev_wan_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @hdlcdev_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@hdlcdev_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 4266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s:unable to register hdlc device\0A\00", [59 x i8] zeroinitializer }, align 32
@hdlcdev_init._entry_ptr.104 = internal global ptr @hdlcdev_init._entry.102, section ".printk_index", align 4
@hdlcdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 3971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s:hdlcdev_open(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdlcdev_open\00", [19 x i8] zeroinitializer }, align 32
@hdlcdev_open._entry_ptr = internal global ptr @hdlcdev_open._entry, section ".printk_index", align 4
@hdlcdev_open._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.3, i32 3981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: hdlc_open returning busy\0A\00", [32 x i8] zeroinitializer }, align 32
@hdlcdev_open._entry_ptr.109 = internal global ptr @hdlcdev_open._entry.107, section ".printk_index", align 4
@startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(%d):startup(%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"startup\00", [24 x i8] zeroinitializer }, align 32
@startup._entry_ptr = internal global ptr @startup._entry, section ".printk_index", align 4
@startup._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s(%d):%s can't allocate transmit buffer\0A\00", [52 x i8] zeroinitializer }, align 32
@startup._entry_ptr.114 = internal global ptr @startup._entry.112, section ".printk_index", align 4
@startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&info->tx_timer)\00", [46 x i8] zeroinitializer }, align 32
@tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 3832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(%d):tx_timeout(%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_timeout\00", [21 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr = internal global ptr @tx_timeout._entry, section ".printk_index", align 4
@claim_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't allocate rx buffer %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"claim_resources\00", [16 x i8] zeroinitializer }, align 32
@claim_resources._entry_ptr = internal global ptr @claim_resources._entry, section ".printk_index", align 4
@adapter_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 3773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(%d):Register test failure for device %s Addr=%04X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adapter_test\00", [19 x i8] zeroinitializer }, align 32
@adapter_test._entry_ptr = internal global ptr @adapter_test._entry, section ".printk_index", align 4
@adapter_test._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.3, i32 3780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(%d):Interrupt test failure for device %s IRQ=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@adapter_test._entry_ptr.124 = internal global ptr @adapter_test._entry.122, section ".printk_index", align 4
@adapter_test._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.3, i32 3786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(%d):device %s passed diagnostics\0A\00", [59 x i8] zeroinitializer }, align 32
@adapter_test._entry_ptr.127 = internal global ptr @adapter_test._entry.125, section ".printk_index", align 4
@register_test.patterns = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\FF\AAUi\96\0F", [25 x i8] zeroinitializer }, align 32
@rx_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 3249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(%d):rx_stop(%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_stop\00", [24 x i8] zeroinitializer }, align 32
@rx_stop._entry_ptr = internal global ptr @rx_stop._entry, section ".printk_index", align 4
@release_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 2660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"release_resources(%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"release_resources\00", [46 x i8] zeroinitializer }, align 32
@release_resources._entry_ptr = internal global ptr @release_resources._entry, section ".printk_index", align 4
@mgslpc_change_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(%d):mgslpc_change_params(%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mgslpc_change_params\00", [43 x i8] zeroinitializer }, align 32
@mgslpc_change_params._entry_ptr = internal global ptr @mgslpc_change_params._entry, section ".printk_index", align 4
@rx_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 3262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(%d):rx_start(%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_start\00", [23 x i8] zeroinitializer }, align 32
@rx_start._entry_ptr = internal global ptr @rx_start._entry, section ".printk_index", align 4
@hdlcdev_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 4033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:hdlcdev_close(%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdlcdev_close\00", [18 x i8] zeroinitializer }, align 32
@hdlcdev_close._entry_ptr = internal global ptr @hdlcdev_close._entry, section ".printk_index", align 4
@shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.3, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%d):mgslpc_shutdown(%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@shutdown._entry_ptr = internal global ptr @shutdown._entry, section ".printk_index", align 4
@hdlcdev_wan_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.3, i32 4066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:hdlcdev_ioctl(%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdlcdev_wan_ioctl\00", [46 x i8] zeroinitializer }, align 32
@hdlcdev_wan_ioctl._entry_ptr = internal global ptr @hdlcdev_wan_ioctl._entry, section ".printk_index", align 4
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hdlcdev_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 4163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hdlcdev_tx_timeout(%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdlcdev_tx_timeout\00", [45 x i8] zeroinitializer }, align 32
@hdlcdev_tx_timeout._entry_ptr = internal global ptr @hdlcdev_tx_timeout._entry, section ".printk_index", align 4
@hdlcdev_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.3, i32 3923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s:hdlc_xmit(%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdlcdev_xmit\00", [19 x i8] zeroinitializer }, align 32
@hdlcdev_xmit._entry_ptr = internal global ptr @hdlcdev_xmit._entry, section ".printk_index", align 4
@mgslpc_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mgslpc_release(0x%p)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mgslpc_release\00", [17 x i8] zeroinitializer }, align 32
@mgslpc_release._entry_ptr = internal global ptr @mgslpc_release._entry, section ".printk_index", align 4
@mgslpc_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.3, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mgslpc_detach(0x%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mgslpc_detach\00", [18 x i8] zeroinitializer }, align 32
@mgslpc_detach._entry_ptr = internal global ptr @mgslpc_detach._entry, section ".printk_index", align 4
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttySLP\00", [25 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@mgslpc_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @mgslpc_open, ptr @mgslpc_close, ptr null, ptr null, ptr @mgslpc_write, ptr @mgslpc_put_char, ptr @mgslpc_flush_chars, ptr @mgslpc_write_room, ptr @mgslpc_chars_in_buffer, ptr @mgslpc_ioctl, ptr null, ptr @mgslpc_set_termios, ptr @mgslpc_throttle, ptr @mgslpc_unthrottle, ptr @tx_pause, ptr @tx_release, ptr @mgslpc_hangup, ptr @mgslpc_break, ptr @mgslpc_flush_buffer, ptr null, ptr @mgslpc_wait_until_sent, ptr @mgslpc_send_xchar, ptr @tiocmget, ptr @tiocmset, ptr null, ptr @mgslpc_get_icount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mgslpc_proc_show }, [48 x i8] zeroinitializer }, align 32
@synclink_cs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.3, i32 2829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s(%d):Couldn't register serial driver\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"synclink_cs_init\00", [47 x i8] zeroinitializer }, align 32
@synclink_cs_init._entry_ptr = internal global ptr @synclink_cs_init._entry, section ".printk_index", align 4
@synclink_cs_init._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.3, i32 2838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s %s, tty major#%d\0A\00", [41 x i8] zeroinitializer }, align 32
@synclink_cs_init._entry_ptr.158 = internal global ptr @synclink_cs_init._entry.156, section ".printk_index", align 4
@mgslpc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 2470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(%d):mgslpc_open with invalid line #%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mgslpc_open\00", [20 x i8] zeroinitializer }, align 32
@mgslpc_open._entry_ptr = internal global ptr @mgslpc_open._entry, section ".printk_index", align 4
@mgslpc_open._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.3, i32 2487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(%d):mgslpc_open(%s), old ref count = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mgslpc_open._entry_ptr.163 = internal global ptr @mgslpc_open._entry.161, section ".printk_index", align 4
@mgslpc_open._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.3, i32 2511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(%d):block_til_ready(%s) returned %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mgslpc_open._entry_ptr.166 = internal global ptr @mgslpc_open._entry.164, section ".printk_index", align 4
@mgslpc_open._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.160, ptr @.str.3, i32 2517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(%d):mgslpc_open(%s) success\0A\00", [32 x i8] zeroinitializer }, align 32
@mgslpc_open._entry_ptr.169 = internal global ptr @mgslpc_open._entry.167, section ".printk_index", align 4
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mgslpc_close\00", [19 x i8] zeroinitializer }, align 32
@mgslpc_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.170, ptr @.str.3, i32 2327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(%d):mgslpc_close(%s) entry, count=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@mgslpc_close._entry_ptr = internal global ptr @mgslpc_close._entry, section ".printk_index", align 4
@mgslpc_close._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.170, ptr @.str.3, i32 2345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(%d):mgslpc_close(%s) exit, count=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@mgslpc_close._entry_ptr.174 = internal global ptr @mgslpc_close._entry.172, section ".printk_index", align 4
@mgslpc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.3, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(%d):mgslpc_write(%s) count=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mgslpc_write\00", [19 x i8] zeroinitializer }, align 32
@mgslpc_write._entry_ptr = internal global ptr @mgslpc_write._entry, section ".printk_index", align 4
@mgslpc_write._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.3, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(%d):mgslpc_write(%s) returning=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@mgslpc_write._entry_ptr.179 = internal global ptr @mgslpc_write._entry.177, section ".printk_index", align 4
@mgslpc_put_char._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.3, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(%d):mgslpc_put_char(%d) on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mgslpc_put_char\00", [16 x i8] zeroinitializer }, align 32
@mgslpc_put_char._entry_ptr = internal global ptr @mgslpc_put_char._entry, section ".printk_index", align 4
@mgslpc_flush_chars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.3, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(%d):mgslpc_flush_chars() entry on %s tx_count=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mgslpc_flush_chars\00", [45 x i8] zeroinitializer }, align 32
@mgslpc_flush_chars._entry_ptr = internal global ptr @mgslpc_flush_chars._entry, section ".printk_index", align 4
@mgslpc_flush_chars._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.3, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s(%d):mgslpc_flush_chars() entry on %s starting transmitter\0A\00", [34 x i8] zeroinitializer }, align 32
@mgslpc_flush_chars._entry_ptr.186 = internal global ptr @mgslpc_flush_chars._entry.184, section ".printk_index", align 4
@.str.187 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mgslpc_write_room\00", [46 x i8] zeroinitializer }, align 32
@mgslpc_write_room._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.187, ptr @.str.3, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(%d):mgslpc_write_room(%s)=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@mgslpc_write_room._entry_ptr = internal global ptr @mgslpc_write_room._entry, section ".printk_index", align 4
@mgslpc_chars_in_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.3, i32 1641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(%d):mgslpc_chars_in_buffer(%s)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mgslpc_chars_in_buffer\00", [41 x i8] zeroinitializer }, align 32
@mgslpc_chars_in_buffer._entry_ptr = internal global ptr @mgslpc_chars_in_buffer._entry, section ".printk_index", align 4
@mgslpc_chars_in_buffer._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.3, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(%d):mgslpc_chars_in_buffer(%s)=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@mgslpc_chars_in_buffer._entry_ptr.193 = internal global ptr @mgslpc_chars_in_buffer._entry.191, section ".printk_index", align 4
@mgslpc_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.3, i32 2227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(%d):mgslpc_ioctl %s cmd=%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mgslpc_ioctl\00", [19 x i8] zeroinitializer }, align 32
@mgslpc_ioctl._entry_ptr = internal global ptr @mgslpc_ioctl._entry, section ".printk_index", align 4
@get_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.3, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_params(%s)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get_params\00", [21 x i8] zeroinitializer }, align 32
@get_params._entry_ptr = internal global ptr @get_params._entry, section ".printk_index", align 4
@set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.3, i32 1805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(%d):set_params %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_params\00", [21 x i8] zeroinitializer }, align 32
@set_params._entry_ptr = internal global ptr @set_params._entry, section ".printk_index", align 4
@set_params._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.3, i32 1810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(%d):set_params(%s) user buffer copy failed\0A\00", [49 x i8] zeroinitializer }, align 32
@set_params._entry_ptr.202 = internal global ptr @set_params._entry.200, section ".printk_index", align 4
@get_txidle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.3, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_txidle(%s)=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get_txidle\00", [21 x i8] zeroinitializer }, align 32
@get_txidle._entry_ptr = internal global ptr @get_txidle._entry, section ".printk_index", align 4
@set_txidle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.3, i32 1838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_txidle(%s,%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_txidle\00", [21 x i8] zeroinitializer }, align 32
@set_txidle._entry_ptr = internal global ptr @set_txidle._entry, section ".printk_index", align 4
@get_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.3, i32 1850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_interface(%s)=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_interface\00", [18 x i8] zeroinitializer }, align 32
@get_interface._entry_ptr = internal global ptr @get_interface._entry, section ".printk_index", align 4
@set_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.3, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_interface(%s,%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_interface\00", [18 x i8] zeroinitializer }, align 32
@set_interface._entry_ptr = internal global ptr @set_interface._entry, section ".printk_index", align 4
@set_txenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.3, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_txenable(%s,%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_txenable\00", [19 x i8] zeroinitializer }, align 32
@set_txenable._entry_ptr = internal global ptr @set_txenable._entry, section ".printk_index", align 4
@set_rxenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.3, i32 1923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_rxenable(%s,%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_rxenable\00", [19 x i8] zeroinitializer }, align 32
@set_rxenable._entry_ptr = internal global ptr @set_rxenable._entry, section ".printk_index", align 4
@tx_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.3, i32 1903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_abort(%s)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_abort\00", [23 x i8] zeroinitializer }, align 32
@tx_abort._entry_ptr = internal global ptr @tx_abort._entry, section ".printk_index", align 4
@get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.217, ptr @.str.3, i32 1764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"get_stats\00", [22 x i8] zeroinitializer }, align 32
@get_stats._entry_ptr = internal global ptr @get_stats._entry, section ".printk_index", align 4
@wait_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.3, i32 1961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wait_events(%s,%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wait_events\00", [20 x i8] zeroinitializer }, align 32
@wait_events._entry_ptr = internal global ptr @wait_events._entry, section ".printk_index", align 4
@mgslpc_set_termios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.3, i32 2282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(%d):mgslpc_set_termios %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mgslpc_set_termios\00", [45 x i8] zeroinitializer }, align 32
@mgslpc_set_termios._entry_ptr = internal global ptr @mgslpc_set_termios._entry, section ".printk_index", align 4
@mgslpc_throttle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.3, i32 1713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(%d):mgslpc_throttle(%s) entry\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mgslpc_throttle\00", [16 x i8] zeroinitializer }, align 32
@mgslpc_throttle._entry_ptr = internal global ptr @mgslpc_throttle._entry, section ".printk_index", align 4
@mgslpc_unthrottle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.3, i32 1738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(%d):mgslpc_unthrottle(%s) entry\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mgslpc_unthrottle\00", [46 x i8] zeroinitializer }, align 32
@mgslpc_unthrottle._entry_ptr = internal global ptr @mgslpc_unthrottle._entry, section ".printk_index", align 4
@.str.230 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_pause\00", [23 x i8] zeroinitializer }, align 32
@tx_pause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.230, ptr @.str.3, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_pause(%s)\0A\00", [18 x i8] zeroinitializer }, align 32
@tx_pause._entry_ptr = internal global ptr @tx_pause._entry, section ".printk_index", align 4
@.str.232 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_release\00", [21 x i8] zeroinitializer }, align 32
@tx_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.232, ptr @.str.3, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_release(%s)\0A\00", [16 x i8] zeroinitializer }, align 32
@tx_release._entry_ptr = internal global ptr @tx_release._entry, section ".printk_index", align 4
@mgslpc_hangup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.3, i32 2420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(%d):mgslpc_hangup(%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mgslpc_hangup\00", [18 x i8] zeroinitializer }, align 32
@mgslpc_hangup._entry_ptr = internal global ptr @mgslpc_hangup._entry, section ".printk_index", align 4
@mgslpc_break._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.3, i32 2169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(%d):mgslpc_break(%s,%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mgslpc_break\00", [19 x i8] zeroinitializer }, align 32
@mgslpc_break._entry_ptr = internal global ptr @mgslpc_break._entry, section ".printk_index", align 4
@mgslpc_flush_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.3, i32 1667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(%d):mgslpc_flush_buffer(%s) entry\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mgslpc_flush_buffer\00", [44 x i8] zeroinitializer }, align 32
@mgslpc_flush_buffer._entry_ptr = internal global ptr @mgslpc_flush_buffer._entry, section ".printk_index", align 4
@mgslpc_wait_until_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str.3, i32 2360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(%d):mgslpc_wait_until_sent(%s) entry\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mgslpc_wait_until_sent\00", [41 x i8] zeroinitializer }, align 32
@mgslpc_wait_until_sent._entry_ptr = internal global ptr @mgslpc_wait_until_sent._entry, section ".printk_index", align 4
@mgslpc_wait_until_sent._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.241, ptr @.str.3, i32 2408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(%d):mgslpc_wait_until_sent(%s) exit\0A\00", [56 x i8] zeroinitializer }, align 32
@mgslpc_wait_until_sent._entry_ptr.244 = internal global ptr @mgslpc_wait_until_sent._entry.242, section ".printk_index", align 4
@mgslpc_send_xchar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.3, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(%d):mgslpc_send_xchar(%s,%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mgslpc_send_xchar\00", [46 x i8] zeroinitializer }, align 32
@mgslpc_send_xchar._entry_ptr = internal global ptr @mgslpc_send_xchar._entry, section ".printk_index", align 4
@tiocmget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.3, i32 2125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(%d):%s tiocmget() value=%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tiocmget\00", [23 x i8] zeroinitializer }, align 32
@tiocmget._entry_ptr = internal global ptr @tiocmget._entry, section ".printk_index", align 4
@tiocmset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.3, i32 2139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(%d):%s tiocmset(%x,%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tiocmset\00", [23 x i8] zeroinitializer }, align 32
@tiocmset._entry_ptr = internal global ptr @tiocmset._entry, section ".printk_index", align 4
@.str.251 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"synclink driver:%s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:io:%04X irq:%d\00", [46 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"|RTS\00", [27 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"|CTS\00", [27 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"|DTR\00", [27 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"|DSR\00", [27 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" HDLC txok:%d rxok:%d\00", [42 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" txunder:%d\00", [20 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" txabort:%d\00", [20 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" rxshort:%d\00", [20 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" rxlong:%d\00", [21 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" rxover:%d\00", [21 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" rxcrc:%d\00", [22 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" ASYNC tx:%d rx:%d\00", [45 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" fe:%d\00", [25 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" pe:%d\00", [25 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" brk:%d\00", [24 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" oe:%d\00", [25 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"txactive=%d bh_req=%d bh_run=%d pending_bh=%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SyncLink PC Card driver\00", [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"$Revision: 4.34 $\00", [46 x i8] zeroinitializer }, align 32
@switch.table.hdlcdev_attach = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\03\04\05\06", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.275 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 5, i64 7]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4101]
@__sancov_gen_cov_switch_values.277 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 8, i64 2048, i64 2560]
@__sancov_gen_cov_switch_values.278 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.280 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.281 = internal global [13 x i64] [i64 11, i64 32, i64 27906, i64 27907, i64 27908, i64 27909, i64 27910, i64 27911, i64 27914, i64 27915, i64 1075866880, i64 2149608705, i64 3221515528]
@__sancov_gen_cov_switch_values.282 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.283 = private unnamed_addr constant [14 x i8] c"break_on_load\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 440, i32 13 }
@___asan_gen_.286 = private unnamed_addr constant [9 x i8] c"ttymajor\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 446, i32 12 }
@___asan_gen_.289 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 448, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant [14 x i8] c"mgslpc_driver\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2762, i32 29 }
@___asan_gen_.295 = private unnamed_addr constant [14 x i8] c"serial_driver\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 461, i32 27 }
@___asan_gen_.298 = private unnamed_addr constant [9 x i8] c"maxframe\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 449, i32 12 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2764, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant [11 x i8] c"mgslpc_ids\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2756, i32 38 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 520, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 524, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [16 x i8] c"mgslpc_port_ops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 509, i32 41 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 531, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 533, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 534, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 535, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 536, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [15 x i8] c"default_params\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 89, i32 20 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 773, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 783, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 799, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 806, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3667, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3795, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3797, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3806, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3808, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3811, i32 5 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3813, i32 5 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3815, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 4201, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 4204, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 813, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 580, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1164, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1175, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1178, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1248, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1258, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1104, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1110, i32 5 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1062, i32 6 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1071, i32 6 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3277, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3315, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 835, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 947, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 949, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1002, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant [20 x i8] c"mgslpc_device_count\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 433, i32 12 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2677, i32 28 }
@___asan_gen_.601 = private unnamed_addr constant [19 x i8] c"mgslpc_device_list\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 432, i32 21 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2700, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 4245, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant [12 x i8] c"hdlcdev_ops\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 4219, i32 36 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 4266, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3971, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3981, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1271, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1280, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1290, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3831, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2650, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3772, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3779, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3785, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant [9 x i8] c"patterns\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3709, i32 23 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3248, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2660, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1408, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3261, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 4033, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1327, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 4066, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.773, i32 174, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 4163, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 3923, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 616, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 624, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2816, i32 24 }
@___asan_gen_.814 = private unnamed_addr constant [11 x i8] c"mgslpc_ops\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2772, i32 36 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2828, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2837, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2469, i32 3 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2486, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2510, i32 4 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2516, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2322, i32 45 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2326, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2344, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1554, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1599, i32 3 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1483, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1516, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1527, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1611, i32 45 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1627, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1640, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1652, i32 3 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2226, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1781, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1804, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1809, i32 4 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1827, i32 3 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1838, i32 3 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1850, i32 3 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1862, i32 3 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1884, i32 3 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1923, i32 3 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1903, i32 3 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1764, i32 3 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1961, i32 3 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2281, i32 3 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1712, i32 3 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1737, i32 3 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 707, i32 45 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 710, i32 3 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 723, i32 45 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 726, i32 3 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2419, i32 3 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2168, i32 3 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1666, i32 3 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2359, i32 3 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2407, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 1689, i32 3 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2124, i32 3 }
@___asan_gen_.1153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2138, i32 3 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2598, i32 16 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2533, i32 16 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2544, i32 20 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2546, i32 20 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2548, i32 20 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2550, i32 20 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2557, i32 17 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2560, i32 18 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2562, i32 18 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2564, i32 18 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2566, i32 18 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2568, i32 18 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2570, i32 18 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2572, i32 17 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2575, i32 18 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2577, i32 18 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2579, i32 18 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2581, i32 18 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2585, i32 16 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 2587, i32 16 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 458, i32 28 }
@___asan_gen_.1225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1226 = private constant [37 x i8] c"../drivers/char/pcmcia/synclink_cs.c\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1226, i32 459, i32 31 }
@___asan_gen_.1228 = private unnamed_addr constant [28 x i8] c"switch.table.hdlcdev_attach\00", align 1
@llvm.compiler.used = appending global [427 x ptr] [ptr @__UNIQUE_ID_break_on_loadtype343, ptr @__UNIQUE_ID_debug_leveltype345, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__UNIQUE_ID_maxframetype346, ptr @__UNIQUE_ID_ttymajortype344, ptr @__exitcall_synclink_cs_exit, ptr @__initcall__kmod_synclink_cs__367_2856_synclink_cs_init6, ptr @__param_break_on_load, ptr @__param_debug_level, ptr @__param_maxframe, ptr @__param_ttymajor, ptr @adapter_test._entry, ptr @adapter_test._entry.122, ptr @adapter_test._entry.125, ptr @adapter_test._entry_ptr, ptr @adapter_test._entry_ptr.124, ptr @adapter_test._entry_ptr.127, ptr @bh_handler._entry, ptr @bh_handler._entry.18, ptr @bh_handler._entry.21, ptr @bh_handler._entry.24, ptr @bh_handler._entry_ptr, ptr @bh_handler._entry_ptr.20, ptr @bh_handler._entry_ptr.23, ptr @bh_handler._entry_ptr.26, ptr @bh_transmit._entry, ptr @bh_transmit._entry_ptr, ptr @claim_resources._entry, ptr @claim_resources._entry_ptr, ptr @cts_change._entry, ptr @cts_change._entry.81, ptr @cts_change._entry_ptr, ptr @cts_change._entry_ptr.83, ptr @dcd_change._entry, ptr @dcd_change._entry.76, ptr @dcd_change._entry_ptr, ptr @dcd_change._entry_ptr.78, ptr @get_interface._entry, ptr @get_interface._entry_ptr, ptr @get_params._entry, ptr @get_params._entry_ptr, ptr @get_stats._entry, ptr @get_stats._entry_ptr, ptr @get_txidle._entry, ptr @get_txidle._entry_ptr, ptr @hdlcdev_close._entry, ptr @hdlcdev_close._entry_ptr, ptr @hdlcdev_init._entry, ptr @hdlcdev_init._entry.102, ptr @hdlcdev_init._entry_ptr, ptr @hdlcdev_init._entry_ptr.104, ptr @hdlcdev_open._entry, ptr @hdlcdev_open._entry.107, ptr @hdlcdev_open._entry_ptr, ptr @hdlcdev_open._entry_ptr.109, ptr @hdlcdev_rx._entry, ptr @hdlcdev_rx._entry.51, ptr @hdlcdev_rx._entry_ptr, ptr @hdlcdev_rx._entry_ptr.53, ptr @hdlcdev_tx_timeout._entry, ptr @hdlcdev_tx_timeout._entry_ptr, ptr @hdlcdev_wan_ioctl._entry, ptr @hdlcdev_wan_ioctl._entry_ptr, ptr @hdlcdev_xmit._entry, ptr @hdlcdev_xmit._entry_ptr, ptr @mgslpc_add_device._entry, ptr @mgslpc_add_device._entry_ptr, ptr @mgslpc_break._entry, ptr @mgslpc_break._entry_ptr, ptr @mgslpc_change_params._entry, ptr @mgslpc_change_params._entry_ptr, ptr @mgslpc_chars_in_buffer._entry, ptr @mgslpc_chars_in_buffer._entry.191, ptr @mgslpc_chars_in_buffer._entry_ptr, ptr @mgslpc_chars_in_buffer._entry_ptr.193, ptr @mgslpc_close._entry, ptr @mgslpc_close._entry.172, ptr @mgslpc_close._entry_ptr, ptr @mgslpc_close._entry_ptr.174, ptr @mgslpc_config._entry, ptr @mgslpc_config._entry_ptr, ptr @mgslpc_detach._entry, ptr @mgslpc_detach._entry_ptr, ptr @mgslpc_flush_buffer._entry, ptr @mgslpc_flush_buffer._entry_ptr, ptr @mgslpc_flush_chars._entry, ptr @mgslpc_flush_chars._entry.184, ptr @mgslpc_flush_chars._entry_ptr, ptr @mgslpc_flush_chars._entry_ptr.186, ptr @mgslpc_hangup._entry, ptr @mgslpc_hangup._entry_ptr, ptr @mgslpc_ioctl._entry, ptr @mgslpc_ioctl._entry_ptr, ptr @mgslpc_isr._entry, ptr @mgslpc_isr._entry.60, ptr @mgslpc_isr._entry.63, ptr @mgslpc_isr._entry.66, ptr @mgslpc_isr._entry.69, ptr @mgslpc_isr._entry_ptr, ptr @mgslpc_isr._entry_ptr.62, ptr @mgslpc_isr._entry_ptr.65, ptr @mgslpc_isr._entry_ptr.68, ptr @mgslpc_isr._entry_ptr.71, ptr @mgslpc_open._entry, ptr @mgslpc_open._entry.161, ptr @mgslpc_open._entry.164, ptr @mgslpc_open._entry.167, ptr @mgslpc_open._entry_ptr, ptr @mgslpc_open._entry_ptr.163, ptr @mgslpc_open._entry_ptr.166, ptr @mgslpc_open._entry_ptr.169, ptr @mgslpc_probe._entry, ptr @mgslpc_probe._entry.4, ptr @mgslpc_probe._entry_ptr, ptr @mgslpc_probe._entry_ptr.6, ptr @mgslpc_put_char._entry, ptr @mgslpc_put_char._entry_ptr, ptr @mgslpc_release._entry, ptr @mgslpc_release._entry_ptr, ptr @mgslpc_send_xchar._entry, ptr @mgslpc_send_xchar._entry_ptr, ptr @mgslpc_set_termios._entry, ptr @mgslpc_set_termios._entry_ptr, ptr @mgslpc_throttle._entry, ptr @mgslpc_throttle._entry_ptr, ptr @mgslpc_unthrottle._entry, ptr @mgslpc_unthrottle._entry_ptr, ptr @mgslpc_wait_until_sent._entry, ptr @mgslpc_wait_until_sent._entry.242, ptr @mgslpc_wait_until_sent._entry_ptr, ptr @mgslpc_wait_until_sent._entry_ptr.244, ptr @mgslpc_write._entry, ptr @mgslpc_write._entry.177, ptr @mgslpc_write._entry_ptr, ptr @mgslpc_write._entry_ptr.179, ptr @mgslpc_write_room._entry, ptr @mgslpc_write_room._entry_ptr, ptr @release_resources._entry, ptr @release_resources._entry_ptr, ptr @rx_get_frame._entry, ptr @rx_get_frame._entry_ptr, ptr @rx_ready_async._entry, ptr @rx_ready_async._entry.92, ptr @rx_ready_async._entry_ptr, ptr @rx_ready_async._entry_ptr.94, ptr @rx_ready_hdlc._entry, ptr @rx_ready_hdlc._entry_ptr, ptr @rx_start._entry, ptr @rx_start._entry_ptr, ptr @rx_stop._entry, ptr @rx_stop._entry_ptr, ptr @set_interface._entry, ptr @set_interface._entry_ptr, ptr @set_params._entry, ptr @set_params._entry.200, ptr @set_params._entry_ptr, ptr @set_params._entry_ptr.202, ptr @set_rxenable._entry, ptr @set_rxenable._entry_ptr, ptr @set_txenable._entry, ptr @set_txenable._entry_ptr, ptr @set_txidle._entry, ptr @set_txidle._entry_ptr, ptr @shutdown._entry, ptr @shutdown._entry_ptr, ptr @startup._entry, ptr @startup._entry.112, ptr @startup._entry_ptr, ptr @startup._entry_ptr.114, ptr @synclink_cs_exit, ptr @synclink_cs_init._entry, ptr @synclink_cs_init._entry.156, ptr @synclink_cs_init._entry_ptr, ptr @synclink_cs_init._entry_ptr.158, ptr @tiocmget._entry, ptr @tiocmget._entry_ptr, ptr @tiocmset._entry, ptr @tiocmset._entry_ptr, ptr @trace_block._entry, ptr @trace_block._entry.31, ptr @trace_block._entry.34, ptr @trace_block._entry.37, ptr @trace_block._entry.40, ptr @trace_block._entry.43, ptr @trace_block._entry.46, ptr @trace_block._entry_ptr, ptr @trace_block._entry_ptr.33, ptr @trace_block._entry_ptr.36, ptr @trace_block._entry_ptr.39, ptr @trace_block._entry_ptr.42, ptr @trace_block._entry_ptr.45, ptr @trace_block._entry_ptr.48, ptr @tx_abort._entry, ptr @tx_abort._entry_ptr, ptr @tx_pause._entry, ptr @tx_pause._entry_ptr, ptr @tx_ready._entry, ptr @tx_ready._entry_ptr, ptr @tx_release._entry, ptr @tx_release._entry_ptr, ptr @tx_start._entry, ptr @tx_start._entry_ptr, ptr @tx_stop._entry, ptr @tx_stop._entry_ptr, ptr @tx_timeout._entry, ptr @tx_timeout._entry_ptr, ptr @wait_events._entry, ptr @wait_events._entry_ptr, ptr @break_on_load, ptr @ttymajor, ptr @debug_level, ptr @mgslpc_driver, ptr @serial_driver, ptr @maxframe, ptr @.str, ptr @mgslpc_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @mgslpc_port_ops, ptr @mgslpc_probe.__key, ptr @.str.7, ptr @mgslpc_probe.__key.8, ptr @.str.9, ptr @mgslpc_probe.__key.10, ptr @.str.11, ptr @mgslpc_probe.__key.12, ptr @.str.13, ptr @mgslpc_probe.__key.14, ptr @.str.15, ptr @default_params, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @mgslpc_device_count, ptr @.str.97, ptr @mgslpc_device_list, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @hdlcdev_ops, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @startup.__key, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @register_test.patterns, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @mgslpc_ops, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.243, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @switch.table.hdlcdev_attach], section "llvm.metadata"
@0 = internal global [316 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @break_on_load to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttymajor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxframe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_ids to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh_handler._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh_handler._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_block._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_block._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_block._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_block._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_block._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_block._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_rx._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bh_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_isr._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_isr._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_isr._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_isr._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcd_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcd_change._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cts_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cts_change._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ready_hdlc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ready_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_ready_async._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_device_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_device_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_open._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @claim_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_test._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_test._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_test.patterns to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_change_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_wan_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlcdev_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synclink_cs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synclink_cs_init._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_open._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_open._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_open._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_close._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_write._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_put_char._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_flush_chars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_flush_chars._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_write_room._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_chars_in_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_chars_in_buffer._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_params._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_txidle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_txidle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_txenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rxenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_set_termios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_throttle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_unthrottle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_pause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_hangup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_break._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_flush_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_wait_until_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_wait_until_sent._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgslpc_send_xchar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiocmget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiocmset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hdlcdev_attach to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synclink_cs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @mgslpc_driver) #12
  %0 = load ptr, ptr @serial_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #12
  %1 = load ptr, ptr @serial_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synclink_cs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__tty_alloc_driver(i32 noundef 4, ptr noundef null, i32 noundef 12) #12
  store ptr %call1, ptr @serial_driver, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %entry
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 4
  %1 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.153, ptr %name, align 4
  %3 = load i32, ptr @ttymajor, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 7
  %4 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 8
  %5 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 11
  %7 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 12
  %8 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3261, ptr %c_cflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call1, i32 0, i32 20
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mgslpc_ops, ptr %ops.i, align 4
  %call7 = tail call i32 @tty_register_driver(ptr noundef %call1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.3, i32 noundef 2829) #15
  br label %err_put_tty

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @mgslpc_driver) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  %11 = load ptr, ptr @serial_driver, align 4
  br i1 %cmp12, label %err_unreg_tty, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %major19 = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %major19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %major19, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.274, i32 noundef %13) #15
  br label %cleanup

err_unreg_tty:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_unregister_driver(ptr noundef %11) #12
  br label %err_put_tty

err_put_tty:                                      ; preds = %err_unreg_tty, %do.end
  %rc.0 = phi i32 [ %call7, %do.end ], [ %call11, %err_unreg_tty ]
  %14 = load ptr, ptr @serial_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %14) #12
  br label %cleanup

cleanup:                                          ; preds = %err_put_tty, %do.end17, %if.then3
  %retval.0 = phi i32 [ 0, %do.end17 ], [ %0, %if.then3 ], [ %rc.0, %err_put_tty ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1208) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %magic = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 21506, ptr %magic, align 4
  tail call void @tty_port_init(ptr noundef nonnull %call7.i.i) #12
  %ops = getelementptr inbounds %struct.tty_port, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mgslpc_port_ops, ptr %ops, align 8
  %task = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 28
  tail call void @__init_work(ptr noundef %task, i32 noundef 0) #12
  %4 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %task, align 8
  %lockdep_map = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 28, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @mgslpc_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry14 = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 28, i32 1
  %5 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 28, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry14, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 28, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bh_handler, ptr %func, align 4
  %max_frame_size = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 29
  %8 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %max_frame_size, align 4
  %status_event_wait_q = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %status_event_wait_q, ptr noundef nonnull @.str.9, ptr noundef nonnull @mgslpc_probe.__key.8) #12
  %event_wait_q = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_waitqueue_head(ptr noundef %event_wait_q, ptr noundef nonnull @.str.11, ptr noundef nonnull @mgslpc_probe.__key.10) #12
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mgslpc_probe.__key.12, i16 noundef signext 3) #12
  %netlock = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 58
  tail call void @__raw_spin_lock_init(ptr noundef %netlock, ptr noundef nonnull @.str.15, ptr noundef nonnull @mgslpc_probe.__key.14, i16 noundef signext 3) #12
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 47
  %9 = call ptr @memcpy(ptr %params, ptr @default_params, i32 32)
  %idle_mode = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 42
  %10 = ptrtoint ptr %idle_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idle_mode, align 8
  %imra_value = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 24
  %p_dev = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 55
  %11 = call ptr @memset(ptr %imra_value, i32 255, i32 5)
  %12 = ptrtoint ptr %p_dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %link, ptr %p_dev, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %priv, align 8
  %14 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp sgt i32 %14, 2
  br i1 %cmp.i, label %do.end.i, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %link) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end8.if.end.i_crit_edge
  %config_flags.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %15 = ptrtoint ptr %config_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config_flags.i, align 4
  %or.i = or i32 %16, 2049
  store i32 %or.i, ptr %config_flags.i, align 4
  %call1.i = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @mgslpc_ioprobe, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.failed.i_crit_edge

if.end.i.failed.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed.i

if.end4.i:                                        ; preds = %if.end.i
  %config_index.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %17 = ptrtoint ptr %config_index.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %config_index.i, align 4
  %config_regs.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 13
  %18 = ptrtoint ptr %config_regs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %config_regs.i, align 8
  %call5.i = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @mgslpc_isr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end4.i.failed.i_crit_edge

if.end4.i.failed.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed.i

if.end7.i:                                        ; preds = %if.end4.i
  %call8.i = tail call i32 @pcmcia_enable_device(ptr noundef %link) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end35, label %if.end7.i.failed.i_crit_edge

if.end7.i.failed.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed.i

failed.i:                                         ; preds = %if.end7.i.failed.i_crit_edge, %if.end4.i.failed.i_crit_edge, %if.end.i.failed.i_crit_edge
  %19 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i.i = icmp sgt i32 %19, 2
  br i1 %cmp.i.i, label %failed.i.failed.sink.split_crit_edge, label %failed.i.failed_crit_edge

failed.i.failed_crit_edge:                        ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

failed.i.failed.sink.split_crit_edge:             ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed.sink.split

if.end35:                                         ; preds = %if.end7.i
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %20 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 45
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %io_base.i, align 4
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 8
  %irq_level.i = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 46
  %27 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %irq_level.i, align 8
  %next_device.i = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 23
  %28 = ptrtoint ptr %next_device.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %next_device.i, align 8
  %29 = load i32, ptr @mgslpc_device_count, align 4
  %line.i = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %line.i, align 8
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 44
  %call.i70 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %device_name.i, ptr noundef nonnull @.str.97, i32 noundef %29) #12
  %31 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %line.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp.i71 = icmp slt i32 %32, 4
  br i1 %cmp.i71, label %if.then.i, label %if.end35.if.end7.i73_crit_edge

if.end35.if.end7.i73_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i73

if.then.i:                                        ; preds = %if.end35
  %arrayidx.i = getelementptr [4 x i32], ptr @maxframe, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i72 = icmp eq i32 %34, 0
  br i1 %tobool.not.i72, label %if.then.i.if.end7.i73_crit_edge, label %if.then4.i

if.then.i.if.end7.i73_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i73

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_frame_size, align 4
  br label %if.end7.i73

if.end7.i73:                                      ; preds = %if.then4.i, %if.then.i.if.end7.i73_crit_edge, %if.end35.if.end7.i73_crit_edge
  %36 = load i32, ptr @mgslpc_device_count, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr @mgslpc_device_count, align 4
  %37 = load ptr, ptr @mgslpc_device_list, align 4
  %tobool8.not.i = icmp eq ptr %37, null
  br i1 %tobool8.not.i, label %if.end7.i73.if.end14.i_crit_edge, label %if.end7.i73.while.cond.i_crit_edge

if.end7.i73.while.cond.i_crit_edge:               ; preds = %if.end7.i73
  br label %while.cond.i

if.end7.i73.if.end14.i_crit_edge:                 ; preds = %if.end7.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end7.i73.while.cond.i_crit_edge
  %current_dev.0.i = phi ptr [ %39, %while.cond.i.while.cond.i_crit_edge ], [ %37, %if.end7.i73.while.cond.i_crit_edge ]
  %next_device10.i = getelementptr inbounds %struct._mgslpc_info, ptr %current_dev.0.i, i32 0, i32 23
  %38 = ptrtoint ptr %next_device10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next_device10.i, align 4
  %tobool11.not.i = icmp eq ptr %39, null
  br i1 %tobool11.not.i, label %if.end14.i.loopexit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end14.i.loopexit:                              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %next_device10.i.le = getelementptr inbounds %struct._mgslpc_info, ptr %current_dev.0.i, i32 0, i32 23
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.i.loopexit, %if.end7.i73.if.end14.i_crit_edge
  %next_device10.le.sink.i = phi ptr [ @mgslpc_device_list, %if.end7.i73.if.end14.i_crit_edge ], [ %next_device10.i.le, %if.end14.i.loopexit ]
  %current_dev.1.i = phi ptr [ null, %if.end7.i73.if.end14.i_crit_edge ], [ %current_dev.0.i, %if.end14.i.loopexit ]
  %40 = ptrtoint ptr %next_device10.le.sink.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %next_device10.le.sink.i, align 4
  %41 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %42)
  %cmp16.i = icmp ult i32 %42, 4096
  br i1 %cmp16.i, label %if.end14.i.do.end.sink.split.i_crit_edge, label %if.else19.i

if.end14.i.do.end.sink.split.i_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split.i

if.else19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %42)
  %cmp21.i = icmp ugt i32 %42, 65535
  br i1 %cmp21.i, label %if.else19.i.do.end.sink.split.i_crit_edge, label %if.else19.i.do.end.i78_crit_edge

if.else19.i.do.end.i78_crit_edge:                 ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i78

if.else19.i.do.end.sink.split.i_crit_edge:        ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split.i

do.end.sink.split.i:                              ; preds = %if.else19.i.do.end.sink.split.i_crit_edge, %if.end14.i.do.end.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 4096, %if.end14.i.do.end.sink.split.i_crit_edge ], [ 65535, %if.else19.i.do.end.sink.split.i_crit_edge ]
  %43 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink.i, ptr %max_frame_size, align 4
  br label %do.end.i78

do.end.i78:                                       ; preds = %do.end.sink.split.i, %if.else19.i.do.end.i78_crit_edge
  %44 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_base.i, align 4
  %46 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq_level.i, align 8
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %device_name.i, i32 noundef %45, i32 noundef %47) #15
  %call.i.i76 = tail call ptr @alloc_hdlcdev(ptr noundef %call7.i.i) #12
  %cmp.i.i77 = icmp eq ptr %call.i.i76, null
  br i1 %cmp.i.i77, label %do.end.i.i79, label %if.end.i.i

do.end.i.i79:                                     ; preds = %do.end.i78
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.3) #15
  br label %mgslpc_add_device.exit

if.end.i.i:                                       ; preds = %do.end.i78
  %48 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_base.i, align 4
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i76, i32 0, i32 5
  %50 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %base_addr.i.i, align 32
  %51 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq_level.i, align 8
  %irq.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i76, i32 0, i32 64
  %53 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %irq.i.i, align 4
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i76, i32 0, i32 16
  %54 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @hdlcdev_ops, ptr %netdev_ops.i.i, align 8
  %watchdog_timeo.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i76, i32 0, i32 115
  %55 = ptrtoint ptr %watchdog_timeo.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1000, ptr %watchdog_timeo.i.i, align 4
  %tx_queue_len.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i76, i32 0, i32 107
  %56 = ptrtoint ptr %tx_queue_len.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 50, ptr %tx_queue_len.i.i, align 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i76, i32 2304
  %57 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @hdlcdev_attach, ptr %add.ptr.i.i.i.i, align 4
  %xmit.i.i = getelementptr i8, ptr %call.i.i76, i32 2308
  %58 = ptrtoint ptr %xmit.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @hdlcdev_xmit, ptr %xmit.i.i, align 4
  %call3.i.i = tail call i32 @register_netdev(ptr noundef nonnull %call.i.i76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end32.i, label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.3) #15
  tail call void @free_netdev(ptr noundef nonnull %call.i.i76) #12
  br label %mgslpc_add_device.exit

if.end32.i:                                       ; preds = %if.end.i.i
  %netdev.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %call7.i.i, i32 0, i32 59
  %59 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i76, ptr %netdev.i.i, align 4
  %60 = load ptr, ptr @serial_driver, align 4
  %61 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %line.i, align 8
  %63 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %p_dev, align 4
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %64, i32 0, i32 21
  %call34.i = tail call ptr @tty_port_register_device(ptr noundef %call7.i.i, ptr noundef %60, i32 noundef %62, ptr noundef %dev.i) #12
  %cmp.i77.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i, label %if.then36.i, label %if.end32.i.cleanup_crit_edge

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %call34.i to i32
  %66 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev.i.i, align 4
  tail call void @unregister_hdlc_device(ptr noundef %67) #12
  %68 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %netdev.i.i, align 4
  tail call void @free_netdev(ptr noundef %69) #12
  %70 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %netdev.i.i, align 4
  br label %mgslpc_add_device.exit

mgslpc_add_device.exit:                           ; preds = %if.then36.i, %do.end7.i.i, %do.end.i.i79
  %ret.0.i = phi i32 [ %65, %if.then36.i ], [ %call3.i.i, %do.end7.i.i ], [ -12, %do.end.i.i79 ]
  %tobool39.not.i = icmp eq ptr %current_dev.1.i, null
  %next_device41.i = getelementptr inbounds %struct._mgslpc_info, ptr %current_dev.1.i, i32 0, i32 23
  %mgslpc_device_list.sink.i = select i1 %tobool39.not.i, ptr @mgslpc_device_list, ptr %next_device41.i
  %71 = ptrtoint ptr %mgslpc_device_list.sink.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %mgslpc_device_list.sink.i, align 4
  %72 = load i32, ptr @mgslpc_device_count, align 4
  %dec.i = add i32 %72, -1
  store i32 %dec.i, ptr @mgslpc_device_count, align 4
  %73 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp.i82 = icmp sgt i32 %73, 2
  br i1 %cmp.i82, label %mgslpc_add_device.exit.failed.sink.split_crit_edge, label %mgslpc_add_device.exit.failed_crit_edge

mgslpc_add_device.exit.failed_crit_edge:          ; preds = %mgslpc_add_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

mgslpc_add_device.exit.failed.sink.split_crit_edge: ; preds = %mgslpc_add_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed.sink.split

failed.sink.split:                                ; preds = %mgslpc_add_device.exit.failed.sink.split_crit_edge, %failed.i.failed.sink.split_crit_edge
  %ret.0.ph = phi i32 [ -19, %failed.i.failed.sink.split_crit_edge ], [ %ret.0.i, %mgslpc_add_device.exit.failed.sink.split_crit_edge ]
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %link) #15
  br label %failed

failed:                                           ; preds = %failed.sink.split, %mgslpc_add_device.exit.failed_crit_edge, %failed.i.failed_crit_edge
  %ret.0 = phi i32 [ -19, %failed.i.failed_crit_edge ], [ %ret.0.i, %mgslpc_add_device.exit.failed_crit_edge ], [ %ret.0.ph, %failed.sink.split ]
  tail call void @pcmcia_disable_device(ptr noundef %link) #12
  tail call void @tty_port_destroy(ptr noundef nonnull %call7.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end32.i.cleanup_crit_edge, %do.end5
  %retval.0 = phi i32 [ %ret.0, %failed ], [ -12, %do.end5 ], [ 0, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv6 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %1 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv6, align 8
  %stop7 = getelementptr inbounds %struct._mgslpc_info, ptr %2, i32 0, i32 56
  %3 = ptrtoint ptr %stop7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %stop7, align 4
  br label %mgslpc_release.exit

if.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %link) #15
  %.pr = load i32, ptr @debug_level, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %stop = getelementptr inbounds %struct._mgslpc_info, ptr %5, i32 0, i32 56
  %6 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.mgslpc_release.exit_crit_edge

if.end.mgslpc_release.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mgslpc_release.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %link) #15
  br label %mgslpc_release.exit

mgslpc_release.exit:                              ; preds = %do.end.i, %if.end.mgslpc_release.exit_crit_edge, %if.end.thread
  %priv9 = phi ptr [ %priv6, %if.end.thread ], [ %priv, %if.end.mgslpc_release.exit_crit_edge ], [ %priv, %do.end.i ]
  tail call void @pcmcia_disable_device(ptr noundef %link) #12
  %7 = ptrtoint ptr %priv9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv9, align 8
  %info.022.i = load ptr, ptr @mgslpc_device_list, align 4
  %tobool.not23.i = icmp eq ptr %info.022.i, null
  br i1 %tobool.not23.i, label %mgslpc_release.exit.mgslpc_remove_device.exit_crit_edge, label %while.body.i.preheader

mgslpc_release.exit.mgslpc_remove_device.exit_crit_edge: ; preds = %mgslpc_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mgslpc_remove_device.exit

while.body.i.preheader:                           ; preds = %mgslpc_release.exit
  %cmp.i511 = icmp eq ptr %info.022.i, %8
  br i1 %cmp.i511, label %while.body.i.preheader.if.then.i_crit_edge, label %while.body.i.preheader.if.end5.i_crit_edge

while.body.i.preheader.if.end5.i_crit_edge:       ; preds = %while.body.i.preheader
  br label %if.end5.i

while.body.i.preheader.if.then.i_crit_edge:       ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

while.body.i:                                     ; preds = %if.end5.i
  %cmp.i5 = icmp eq ptr %info.0.i, %8
  br i1 %cmp.i5, label %while.body.i.if.then.i_crit_edge, label %while.body.i.if.end5.i_crit_edge

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

while.body.i.if.then.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %while.body.i.if.then.i_crit_edge, %while.body.i.preheader.if.then.i_crit_edge
  %last.024.i.lcssa = phi ptr [ null, %while.body.i.preheader.if.then.i_crit_edge ], [ %info.025.i12, %while.body.i.if.then.i_crit_edge ]
  %tobool1.not.i = icmp eq ptr %last.024.i.lcssa, null
  %next_device4.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %next_device4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_device4.i, align 4
  %next_device3.i = getelementptr inbounds %struct._mgslpc_info, ptr %last.024.i.lcssa, i32 0, i32 23
  %mgslpc_device_list.sink.i = select i1 %tobool1.not.i, ptr @mgslpc_device_list, ptr %next_device3.i
  %11 = ptrtoint ptr %mgslpc_device_list.sink.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mgslpc_device_list.sink.i, align 4
  %12 = load ptr, ptr @serial_driver, align 4
  %line.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %line.i, align 4
  tail call void @tty_unregister_device(ptr noundef %12, i32 noundef %14) #12
  %netdev.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 59
  %15 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i.i, align 4
  tail call void @unregister_hdlc_device(ptr noundef %16) #12
  %17 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev.i.i, align 4
  tail call void @free_netdev(ptr noundef %18) #12
  %19 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %netdev.i.i, align 4
  %20 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i.i = icmp sgt i32 %20, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.release_resources.exit.i_crit_edge

if.then.i.release_resources.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_resources.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 44
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %device_name.i.i) #15
  br label %release_resources.exit.i

release_resources.exit.i:                         ; preds = %do.end.i.i, %if.then.i.release_resources.exit.i_crit_edge
  %rx_buf.i.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 13
  %21 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf.i.i.i, align 4
  tail call void @kfree(ptr noundef %22) #12
  %23 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_buf.i.i.i, align 4
  %flag_buf.i.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 52
  %24 = ptrtoint ptr %flag_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %flag_buf.i.i.i, align 4
  tail call void @kfree(ptr noundef %25) #12
  %26 = ptrtoint ptr %flag_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %flag_buf.i.i.i, align 4
  tail call void @tty_port_destroy(ptr noundef nonnull %8) #12
  tail call void @kfree(ptr noundef nonnull %8) #12
  %27 = load i32, ptr @mgslpc_device_count, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr @mgslpc_device_count, align 4
  br label %mgslpc_remove_device.exit

if.end5.i:                                        ; preds = %while.body.i.if.end5.i_crit_edge, %while.body.i.preheader.if.end5.i_crit_edge
  %info.025.i12 = phi ptr [ %info.0.i, %while.body.i.if.end5.i_crit_edge ], [ %info.022.i, %while.body.i.preheader.if.end5.i_crit_edge ]
  %next_device6.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.025.i12, i32 0, i32 23
  %28 = ptrtoint ptr %next_device6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %info.0.i = load ptr, ptr %next_device6.i, align 4
  %tobool.not.i = icmp eq ptr %info.0.i, null
  br i1 %tobool.not.i, label %if.end5.i.mgslpc_remove_device.exit_crit_edge, label %while.body.i

if.end5.i.mgslpc_remove_device.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mgslpc_remove_device.exit

mgslpc_remove_device.exit:                        ; preds = %if.end5.i.mgslpc_remove_device.exit_crit_edge, %release_resources.exit.i, %mgslpc_release.exit.mgslpc_remove_device.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mgslpc_suspend(ptr nocapture noundef readonly %link) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %stop = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %stop, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mgslpc_resume(ptr nocapture noundef readonly %link) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %stop = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %stop, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bh_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -944
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr i8, ptr %work, i32 88
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 774, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bh_running = getelementptr i8, ptr %work, i32 52
  %1 = ptrtoint ptr %bh_running to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %bh_running, align 4
  %call2 = tail call ptr @tty_port_tty_get(ptr noundef %add.ptr) #12
  %lock.i = getelementptr i8, ptr %work, i32 -44
  %pending_bh.i = getelementptr i8, ptr %work, i32 48
  %dcd_chkcount.i = getelementptr i8, ptr %work, i32 56
  %device_name.i49 = getelementptr i8, ptr %work, i32 88
  %tobool.not.i52 = icmp eq ptr %call2, null
  %rx_frame_count.i = getelementptr i8, ptr %work, i32 -212
  %rx_buf.i = getelementptr i8, ptr %work, i32 -236
  %rx_get.i = getelementptr i8, ptr %work, i32 -224
  %rx_buf_size.i = getelementptr i8, ptr %work, i32 -220
  %rxabort.i = getelementptr i8, ptr %work, i32 -288
  %rxover.i = getelementptr i8, ptr %work, i32 -284
  %rxcrc.i = getelementptr i8, ptr %work, i32 -280
  %crc_type.i = getelementptr i8, ptr %work, i32 142
  %netdev.i = getelementptr i8, ptr %work, i32 260
  %max_frame_size.i = getelementptr i8, ptr %work, i32 44
  %rxok.i = getelementptr i8, ptr %work, i32 -276
  %netcount.i = getelementptr i8, ptr %work, i32 212
  %flag_buf.i = getelementptr i8, ptr %work, i32 164
  %rxlong.i = getelementptr i8, ptr %work, i32 -292
  %rx_buf_count.i = getelementptr i8, ptr %work, i32 -216
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %2 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pending_bh.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.else.i:                                        ; preds = %while.cond
  %and8.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else13.i, label %if.else.i.while.body_crit_edge

if.else.i.while.body_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.else13.i:                                      ; preds = %if.else.i
  %and15.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %while.end23, label %if.else13.i.while.body_crit_edge

if.else13.i.while.body_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %if.else13.i.while.body_crit_edge, %if.else.i.while.body_crit_edge, %while.cond.while.body_crit_edge
  %.sink = phi i32 [ -2, %while.cond.while.body_crit_edge ], [ -3, %if.else.i.while.body_crit_edge ], [ -5, %if.else13.i.while.body_crit_edge ]
  %rc.038.i.ph = phi i32 [ 1, %while.cond.while.body_crit_edge ], [ 2, %if.else.i.while.body_crit_edge ], [ 4, %if.else13.i.while.body_crit_edge ]
  %and6.i = and i32 %3, %.sink
  %4 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and6.i, ptr %pending_bh.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %5 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp5 = icmp sgt i32 %5, 3
  br i1 %cmp5, label %do.end9, label %while.body.if.end12_crit_edge

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end9:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, i32 noundef 784, i32 noundef %rc.038.i.ph) #15
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %while.body.if.end12_crit_edge
  %6 = zext i32 %rc.038.i.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rc.038.i.ph, label %do.end20 [
    i32 1, label %while.cond13.preheader
    i32 2, label %sw.bb16
    i32 4, label %sw.bb17
  ]

while.cond13.preheader:                           ; preds = %if.end12
  %7 = ptrtoint ptr %rx_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_frame_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i68 = icmp eq i32 %8, 0
  br i1 %cmp.i68, label %while.cond13.preheader.while.cond.backedge_crit_edge, label %while.cond13.preheader.if.end.i_crit_edge

while.cond13.preheader.if.end.i_crit_edge:        ; preds = %while.cond13.preheader
  br label %if.end.i

while.cond13.preheader.while.cond.backedge_crit_edge: ; preds = %while.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end20, %sw.bb17, %if.then1.i, %if.end.i53.while.cond.backedge_crit_edge, %rx_get_frame.exit.while.cond.backedge_crit_edge, %while.cond13.preheader.while.cond.backedge_crit_edge
  br label %while.cond

if.end.i:                                         ; preds = %rx_get_frame.exit.if.end.i_crit_edge, %while.cond13.preheader.if.end.i_crit_edge
  %9 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buf.i, align 4
  %11 = ptrtoint ptr %rx_get.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_get.i, align 4
  %13 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_buf_size.i, align 4
  %mul.i = mul i32 %14, %12
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul.i
  %status1.i = getelementptr inbounds %struct.RXBUF, ptr %add.ptr.i, i32 0, i32 1
  %15 = ptrtoint ptr %status1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status1.i, align 4
  %conv2.i = zext i8 %16 to i32
  %and.i45 = and i32 %conv2.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %and.i45)
  %cmp3.not.i = icmp eq i32 %and.i45, 160
  br i1 %cmp3.not.i, label %if.end.i.if.then40.i_crit_edge, label %if.then5.i

if.end.i.if.then40.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40.i

if.then5.i:                                       ; preds = %if.end.i
  %17 = and i32 %conv2.i, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %17)
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %if.else.i46, label %if.then11.i

if.then11.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %rxabort.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rxabort.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %rxabort.i, align 4
  %21 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev.i, align 4
  %rx_errors.i.c = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36, i32 4
  %23 = ptrtoint ptr %rx_errors.i.c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_errors.i.c, align 8
  %inc33.i.c = add i32 %24, 1
  store i32 %inc33.i.c, ptr %rx_errors.i.c, align 8
  %25 = load ptr, ptr %netdev.i, align 4
  %rx_frame_errors.i.c = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 13
  %26 = ptrtoint ptr %rx_frame_errors.i.c to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors.i.c, align 4
  %inc36.i.c = add i32 %27, 1
  store i32 %inc36.i.c, ptr %rx_frame_errors.i.c, align 4
  br label %if.end41.i

if.else.i46:                                      ; preds = %if.then5.i
  %and13.i = and i32 %conv2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %rxover.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rxover.i, align 4
  %inc17.i = add i32 %29, 1
  store i32 %inc17.i, ptr %rxover.i, align 4
  %30 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev.i, align 4
  %rx_errors.i.c59 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 4
  %32 = ptrtoint ptr %rx_errors.i.c59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_errors.i.c59, align 8
  %inc33.i.c60 = add i32 %33, 1
  store i32 %inc33.i.c60, ptr %rx_errors.i.c59, align 8
  %34 = load ptr, ptr %netdev.i, align 4
  %rx_frame_errors.i.c61 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 13
  %35 = ptrtoint ptr %rx_frame_errors.i.c61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_frame_errors.i.c61, align 4
  %inc36.i.c62 = add i32 %36, 1
  store i32 %inc36.i.c62, ptr %rx_frame_errors.i.c61, align 4
  br label %if.end41.i

if.else18.i:                                      ; preds = %if.else.i46
  %and20.i = and i32 %conv2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end41.i.critedge63

if.then22.i:                                      ; preds = %if.else18.i
  %37 = ptrtoint ptr %rxcrc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rxcrc.i, align 4
  %inc24.i = add i32 %38, 1
  store i32 %inc24.i, ptr %rxcrc.i, align 4
  %39 = ptrtoint ptr %crc_type.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %crc_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool27.not.i = icmp slt i16 %40, 0
  %41 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev.i, align 4
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 4
  %43 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_errors.i, align 8
  %inc33.i = add i32 %44, 1
  store i32 %inc33.i, ptr %rx_errors.i, align 8
  %45 = load ptr, ptr %netdev.i, align 4
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 36, i32 13
  %46 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_frame_errors.i, align 4
  %inc36.i = add i32 %47, 1
  store i32 %inc36.i, ptr %rx_frame_errors.i, align 4
  br i1 %tobool27.not.i, label %if.then22.i.if.then40.i_crit_edge, label %if.then22.i.if.end41.i_crit_edge

if.then22.i.if.end41.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then22.i.if.then40.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.then22.i.if.then40.i_crit_edge, %if.end.i.if.then40.i_crit_edge
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  br label %if.end41.i

if.end41.i.critedge63:                            ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev.i, align 4
  %rx_errors.i.c64 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 4
  %52 = ptrtoint ptr %rx_errors.i.c64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_errors.i.c64, align 8
  %inc33.i.c65 = add i32 %53, 1
  store i32 %inc33.i.c65, ptr %rx_errors.i.c64, align 8
  %54 = load ptr, ptr %netdev.i, align 4
  %rx_frame_errors.i.c66 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 13
  %55 = ptrtoint ptr %rx_frame_errors.i.c66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_frame_errors.i.c66, align 4
  %inc36.i.c67 = add i32 %56, 1
  store i32 %inc36.i.c67, ptr %rx_frame_errors.i.c66, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.i.critedge63, %if.then40.i, %if.then22.i.if.end41.i_crit_edge, %if.then15.i, %if.then11.i
  %framesize.1.i = phi i32 [ %49, %if.then40.i ], [ 0, %if.then22.i.if.end41.i_crit_edge ], [ 0, %if.then11.i ], [ 0, %if.then15.i ], [ 0, %if.end41.i.critedge63 ]
  %57 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp42.i = icmp sgt i32 %57, 3
  br i1 %cmp42.i, label %do.end.i, label %if.end41.i.if.end46.i_crit_edge

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

do.end.i:                                         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, i32 noundef 3668, ptr noundef %device_name.i49, i32 noundef %conv2.i, i32 noundef %framesize.1.i) #15
  %.pr.i = load i32, ptr @debug_level, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end.i, %if.end41.i.if.end46.i_crit_edge
  %58 = phi i32 [ %.pr.i, %do.end.i ], [ %57, %if.end41.i.if.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp47.i = icmp sgt i32 %58, 0
  br i1 %cmp47.i, label %if.then49.i, label %if.end46.i.if.end51.i_crit_edge

if.end46.i.if.end51.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end46.i
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %device_name.i49) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %framesize.1.i)
  %tobool8.not7.i.i = icmp eq i32 %framesize.1.i, 0
  br i1 %tobool8.not7.i.i, label %if.then49.i.rx_get_frame.exit_crit_edge, label %while.body.i.preheader.i

if.then49.i.rx_get_frame.exit_crit_edge:          ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_get_frame.exit

while.body.i.preheader.i:                         ; preds = %if.then49.i
  %data.i = getelementptr inbounds %struct.RXBUF, ptr %add.ptr.i, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %do.end62.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %data.addr.09.i.i = phi ptr [ %add.ptr.i.i, %do.end62.i.i.while.body.i.i_crit_edge ], [ %data.i, %while.body.i.preheader.i ]
  %count.addr.08.i.i = phi i32 [ %sub.i.i, %do.end62.i.i.while.body.i.i_crit_edge ], [ %framesize.1.i, %while.body.i.preheader.i ]
  %59 = tail call i32 @llvm.smin.i32(i32 %count.addr.08.i.i, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.08.i.i)
  %cmp121.i.i = icmp sgt i32 %count.addr.08.i.i, 0
  br i1 %cmp121.i.i, label %do.end15.preheader.i.i, label %while.body.i.i.do.end24.i.i.preheader_crit_edge

while.body.i.i.do.end24.i.i.preheader_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24.i.i.preheader

do.end24.i.i.preheader:                           ; preds = %do.end15.i.i.do.end24.i.i.preheader_crit_edge, %while.body.i.i.do.end24.i.i.preheader_crit_edge
  %i.14.i.i.ph = phi i32 [ 0, %while.body.i.i.do.end24.i.i.preheader_crit_edge ], [ %smax.i.i, %do.end15.i.i.do.end24.i.i.preheader_crit_edge ]
  br label %do.end24.i.i

do.end15.preheader.i.i:                           ; preds = %while.body.i.i
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %59, i32 1) #12
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %do.end15.i.i.do.end15.i.i_crit_edge, %do.end15.preheader.i.i
  %i.02.i.i = phi i32 [ %inc.i.i, %do.end15.i.i.do.end15.i.i_crit_edge ], [ 0, %do.end15.preheader.i.i ]
  %arrayidx.i.i = getelementptr i8, ptr %data.addr.09.i.i, i32 %i.02.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %61 to i32
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i.i) #15
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %smax.i.i
  br i1 %exitcond.not.i.i, label %do.end15.i.i.do.end24.i.i.preheader_crit_edge, label %do.end15.i.i.do.end15.i.i_crit_edge

do.end15.i.i.do.end15.i.i_crit_edge:              ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i.i

do.end15.i.i.do.end24.i.i.preheader_crit_edge:    ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24.i.i.preheader

for.cond30.preheader.i.i:                         ; preds = %do.end24.i.i
  br i1 %cmp121.i.i, label %for.body33.preheader.i.i, label %for.cond30.preheader.i.i.do.end62.i.i_crit_edge

for.cond30.preheader.i.i.do.end62.i.i_crit_edge:  ; preds = %for.cond30.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.i.i

for.body33.preheader.i.i:                         ; preds = %for.cond30.preheader.i.i
  %smax11.i.i = tail call i32 @llvm.smax.i32(i32 %59, i32 1) #12
  br label %for.body33.i.i

do.end24.i.i:                                     ; preds = %do.end24.i.i.do.end24.i.i_crit_edge, %do.end24.i.i.preheader
  %i.14.i.i = phi i32 [ %inc28.i.i, %do.end24.i.i.do.end24.i.i_crit_edge ], [ %i.14.i.i.ph, %do.end24.i.i.preheader ]
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #15
  %inc28.i.i = add nuw nsw i32 %i.14.i.i, 1
  %exitcond10.not.i.i = icmp eq i32 %inc28.i.i, 17
  br i1 %exitcond10.not.i.i, label %for.cond30.preheader.i.i, label %do.end24.i.i.do.end24.i.i_crit_edge

do.end24.i.i.do.end24.i.i_crit_edge:              ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24.i.i

for.body33.i.i:                                   ; preds = %for.inc57.i.i.for.body33.i.i_crit_edge, %for.body33.preheader.i.i
  %i.26.i.i = phi i32 [ %inc58.i.i, %for.inc57.i.i.for.body33.i.i_crit_edge ], [ 0, %for.body33.preheader.i.i ]
  %arrayidx34.i.i = getelementptr i8, ptr %data.addr.09.i.i, i32 %i.26.i.i
  %62 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx34.i.i, align 1
  %64 = add i8 %63, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %64)
  %65 = icmp ult i8 %64, 95
  br i1 %65, label %do.end45.i.i, label %do.end53.i.i

do.end45.i.i:                                     ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv35.i.i = zext i8 %63 to i32
  %call49.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv35.i.i) #15
  br label %for.inc57.i.i

do.end53.i.i:                                     ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call55.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  br label %for.inc57.i.i

for.inc57.i.i:                                    ; preds = %do.end53.i.i, %do.end45.i.i
  %inc58.i.i = add nuw nsw i32 %i.26.i.i, 1
  %exitcond12.not.i.i = icmp eq i32 %inc58.i.i, %smax11.i.i
  br i1 %exitcond12.not.i.i, label %for.inc57.i.i.do.end62.i.i_crit_edge, label %for.inc57.i.i.for.body33.i.i_crit_edge

for.inc57.i.i.for.body33.i.i_crit_edge:           ; preds = %for.inc57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33.i.i

for.inc57.i.i.do.end62.i.i_crit_edge:             ; preds = %for.inc57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.i.i

do.end62.i.i:                                     ; preds = %for.inc57.i.i.do.end62.i.i_crit_edge, %for.cond30.preheader.i.i.do.end62.i.i_crit_edge
  %call64.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  %add.ptr.i.i = getelementptr i8, ptr %data.addr.09.i.i, i32 %59
  %sub.i.i = sub i32 %count.addr.08.i.i, %59
  %tobool8.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool8.not.i.i, label %do.end62.i.i.if.end51.i_crit_edge, label %do.end62.i.i.while.body.i.i_crit_edge

do.end62.i.i.while.body.i.i_crit_edge:            ; preds = %do.end62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

do.end62.i.i.if.end51.i_crit_edge:                ; preds = %do.end62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end62.i.i.if.end51.i_crit_edge, %if.end46.i.if.end51.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %framesize.1.i)
  %tobool52.not.i = icmp eq i32 %framesize.1.i, 0
  br i1 %tobool52.not.i, label %if.end51.i.rx_get_frame.exit_crit_edge, label %if.then53.i

if.end51.i.rx_get_frame.exit_crit_edge:           ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_get_frame.exit

if.then53.i:                                      ; preds = %if.end51.i
  %66 = ptrtoint ptr %crc_type.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %crc_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %67)
  %tobool58.not.i = icmp sgt i16 %67, -1
  br i1 %tobool58.not.i, label %if.then53.i.lor.lhs.false61.i_crit_edge, label %land.lhs.true.i

if.then53.i.lor.lhs.false61.i_crit_edge:          ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false61.i

land.lhs.true.i:                                  ; preds = %if.then53.i
  %add.i = add i32 %framesize.1.i, 1
  %68 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_frame_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %69)
  %cmp59.i = icmp ugt i32 %add.i, %69
  br i1 %cmp59.i, label %land.lhs.true.i.if.then65.i_crit_edge, label %land.lhs.true.i.lor.lhs.false61.i_crit_edge

land.lhs.true.i.lor.lhs.false61.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false61.i

land.lhs.true.i.if.then65.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65.i

lor.lhs.false61.i:                                ; preds = %land.lhs.true.i.lor.lhs.false61.i_crit_edge, %if.then53.i.lor.lhs.false61.i_crit_edge
  %70 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_frame_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %framesize.1.i, i32 %71)
  %cmp63.i = icmp ugt i32 %framesize.1.i, %71
  br i1 %cmp63.i, label %lor.lhs.false61.i.if.then65.i_crit_edge, label %if.else68.i

lor.lhs.false61.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then65.i

if.then65.i:                                      ; preds = %lor.lhs.false61.i.if.then65.i_crit_edge, %land.lhs.true.i.if.then65.i_crit_edge
  %72 = ptrtoint ptr %rxlong.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rxlong.i, align 4
  %inc67.i = add i32 %73, 1
  store i32 %inc67.i, ptr %rxlong.i, align 4
  br label %rx_get_frame.exit

if.else68.i:                                      ; preds = %lor.lhs.false61.i
  %and70.i = and i32 %conv2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.else68.i.if.end75.i_crit_edge, label %if.then72.i

if.else68.i.if.end75.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.then72.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %rxok.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rxok.i, align 4
  %inc74.i = add i32 %75, 1
  store i32 %inc74.i, ptr %rxok.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %if.else68.i.if.end75.i_crit_edge
  br i1 %tobool58.not.i, label %if.end75.i.if.end90.i_crit_edge, label %if.then81.i

if.end75.i.if.end90.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90.i

if.then81.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  %and70.lobit.i = lshr exact i32 %and70.i, 5
  %76 = trunc i32 %and70.lobit.i to i8
  %77 = xor i8 %76, 1
  %data86.i = getelementptr inbounds %struct.RXBUF, ptr %add.ptr.i, i32 0, i32 2
  %add.ptr88.i = getelementptr i8, ptr %data86.i, i32 %framesize.1.i
  %78 = ptrtoint ptr %add.ptr88.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %add.ptr88.i, align 1
  %inc89.i = add i32 %framesize.1.i, 1
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then81.i, %if.end75.i.if.end90.i_crit_edge
  %framesize.2.i = phi i32 [ %inc89.i, %if.then81.i ], [ %framesize.1.i, %if.end75.i.if.end90.i_crit_edge ]
  %79 = ptrtoint ptr %netcount.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %netcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool91.not.i = icmp eq i32 %80, 0
  %data96.i = getelementptr inbounds %struct.RXBUF, ptr %add.ptr.i, i32 0, i32 2
  br i1 %tobool91.not.i, label %if.else95.i, label %if.then92.i

if.then92.i:                                      ; preds = %if.end90.i
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %framesize.2.i, i32 noundef 2592) #12
  %81 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev.i, align 4
  %83 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp.i.i = icmp sgt i32 %83, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then92.i.if.end.i.i_crit_edge

if.then92.i.if.end.i.i_crit_edge:                 ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %82) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then92.i.if.end.i.i_crit_edge
  %cmp2.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %cmp2.i.i, label %do.end6.i.i, label %if.end11.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %82) #15
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 36, i32 6
  %84 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_dropped.i.i, align 8
  %inc.i177.i = add i32 %85, 1
  store i32 %inc.i177.i, ptr %rx_dropped.i.i, align 8
  br label %rx_get_frame.exit

if.end11.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %framesize.2.i) #12
  %86 = call ptr @memcpy(ptr %call.i.i.i, ptr %data96.i, i32 %framesize.2.i)
  %87 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %82, ptr %87, align 8
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %89 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %91 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %90 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 21
  %93 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i.i.i.i, ptr %mac_header.i.i.i.i, align 2
  %proto.i.i.i = getelementptr i8, ptr %82, i32 2312
  %94 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %proto.i.i.i, align 4
  %type_trans.i.i.i = getelementptr inbounds %struct.hdlc_proto, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %type_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %type_trans.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i.i, label %if.end11.i.i.hdlc_type_trans.exit.i.i_crit_edge, label %if.then.i.i.i

if.end11.i.i.hdlc_type_trans.exit.i.i_crit_edge:  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hdlc_type_trans.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i.i = tail call zeroext i16 %97(ptr noundef nonnull %call.i.i.i.i, ptr noundef %82) #12
  br label %hdlc_type_trans.exit.i.i

hdlc_type_trans.exit.i.i:                         ; preds = %if.then.i.i.i, %if.end11.i.i.hdlc_type_trans.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %call3.i.i.i, %if.then.i.i.i ], [ 25, %if.end11.i.i.hdlc_type_trans.exit.i.i_crit_edge ]
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 18
  %98 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %retval.0.i.i.i, ptr %protocol.i.i, align 8
  %stats14.i.i = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 36
  %99 = ptrtoint ptr %stats14.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %stats14.i.i, align 8
  %inc15.i.i = add i32 %100, 1
  store i32 %inc15.i.i, ptr %stats14.i.i, align 8
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 36, i32 2
  %101 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i.i = add i32 %102, %framesize.2.i
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 8
  %call17.i178.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i.i) #12
  br label %rx_get_frame.exit

if.else95.i:                                      ; preds = %if.end90.i
  %103 = ptrtoint ptr %flag_buf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %flag_buf.i, align 4
  br i1 %tobool.not.i52, label %if.else95.i.rx_get_frame.exit_crit_edge, label %if.end.i179.i

if.else95.i.rx_get_frame.exit_crit_edge:          ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_get_frame.exit

if.end.i179.i:                                    ; preds = %if.else95.i
  %call.i.i = tail call ptr @tty_ldisc_ref(ptr noundef nonnull %call2) #12
  %tobool1.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.i179.i.rx_get_frame.exit_crit_edge, label %if.then2.i.i

if.end.i179.i.rx_get_frame.exit_crit_edge:        ; preds = %if.end.i179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_get_frame.exit

if.then2.i.i:                                     ; preds = %if.end.i179.i
  %105 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i.i, align 4
  %receive_buf.i.i = getelementptr inbounds %struct.tty_ldisc_ops, ptr %106, i32 0, i32 12
  %107 = ptrtoint ptr %receive_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %receive_buf.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %108, null
  br i1 %tobool3.not.i.i, label %if.then2.i.i.if.end7.i.i_crit_edge, label %if.then4.i.i

if.then2.i.i.if.end7.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then4.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %108(ptr noundef nonnull %call2, ptr noundef %data96.i, ptr noundef %104, i32 noundef %framesize.2.i) #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i, %if.then2.i.i.if.end7.i.i_crit_edge
  tail call void @tty_ldisc_deref(ptr noundef nonnull %call.i.i) #12
  br label %rx_get_frame.exit

rx_get_frame.exit:                                ; preds = %if.end7.i.i, %if.end.i179.i.rx_get_frame.exit_crit_edge, %if.else95.i.rx_get_frame.exit_crit_edge, %hdlc_type_trans.exit.i.i, %do.end6.i.i, %if.then65.i, %if.end51.i.rx_get_frame.exit_crit_edge, %if.then49.i.rx_get_frame.exit_crit_edge
  %call107.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %add.ptr.i, align 4
  %110 = ptrtoint ptr %status1.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %status1.i, align 4
  %111 = ptrtoint ptr %rx_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_frame_count.i, align 4
  %dec.i = add i32 %112, -1
  store i32 %dec.i, ptr %rx_frame_count.i, align 4
  %113 = ptrtoint ptr %rx_get.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_get.i, align 4
  %inc116.i = add i32 %114, 1
  %115 = ptrtoint ptr %rx_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc116.i, i32 %116)
  %cmp118.not.i = icmp slt i32 %inc116.i, %116
  %spec.store.select.i = select i1 %cmp118.not.i, i32 %inc116.i, i32 0
  %117 = ptrtoint ptr %rx_get.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %spec.store.select.i, ptr %rx_get.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call107.i) #12
  %118 = ptrtoint ptr %rx_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rx_frame_count.i, align 4
  %cmp.i = icmp eq i32 %119, 0
  br i1 %cmp.i, label %rx_get_frame.exit.while.cond.backedge_crit_edge, label %rx_get_frame.exit.if.end.i_crit_edge

rx_get_frame.exit.if.end.i_crit_edge:             ; preds = %rx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

rx_get_frame.exit.while.cond.backedge_crit_edge:  ; preds = %rx_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %if.end12
  %120 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %120)
  %cmp.i48 = icmp sgt i32 %120, 3
  br i1 %cmp.i48, label %do.end.i51, label %sw.bb16.if.end.i53_crit_edge

sw.bb16.if.end.i53_crit_edge:                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i53

do.end.i51:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %device_name.i49) #15
  br label %if.end.i53

if.end.i53:                                       ; preds = %do.end.i51, %sw.bb16.if.end.i53_crit_edge
  br i1 %tobool.not.i52, label %if.end.i53.while.cond.backedge_crit_edge, label %if.then1.i

if.end.i53.while.cond.backedge_crit_edge:         ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.then1.i:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_wakeup(ptr noundef nonnull %call2) #12
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %121 = call ptr @memset(ptr %dcd_chkcount.i, i32 0, i32 16)
  br label %while.cond.backedge

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %rc.038.i.ph) #15
  br label %while.cond.backedge

while.end23:                                      ; preds = %if.else13.i
  %122 = ptrtoint ptr %bh_running to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %bh_running, align 4
  %bh_requested.i = getelementptr i8, ptr %work, i32 53
  %123 = ptrtoint ptr %bh_requested.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %bh_requested.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  tail call void @tty_kref_put(ptr noundef %call2) #12
  %124 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp24 = icmp sgt i32 %124, 3
  br i1 %cmp24, label %do.end28, label %while.end23.if.end33_crit_edge

while.end23.if.end33_crit_edge:                   ; preds = %while.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.end28:                                         ; preds = %while.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 807, ptr noundef %device_name.i49) #15
  br label %if.end33

if.end33:                                         ; preds = %do.end28, %while.end23.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carrier_raised(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %port, i32 0, i32 27
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %serial_signals.i = getelementptr inbounds %struct._mgslpc_info, ptr %port, i32 0, i32 48
  %0 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %serial_signals.i, align 4
  %2 = and i8 %1, -96
  store i8 %2, ptr %serial_signals.i, align 4
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %port, i32 0, i32 45
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %4, 116
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %5 = inttoptr i32 %add3.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool.not.i = icmp sgt i8 %6, -1
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %serial_signals.i, align 4
  %9 = or i8 %8, 1
  store i8 %9, ptr %serial_signals.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %11, 96
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %12 = inttoptr i32 %add14.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool20.not.i = icmp eq i8 %14, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then21.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %serial_signals.i, align 4
  %17 = or i8 %16, 16
  store i8 %17, ptr %serial_signals.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end.i.if.end26.i_crit_edge
  %18 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_base.i, align 4
  %add29.i = add i32 %19, 60
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %20 = inttoptr i32 %add31.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i = zext i8 %21 to i32
  %and36.i = and i32 %conv35.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end26.i.if.end43.i_crit_edge

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %serial_signals.i, align 4
  %24 = or i8 %23, 4
  store i8 %24, ptr %serial_signals.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end26.i.if.end43.i_crit_edge
  %and45.i = and i32 %conv35.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.get_signals.exit_crit_edge

if.end43.i.get_signals.exit_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %serial_signals.i, align 4
  %27 = or i8 %26, 64
  store i8 %27, ptr %serial_signals.i, align 4
  br label %get_signals.exit

get_signals.exit:                                 ; preds = %if.then47.i, %if.end43.i.get_signals.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %28 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %serial_signals.i, align 4
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dtr_rts(ptr noundef %port, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %port, i32 0, i32 27
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %serial_signals8 = getelementptr inbounds %struct._mgslpc_info, ptr %port, i32 0, i32 48
  %0 = ptrtoint ptr %serial_signals8 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %serial_signals8, align 4
  %2 = and i8 %1, 95
  %masksel = select i1 %tobool.not, i8 0, i8 -96
  %.sink = or i8 %2, %masksel
  store i8 %.sink, ptr %serial_signals8, align 4
  tail call fastcc void @set_signals(ptr noundef %port)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_signals(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 4
  %add = add i32 %1, 34
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !626
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %serial_signals = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %6 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %serial_signals, align 4
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %9 = and i8 %3, -65
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %10 = or i8 %3, 64
  br label %do.body

if.else10:                                        ; preds = %entry
  br i1 %tobool.not, label %if.else19, label %if.then15

if.then15:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  %11 = or i8 %3, 4
  br label %do.body

if.else19:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  %12 = and i8 %3, -5
  br label %do.body

do.body:                                          ; preds = %if.else19, %if.then15, %if.else, %if.then4
  %val.0 = phi i8 [ %9, %if.then4 ], [ %10, %if.else ], [ %11, %if.then15 ], [ %12, %if.else19 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !627
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base, align 4
  %add26 = add i32 %14, 34
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %15 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %val.0) #12, !srcloc !628
  %serial_signals30 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %16 = ptrtoint ptr %serial_signals30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %serial_signals30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool33.not = icmp sgt i8 %17, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_base, align 4
  %add60 = add i32 %19, 60
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %20 = inttoptr i32 %add62 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %tobool33.not, label %do.body55, label %do.body35

do.body35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = and i8 %21, -2
  %23 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_base, align 4
  %add50 = add i32 %24, 60
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %25 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #12, !srcloc !628
  br label %if.end74

do.body55:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %26 = or i8 %21, 1
  %27 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %io_base, align 4
  %add70 = add i32 %28, 60
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %29 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %26) #12, !srcloc !628
  br label %if.end74

if.end74:                                         ; preds = %do.body55, %do.body35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_ioprobe(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_isr(i32 noundef %dummy, ptr noundef %dev_id) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %irq_level = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 46
  %1 = ptrtoint ptr %irq_level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq_level, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %2) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %p_dev = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 55
  %3 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p_dev, align 4
  %_locked = getelementptr inbounds %struct.pcmcia_device, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %_locked to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %_locked, align 8
  %6 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @tty_port_tty_get(ptr noundef %dev_id) #12
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %io_base = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 45
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_base, align 4
  %add449 = add i32 %8, 56
  %and450 = and i32 %add449, 1048575
  %add4451 = or i32 %and450, -18874368
  %9 = inttoptr i32 %add4451 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not452 = icmp eq i8 %10, 0
  br i1 %tobool8.not452, label %if.end2.while.end_crit_edge, label %while.body.lr.ph

if.end2.while.end_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end2
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 44
  %serial_signals.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 48
  %dcd_chkcount.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 33
  %imrb_value.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 25
  %dcd.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 3
  %dcd_up.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 54, i32 4
  %netcount68.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 57
  %netdev.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 59
  %dcd_down.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 54, i32 5
  %status_event_wait_q.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 20
  %event_wait_q.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 21
  %iflags.i.i = getelementptr inbounds %struct.tty_port, ptr %dev_id, i32 0, i32 11
  %open_wait.i = getelementptr inbounds %struct.tty_port, ptr %dev_id, i32 0, i32 8
  %tobool43.not.i = icmp eq ptr %call3, null
  %pending_bh.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 30
  %cts_chkcount.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 34
  %icount.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4
  %cts_down.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 54, i32 7
  %cts_up.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 54, i32 6
  %hw_stopped.i = getelementptr inbounds %struct.tty_struct, ptr %call3, i32 0, i32 21
  %tx_timer.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 22
  %tx_enabled.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 39
  %tx_active.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 40
  %irq_occurred = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 49
  %imra_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 24
  %exithunt = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 21
  %brk = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 9
  %flags = getelementptr inbounds %struct.tty_port, ptr %dev_id, i32 0, i32 10
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 47
  %rx.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 5
  %parity.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 7
  %frame.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 6
  %ignore_status_mask.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 8
  %read_status_mask.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 7
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %dev_id, i32 0, i32 8
  %overrun.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 8
  %11 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %rx_buf.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 13
  %rx_put.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 15
  %rx_buf_size.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 17
  %rx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 37
  %rx_frame_count.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 19
  %rx_buf_count.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 18
  %rx_overflow.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 38
  %buf_overrun.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 10
  %max_frame_size.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 29
  %tx_aborting = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 41
  %txabort = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 13
  %txunder = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 12
  %txok = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 11
  %dsr_chkcount.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 35
  %pim_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 26
  %dsr.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 1
  %dsr_down.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 54, i32 3
  %dsr_up.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 54, i32 2
  %ri_chkcount.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 36
  %rng.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 4, i32 2
  %ri_down.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 54, i32 1
  %input_signal_events.i = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 54
  %arrayidx61.i.1 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end155.while.body_crit_edge, %while.body.lr.ph
  %12 = phi i8 [ %10, %while.body.lr.ph ], [ %442, %if.end155.while.body_crit_edge ]
  %count.0453 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end155.while.body_crit_edge ]
  %13 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp9 = icmp sgt i32 %13, 4
  %conv = zext i8 %12 to i32
  br i1 %cmp9, label %do.end13, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end13:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %device_name, i32 noundef %conv) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %while.body.if.end16_crit_edge
  %and18 = and i32 %conv, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp ne i32 %and18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.0453)
  %cmp20 = icmp ugt i32 %count.0453, 1000
  %or.cond = select i1 %tobool19.not, i1 true, i1 %cmp20
  br i1 %or.cond, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #15
  br label %while.end

if.end28:                                         ; preds = %if.end16
  %inc = add nuw nsw i32 %count.0453, 1
  %and30 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end51_crit_edge, label %if.then32

if.end28.if.end51_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then32:                                        ; preds = %if.end28
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_base, align 4
  %add35 = add i32 %15, 122
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %16 = inttoptr i32 %add37 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #12, !srcloc !630
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !631
  %conv41 = zext i16 %18 to i32
  %and42 = and i32 %conv41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then32.if.end45_crit_edge, label %if.then44

if.then32.if.end45_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then44:                                        ; preds = %if.then32
  %19 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %serial_signals.i.i, align 4
  %21 = and i8 %20, -96
  store i8 %21, ptr %serial_signals.i.i, align 4
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_base, align 4
  %add.i.i = add i32 %23, 116
  %and2.i.i = and i32 %add.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %24 = inttoptr i32 %add3.i.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool.not.i.i = icmp sgt i8 %25, -1
  br i1 %tobool.not.i.i, label %if.then44.if.end.i.i_crit_edge, label %if.then.i.i

if.then44.if.end.i.i_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %serial_signals.i.i, align 4
  %28 = or i8 %27, 1
  store i8 %28, ptr %serial_signals.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then44.if.end.i.i_crit_edge
  %29 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_base, align 4
  %add12.i.i = add i32 %30, 96
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %31 = inttoptr i32 %add14.i.i to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool20.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool20.not.i.i, label %if.end.i.i.if.end26.i.i_crit_edge, label %if.then21.i.i

if.end.i.i.if.end26.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i

if.then21.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %serial_signals.i.i, align 4
  %36 = or i8 %35, 16
  store i8 %36, ptr %serial_signals.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then21.i.i, %if.end.i.i.if.end26.i.i_crit_edge
  %37 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_base, align 4
  %add29.i.i = add i32 %38, 60
  %and30.i.i = and i32 %add29.i.i, 1048575
  %add31.i.i = or i32 %and30.i.i, -18874368
  %39 = inttoptr i32 %add31.i.i to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i.i = zext i8 %40 to i32
  %and36.i.i = and i32 %conv35.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %if.end26.i.i.if.end43.i.i_crit_edge

if.end26.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i.i

if.then38.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %serial_signals.i.i, align 4
  %43 = or i8 %42, 4
  store i8 %43, ptr %serial_signals.i.i, align 4
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then38.i.i, %if.end26.i.i.if.end43.i.i_crit_edge
  %and45.i.i = and i32 %conv35.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.then47.i.i, label %if.end43.i.i.get_signals.exit.i_crit_edge

if.end43.i.i.get_signals.exit.i_crit_edge:        ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit.i

if.then47.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %serial_signals.i.i, align 4
  %46 = or i8 %45, 64
  store i8 %46, ptr %serial_signals.i.i, align 4
  br label %get_signals.exit.i

get_signals.exit.i:                               ; preds = %if.then47.i.i, %if.end43.i.i.get_signals.exit.i_crit_edge
  %47 = ptrtoint ptr %dcd_chkcount.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dcd_chkcount.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %dcd_chkcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %48)
  %cmp.i = icmp sgt i32 %48, 99
  br i1 %cmp.i, label %if.then.i, label %get_signals.exit.i.if.end.i_crit_edge

get_signals.exit.i.if.end.i_crit_edge:            ; preds = %get_signals.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %get_signals.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %imrb_value.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %imrb_value.i.i, align 2
  %or925.i.i = or i16 %50, 4
  store i16 %or925.i.i, ptr %imrb_value.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !632
  tail call void @arm_heavy_mb() #12
  %51 = ptrtoint ptr %imrb_value.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %imrb_value.i.i, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #12
  %54 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_base, align 4
  %add15.i.i = add i32 %55, 122
  %and16.i.i = and i32 %add15.i.i, 1048575
  %add17.i.i = or i32 %and16.i.i, -18874368
  %56 = inttoptr i32 %add17.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %56, i16 %53) #12, !srcloc !633
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %get_signals.exit.i.if.end.i_crit_edge
  %57 = ptrtoint ptr %dcd.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dcd.i, align 4
  %inc1.i = add i32 %58, 1
  store i32 %inc1.i, ptr %dcd.i, align 4
  %59 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %serial_signals.i.i, align 4
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end6.thread.i

if.end6.i:                                        ; preds = %if.end.i
  %62 = ptrtoint ptr %dcd_down.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dcd_down.i, align 4
  %inc5.i = add i32 %63, 1
  store i32 %inc5.i, ptr %dcd_down.i, align 4
  %64 = ptrtoint ptr %netcount68.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %netcount68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool7.not.i = icmp eq i32 %65, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end17.i_crit_edge, label %if.else14.i

if.end6.i.if.end17.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end6.thread.i:                                 ; preds = %if.end.i
  %66 = ptrtoint ptr %dcd_up.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dcd_up.i, align 4
  %inc3.i = add i32 %67, 1
  store i32 %inc3.i, ptr %dcd_up.i, align 4
  %68 = ptrtoint ptr %netcount68.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %netcount68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool7.not69.i = icmp eq i32 %69, 0
  br i1 %tobool7.not69.i, label %if.end6.thread.i.if.end17.i_crit_edge, label %if.then13.i

if.end6.thread.i.if.end17.i_crit_edge:            ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev.i, align 4
  tail call void @netif_carrier_on(ptr noundef %71) #12
  br label %if.end17.i

if.else14.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netdev.i, align 4
  tail call void @netif_carrier_off(ptr noundef %73) #12
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else14.i, %if.then13.i, %if.end6.thread.i.if.end17.i_crit_edge, %if.end6.i.if.end17.i_crit_edge
  tail call void @__wake_up(ptr noundef %status_event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @__wake_up(ptr noundef %event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %74 = ptrtoint ptr %iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %iflags.i.i, align 4
  %76 = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i.not.i = icmp eq i32 %76, 0
  br i1 %tobool.i.not.i, label %if.end17.i.dcd_change.exit_crit_edge, label %if.then18.i

if.end17.i.dcd_change.exit_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dcd_change.exit

if.then18.i:                                      ; preds = %if.end17.i
  %77 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp19.i = icmp sgt i32 %77, 4
  br i1 %cmp19.i, label %do.end.i, label %if.then18.i.if.end27.i_crit_edge

if.then18.i.if.end27.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

do.end.i:                                         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %serial_signals.i.i, align 4
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool25.not.i = icmp eq i8 %80, 0
  %cond.i = select i1 %tobool25.not.i, ptr @.str.75, ptr @.str.74
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %device_name, ptr noundef nonnull %cond.i) #15
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end.i, %if.then18.i.if.end27.i_crit_edge
  %81 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %serial_signals.i.i, align 4
  %83 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool31.not.i = icmp eq i8 %83, 0
  br i1 %tobool31.not.i, label %if.else34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__wake_up(ptr noundef %open_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %dcd_change.exit

if.else34.i:                                      ; preds = %if.end27.i
  %84 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp35.i = icmp sgt i32 %84, 4
  br i1 %cmp35.i, label %do.end39.i, label %if.else34.i.if.end42.i_crit_edge

if.else34.i.if.end42.i_crit_edge:                 ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

do.end39.i:                                       ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #14
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #15
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end39.i, %if.else34.i.if.end42.i_crit_edge
  br i1 %tobool43.not.i, label %if.end42.i.dcd_change.exit_crit_edge, label %if.then44.i

if.end42.i.dcd_change.exit_crit_edge:             ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dcd_change.exit

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_hangup(ptr noundef nonnull %call3) #12
  br label %dcd_change.exit

dcd_change.exit:                                  ; preds = %if.then44.i, %if.end42.i.dcd_change.exit_crit_edge, %if.then32.i, %if.end17.i.dcd_change.exit_crit_edge
  %85 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pending_bh.i, align 4
  %or.i = or i32 %86, 4
  store i32 %or.i, ptr %pending_bh.i, align 4
  br label %if.end45

if.end45:                                         ; preds = %dcd_change.exit, %if.then32.if.end45_crit_edge
  %and47 = and i32 %conv41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.if.end51_crit_edge, label %if.then49

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %if.end45
  %87 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %serial_signals.i.i, align 4
  %89 = and i8 %88, -96
  store i8 %89, ptr %serial_signals.i.i, align 4
  %90 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %io_base, align 4
  %add.i.i253 = add i32 %91, 116
  %and2.i.i254 = and i32 %add.i.i253, 1048575
  %add3.i.i255 = or i32 %and2.i.i254, -18874368
  %92 = inttoptr i32 %add3.i.i255 to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %93)
  %tobool.not.i.i256 = icmp sgt i8 %93, -1
  br i1 %tobool.not.i.i256, label %if.then49.if.end.i.i262_crit_edge, label %if.then.i.i257

if.then49.if.end.i.i262_crit_edge:                ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i262

if.then.i.i257:                                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %serial_signals.i.i, align 4
  %96 = or i8 %95, 1
  store i8 %96, ptr %serial_signals.i.i, align 4
  br label %if.end.i.i262

if.end.i.i262:                                    ; preds = %if.then.i.i257, %if.then49.if.end.i.i262_crit_edge
  %97 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %io_base, align 4
  %add12.i.i258 = add i32 %98, 96
  %and13.i.i259 = and i32 %add12.i.i258, 1048575
  %add14.i.i260 = or i32 %and13.i.i259, -18874368
  %99 = inttoptr i32 %add14.i.i260 to ptr
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %99) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %101 = and i8 %100, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool20.not.i.i261 = icmp eq i8 %101, 0
  br i1 %tobool20.not.i.i261, label %if.end.i.i262.if.end26.i.i270_crit_edge, label %if.then21.i.i263

if.end.i.i262.if.end26.i.i270_crit_edge:          ; preds = %if.end.i.i262
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i270

if.then21.i.i263:                                 ; preds = %if.end.i.i262
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %serial_signals.i.i, align 4
  %104 = or i8 %103, 16
  store i8 %104, ptr %serial_signals.i.i, align 4
  br label %if.end26.i.i270

if.end26.i.i270:                                  ; preds = %if.then21.i.i263, %if.end.i.i262.if.end26.i.i270_crit_edge
  %105 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %io_base, align 4
  %add29.i.i264 = add i32 %106, 60
  %and30.i.i265 = and i32 %add29.i.i264, 1048575
  %add31.i.i266 = or i32 %and30.i.i265, -18874368
  %107 = inttoptr i32 %add31.i.i266 to ptr
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %107) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i.i267 = zext i8 %108 to i32
  %and36.i.i268 = and i32 %conv35.i.i267, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i268)
  %tobool37.not.i.i269 = icmp eq i32 %and36.i.i268, 0
  br i1 %tobool37.not.i.i269, label %if.then38.i.i271, label %if.end26.i.i270.if.end43.i.i274_crit_edge

if.end26.i.i270.if.end43.i.i274_crit_edge:        ; preds = %if.end26.i.i270
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i.i274

if.then38.i.i271:                                 ; preds = %if.end26.i.i270
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %serial_signals.i.i, align 4
  %111 = or i8 %110, 4
  store i8 %111, ptr %serial_signals.i.i, align 4
  br label %if.end43.i.i274

if.end43.i.i274:                                  ; preds = %if.then38.i.i271, %if.end26.i.i270.if.end43.i.i274_crit_edge
  %and45.i.i272 = and i32 %conv35.i.i267, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i272)
  %tobool46.not.i.i273 = icmp eq i32 %and45.i.i272, 0
  br i1 %tobool46.not.i.i273, label %if.then47.i.i275, label %if.end43.i.i274.get_signals.exit.i278_crit_edge

if.end43.i.i274.get_signals.exit.i278_crit_edge:  ; preds = %if.end43.i.i274
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit.i278

if.then47.i.i275:                                 ; preds = %if.end43.i.i274
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %serial_signals.i.i, align 4
  %114 = or i8 %113, 64
  store i8 %114, ptr %serial_signals.i.i, align 4
  br label %get_signals.exit.i278

get_signals.exit.i278:                            ; preds = %if.then47.i.i275, %if.end43.i.i274.get_signals.exit.i278_crit_edge
  %115 = ptrtoint ptr %cts_chkcount.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cts_chkcount.i, align 4
  %inc.i276 = add i32 %116, 1
  store i32 %inc.i276, ptr %cts_chkcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %116)
  %cmp.i277 = icmp sgt i32 %116, 99
  br i1 %cmp.i277, label %if.then.i284, label %get_signals.exit.i278.if.end.i291_crit_edge

get_signals.exit.i278.if.end.i291_crit_edge:      ; preds = %get_signals.exit.i278
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i291

if.then.i284:                                     ; preds = %get_signals.exit.i278
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %imrb_value.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %imrb_value.i.i, align 2
  %or925.i.i280 = or i16 %118, 1024
  store i16 %or925.i.i280, ptr %imrb_value.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !632
  tail call void @arm_heavy_mb() #12
  %119 = ptrtoint ptr %imrb_value.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %imrb_value.i.i, align 2
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #12
  %122 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %io_base, align 4
  %add15.i.i281 = add i32 %123, 122
  %and16.i.i282 = and i32 %add15.i.i281, 1048575
  %add17.i.i283 = or i32 %and16.i.i282, -18874368
  %124 = inttoptr i32 %add17.i.i283 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %124, i16 %121) #12, !srcloc !633
  br label %if.end.i291

if.end.i291:                                      ; preds = %if.then.i284, %get_signals.exit.i278.if.end.i291_crit_edge
  %125 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %icount.i, align 4
  %inc1.i285 = add i32 %126, 1
  store i32 %inc1.i285, ptr %icount.i, align 4
  %127 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %serial_signals.i.i, align 4
  %129 = and i8 %128, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i286 = icmp eq i8 %129, 0
  %cts_down.sink66.i = select i1 %tobool.not.i286, ptr %cts_down.i, ptr %cts_up.i
  %130 = ptrtoint ptr %cts_down.sink66.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cts_down.sink66.i, align 4
  %inc5.i287 = add i32 %131, 1
  store i32 %inc5.i287, ptr %cts_down.sink66.i, align 4
  tail call void @__wake_up(ptr noundef %status_event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @__wake_up(ptr noundef %event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br i1 %tobool43.not.i, label %if.end.i291.cts_change.exit_crit_edge, label %land.lhs.true.i

if.end.i291.cts_change.exit_crit_edge:            ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #14
  br label %cts_change.exit

land.lhs.true.i:                                  ; preds = %if.end.i291
  %132 = ptrtoint ptr %iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %iflags.i.i, align 4
  %134 = and i32 %133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.i.not.i293 = icmp eq i32 %134, 0
  br i1 %tobool.i.not.i293, label %land.lhs.true.i.cts_change.exit_crit_edge, label %if.then9.i

land.lhs.true.i.cts_change.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cts_change.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  %135 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool10.not.i = icmp eq i32 %136, 0
  %137 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %serial_signals.i.i, align 4
  %139 = and i8 %138, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool28.not.i = icmp eq i8 %139, 0
  br i1 %tobool10.not.i, label %if.else24.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then9.i
  br i1 %tobool28.not.i, label %if.then11.i.cts_change.exit_crit_edge, label %if.then16.i

if.then11.i.cts_change.exit_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cts_change.exit

if.then16.i:                                      ; preds = %if.then11.i
  %140 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %140)
  %cmp17.i = icmp sgt i32 %140, 4
  br i1 %cmp17.i, label %do.end.i294, label %if.then16.i.if.end21.i_crit_edge

if.then16.i.if.end21.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

do.end.i294:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #15
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i294, %if.then16.i.if.end21.i_crit_edge
  %141 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %hw_stopped.i, align 4
  tail call fastcc void @tx_start(ptr noundef %dev_id, ptr noundef nonnull %call3) #12
  br label %cts_change.exit

if.else24.i:                                      ; preds = %if.then9.i
  br i1 %tobool28.not.i, label %if.then29.i, label %if.else24.i.cts_change.exit_crit_edge

if.else24.i.cts_change.exit_crit_edge:            ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cts_change.exit

if.then29.i:                                      ; preds = %if.else24.i
  %142 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp30.i = icmp sgt i32 %142, 4
  br i1 %cmp30.i, label %if.end37.i, label %if.end37.thread.i

if.end37.thread.i:                                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %hw_stopped.i, align 4
  br label %tx_stop.exit.i

if.end37.i:                                       ; preds = %if.then29.i
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #15
  %.pr.i = load i32, ptr @debug_level, align 4
  %144 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i)
  %cmp.i.i = icmp sgt i32 %.pr.i, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end37.i.tx_stop.exit.i_crit_edge

if.end37.i.tx_stop.exit.i_crit_edge:              ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit.i

do.end.i.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name) #15
  br label %tx_stop.exit.i

tx_stop.exit.i:                                   ; preds = %do.end.i.i, %if.end37.i.tx_stop.exit.i_crit_edge, %if.end37.thread.i
  %call1.i.i = tail call i32 @del_timer(ptr noundef %tx_timer.i.i) #12
  %145 = ptrtoint ptr %tx_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %tx_enabled.i.i, align 2
  %146 = ptrtoint ptr %tx_active.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %tx_active.i.i, align 1
  br label %cts_change.exit

cts_change.exit:                                  ; preds = %tx_stop.exit.i, %if.else24.i.cts_change.exit_crit_edge, %if.end21.i, %if.then11.i.cts_change.exit_crit_edge, %land.lhs.true.i.cts_change.exit_crit_edge, %if.end.i291.cts_change.exit_crit_edge
  %.sink67.i = phi i32 [ 2, %if.end21.i ], [ 4, %if.then11.i.cts_change.exit_crit_edge ], [ 4, %tx_stop.exit.i ], [ 4, %if.else24.i.cts_change.exit_crit_edge ], [ 4, %land.lhs.true.i.cts_change.exit_crit_edge ], [ 4, %if.end.i291.cts_change.exit_crit_edge ]
  %147 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pending_bh.i, align 4
  %or43.i = or i32 %148, %.sink67.i
  store i32 %or43.i, ptr %pending_bh.i, align 4
  br label %if.end51

if.end51:                                         ; preds = %cts_change.exit, %if.end45.if.end51_crit_edge, %if.end28.if.end51_crit_edge
  %and53 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end132_crit_edge, label %if.then55

if.end51.if.end132_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then55:                                        ; preds = %if.end51
  %149 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %io_base, align 4
  %add58 = add i32 %150, 58
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %151 = inttoptr i32 %add60 to ptr
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %151) #12, !srcloc !630
  %153 = tail call i16 @llvm.bswap.i16(i16 %152)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !634
  %conv64 = zext i16 %153 to i32
  %and65 = and i32 %conv64, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then55.if.end68_crit_edge, label %if.then67

if.then55.if.end68_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then67:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %irq_occurred to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %irq_occurred, align 1
  %155 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %imra_value.i, align 4
  %or26.i = or i16 %156, 2048
  store i16 %or26.i, ptr %imra_value.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !635
  tail call void @arm_heavy_mb() #12
  %157 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %imra_value.i, align 4
  %159 = tail call i16 @llvm.bswap.i16(i16 %158) #12
  %160 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %io_base, align 4
  %add.i = add i32 %161, 58
  %and.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and.i, -18874368
  %162 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %162, i16 %159) #12, !srcloc !633
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then55.if.end68_crit_edge
  %and70 = and i32 %conv64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end74_crit_edge, label %if.then72

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %exithunt to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %exithunt, align 4
  %inc73 = add i32 %164, 1
  store i32 %inc73, ptr %exithunt, align 4
  tail call void @__wake_up(ptr noundef %event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end68.if.end74_crit_edge
  %and76 = and i32 %conv64, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end74.if.end86_crit_edge, label %if.then78

if.end74.if.end86_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then78:                                        ; preds = %if.end74
  %165 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %brk, align 4
  %inc80 = add i32 %166, 1
  store i32 %inc80, ptr %brk, align 4
  %167 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags, align 4
  %and82 = and i32 %168, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.then78.if.end86_crit_edge, label %if.then84

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then84:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @do_SAK(ptr noundef %call3) #12
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.then78.if.end86_crit_edge, %if.end74.if.end86_crit_edge
  br i1 %tobool71.not, label %if.end86.if.end91_crit_edge, label %if.end86.while.cond.i.i_crit_edge

if.end86.while.cond.i.i_crit_edge:                ; preds = %if.end86
  br label %while.cond.i.i

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end86.while.cond.i.i_crit_edge
  %i.0.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ 0, %if.end86.while.cond.i.i_crit_edge ]
  %169 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %io_base, align 4
  %add3.i.i298 = add i32 %170, 32
  %and.i.i = and i32 %add3.i.i298, 1048575
  %add4.i.i = or i32 %and.i.i, -18874368
  %171 = inttoptr i32 %add4.i.i to ptr
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %171) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %173 = and i8 %172, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i.i299 = icmp eq i8 %173, 0
  br i1 %tobool.not.i.i299, label %while.cond.i.i.issue_command.exit_crit_edge, label %while.body.i.i

while.cond.i.i.issue_command.exit_crit_edge:      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %174(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %cmp.i.i300 = icmp eq i32 %i.0.i.i, 1000
  br i1 %cmp.i.i300, label %while.body.i.i.issue_command.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.body.i.i.issue_command.exit_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit

issue_command.exit:                               ; preds = %while.body.i.i.issue_command.exit_crit_edge, %while.cond.i.i.issue_command.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %175 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %io_base, align 4
  %add3.i = add i32 %176, 32
  %and.i301 = and i32 %add3.i, 1048575
  %add4.i = or i32 %and.i301, -18874368
  %177 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 32) #12, !srcloc !628
  br label %if.end91

if.end91:                                         ; preds = %issue_command.exit, %if.end86.if.end91_crit_edge
  %and93 = and i32 %conv64, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end91.if.end104_crit_edge, label %if.then95

if.end91.if.end104_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then95:                                        ; preds = %if.end91
  %178 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %179)
  %cmp96 = icmp eq i32 %179, 2
  %and100 = and i32 %conv64, 128
  br i1 %cmp96, label %if.then98, label %if.else

if.then98:                                        ; preds = %if.then95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #12
  %180 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -1, ptr %11, align 1, !annotation !638
  %181 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rx_buf.i, align 4
  %183 = ptrtoint ptr %rx_put.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rx_put.i, align 4
  %185 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rx_buf_size.i, align 4
  %mul.i = mul i32 %186, %184
  %add.ptr.i = getelementptr i8, ptr %182, i32 %mul.i
  %187 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %187)
  %cmp.i302 = icmp sgt i32 %187, 4
  br i1 %cmp.i302, label %do.end.i303, label %if.then98.if.end.i305_crit_edge

if.then98.if.end.i305_crit_edge:                  ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i305

do.end.i303:                                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.3, i32 noundef 835, i32 noundef %and100) #15
  br label %if.end.i305

if.end.i305:                                      ; preds = %do.end.i303, %if.then98.if.end.i305_crit_edge
  %188 = ptrtoint ptr %rx_enabled.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %rx_enabled.i, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i304 = icmp eq i8 %189, 0
  br i1 %tobool.not.i304, label %if.end.i305.rx_ready_hdlc.exit_crit_edge, label %if.end2.i

if.end.i305.rx_ready_hdlc.exit_crit_edge:         ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_ready_hdlc.exit

if.end2.i:                                        ; preds = %if.end.i305
  %190 = ptrtoint ptr %rx_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rx_frame_count.i, align 4
  %192 = ptrtoint ptr %rx_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rx_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %193)
  %cmp3.not.i = icmp slt i32 %191, %193
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end2.i.while.cond.i.i.i_crit_edge

if.end2.i.while.cond.i.i.i_crit_edge:             ; preds = %if.end2.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end2.i.while.cond.i.i.i_crit_edge
  %i.0.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ 0, %if.end2.i.while.cond.i.i.i_crit_edge ]
  %194 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %io_base, align 4
  %add3.i.i.i = add i32 %195, 32
  %and.i.i.i = and i32 %add3.i.i.i, 1048575
  %add4.i.i.i = or i32 %and.i.i.i, -18874368
  %196 = inttoptr i32 %add4.i.i.i to ptr
  %197 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %196) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %198 = and i8 %197, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool.not.i.i.i = icmp eq i8 %198, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.issue_command.exit.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.issue_command.exit.i_crit_edge:  ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %199(i32 noundef 214748) #12
  %inc.i.i.i = add nuw nsw i32 %i.0.i.i.i, 1
  %cmp.i.i.i = icmp eq i32 %i.0.i.i.i, 1000
  br i1 %cmp.i.i.i, label %while.body.i.i.i.issue_command.exit.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i

while.body.i.i.i.issue_command.exit.i_crit_edge:  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit.i

issue_command.exit.i:                             ; preds = %while.body.i.i.i.issue_command.exit.i_crit_edge, %while.cond.i.i.i.issue_command.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %200 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %io_base, align 4
  %add3.i.i306 = add i32 %201, 32
  %and.i.i307 = and i32 %add3.i.i306, 1048575
  %add4.i.i308 = or i32 %and.i.i307, -18874368
  %202 = inttoptr i32 %add4.i.i308 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %202, i8 64) #12, !srcloc !628
  %203 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pending_bh.i, align 4
  %or.i310 = or i32 %204, 1
  store i32 %or.i310, ptr %pending_bh.i, align 4
  %205 = ptrtoint ptr %rx_overflow.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %rx_overflow.i, align 1
  %206 = ptrtoint ptr %buf_overrun.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %buf_overrun.i, align 4
  %inc.i311 = add i32 %207, 1
  store i32 %inc.i311, ptr %buf_overrun.i, align 4
  br label %rx_ready_hdlc.exit

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool6.not.i = icmp eq i32 %and100, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end19.i_crit_edge, label %if.then7.i

if.end5.i.if.end19.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %208 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %io_base, align 4
  %add.i313 = add i32 %209, 42
  %and.i314 = and i32 %add.i313, 1048575
  %add8.i = or i32 %and.i314, -18874368
  %210 = inttoptr i32 %add8.i to ptr
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %210) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !640
  %212 = and i8 %211, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %cmp15.i = icmp eq i8 %212, 0
  %narrow.i = select i1 %cmp15.i, i8 32, i8 %212
  %spec.store.select.i = zext i8 %narrow.i to i32
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then7.i, %if.end5.i.if.end19.i_crit_edge
  %fifo_count.0.i = phi i32 [ %spec.store.select.i, %if.then7.i ], [ 32, %if.end5.i.if.end19.i_crit_edge ]
  %status.i = getelementptr inbounds %struct.RXBUF, ptr %add.ptr.i, i32 0, i32 1
  %data62.i = getelementptr inbounds %struct.RXBUF, ptr %add.ptr.i, i32 0, i32 2
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.cond69.i.do.body20.i_crit_edge, %if.end19.i
  %fifo_count.1.i = phi i32 [ %fifo_count.0.i, %if.end19.i ], [ %sub.i, %do.cond69.i.do.body20.i_crit_edge ]
  %conv21.i = and i32 %fifo_count.1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv21.i)
  %cmp22.i = icmp eq i32 %conv21.i, 1
  %213 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %io_base, align 4
  %and28.i = and i32 %214, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %215 = inttoptr i32 %add29.i to ptr
  br i1 %cmp22.i, label %if.then24.i, label %if.else33.i

if.then24.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %215) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !641
  %217 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %data.i, align 2
  br label %if.end42.i315

if.else33.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  %218 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %215) #12, !srcloc !630
  %219 = tail call i16 @llvm.bswap.i16(i16 %218) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !642
  %220 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %data.i, align 2
  br label %if.end42.i315

if.end42.i315:                                    ; preds = %if.else33.i, %if.then24.i
  %read_count.0.i = phi i8 [ 1, %if.then24.i ], [ 2, %if.else33.i ]
  %conv43.i = zext i8 %read_count.0.i to i32
  %sub.i = sub nsw i32 %conv21.i, %conv43.i
  %conv45.i = trunc i32 %sub.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv45.i)
  %tobool46.not.i = icmp eq i8 %conv45.i, 0
  %tobool46.not.not.i = xor i1 %tobool46.not.i, true
  %brmerge.i = or i1 %tobool6.not.i, %tobool46.not.not.i
  br i1 %brmerge.i, label %if.end42.i315.for.body.i_crit_edge, label %if.end50.i

if.end42.i315.for.body.i_crit_edge:               ; preds = %if.end42.i315
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end50.i:                                       ; preds = %if.end42.i315
  %dec.i = add nsw i8 %read_count.0.i, -1
  %idxprom.i = zext i8 %dec.i to i32
  %arrayidx49.i = getelementptr [2 x i8], ptr %data.i, i32 0, i32 %idxprom.i
  %221 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx49.i, align 1
  %223 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp53144.not.i = icmp eq i8 %dec.i, 0
  br i1 %cmp53144.not.i, label %if.end50.i.do.cond69.i_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end50.i.do.cond69.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond69.i

for.body.i:                                       ; preds = %if.end50.i.for.body.i_crit_edge, %if.end42.i315.for.body.i_crit_edge
  %read_count.1149.i = phi i8 [ %read_count.0.i, %if.end42.i315.for.body.i_crit_edge ], [ 1, %if.end50.i.for.body.i_crit_edge ]
  %224 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %add.ptr.i, align 4
  %226 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %max_frame_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %227)
  %cmp55.not.i = icmp ult i32 %225, %227
  br i1 %cmp55.not.i, label %if.end59.i, label %for.body.i.while.cond.i.i136.i.loopexit_crit_edge

for.body.i.while.cond.i.i136.i.loopexit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i136.i.loopexit

while.cond.i.i136.i.loopexit:                     ; preds = %for.body.i.1.while.cond.i.i136.i.loopexit_crit_edge, %for.body.i.while.cond.i.i136.i.loopexit_crit_edge
  br label %while.cond.i.i136.i

while.cond.i.i136.i:                              ; preds = %while.body.i.i139.i.while.cond.i.i136.i_crit_edge, %while.cond.i.i136.i.loopexit
  %i.0.i.i131.i = phi i32 [ %inc.i.i137.i, %while.body.i.i139.i.while.cond.i.i136.i_crit_edge ], [ 0, %while.cond.i.i136.i.loopexit ]
  %228 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %io_base, align 4
  %add3.i.i132.i = add i32 %229, 32
  %and.i.i133.i = and i32 %add3.i.i132.i, 1048575
  %add4.i.i134.i = or i32 %and.i.i133.i, -18874368
  %230 = inttoptr i32 %add4.i.i134.i to ptr
  %231 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %230) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %232 = and i8 %231, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i.i135.i = icmp eq i8 %232, 0
  br i1 %tobool.not.i.i135.i, label %while.cond.i.i136.i.issue_command.exit143.i_crit_edge, label %while.body.i.i139.i

while.cond.i.i136.i.issue_command.exit143.i_crit_edge: ; preds = %while.cond.i.i136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit143.i

while.body.i.i139.i:                              ; preds = %while.cond.i.i136.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %233(i32 noundef 214748) #12
  %inc.i.i137.i = add nuw nsw i32 %i.0.i.i131.i, 1
  %cmp.i.i138.i = icmp eq i32 %i.0.i.i131.i, 1000
  br i1 %cmp.i.i138.i, label %while.body.i.i139.i.issue_command.exit143.i_crit_edge, label %while.body.i.i139.i.while.cond.i.i136.i_crit_edge

while.body.i.i139.i.while.cond.i.i136.i_crit_edge: ; preds = %while.body.i.i139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i136.i

while.body.i.i139.i.issue_command.exit143.i_crit_edge: ; preds = %while.body.i.i139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit143.i

issue_command.exit143.i:                          ; preds = %while.body.i.i139.i.issue_command.exit143.i_crit_edge, %while.cond.i.i136.i.issue_command.exit143.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %234 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %io_base, align 4
  %add3.i140.i = add i32 %235, 32
  %and.i141.i = and i32 %add3.i140.i, 1048575
  %add4.i142.i = or i32 %and.i141.i, -18874368
  %236 = inttoptr i32 %add4.i142.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %236, i8 64) #12, !srcloc !628
  %237 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %add.ptr.i, align 4
  br label %rx_ready_hdlc.exit

if.end59.i:                                       ; preds = %for.body.i
  %238 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %data.i, align 2
  %add.ptr65.i = getelementptr i8, ptr %data62.i, i32 %225
  %240 = ptrtoint ptr %add.ptr65.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %add.ptr65.i, align 1
  %241 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %add.ptr.i, align 4
  %inc67.i = add i32 %242, 1
  store i32 %inc67.i, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_count.1149.i)
  %exitcond.not.i = icmp eq i8 %read_count.1149.i, 1
  br i1 %exitcond.not.i, label %if.end59.i.do.cond69.i_crit_edge, label %for.body.i.1

if.end59.i.do.cond69.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond69.i

for.body.i.1:                                     ; preds = %if.end59.i
  %243 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %add.ptr.i, align 4
  %245 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %max_frame_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %246)
  %cmp55.not.i.1 = icmp ult i32 %244, %246
  br i1 %cmp55.not.i.1, label %if.end59.i.1, label %for.body.i.1.while.cond.i.i136.i.loopexit_crit_edge

for.body.i.1.while.cond.i.i136.i.loopexit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i136.i.loopexit

if.end59.i.1:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %247 = ptrtoint ptr %arrayidx61.i.1 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx61.i.1, align 1
  %add.ptr65.i.1 = getelementptr i8, ptr %data62.i, i32 %244
  %249 = ptrtoint ptr %add.ptr65.i.1 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %add.ptr65.i.1, align 1
  %250 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %add.ptr.i, align 4
  %inc67.i.1 = add i32 %251, 1
  store i32 %inc67.i.1, ptr %add.ptr.i, align 4
  br label %do.cond69.i

do.cond69.i:                                      ; preds = %if.end59.i.1, %if.end59.i.do.cond69.i_crit_edge, %if.end50.i.do.cond69.i_crit_edge
  br i1 %tobool46.not.i, label %do.end71.i, label %do.cond69.i.do.body20.i_crit_edge

do.cond69.i.do.body20.i_crit_edge:                ; preds = %do.cond69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20.i

do.end71.i:                                       ; preds = %do.cond69.i
  br i1 %tobool6.not.i, label %do.end71.i.while.cond.i.i434.preheader_crit_edge, label %if.then73.i

do.end71.i.while.cond.i.i434.preheader_crit_edge: ; preds = %do.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i434.preheader

if.then73.i:                                      ; preds = %do.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  %252 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %pending_bh.i, align 4
  %or75.i = or i32 %253, 1
  store i32 %or75.i, ptr %pending_bh.i, align 4
  %254 = ptrtoint ptr %rx_frame_count.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %rx_frame_count.i, align 4
  %inc77.i = add i32 %255, 1
  store i32 %inc77.i, ptr %rx_frame_count.i, align 4
  %256 = ptrtoint ptr %rx_put.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %rx_put.i, align 4
  %inc79.i = add i32 %257, 1
  %258 = ptrtoint ptr %rx_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rx_buf_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc79.i, i32 %259)
  %cmp82.not.i = icmp slt i32 %inc79.i, %259
  %spec.store.select129.i = select i1 %cmp82.not.i, i32 %inc79.i, i32 0
  %260 = ptrtoint ptr %rx_put.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %spec.store.select129.i, ptr %rx_put.i, align 4
  br label %while.cond.i.i434.preheader

while.cond.i.i434.preheader:                      ; preds = %if.then73.i, %do.end71.i.while.cond.i.i434.preheader_crit_edge
  br label %while.cond.i.i434

while.cond.i.i434:                                ; preds = %while.body.i.i437.while.cond.i.i434_crit_edge, %while.cond.i.i434.preheader
  %i.0.i.i429 = phi i32 [ %inc.i.i435, %while.body.i.i437.while.cond.i.i434_crit_edge ], [ 0, %while.cond.i.i434.preheader ]
  %261 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %io_base, align 4
  %add3.i.i430 = add i32 %262, 32
  %and.i.i431 = and i32 %add3.i.i430, 1048575
  %add4.i.i432 = or i32 %and.i.i431, -18874368
  %263 = inttoptr i32 %add4.i.i432 to ptr
  %264 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %263) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %265 = and i8 %264, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool.not.i.i433 = icmp eq i8 %265, 0
  br i1 %tobool.not.i.i433, label %while.cond.i.i434.issue_command.exit441_crit_edge, label %while.body.i.i437

while.cond.i.i434.issue_command.exit441_crit_edge: ; preds = %while.cond.i.i434
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit441

while.body.i.i437:                                ; preds = %while.cond.i.i434
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %266 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %266(i32 noundef 214748) #12
  %inc.i.i435 = add nuw nsw i32 %i.0.i.i429, 1
  %cmp.i.i436 = icmp eq i32 %i.0.i.i429, 1000
  br i1 %cmp.i.i436, label %while.body.i.i437.issue_command.exit441_crit_edge, label %while.body.i.i437.while.cond.i.i434_crit_edge

while.body.i.i437.while.cond.i.i434_crit_edge:    ; preds = %while.body.i.i437
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i434

while.body.i.i437.issue_command.exit441_crit_edge: ; preds = %while.body.i.i437
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit441

issue_command.exit441:                            ; preds = %while.body.i.i437.issue_command.exit441_crit_edge, %while.cond.i.i434.issue_command.exit441_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %267 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %io_base, align 4
  %add3.i438 = add i32 %268, 32
  %and.i439 = and i32 %add3.i438, 1048575
  %add4.i440 = or i32 %and.i439, -18874368
  %269 = inttoptr i32 %add4.i440 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %269, i8 -128) #12, !srcloc !628
  br label %rx_ready_hdlc.exit

rx_ready_hdlc.exit:                               ; preds = %issue_command.exit441, %issue_command.exit143.i, %issue_command.exit.i, %if.end.i305.rx_ready_hdlc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #12
  br label %if.end104

if.else:                                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool.not.i316 = icmp eq i32 %and100, 0
  br i1 %tobool.not.i316, label %if.else.if.end21.i324_crit_edge, label %if.then.i321

if.else.if.end21.i324_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i324

if.then.i321:                                     ; preds = %if.else
  %270 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %io_base, align 4
  %add.i318 = add i32 %271, 42
  %and.i319 = and i32 %add.i318, 1048575
  %add3.i320 = or i32 %and.i319, -18874368
  %272 = inttoptr i32 %add3.i320 to ptr
  %273 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %272) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !643
  %274 = and i8 %273, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool8.not.i = icmp eq i8 %274, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i322, label %if.then.i321.if.end21.i324_crit_edge

if.then.i321.if.end21.i324_crit_edge:             ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i324

land.lhs.true.i322:                               ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #14
  %275 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %io_base, align 4
  %add11.i = add i32 %276, 32
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %277 = inttoptr i32 %add13.i to ptr
  %278 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %277) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !644
  %279 = and i8 %278, 32
  br label %if.end21.i324

if.end21.i324:                                    ; preds = %land.lhs.true.i322, %if.then.i321.if.end21.i324_crit_edge, %if.else.if.end21.i324_crit_edge
  %fifo_count.0.shrunk.i = phi i8 [ %274, %if.then.i321.if.end21.i324_crit_edge ], [ %279, %land.lhs.true.i322 ], [ 32, %if.else.if.end21.i324_crit_edge ]
  %fifo_count.0.i323 = zext i8 %fifo_count.0.shrunk.i to i32
  %call22.i = tail call i32 @tty_buffer_request_room(ptr noundef %dev_id, i32 noundef %fifo_count.0.i323) #12
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %tty_insert_flip_char.exit.i, %if.end21.i324
  %work.0.ph.i = phi i32 [ %add75.i, %tty_insert_flip_char.exit.i ], [ 0, %if.end21.i324 ]
  %fifo_count.1.ph.i = phi i32 [ %sub.i326, %tty_insert_flip_char.exit.i ], [ %fifo_count.0.i323, %if.end21.i324 ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then43.i.while.cond.i_crit_edge, %while.cond.outer.i
  %fifo_count.1.i325 = phi i32 [ %sub.i326, %if.then43.i.while.cond.i_crit_edge ], [ %fifo_count.1.ph.i, %while.cond.outer.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifo_count.1.i325)
  %tobool23.not.i = icmp eq i32 %fifo_count.1.i325, 0
  br i1 %tobool23.not.i, label %while.cond.i.while.cond.i.i.i340_crit_edge, label %while.body.i

while.cond.i.while.cond.i.i.i340_crit_edge:       ; preds = %while.cond.i
  br label %while.cond.i.i.i340

while.body.i:                                     ; preds = %while.cond.i
  %280 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %io_base, align 4
  %and27.i = and i32 %281, 1048575
  %add28.i = or i32 %and27.i, -18874368
  %282 = inttoptr i32 %add28.i to ptr
  %283 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %282) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !645
  %284 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %io_base, align 4
  %and35.i = and i32 %285, 1048575
  %add36.i = or i32 %and35.i, -18874368
  %286 = inttoptr i32 %add36.i to ptr
  %287 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %286) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !646
  %sub.i326 = add i32 %fifo_count.1.i325, -2
  %288 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %rx.i, align 4
  %inc.i327 = add i32 %289, 1
  store i32 %inc.i327, ptr %rx.i, align 4
  %conv40.i = zext i8 %287 to i32
  %and41.i = and i32 %conv40.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end73.thread.i, label %if.then43.i

if.end73.thread.i:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %290 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %tail.i.i, align 4
  %flags.i124.i = getelementptr inbounds %struct.tty_buffer, ptr %291, i32 0, i32 5
  %292 = ptrtoint ptr %flags.i124.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %flags.i124.i, align 4
  %and.i125.i = and i32 %293, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i)
  %tobool.not.i126.i = icmp eq i32 %and.i125.i, 0
  br label %land.lhs.true.i.i

if.then43.i:                                      ; preds = %while.body.i
  %and45.i = and i32 %conv40.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i328 = icmp eq i32 %and45.i, 0
  %frame.parity.i = select i1 %tobool46.not.i328, ptr %frame.i, ptr %parity.i
  %294 = ptrtoint ptr %frame.parity.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %frame.parity.i, align 4
  %inc50.i = add i32 %295, 1
  store i32 %inc50.i, ptr %frame.parity.i, align 4
  %296 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %ignore_status_mask.i, align 1
  %and54118.i = and i8 %297, %287
  %tobool55.not.i = icmp eq i8 %and54118.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.then43.i.while.cond.i_crit_edge

if.then43.i.while.cond.i_crit_edge:               ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end57.i:                                       ; preds = %if.then43.i
  %298 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %read_status_mask.i, align 4
  %and60119.i = and i8 %299, %287
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %and60119.i)
  %tobool64.not.i = icmp sgt i8 %and60119.i, -1
  %and68.i = lshr i8 %and60119.i, 5
  %300 = and i8 %and68.i, 2
  %flag.0.i = select i1 %tobool64.not.i, i8 %300, i8 3
  %301 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %302, i32 0, i32 5
  %303 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %flags.i.i, align 4
  %and.i.i329 = and i32 %304, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i329)
  %tobool.not.i.i330 = icmp eq i32 %and.i.i329, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0.i)
  %cmp.i.i331 = icmp eq i8 %flag.0.i, 0
  %305 = or i1 %tobool.not.i.i330, %cmp.i.i331
  br i1 %305, label %if.end57.i.land.lhs.true.i.i_crit_edge, label %if.end57.i.if.end12.i.i_crit_edge

if.end57.i.if.end12.i.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.end57.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end57.i.land.lhs.true.i.i_crit_edge, %if.end73.thread.i
  %tobool.not.i130.i = phi i1 [ %tobool.not.i126.i, %if.end73.thread.i ], [ %tobool.not.i.i330, %if.end57.i.land.lhs.true.i.i_crit_edge ]
  %306 = phi ptr [ %291, %if.end73.thread.i ], [ %302, %if.end57.i.land.lhs.true.i.i_crit_edge ]
  %flag.0129.i = phi i8 [ 0, %if.end73.thread.i ], [ %flag.0.i, %if.end57.i.land.lhs.true.i.i_crit_edge ]
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %306, i32 0, i32 1
  %307 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %306, i32 0, i32 2
  %309 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %308, i32 %310)
  %cmp3.i.i = icmp slt i32 %308, %310
  br i1 %cmp3.i.i, label %if.then.i.i332, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then.i.i332:                                   ; preds = %land.lhs.true.i.i
  br i1 %tobool.not.i130.i, label %if.then8.i.i, label %if.then.i.i332.if.end.i.i334_crit_edge

if.then.i.i332.if.end.i.i334_crit_edge:           ; preds = %if.then.i.i332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i334

if.then8.i.i:                                     ; preds = %if.then.i.i332
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %306, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %308
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %310
  %311 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %flag.0129.i, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i334

if.end.i.i334:                                    ; preds = %if.then8.i.i, %if.then.i.i332.if.end.i.i334_crit_edge
  %312 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %used.i.i, align 4
  %inc.i.i333 = add i32 %313, 1
  store i32 %inc.i.i333, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %306, i32 0, i32 6
  %add.ptr.i26.i.i = getelementptr i8, ptr %data.i.i.i, i32 %313
  %314 = ptrtoint ptr %add.ptr.i26.i.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %283, ptr %add.ptr.i26.i.i, align 1
  br label %tty_insert_flip_char.exit.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.end57.i.if.end12.i.i_crit_edge
  %flag.0128.i = phi i8 [ %flag.0129.i, %land.lhs.true.i.i.if.end12.i.i_crit_edge ], [ %flag.0.i, %if.end57.i.if.end12.i.i_crit_edge ]
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %dev_id, i8 noundef zeroext %283, i8 noundef zeroext %flag.0128.i) #12
  br label %tty_insert_flip_char.exit.i

tty_insert_flip_char.exit.i:                      ; preds = %if.end12.i.i, %if.end.i.i334
  %retval.0.i.i = phi i32 [ %call13.i.i, %if.end12.i.i ], [ 1, %if.end.i.i334 ]
  %add75.i = add i32 %retval.0.i.i, %work.0.ph.i
  br label %while.cond.outer.i

while.cond.i.i.i340:                              ; preds = %while.body.i.i.i343.while.cond.i.i.i340_crit_edge, %while.cond.i.while.cond.i.i.i340_crit_edge
  %i.0.i.i.i335 = phi i32 [ %inc.i.i.i341, %while.body.i.i.i343.while.cond.i.i.i340_crit_edge ], [ 0, %while.cond.i.while.cond.i.i.i340_crit_edge ]
  %315 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %io_base, align 4
  %add3.i.i.i336 = add i32 %316, 32
  %and.i.i.i337 = and i32 %add3.i.i.i336, 1048575
  %add4.i.i.i338 = or i32 %and.i.i.i337, -18874368
  %317 = inttoptr i32 %add4.i.i.i338 to ptr
  %318 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %317) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %319 = and i8 %318, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool.not.i.i.i339 = icmp eq i8 %319, 0
  br i1 %tobool.not.i.i.i339, label %while.cond.i.i.i340.issue_command.exit.i347_crit_edge, label %while.body.i.i.i343

while.cond.i.i.i340.issue_command.exit.i347_crit_edge: ; preds = %while.cond.i.i.i340
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit.i347

while.body.i.i.i343:                              ; preds = %while.cond.i.i.i340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %320 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %320(i32 noundef 214748) #12
  %inc.i.i.i341 = add nuw nsw i32 %i.0.i.i.i335, 1
  %cmp.i.i.i342 = icmp eq i32 %i.0.i.i.i335, 1000
  br i1 %cmp.i.i.i342, label %while.body.i.i.i343.issue_command.exit.i347_crit_edge, label %while.body.i.i.i343.while.cond.i.i.i340_crit_edge

while.body.i.i.i343.while.cond.i.i.i340_crit_edge: ; preds = %while.body.i.i.i343
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i340

while.body.i.i.i343.issue_command.exit.i347_crit_edge: ; preds = %while.body.i.i.i343
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit.i347

issue_command.exit.i347:                          ; preds = %while.body.i.i.i343.issue_command.exit.i347_crit_edge, %while.cond.i.i.i340.issue_command.exit.i347_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %321 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %io_base, align 4
  %add3.i.i344 = add i32 %322, 32
  %and.i121.i = and i32 %add3.i.i344, 1048575
  %add4.i.i345 = or i32 %and.i121.i, -18874368
  %323 = inttoptr i32 %add4.i.i345 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %323, i8 -128) #12, !srcloc !628
  %324 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %324)
  %cmp.i346 = icmp sgt i32 %324, 4
  br i1 %cmp.i346, label %do.end.i348, label %issue_command.exit.i347.if.end88.i_crit_edge

issue_command.exit.i347.if.end88.i_crit_edge:     ; preds = %issue_command.exit.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.i

do.end.i348:                                      ; preds = %issue_command.exit.i347
  call void @__sanitizer_cov_trace_pc() #14
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.3, i32 noundef 948) #15
  %325 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %rx.i, align 4
  %327 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %brk, align 4
  %329 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %parity.i, align 4
  %331 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %frame.i, align 4
  %333 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %overrun.i, align 4
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.3, i32 noundef 951, i32 noundef %326, i32 noundef %328, i32 noundef %330, i32 noundef %332, i32 noundef %334) #15
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.end.i348, %issue_command.exit.i347.if.end88.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work.0.ph.i)
  %tobool89.not.i = icmp eq i32 %work.0.ph.i, 0
  br i1 %tobool89.not.i, label %if.end88.i.if.end104_crit_edge, label %if.then90.i

if.end88.i.if.end104_crit_edge:                   ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then90.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_flip_buffer_push(ptr noundef %dev_id) #12
  br label %if.end104

if.end104:                                        ; preds = %if.then90.i, %if.end88.i.if.end104_crit_edge, %rx_ready_hdlc.exit, %if.end91.if.end104_crit_edge
  %and106 = and i32 %conv64, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.else117, label %if.then108

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %335 = ptrtoint ptr %tx_aborting to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %tx_aborting, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %336)
  %tobool109.not = icmp eq i8 %336, 0
  %txunder.txabort = select i1 %tobool109.not, ptr %txunder, ptr %txabort
  %337 = ptrtoint ptr %txunder.txabort to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %txunder.txabort, align 4
  %inc115 = add i32 %338, 1
  store i32 %inc115, ptr %txunder.txabort, align 4
  tail call fastcc void @tx_done(ptr noundef %dev_id, ptr noundef %call3)
  br label %if.end132

if.else117:                                       ; preds = %if.end104
  %and119 = and i32 %conv64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.else124, label %if.then121

if.then121:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #14
  %339 = ptrtoint ptr %txok to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %txok, align 4
  %inc123 = add i32 %340, 1
  store i32 %inc123, ptr %txok, align 4
  tail call fastcc void @tx_done(ptr noundef %dev_id, ptr noundef %call3)
  br label %if.end132

if.else124:                                       ; preds = %if.else117
  %and126 = and i32 %conv64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.else124.if.end132_crit_edge, label %if.then128

if.else124.if.end132_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then128:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_ready(ptr noundef %dev_id, ptr noundef %call3)
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.else124.if.end132_crit_edge, %if.then121, %if.then108, %if.end51.if.end132_crit_edge
  %and134 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end132.if.end155_crit_edge, label %if.then136

if.end132.if.end155_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.then136:                                       ; preds = %if.end132
  %341 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %io_base, align 4
  %add139 = add i32 %342, 61
  %and140 = and i32 %add139, 1048575
  %add141 = or i32 %and140, -18874368
  %343 = inttoptr i32 %add141 to ptr
  %344 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %343) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !647
  %conv145 = zext i8 %344 to i32
  %and146 = and i32 %conv145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.then136.if.end149_crit_edge, label %if.then148

if.then136.if.end149_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then148:                                       ; preds = %if.then136
  %345 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %serial_signals.i.i, align 4
  %347 = and i8 %346, -96
  store i8 %347, ptr %serial_signals.i.i, align 4
  %348 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %io_base, align 4
  %add.i.i351 = add i32 %349, 116
  %and2.i.i352 = and i32 %add.i.i351, 1048575
  %add3.i.i353 = or i32 %and2.i.i352, -18874368
  %350 = inttoptr i32 %add3.i.i353 to ptr
  %351 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %350) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %351)
  %tobool.not.i.i354 = icmp sgt i8 %351, -1
  br i1 %tobool.not.i.i354, label %if.then148.if.end.i.i360_crit_edge, label %if.then.i.i355

if.then148.if.end.i.i360_crit_edge:               ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i360

if.then.i.i355:                                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  %352 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %serial_signals.i.i, align 4
  %354 = or i8 %353, 1
  store i8 %354, ptr %serial_signals.i.i, align 4
  br label %if.end.i.i360

if.end.i.i360:                                    ; preds = %if.then.i.i355, %if.then148.if.end.i.i360_crit_edge
  %355 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %io_base, align 4
  %add12.i.i356 = add i32 %356, 96
  %and13.i.i357 = and i32 %add12.i.i356, 1048575
  %add14.i.i358 = or i32 %and13.i.i357, -18874368
  %357 = inttoptr i32 %add14.i.i358 to ptr
  %358 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %357) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %359 = and i8 %358, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool20.not.i.i359 = icmp eq i8 %359, 0
  br i1 %tobool20.not.i.i359, label %if.end.i.i360.if.end26.i.i368_crit_edge, label %if.then21.i.i361

if.end.i.i360.if.end26.i.i368_crit_edge:          ; preds = %if.end.i.i360
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i368

if.then21.i.i361:                                 ; preds = %if.end.i.i360
  call void @__sanitizer_cov_trace_pc() #14
  %360 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %serial_signals.i.i, align 4
  %362 = or i8 %361, 16
  store i8 %362, ptr %serial_signals.i.i, align 4
  br label %if.end26.i.i368

if.end26.i.i368:                                  ; preds = %if.then21.i.i361, %if.end.i.i360.if.end26.i.i368_crit_edge
  %363 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %io_base, align 4
  %add29.i.i362 = add i32 %364, 60
  %and30.i.i363 = and i32 %add29.i.i362, 1048575
  %add31.i.i364 = or i32 %and30.i.i363, -18874368
  %365 = inttoptr i32 %add31.i.i364 to ptr
  %366 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %365) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i.i365 = zext i8 %366 to i32
  %and36.i.i366 = and i32 %conv35.i.i365, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i366)
  %tobool37.not.i.i367 = icmp eq i32 %and36.i.i366, 0
  br i1 %tobool37.not.i.i367, label %if.then38.i.i369, label %if.end26.i.i368.if.end43.i.i372_crit_edge

if.end26.i.i368.if.end43.i.i372_crit_edge:        ; preds = %if.end26.i.i368
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i.i372

if.then38.i.i369:                                 ; preds = %if.end26.i.i368
  call void @__sanitizer_cov_trace_pc() #14
  %367 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %serial_signals.i.i, align 4
  %369 = or i8 %368, 4
  store i8 %369, ptr %serial_signals.i.i, align 4
  br label %if.end43.i.i372

if.end43.i.i372:                                  ; preds = %if.then38.i.i369, %if.end26.i.i368.if.end43.i.i372_crit_edge
  %and45.i.i370 = and i32 %conv35.i.i365, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i370)
  %tobool46.not.i.i371 = icmp eq i32 %and45.i.i370, 0
  br i1 %tobool46.not.i.i371, label %if.then47.i.i373, label %if.end43.i.i372.get_signals.exit.i376_crit_edge

if.end43.i.i372.get_signals.exit.i376_crit_edge:  ; preds = %if.end43.i.i372
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit.i376

if.then47.i.i373:                                 ; preds = %if.end43.i.i372
  call void @__sanitizer_cov_trace_pc() #14
  %370 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %serial_signals.i.i, align 4
  %372 = or i8 %371, 64
  store i8 %372, ptr %serial_signals.i.i, align 4
  br label %get_signals.exit.i376

get_signals.exit.i376:                            ; preds = %if.then47.i.i373, %if.end43.i.i372.get_signals.exit.i376_crit_edge
  %373 = ptrtoint ptr %dsr_chkcount.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %dsr_chkcount.i, align 4
  %inc.i374 = add i32 %374, 1
  store i32 %inc.i374, ptr %dsr_chkcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %374)
  %cmp.i375 = icmp sgt i32 %374, 99
  br i1 %cmp.i375, label %if.then.i380, label %get_signals.exit.i376.dsr_change.exit_crit_edge

get_signals.exit.i376.dsr_change.exit_crit_edge:  ; preds = %get_signals.exit.i376
  call void @__sanitizer_cov_trace_pc() #14
  br label %dsr_change.exit

if.then.i380:                                     ; preds = %get_signals.exit.i376
  call void @__sanitizer_cov_trace_pc() #14
  %375 = ptrtoint ptr %pim_value.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %pim_value.i, align 4
  %377 = or i8 %376, 2
  store i8 %377, ptr %pim_value.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !648
  tail call void @arm_heavy_mb() #12
  %378 = ptrtoint ptr %pim_value.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %pim_value.i, align 4
  %380 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %io_base, align 4
  %add.i377 = add i32 %381, 61
  %and.i378 = and i32 %add.i377, 1048575
  %add3.i379 = or i32 %and.i378, -18874368
  %382 = inttoptr i32 %add3.i379 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %382, i8 %379) #12, !srcloc !628
  br label %dsr_change.exit

dsr_change.exit:                                  ; preds = %if.then.i380, %get_signals.exit.i376.dsr_change.exit_crit_edge
  %383 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %dsr.i, align 4
  %inc4.i = add i32 %384, 1
  store i32 %inc4.i, ptr %dsr.i, align 4
  %385 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %serial_signals.i.i, align 4
  %387 = and i8 %386, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool.not.i381 = icmp eq i8 %387, 0
  %dsr_down.sink24.i = select i1 %tobool.not.i381, ptr %dsr_down.i, ptr %dsr_up.i
  %388 = ptrtoint ptr %dsr_down.sink24.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %dsr_down.sink24.i, align 4
  %inc10.i = add i32 %389, 1
  store i32 %inc10.i, ptr %dsr_down.sink24.i, align 4
  tail call void @__wake_up(ptr noundef %status_event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @__wake_up(ptr noundef %event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %390 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %pending_bh.i, align 4
  %or12.i = or i32 %391, 4
  store i32 %or12.i, ptr %pending_bh.i, align 4
  br label %if.end149

if.end149:                                        ; preds = %dsr_change.exit, %if.then136.if.end149_crit_edge
  %and151 = and i32 %conv145, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end149.if.end155_crit_edge, label %if.then153

if.end149.if.end155_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.then153:                                       ; preds = %if.end149
  %392 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %serial_signals.i.i, align 4
  %394 = and i8 %393, -96
  store i8 %394, ptr %serial_signals.i.i, align 4
  %395 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %io_base, align 4
  %add.i.i388 = add i32 %396, 116
  %and2.i.i389 = and i32 %add.i.i388, 1048575
  %add3.i.i390 = or i32 %and2.i.i389, -18874368
  %397 = inttoptr i32 %add3.i.i390 to ptr
  %398 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %397) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %398)
  %tobool.not.i.i391 = icmp sgt i8 %398, -1
  br i1 %tobool.not.i.i391, label %if.then153.if.end.i.i397_crit_edge, label %if.then.i.i392

if.then153.if.end.i.i397_crit_edge:               ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i397

if.then.i.i392:                                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  %399 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %serial_signals.i.i, align 4
  %401 = or i8 %400, 1
  store i8 %401, ptr %serial_signals.i.i, align 4
  br label %if.end.i.i397

if.end.i.i397:                                    ; preds = %if.then.i.i392, %if.then153.if.end.i.i397_crit_edge
  %402 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %io_base, align 4
  %add12.i.i393 = add i32 %403, 96
  %and13.i.i394 = and i32 %add12.i.i393, 1048575
  %add14.i.i395 = or i32 %and13.i.i394, -18874368
  %404 = inttoptr i32 %add14.i.i395 to ptr
  %405 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %404) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %406 = and i8 %405, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %tobool20.not.i.i396 = icmp eq i8 %406, 0
  br i1 %tobool20.not.i.i396, label %if.end.i.i397.if.end26.i.i405_crit_edge, label %if.then21.i.i398

if.end.i.i397.if.end26.i.i405_crit_edge:          ; preds = %if.end.i.i397
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i405

if.then21.i.i398:                                 ; preds = %if.end.i.i397
  call void @__sanitizer_cov_trace_pc() #14
  %407 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %serial_signals.i.i, align 4
  %409 = or i8 %408, 16
  store i8 %409, ptr %serial_signals.i.i, align 4
  br label %if.end26.i.i405

if.end26.i.i405:                                  ; preds = %if.then21.i.i398, %if.end.i.i397.if.end26.i.i405_crit_edge
  %410 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %io_base, align 4
  %add29.i.i399 = add i32 %411, 60
  %and30.i.i400 = and i32 %add29.i.i399, 1048575
  %add31.i.i401 = or i32 %and30.i.i400, -18874368
  %412 = inttoptr i32 %add31.i.i401 to ptr
  %413 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %412) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i.i402 = zext i8 %413 to i32
  %and36.i.i403 = and i32 %conv35.i.i402, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i403)
  %tobool37.not.i.i404 = icmp eq i32 %and36.i.i403, 0
  br i1 %tobool37.not.i.i404, label %if.then38.i.i406, label %if.end26.i.i405.if.end43.i.i409_crit_edge

if.end26.i.i405.if.end43.i.i409_crit_edge:        ; preds = %if.end26.i.i405
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i.i409

if.then38.i.i406:                                 ; preds = %if.end26.i.i405
  call void @__sanitizer_cov_trace_pc() #14
  %414 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %serial_signals.i.i, align 4
  %416 = or i8 %415, 4
  store i8 %416, ptr %serial_signals.i.i, align 4
  br label %if.end43.i.i409

if.end43.i.i409:                                  ; preds = %if.then38.i.i406, %if.end26.i.i405.if.end43.i.i409_crit_edge
  %and45.i.i407 = and i32 %conv35.i.i402, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i407)
  %tobool46.not.i.i408 = icmp eq i32 %and45.i.i407, 0
  br i1 %tobool46.not.i.i408, label %if.then47.i.i410, label %if.end43.i.i409.get_signals.exit.i413_crit_edge

if.end43.i.i409.get_signals.exit.i413_crit_edge:  ; preds = %if.end43.i.i409
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit.i413

if.then47.i.i410:                                 ; preds = %if.end43.i.i409
  call void @__sanitizer_cov_trace_pc() #14
  %417 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %serial_signals.i.i, align 4
  %419 = or i8 %418, 64
  store i8 %419, ptr %serial_signals.i.i, align 4
  br label %get_signals.exit.i413

get_signals.exit.i413:                            ; preds = %if.then47.i.i410, %if.end43.i.i409.get_signals.exit.i413_crit_edge
  %420 = ptrtoint ptr %ri_chkcount.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %ri_chkcount.i, align 4
  %inc.i411 = add i32 %421, 1
  store i32 %inc.i411, ptr %ri_chkcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %421)
  %cmp.i412 = icmp sgt i32 %421, 99
  br i1 %cmp.i412, label %if.then.i418, label %get_signals.exit.i413.ri_change.exit_crit_edge

get_signals.exit.i413.ri_change.exit_crit_edge:   ; preds = %get_signals.exit.i413
  call void @__sanitizer_cov_trace_pc() #14
  br label %ri_change.exit

if.then.i418:                                     ; preds = %get_signals.exit.i413
  call void @__sanitizer_cov_trace_pc() #14
  %422 = ptrtoint ptr %pim_value.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %pim_value.i, align 4
  %424 = or i8 %423, 4
  store i8 %424, ptr %pim_value.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !649
  tail call void @arm_heavy_mb() #12
  %425 = ptrtoint ptr %pim_value.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %pim_value.i, align 4
  %427 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %io_base, align 4
  %add.i415 = add i32 %428, 61
  %and.i416 = and i32 %add.i415, 1048575
  %add3.i417 = or i32 %and.i416, -18874368
  %429 = inttoptr i32 %add3.i417 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %429, i8 %426) #12, !srcloc !628
  br label %ri_change.exit

ri_change.exit:                                   ; preds = %if.then.i418, %get_signals.exit.i413.ri_change.exit_crit_edge
  %430 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %rng.i, align 4
  %inc4.i419 = add i32 %431, 1
  store i32 %inc4.i419, ptr %rng.i, align 4
  %432 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %serial_signals.i.i, align 4
  %434 = and i8 %433, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %434)
  %tobool.not.i420 = icmp eq i8 %434, 0
  %ri_down.sink24.i = select i1 %tobool.not.i420, ptr %ri_down.i, ptr %input_signal_events.i
  %435 = ptrtoint ptr %ri_down.sink24.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %ri_down.sink24.i, align 4
  %inc10.i421 = add i32 %436, 1
  store i32 %inc10.i421, ptr %ri_down.sink24.i, align 4
  tail call void @__wake_up(ptr noundef %status_event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @__wake_up(ptr noundef %event_wait_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %437 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %pending_bh.i, align 4
  %or12.i425 = or i32 %438, 4
  store i32 %or12.i425, ptr %pending_bh.i, align 4
  br label %if.end155

if.end155:                                        ; preds = %ri_change.exit, %if.end149.if.end155_crit_edge, %if.end132.if.end155_crit_edge
  %439 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %io_base, align 4
  %add = add i32 %440, 56
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %441 = inttoptr i32 %add4 to ptr
  %442 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %441) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !629
  %tobool8.not = icmp eq i8 %442, 0
  br i1 %tobool8.not, label %if.end155.while.end_crit_edge, label %if.end155.while.body_crit_edge

if.end155.while.body_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end155.while.end_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end155.while.end_crit_edge, %do.end25, %if.end2.while.end_crit_edge
  %pending_bh = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 30
  %443 = ptrtoint ptr %pending_bh to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %pending_bh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %444)
  %tobool156.not = icmp eq i32 %444, 0
  br i1 %tobool156.not, label %while.end.if.end174_crit_edge, label %land.lhs.true

while.end.if.end174_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

land.lhs.true:                                    ; preds = %while.end
  %bh_running = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 31
  %445 = ptrtoint ptr %bh_running to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %bh_running, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %tobool157.not = icmp eq i8 %446, 0
  br i1 %tobool157.not, label %land.lhs.true158, label %land.lhs.true.if.end174_crit_edge

land.lhs.true.if.end174_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

land.lhs.true158:                                 ; preds = %land.lhs.true
  %bh_requested = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 32
  %447 = ptrtoint ptr %bh_requested to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %bh_requested, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool159.not = icmp eq i8 %448, 0
  br i1 %tobool159.not, label %if.then160, label %land.lhs.true158.if.end174_crit_edge

land.lhs.true158.if.end174_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

if.then160:                                       ; preds = %land.lhs.true158
  %449 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %449)
  %cmp161 = icmp sgt i32 %449, 4
  br i1 %cmp161, label %do.end166, label %if.then160.if.end171_crit_edge

if.then160.if.end171_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

do.end166:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  %device_name168 = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 44
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.3, i32 noundef 1249, ptr noundef %device_name168) #15
  br label %if.end171

if.end171:                                        ; preds = %do.end166, %if.then160.if.end171_crit_edge
  %task = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %450 = load ptr, ptr @system_wq, align 4
  %call.i.i427 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %450, ptr noundef %task) #12
  %451 = ptrtoint ptr %bh_requested to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 1, ptr %bh_requested, align 1
  br label %if.end174

if.end174:                                        ; preds = %if.end171, %land.lhs.true158.if.end174_crit_edge, %land.lhs.true.if.end174_crit_edge, %while.end.if.end174_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @tty_kref_put(ptr noundef %call3) #12
  %452 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %452)
  %cmp176 = icmp sgt i32 %452, 4
  br i1 %cmp176, label %do.end181, label %if.end174.cleanup_crit_edge

if.end174.cleanup_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end181:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  %irq_level183 = getelementptr inbounds %struct._mgslpc_info, ptr %dev_id, i32 0, i32 46
  %453 = ptrtoint ptr %irq_level183 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %irq_level183, align 4
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3, i32 noundef 1259, i32 noundef %454) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end181, %if.end174.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_done(ptr noundef %info, ptr noundef readonly %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %0 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.end

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %tx_active to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %tx_active, align 1
  %tx_aborting = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 41
  %3 = ptrtoint ptr %tx_aborting to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tx_aborting, align 4
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.end.if.end23_crit_edge, label %if.end3

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end3:                                          ; preds = %if.end
  %tx_get = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 11
  %6 = ptrtoint ptr %tx_get to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_get, align 4
  %tx_put = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 10
  %7 = ptrtoint ptr %tx_put to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_put, align 4
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 12
  %8 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_count, align 4
  %tx_timer = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 22
  %call = tail call i32 @del_timer(ptr noundef %tx_timer) #12
  %drop_rts_on_tx_done = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 53
  %9 = ptrtoint ptr %drop_rts_on_tx_done to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %drop_rts_on_tx_done, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end3.if.end14_crit_edge, label %if.then5

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then5:                                         ; preds = %if.end3
  %serial_signals.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %11 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %serial_signals.i, align 4
  %13 = and i8 %12, -96
  store i8 %13, ptr %serial_signals.i, align 4
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %14 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %15, 116
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %16 = inttoptr i32 %add3.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool.not.i = icmp sgt i8 %17, -1
  br i1 %tobool.not.i, label %if.then5.if.end.i_crit_edge, label %if.then.i

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %serial_signals.i, align 4
  %20 = or i8 %19, 1
  store i8 %20, ptr %serial_signals.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then5.if.end.i_crit_edge
  %21 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %22, 96
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %23 = inttoptr i32 %add14.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not.i = icmp eq i8 %25, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then21.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %serial_signals.i, align 4
  %28 = or i8 %27, 16
  store i8 %28, ptr %serial_signals.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end.i.if.end26.i_crit_edge
  %29 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_base.i, align 4
  %add29.i = add i32 %30, 60
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %31 = inttoptr i32 %add31.i to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i = zext i8 %32 to i32
  %and36.i = and i32 %conv35.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end26.i.if.end43.i_crit_edge

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %serial_signals.i, align 4
  %35 = or i8 %34, 4
  store i8 %35, ptr %serial_signals.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end26.i.if.end43.i_crit_edge
  %and45.i = and i32 %conv35.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.get_signals.exit_crit_edge

if.end43.i.get_signals.exit_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %serial_signals.i, align 4
  %38 = or i8 %37, 64
  store i8 %38, ptr %serial_signals.i, align 4
  br label %get_signals.exit

get_signals.exit:                                 ; preds = %if.then47.i, %if.end43.i.get_signals.exit_crit_edge
  %39 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %serial_signals.i, align 4
  %41 = and i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool6.not = icmp eq i8 %41, 0
  br i1 %tobool6.not, label %get_signals.exit.if.end12_crit_edge, label %if.then7

get_signals.exit.if.end12_crit_edge:              ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then7:                                         ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and10 = and i8 %40, -33
  %42 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %and10, ptr %serial_signals.i, align 4
  tail call fastcc void @set_signals(ptr noundef %info)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %get_signals.exit.if.end12_crit_edge
  %43 = ptrtoint ptr %drop_rts_on_tx_done to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %drop_rts_on_tx_done, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end3.if.end14_crit_edge
  %netcount = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 57
  %44 = ptrtoint ptr %netcount to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %netcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool15.not = icmp eq i32 %45, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %netdev.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 59
  %46 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 103
  %48 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then16.if.end23_crit_edge, label %if.then.i43

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then.i43:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %49) #12
  br label %if.end23

if.else:                                          ; preds = %if.end14
  %tobool17.not = icmp eq ptr %tty, null
  br i1 %tobool17.not, label %if.else.if.end22_crit_edge, label %land.lhs.true

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %if.else
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %52 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %stopped, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool18.not = icmp eq i8 %53, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

lor.lhs.false:                                    ; preds = %land.lhs.true
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %54 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool20.not = icmp eq i32 %55, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %56 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp.i = icmp sgt i32 %56, 4
  br i1 %cmp.i, label %do.end.i, label %if.then21.tx_stop.exit_crit_edge

if.then21.tx_stop.exit_crit_edge:                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name.i) #15
  br label %tx_stop.exit

tx_stop.exit:                                     ; preds = %do.end.i, %if.then21.tx_stop.exit_crit_edge
  %call1.i = tail call i32 @del_timer(ptr noundef %tx_timer) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 39
  %57 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %tx_enabled.i, align 2
  %58 = ptrtoint ptr %tx_active to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %tx_active, align 1
  br label %if.end23

if.end22:                                         ; preds = %lor.lhs.false.if.end22_crit_edge, %if.else.if.end22_crit_edge
  %pending_bh = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 30
  %59 = ptrtoint ptr %pending_bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pending_bh, align 4
  %or = or i32 %60, 2
  store i32 %or, ptr %pending_bh, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %tx_stop.exit, %if.then.i43, %if.then16.if.end23_crit_edge, %if.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_ready(ptr noundef %info, ptr noundef readonly %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.3, i32 noundef 1002, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %3 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %if.then2.if.end14_crit_edge

if.then2.if.end14_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %tty, null
  br i1 %tobool5.not, label %if.else.if.end9_crit_edge, label %land.lhs.true

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.else
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stopped, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %land.lhs.true.if.then8_crit_edge

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false:                                    ; preds = %land.lhs.true
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %7 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %9 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.i = icmp sgt i32 %9, 4
  br i1 %cmp.i, label %do.end.i, label %if.then8.tx_stop.exit_crit_edge

if.then8.tx_stop.exit_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name.i) #15
  br label %tx_stop.exit

tx_stop.exit:                                     ; preds = %do.end.i, %if.then8.tx_stop.exit_crit_edge
  %tx_timer.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 22
  %call1.i = tail call i32 @del_timer(ptr noundef %tx_timer.i) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 39
  %10 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tx_enabled.i, align 2
  %tx_active.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %11 = ptrtoint ptr %tx_active.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tx_active.i, align 1
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 12
  %12 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %tx_active12 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %14 = ptrtoint ptr %tx_active12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tx_active12, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge, %if.then2.if.end14_crit_edge
  %tx_count15 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 12
  %15 = ptrtoint ptr %tx_count15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_count15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %land.rhs.lr.ph

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end14
  %tx_get = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 11
  %tx_buf54 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 9
  %io_base57 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  br label %land.rhs

land.rhs:                                         ; preds = %if.end62.land.rhs_crit_edge, %land.rhs.lr.ph
  %fifo_count.0160 = phi i32 [ 32, %land.rhs.lr.ph ], [ %sub70, %if.end62.land.rhs_crit_edge ]
  %17 = phi i32 [ %16, %land.rhs.lr.ph ], [ %sub64, %if.end62.land.rhs_crit_edge ]
  %conv = and i32 %fifo_count.0160, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool21.not = icmp eq i32 %conv, 0
  br i1 %tobool21.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %18 = ptrtoint ptr %tx_get to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_get, align 4
  %sub = sub i32 4096, %19
  %20 = tail call i32 @llvm.smin.i32(i32 %17, i32 %sub)
  %21 = tail call i32 @llvm.smin.i32(i32 %conv, i32 %20)
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp41 = icmp eq i32 %22, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %tx_buf54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_buf54, align 4
  %25 = ptrtoint ptr %tx_get to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_get, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  br i1 %cmp41, label %do.body44, label %do.body51

do.body44:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr, align 1
  %29 = ptrtoint ptr %io_base57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_base57, align 4
  %and = and i32 %30, 1048575
  %add48 = or i32 %and, -18874368
  %31 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %28) #12, !srcloc !628
  br label %if.end62

do.body51:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %35 = ptrtoint ptr %io_base57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_base57, align 4
  %and59 = and i32 %36, 1048575
  %add60 = or i32 %and59, -18874368
  %37 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %34) #12, !srcloc !633
  br label %if.end62

if.end62:                                         ; preds = %do.body51, %do.body44
  %38 = ptrtoint ptr %tx_count15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_count15, align 4
  %sub64 = sub i32 %39, %22
  store i32 %sub64, ptr %tx_count15, align 4
  %40 = ptrtoint ptr %tx_get to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_get, align 4
  %add66 = add i32 %41, %22
  %and67 = and i32 %add66, 4095
  store i32 %and67, ptr %tx_get, align 4
  %sub70 = sub i32 %conv, %22
  %tobool20.not = icmp eq i32 %sub64, 0
  br i1 %tobool20.not, label %while.end.thread, label %if.end62.land.rhs_crit_edge

if.end62.land.rhs_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.end:                                        ; preds = %land.rhs
  %42 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp74 = icmp eq i32 %43, 1
  br i1 %cmp74, label %if.then76, label %while.end.while.cond.i.i134_crit_edge

while.end.while.cond.i.i134_crit_edge:            ; preds = %while.end
  br label %while.cond.i.i134

while.end.thread:                                 ; preds = %if.end62
  %44 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp74156 = icmp eq i32 %45, 1
  br i1 %cmp74156, label %while.end.thread.if.then80_crit_edge, label %while.end.thread.while.cond.i.i148_crit_edge

while.end.thread.while.cond.i.i148_crit_edge:     ; preds = %while.end.thread
  br label %while.cond.i.i148

while.end.thread.if.then80_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

if.then76:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %17)
  %cmp78 = icmp slt i32 %17, 256
  br i1 %cmp78, label %if.then76.if.then80_crit_edge, label %if.then76.while.cond.i.i.preheader_crit_edge

if.then76.while.cond.i.i.preheader_crit_edge:     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

if.then76.if.then80_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

if.then80:                                        ; preds = %if.then76.if.then80_crit_edge, %while.end.thread.if.then80_crit_edge
  %pending_bh = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 30
  %46 = ptrtoint ptr %pending_bh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pending_bh, align 4
  %or = or i32 %47, 2
  store i32 %or, ptr %pending_bh, align 4
  br label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %if.then80, %if.then76.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %i.0.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ 0, %while.cond.i.i.preheader ]
  %48 = ptrtoint ptr %io_base57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io_base57, align 4
  %add3.i.i = add i32 %49, 32
  %and.i.i = and i32 %add3.i.i, 1048575
  %add4.i.i = or i32 %and.i.i, -18874368
  %50 = inttoptr i32 %add4.i.i to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %52 = and i8 %51, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.issue_command.exit_crit_edge, label %while.body.i.i

while.cond.i.i.issue_command.exit_crit_edge:      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %cmp.i.i = icmp eq i32 %i.0.i.i, 1000
  br i1 %cmp.i.i, label %while.body.i.i.issue_command.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.body.i.i.issue_command.exit_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit

issue_command.exit:                               ; preds = %while.body.i.i.issue_command.exit_crit_edge, %while.cond.i.i.issue_command.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %io_base57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_base57, align 4
  %add3.i = add i32 %55, 32
  %and.i = and i32 %add3.i, 1048575
  %add4.i = or i32 %and.i, -18874368
  %56 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 8) #12, !srcloc !628
  br label %cleanup

while.cond.i.i134:                                ; preds = %while.body.i.i137.while.cond.i.i134_crit_edge, %while.end.while.cond.i.i134_crit_edge
  %i.0.i.i129 = phi i32 [ %inc.i.i135, %while.body.i.i137.while.cond.i.i134_crit_edge ], [ 0, %while.end.while.cond.i.i134_crit_edge ]
  %57 = ptrtoint ptr %io_base57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %io_base57, align 4
  %add3.i.i130 = add i32 %58, 32
  %and.i.i131 = and i32 %add3.i.i130, 1048575
  %add4.i.i132 = or i32 %and.i.i131, -18874368
  %59 = inttoptr i32 %add4.i.i132 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %61 = and i8 %60, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i133 = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i133, label %while.cond.i.i134.issue_command.exit141_crit_edge, label %while.body.i.i137

while.cond.i.i134.issue_command.exit141_crit_edge: ; preds = %while.cond.i.i134
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit141

while.body.i.i137:                                ; preds = %while.cond.i.i134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #12
  %inc.i.i135 = add nuw nsw i32 %i.0.i.i129, 1
  %cmp.i.i136 = icmp eq i32 %i.0.i.i129, 1000
  br i1 %cmp.i.i136, label %while.body.i.i137.issue_command.exit141_crit_edge, label %while.body.i.i137.while.cond.i.i134_crit_edge

while.body.i.i137.while.cond.i.i134_crit_edge:    ; preds = %while.body.i.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i134

while.body.i.i137.issue_command.exit141_crit_edge: ; preds = %while.body.i.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit141

issue_command.exit141:                            ; preds = %while.body.i.i137.issue_command.exit141_crit_edge, %while.cond.i.i134.issue_command.exit141_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %63 = ptrtoint ptr %io_base57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %io_base57, align 4
  %add3.i138 = add i32 %64, 32
  %and.i139 = and i32 %add3.i138, 1048575
  %add4.i140 = or i32 %and.i139, -18874368
  %65 = inttoptr i32 %add4.i140 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 8) #12, !srcloc !628
  br label %cleanup

while.cond.i.i148:                                ; preds = %while.body.i.i151.while.cond.i.i148_crit_edge, %while.end.thread.while.cond.i.i148_crit_edge
  %i.0.i.i143 = phi i32 [ %inc.i.i149, %while.body.i.i151.while.cond.i.i148_crit_edge ], [ 0, %while.end.thread.while.cond.i.i148_crit_edge ]
  %66 = ptrtoint ptr %io_base57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %io_base57, align 4
  %add3.i.i144 = add i32 %67, 32
  %and.i.i145 = and i32 %add3.i.i144, 1048575
  %add4.i.i146 = or i32 %and.i.i145, -18874368
  %68 = inttoptr i32 %add4.i.i146 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %70 = and i8 %69, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i147 = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i147, label %while.cond.i.i148.issue_command.exit155_crit_edge, label %while.body.i.i151

while.cond.i.i148.issue_command.exit155_crit_edge: ; preds = %while.cond.i.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit155

while.body.i.i151:                                ; preds = %while.cond.i.i148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #12
  %inc.i.i149 = add nuw nsw i32 %i.0.i.i143, 1
  %cmp.i.i150 = icmp eq i32 %i.0.i.i143, 1000
  br i1 %cmp.i.i150, label %while.body.i.i151.issue_command.exit155_crit_edge, label %while.body.i.i151.while.cond.i.i148_crit_edge

while.body.i.i151.while.cond.i.i148_crit_edge:    ; preds = %while.body.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i148

while.body.i.i151.issue_command.exit155_crit_edge: ; preds = %while.body.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit155

issue_command.exit155:                            ; preds = %while.body.i.i151.issue_command.exit155_crit_edge, %while.cond.i.i148.issue_command.exit155_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %72 = ptrtoint ptr %io_base57 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %io_base57, align 4
  %add3.i152 = add i32 %73, 32
  %and.i153 = and i32 %add3.i152, 1048575
  %add4.i154 = or i32 %and.i153, -18874368
  %74 = inttoptr i32 %add4.i154 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 10) #12, !srcloc !628
  br label %cleanup

cleanup:                                          ; preds = %issue_command.exit155, %issue_command.exit141, %issue_command.exit, %if.end14.cleanup_crit_edge, %tx_stop.exit, %if.then2.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_start(ptr noundef %info, ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.3, i32 noundef 3278, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 12
  %1 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.if.end26_crit_edge, label %if.then1

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then1:                                         ; preds = %if.end
  %drop_rts_on_tx_done = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 53
  %3 = ptrtoint ptr %drop_rts_on_tx_done to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %drop_rts_on_tx_done, align 4
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %flags = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not = icmp eq i16 %6, 0
  br i1 %tobool2.not, label %if.then1.if.end13_crit_edge, label %if.then3

if.then1.if.end13_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then3:                                         ; preds = %if.then1
  %serial_signals.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %7 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %serial_signals.i, align 4
  %9 = and i8 %8, -96
  store i8 %9, ptr %serial_signals.i, align 4
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %11, 116
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %12 = inttoptr i32 %add3.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool.not.i = icmp sgt i8 %13, -1
  br i1 %tobool.not.i, label %if.then3.if.end.i_crit_edge, label %if.then.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %serial_signals.i, align 4
  %16 = or i8 %15, 1
  store i8 %16, ptr %serial_signals.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then3.if.end.i_crit_edge
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %18, 96
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %19 = inttoptr i32 %add14.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not.i = icmp eq i8 %21, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then21.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %serial_signals.i, align 4
  %24 = or i8 %23, 16
  store i8 %24, ptr %serial_signals.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end.i.if.end26.i_crit_edge
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_base.i, align 4
  %add29.i = add i32 %26, 60
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %27 = inttoptr i32 %add31.i to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i = zext i8 %28 to i32
  %and36.i = and i32 %conv35.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end26.i.if.end43.i_crit_edge

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %serial_signals.i, align 4
  %31 = or i8 %30, 4
  store i8 %31, ptr %serial_signals.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end26.i.if.end43.i_crit_edge
  %and45.i = and i32 %conv35.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.get_signals.exit_crit_edge

if.end43.i.get_signals.exit_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %serial_signals.i, align 4
  %34 = or i8 %33, 64
  store i8 %34, ptr %serial_signals.i, align 4
  br label %get_signals.exit

get_signals.exit:                                 ; preds = %if.then47.i, %if.end43.i.get_signals.exit_crit_edge
  %35 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %serial_signals.i, align 4
  %37 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool6.not = icmp eq i8 %37, 0
  br i1 %tobool6.not, label %if.then7, label %get_signals.exit.if.end13_crit_edge

get_signals.exit.if.end13_crit_edge:              ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i8 %36, 32
  %38 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %or, ptr %serial_signals.i, align 4
  tail call fastcc void @set_signals(ptr noundef %info)
  %39 = ptrtoint ptr %drop_rts_on_tx_done to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %drop_rts_on_tx_done, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %get_signals.exit.if.end13_crit_edge, %if.then1.if.end13_crit_edge
  %40 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp15 = icmp eq i32 %41, 1
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %42 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool18.not = icmp eq i8 %43, 0
  br i1 %tobool18.not, label %if.then19, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %tx_active to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %tx_active, align 1
  tail call fastcc void @tx_ready(ptr noundef %info, ptr noundef %tty)
  br label %if.end26

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %tx_active to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %tx_active, align 1
  tail call fastcc void @tx_ready(ptr noundef %info, ptr noundef %tty)
  %tx_timer = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %46, 500
  %call24 = tail call i32 @mod_timer(ptr noundef %tx_timer, i32 noundef %add) #12
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then19, %if.then17.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %tx_enabled = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 39
  %47 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_enabled, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool27.not = icmp eq i8 %48, 0
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %tx_enabled, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_buffer_request_room(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_hdlcdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdev_attach(ptr nocapture noundef readonly %dev, i16 noundef zeroext %encoding, i16 noundef zeroext %parity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i16 %encoding, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %4 = icmp ult i16 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %5 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.hdlcdev_attach, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load = load i8, ptr %switch.gep, align 1
  %7 = zext i16 %parity to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.275)
  switch i16 %parity, label %switch.lookup.cleanup_crit_edge [
    i16 1, label %switch.lookup.sw.epilog10_crit_edge
    i16 5, label %sw.bb7
    i16 7, label %sw.bb8
  ]

switch.lookup.sw.epilog10_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog10

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb7:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog10

sw.bb8:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb8, %sw.bb7, %switch.lookup.sw.epilog10_crit_edge
  %new_crctype.0 = phi i16 [ 2, %sw.bb8 ], [ 1, %sw.bb7 ], [ 0, %switch.lookup.sw.epilog10_crit_edge ]
  %encoding11 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 47, i32 3
  %8 = ptrtoint ptr %encoding11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %switch.load, ptr %encoding11, align 4
  %crc_type = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 47, i32 6
  %9 = ptrtoint ptr %crc_type to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %new_crctype.0, ptr %crc_type, align 2
  %netcount = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 57
  %10 = ptrtoint ptr %netcount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %netcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %sw.epilog10.cleanup_crit_edge, label %if.then14

sw.epilog10.cleanup_crit_edge:                    ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call ptr @tty_port_tty_get(ptr noundef %1) #12
  tail call fastcc void @mgslpc_program_hw(ptr noundef %1, ptr noundef %call16)
  tail call void @tty_kref_put(ptr noundef %call16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %sw.epilog10.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %sw.epilog10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdev_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.3, ptr noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %tx_buf = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_buf, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = call ptr @memcpy(ptr %6, ptr %10, i32 %8)
  %tx_get = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %tx_get to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_get, align 4
  %13 = load i32, ptr %len, align 4
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_count, align 4
  %tx_put = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %tx_put to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %tx_put, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %16 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %tx_packets, align 4
  %18 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %19 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %20, %18
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @consume_skb(ptr noundef %skb) #12
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 12
  %24 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp.not.i.i = icmp eq i32 %25, %23
  br i1 %cmp.not.i.i, label %if.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end.netif_trans_update.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %23, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end.netif_trans_update.exit_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %27 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.then15, label %netif_trans_update.exit.if.end17_crit_edge

netif_trans_update.exit.if.end17_crit_edge:       ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call ptr @tty_port_tty_get(ptr noundef %1) #12
  tail call fastcc void @tx_start(ptr noundef %1, ptr noundef %call16)
  tail call void @tty_kref_put(ptr noundef %call16) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %netif_trans_update.exit.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdev_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.3, ptr noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @hdlc_open(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %do.body7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %netlock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 58
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %netlock) #12
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16.not = icmp eq i32 %4, 0
  br i1 %cmp16.not, label %lor.lhs.false, label %do.body7.do.end23_crit_edge

do.body7.do.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

lor.lhs.false:                                    ; preds = %do.body7
  %netcount = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 57
  %5 = ptrtoint ptr %netcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %netcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp18.not = icmp eq i32 %6, 0
  br i1 %cmp18.not, label %if.end29, label %lor.lhs.false.do.end23_crit_edge

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false.do.end23_crit_edge, %do.body7.do.end23_crit_edge
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %dev) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %netlock, i32 noundef %call11) #12
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %netcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %netcount, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %netlock, i32 noundef %call11) #12
  %call33 = tail call ptr @tty_port_tty_get(ptr noundef %1) #12
  %call34 = tail call fastcc i32 @startup(ptr noundef %1, ptr noundef %call33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end54, label %if.then37

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_kref_put(ptr noundef %call33) #12
  %call47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %netlock) #12
  %8 = ptrtoint ptr %netcount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %netcount, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %netlock, i32 noundef %call47) #12
  br label %cleanup

if.end54:                                         ; preds = %if.end29
  %serial_signals = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %9 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %serial_signals, align 4
  %11 = or i8 %10, -96
  store i8 %11, ptr %serial_signals, align 4
  tail call fastcc void @mgslpc_program_hw(ptr noundef %1, ptr noundef %call33)
  tail call void @tty_kref_put(ptr noundef %call33) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 12
  %15 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.not.i.i = icmp eq i32 %16, %14
  br i1 %cmp.not.i.i, label %if.end54.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end54.netif_trans_update.exit_crit_edge:       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %14, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end54.netif_trans_update.exit_crit_edge
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %20 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %serial_signals, align 4
  %22 = and i8 %21, -96
  store i8 %22, ptr %serial_signals, align 4
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 45
  %23 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %24, 116
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %25 = inttoptr i32 %add3.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool.not.i = icmp sgt i8 %26, -1
  br i1 %tobool.not.i, label %netif_trans_update.exit.if.end.i_crit_edge, label %if.then.i

netif_trans_update.exit.if.end.i_crit_edge:       ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %serial_signals, align 4
  %29 = or i8 %28, 1
  store i8 %29, ptr %serial_signals, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %netif_trans_update.exit.if.end.i_crit_edge
  %30 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %31, 96
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %32 = inttoptr i32 %add14.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %34 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool20.not.i = icmp eq i8 %34, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then21.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %serial_signals, align 4
  %37 = or i8 %36, 16
  store i8 %37, ptr %serial_signals, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end.i.if.end26.i_crit_edge
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_base.i, align 4
  %add29.i = add i32 %39, 60
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %40 = inttoptr i32 %add31.i to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i = zext i8 %41 to i32
  %and36.i = and i32 %conv35.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end26.i.if.end43.i_crit_edge

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %serial_signals, align 4
  %44 = or i8 %43, 4
  store i8 %44, ptr %serial_signals, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end26.i.if.end43.i_crit_edge
  %and45.i = and i32 %conv35.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.get_signals.exit_crit_edge

if.end43.i.get_signals.exit_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %serial_signals, align 4
  %47 = or i8 %46, 64
  store i8 %47, ptr %serial_signals, align 4
  br label %get_signals.exit

get_signals.exit:                                 ; preds = %if.then47.i, %if.end43.i.get_signals.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call65) #12
  %48 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %serial_signals, align 4
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not = icmp eq i8 %50, 0
  br i1 %tobool.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_on(ptr noundef %dev) #12
  br label %cleanup

if.else:                                          ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then73, %if.then37, %do.end23, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end23 ], [ %call34, %if.then37 ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call1 = tail call ptr @tty_port_tty_get(ptr noundef %1) #12
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.3, ptr noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call fastcc void @shutdown(ptr noundef %1, ptr noundef %call1)
  tail call void @tty_kref_put(ptr noundef %call1) #12
  tail call void @hdlc_close(ptr noundef %dev) #12
  %netlock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 58
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %netlock) #12
  %netcount = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 57
  %5 = ptrtoint ptr %netcount to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %netcount, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %netlock, i32 noundef %call8) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlcdev_wan_ioctl(ptr noundef %dev, ptr noundef %ifs) #2 align 64 {
entry:
  %new_line = alloca %struct.sync_serial_settings, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %new_line) #12
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %0 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifs_ifsu, align 4
  %priv = getelementptr i8, ptr %dev, i32 2372
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp sgt i32 %4, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.3, ptr noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %count = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = call ptr @memset(ptr %new_line, i32 0, i32 12)
  %8 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifs, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %9, label %sw.default86 [
    i32 1, label %sw.bb
    i32 4101, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end3
  %11 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4101, ptr %ifs, align 4
  %size5 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %12 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp6 = icmp ult i32 %13, 12
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %size5, align 4
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %flags10 = getelementptr inbounds %struct._mgslpc_info, ptr %3, i32 0, i32 47, i32 2
  %15 = ptrtoint ptr %flags10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags10, align 2
  %17 = and i16 %16, -28920
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.277)
  switch i16 %17, label %if.end9.sw.epilog_crit_edge [
    i16 0, label %if.end9.sw.epilog.sink.split_crit_edge
    i16 2560, label %sw.bb12
    i16 2048, label %sw.bb14
    i16 8, label %sw.bb16
  ]

if.end9.sw.epilog.sink.split_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb14:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %if.end9.sw.epilog.sink.split_crit_edge
  %.sink133 = phi i32 [ 4, %sw.bb16 ], [ 3, %sw.bb14 ], [ 2, %sw.bb12 ], [ 1, %if.end9.sw.epilog.sink.split_crit_edge ]
  %clock_type17 = getelementptr inbounds %struct.sync_serial_settings, ptr %new_line, i32 0, i32 1
  %19 = ptrtoint ptr %clock_type17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink133, ptr %clock_type17, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end9.sw.epilog_crit_edge
  %clock_speed = getelementptr inbounds %struct._mgslpc_info, ptr %3, i32 0, i32 47, i32 4
  %20 = ptrtoint ptr %clock_speed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clock_speed, align 4
  %22 = ptrtoint ptr %new_line to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %new_line, align 4
  %loopback = getelementptr inbounds %struct._mgslpc_info, ptr %3, i32 0, i32 47, i32 1
  %23 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool22.not = icmp ne i8 %24, 0
  %conv23 = zext i1 %tobool22.not to i16
  %loopback24 = getelementptr inbounds %struct.sync_serial_settings, ptr %new_line, i32 0, i32 2
  %25 = ptrtoint ptr %loopback24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv23, ptr %loopback24, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.144, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.epilog
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1226833920) #17, !srcloc !650
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %new_line, i32 noundef 12) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %new_line, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool26.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool26.not, i32 0, i32 -14
  br label %cleanup

sw.bb29:                                          ; preds = %if.end3
  %call30 = tail call zeroext i1 @capable(i32 noundef 12) #12
  br i1 %call30, label %if.end59.i.i118, label %sw.bb29.cleanup_crit_edge

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59.i.i118:                                  ; preds = %sw.bb29
  tail call void @__might_fault(ptr noundef nonnull @.str.144, i32 noundef 156) #12
  %call.i.i119 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i119, label %if.end59.i.i118.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i118.if.then11.i.i_crit_edge:          ; preds = %if.end59.i.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i118
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1226833920) #17, !srcloc !651
  %asmresult.i.i120 = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i120)
  %cmp.i6.i121 = icmp eq i32 %asmresult.i.i120, 0
  br i1 %cmp.i6.i121, label %if.end.i.i123, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !652

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i123:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i122 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_line, i32 noundef 12) #12
  %28 = call i32 @llvm.read_register.i32(metadata !612) #12
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !653
  %and.i.i.i.i = and i32 %30, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_line, ptr noundef %1, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #12, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end36, label %if.end.i.i123.if.then11.i.i_crit_edge, !prof !652

if.end.i.i123.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i123.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i118.if.then11.i.i_crit_edge
  %res.0.i.i130 = phi i32 [ %call1.i.i.i, %if.end.i.i123.if.then11.i.i_crit_edge ], [ 12, %if.end59.i.i118.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i130
  %add.ptr.i.i = getelementptr i8, ptr %new_line, i32 %sub.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i130)
  br label %cleanup

if.end36:                                         ; preds = %if.end.i.i123
  %clock_type37 = getelementptr inbounds %struct.sync_serial_settings, ptr %new_line, i32 0, i32 1
  %32 = ptrtoint ptr %clock_type37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clock_type37, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %33, label %if.end36.cleanup_crit_edge [
    i32 1, label %if.end36.sw.epilog48_crit_edge
    i32 4, label %sw.bb39
    i32 2, label %sw.bb40
    i32 3, label %sw.bb41
    i32 0, label %sw.bb42
  ]

if.end36.sw.epilog48_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog48

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb39:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog48

sw.bb40:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog48

sw.bb41:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog48

sw.bb42:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %flags44 = getelementptr inbounds %struct._mgslpc_info, ptr %3, i32 0, i32 47, i32 2
  %35 = ptrtoint ptr %flags44 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags44, align 2
  %37 = and i16 %36, -28920
  %and46 = zext i16 %37 to i32
  br label %sw.epilog48

sw.epilog48:                                      ; preds = %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %if.end36.sw.epilog48_crit_edge
  %flags.0 = phi i32 [ %and46, %sw.bb42 ], [ 2048, %sw.bb41 ], [ 2560, %sw.bb40 ], [ 8, %sw.bb39 ], [ 0, %if.end36.sw.epilog48_crit_edge ]
  %loopback49 = getelementptr inbounds %struct.sync_serial_settings, ptr %new_line, i32 0, i32 2
  %38 = ptrtoint ptr %loopback49 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %loopback49, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %switch = icmp ult i16 %39, 2
  br i1 %switch, label %if.end58, label %sw.epilog48.cleanup_crit_edge

sw.epilog48.cleanup_crit_edge:                    ; preds = %sw.epilog48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end58:                                         ; preds = %sw.epilog48
  %flags60 = getelementptr inbounds %struct._mgslpc_info, ptr %3, i32 0, i32 47, i32 2
  %40 = ptrtoint ptr %flags60 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags60, align 2
  %42 = and i16 %41, 28919
  %43 = trunc i32 %flags.0 to i16
  %conv67 = or i16 %42, %43
  store i16 %conv67, ptr %flags60, align 2
  %conv69 = trunc i16 %39 to i8
  %loopback71 = getelementptr inbounds %struct._mgslpc_info, ptr %3, i32 0, i32 47, i32 1
  %44 = ptrtoint ptr %loopback71 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv69, ptr %loopback71, align 4
  %and72 = and i32 %flags.0, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end58.if.end80_crit_edge, label %if.then74

if.end58.if.end80_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then74:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %new_line to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %new_line, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.end58.if.end80_crit_edge
  %.sink = phi i32 [ %46, %if.then74 ], [ 0, %if.end58.if.end80_crit_edge ]
  %47 = getelementptr inbounds %struct._mgslpc_info, ptr %3, i32 0, i32 47, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %47, align 4
  %netcount = getelementptr inbounds %struct._mgslpc_info, ptr %3, i32 0, i32 57
  %49 = ptrtoint ptr %netcount to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %netcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool81.not = icmp eq i32 %50, 0
  br i1 %tobool81.not, label %if.end80.cleanup_crit_edge, label %if.then82

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %call84 = call ptr @tty_port_tty_get(ptr noundef %3) #12
  call fastcc void @mgslpc_program_hw(ptr noundef %3, ptr noundef %call84)
  call void @tty_kref_put(ptr noundef %call84) #12
  br label %cleanup

sw.default86:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call87 = tail call i32 @hdlc_ioctl(ptr noundef %dev, ptr noundef %ifs) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default86, %if.then82, %if.end80.cleanup_crit_edge, %sw.epilog48.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then11.i.i, %sw.bb29.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call87, %sw.default86 ], [ -105, %if.then7 ], [ -16, %if.end.cleanup_crit_edge ], [ -1, %sw.bb29.cleanup_crit_edge ], [ -22, %if.end36.cleanup_crit_edge ], [ -22, %sw.epilog48.cleanup_crit_edge ], [ 0, %if.then82 ], [ 0, %if.end80.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_line) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlcdev_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %3 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %5 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_aborted_errors, align 8
  %inc3 = add i32 %6, 1
  store i32 %inc3, ptr %tx_aborted_errors, align 8
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %7 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp sgt i32 %7, 4
  br i1 %cmp.i, label %do.end.i, label %if.end.tx_stop.exit_crit_edge

if.end.tx_stop.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name.i) #15
  br label %tx_stop.exit

tx_stop.exit:                                     ; preds = %do.end.i, %if.end.tx_stop.exit_crit_edge
  %tx_timer.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 22
  %call1.i = tail call i32 @del_timer(ptr noundef %tx_timer.i) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 39
  %8 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_enabled.i, align 2
  %tx_active.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %9 = ptrtoint ptr %tx_active.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tx_active.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @startup(ptr noundef %info, ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.3, i32 noundef 1271, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %info, i32 0, i32 11
  %1 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tx_buf = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 9
  %3 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then5, label %if.end4.if.end19_crit_edge

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then5:                                         ; preds = %if.end4
  %call6 = tail call i32 @get_zeroed_page(i32 noundef 3264) #12
  %5 = inttoptr i32 %call6 to ptr
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool9.not = icmp eq i32 %call6, 0
  br i1 %tobool9.not, label %do.end13, label %if.then5.if.end19_crit_edge

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %device_name15 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.3, i32 noundef 1281, ptr noundef %device_name15) #15
  br label %cleanup

if.end19:                                         ; preds = %if.then5.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  %pending_bh = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 30
  %7 = ptrtoint ptr %pending_bh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pending_bh, align 4
  %icount = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 4
  %8 = call ptr @memset(ptr %icount, i32 0, i32 92)
  %tx_timer = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %tx_timer, ptr noundef nonnull @tx_timeout, i32 noundef 0, ptr noundef nonnull @.str.115, ptr noundef nonnull @startup.__key) #12
  %max_frame_size.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 29
  %9 = ptrtoint ptr %max_frame_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_frame_size.i.i, align 4
  %add.i.i = add i32 %10, 8
  %rx_buf_size.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 17
  %11 = ptrtoint ptr %rx_buf_size.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i.i, ptr %rx_buf_size.i.i, align 4
  %mul.i.i = shl i32 %add.i.i, 3
  %rx_buf_total_size.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 14
  %12 = tail call i32 @llvm.smin.i32(i32 %mul.i.i, i32 65536) #12
  %13 = ptrtoint ptr %rx_buf_total_size.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_buf_total_size.i.i, align 4
  %div.i.i = sdiv i32 %12, %add.i.i
  %rx_buf_count.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 18
  %14 = ptrtoint ptr %rx_buf_count.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.i.i, ptr %rx_buf_count.i.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #18
  %rx_buf.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 13
  %15 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i.i, ptr %rx_buf.i.i, align 4
  %cmp8.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp8.i.i, label %if.end19.do.end.i_crit_edge, label %if.end8.i.i.i.i

if.end19.do.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end8.i.i.i.i:                                  ; preds = %if.end19
  %16 = ptrtoint ptr %max_frame_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_frame_size.i.i, align 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #18
  %flag_buf.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 52
  %18 = ptrtoint ptr %flag_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i.i.i, ptr %flag_buf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then14.i.i, label %if.end17.i.i

if.then14.i.i:                                    ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_buf.i.i, align 4
  tail call void @kfree(ptr noundef %20) #12
  %21 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rx_buf.i.i, align 4
  br label %do.end.i

if.end17.i.i:                                     ; preds = %if.end8.i.i.i.i
  %rx_put.i.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 15
  %22 = ptrtoint ptr %rx_put.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rx_put.i.i.i, align 4
  %rx_get.i.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 16
  %23 = ptrtoint ptr %rx_get.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rx_get.i.i.i, align 4
  %rx_frame_count.i.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 19
  %24 = ptrtoint ptr %rx_frame_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rx_frame_count.i.i.i, align 4
  %25 = ptrtoint ptr %rx_buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buf_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp9.i.i.i = icmp sgt i32 %26, 0
  br i1 %cmp9.i.i.i, label %if.end17.i.i.for.body.i.i.i_crit_edge, label %if.end17.i.i.if.then25_crit_edge

if.end17.i.i.if.then25_crit_edge:                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.end17.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end17.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end17.i.i.for.body.i.i.i_crit_edge
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end17.i.i.for.body.i.i.i_crit_edge ]
  %27 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_buf.i.i, align 4
  %29 = ptrtoint ptr %rx_buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_buf_size.i.i, align 4
  %mul.i.i.i = mul i32 %30, %i.010.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %mul.i.i.i
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %status.i.i.i = getelementptr inbounds %struct.RXBUF, ptr %add.ptr.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %status.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %33 = ptrtoint ptr %rx_buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_buf_count.i.i, align 4
  %cmp.i38.i.i = icmp slt i32 %inc.i.i.i, %34
  br i1 %cmp.i38.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.if.then25_crit_edge

for.body.i.i.i.if.then25_crit_edge:               ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

do.end.i:                                         ; preds = %if.then14.i.i, %if.end19.do.end.i_crit_edge
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %device_name.i) #15
  %35 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i.i = icmp sgt i32 %35, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end.i.claim_resources.exit_crit_edge

do.end.i.claim_resources.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %claim_resources.exit

do.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %device_name.i) #15
  br label %claim_resources.exit

claim_resources.exit:                             ; preds = %do.end.i.i, %do.end.i.claim_resources.exit_crit_edge
  %rx_buf.i.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 13
  %36 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_buf.i.i.i, align 4
  tail call void @kfree(ptr noundef %37) #12
  %38 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rx_buf.i.i.i, align 4
  %flag_buf.i.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 52
  %39 = ptrtoint ptr %flag_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %flag_buf.i.i.i, align 4
  tail call void @kfree(ptr noundef %40) #12
  %41 = ptrtoint ptr %flag_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %flag_buf.i.i.i, align 4
  br label %if.then29

if.then25:                                        ; preds = %for.body.i.i.i.if.then25_crit_edge, %if.end17.i.i.if.then25_crit_edge
  %lock.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  tail call fastcc void @reset_device(ptr noundef %info) #12
  %io_base.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %lor.lhs.false.i.i.for.cond.i.i_crit_edge, %if.then25
  %i.0.i.i = phi i32 [ 0, %if.then25 ], [ %add15.i.i, %lor.lhs.false.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i.i)
  %exitcond.not.i.i = icmp eq i32 %i.0.i.i, 7
  br i1 %exitcond.not.i.i, label %register_test.exit.thread.i, label %do.body7.i.i

register_test.exit.thread.i:                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #12
  br label %if.end.i

do.body7.i.i:                                     ; preds = %for.cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !656
  tail call void @arm_heavy_mb() #12
  %arrayidx.i.i = getelementptr [7 x i8], ptr @register_test.patterns, i32 0, i32 %i.0.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 1
  %44 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io_base.i.i, align 4
  %add.i.i59 = add i32 %45, 36
  %and.i.i = and i32 %add.i.i59, 1048575
  %add10.i.i = or i32 %and.i.i, -18874368
  %46 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %43) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !657
  tail call void @arm_heavy_mb() #12
  %add15.i.i = add nuw nsw i32 %i.0.i.i, 1
  %rem.lhs.trunc.i.i = trunc i32 %add15.i.i to i8
  %rem61.i.i = urem i8 %rem.lhs.trunc.i.i, 7
  %rem.zext.i.i = zext i8 %rem61.i.i to i32
  %arrayidx16.i.i = getelementptr [7 x i8], ptr @register_test.patterns, i32 0, i32 %rem.zext.i.i
  %47 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx16.i.i, align 1
  %49 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_base.i.i, align 4
  %add18.i.i = add i32 %50, 37
  %and19.i.i = and i32 %add18.i.i, 1048575
  %add20.i.i = or i32 %and19.i.i, -18874368
  %51 = inttoptr i32 %add20.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #12, !srcloc !628
  %52 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_base.i.i, align 4
  %add23.i.i = add i32 %53, 36
  %and24.i.i = and i32 %add23.i.i, 1048575
  %add25.i.i = or i32 %and24.i.i, -18874368
  %54 = inttoptr i32 %add25.i.i to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !658
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %43)
  %cmp32.not.i.i = icmp eq i8 %55, %43
  br i1 %cmp32.not.i.i, label %lor.lhs.false.i.i, label %do.body7.i.i.register_test.exit.i_crit_edge

do.body7.i.i.register_test.exit.i_crit_edge:      ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %register_test.exit.i

lor.lhs.false.i.i:                                ; preds = %do.body7.i.i
  %56 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_base.i.i, align 4
  %add36.i.i = add i32 %57, 37
  %and37.i.i = and i32 %add36.i.i, 1048575
  %add38.i.i = or i32 %and37.i.i, -18874368
  %58 = inttoptr i32 %add38.i.i to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !659
  %cmp47.not.i.i = icmp eq i8 %59, %48
  br i1 %cmp47.not.i.i, label %lor.lhs.false.i.i.for.cond.i.i_crit_edge, label %lor.lhs.false.i.i.register_test.exit.i_crit_edge

lor.lhs.false.i.i.register_test.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %register_test.exit.i

lor.lhs.false.i.i.for.cond.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

register_test.exit.i:                             ; preds = %lor.lhs.false.i.i.register_test.exit.i_crit_edge, %do.body7.i.i.register_test.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0.i.i)
  %cmp5.i.i = icmp ugt i32 %i.0.i.i, 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #12
  br i1 %cmp5.i.i, label %register_test.exit.i.if.end.i_crit_edge, label %if.then.i

register_test.exit.i.if.end.i_crit_edge:          ; preds = %register_test.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %register_test.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %init_error.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 51
  %60 = ptrtoint ptr %init_error.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %init_error.i, align 4
  %device_name.i60 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %61 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %io_base.i.i, align 4
  %conv1.i = and i32 %62, 65535
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.3, i32 noundef 3773, ptr noundef %device_name.i60, i32 noundef %conv1.i) #15
  br label %if.then29

if.end.i:                                         ; preds = %register_test.exit.i.if.end.i_crit_edge, %register_test.exit.thread.i
  %call2.i33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  tail call fastcc void @reset_device(ptr noundef %info) #12
  %testing_irq.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 50
  %63 = ptrtoint ptr %testing_irq.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %testing_irq.i.i, align 2
  tail call fastcc void @hdlc_mode(ptr noundef %info) #12
  %irq_occurred.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 49
  %64 = ptrtoint ptr %irq_occurred.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %irq_occurred.i.i, align 1
  %imra_value.i.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 24
  %65 = ptrtoint ptr %imra_value.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %imra_value.i.i.i, align 4
  %and.i.i.i = and i16 %66, -2049
  store i16 %and.i.i.i, ptr %imra_value.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !660
  tail call void @arm_heavy_mb() #12
  %67 = ptrtoint ptr %imra_value.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %imra_value.i.i.i, align 4
  %69 = tail call i16 @llvm.bswap.i16(i16 %68) #12
  %70 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_base.i.i, align 4
  %add.i.i.i = add i32 %71, 58
  %and6.i.i.i = and i32 %add.i.i.i, 1048575
  %add7.i.i.i = or i32 %and6.i.i.i, -18874368
  %72 = inttoptr i32 %add7.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %72, i16 %69) #12, !srcloc !633
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !661
  tail call void @arm_heavy_mb() #12
  %73 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %io_base.i.i, align 4
  %add.i34.i = add i32 %74, 35
  %and.i35.i = and i32 %add.i34.i, 1048575
  %add8.i.i = or i32 %and.i35.i, -18874368
  %75 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 0) #12, !srcloc !628
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge, %if.end.i
  %i.0.i.i.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i.i.i, %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge ]
  %76 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %io_base.i.i, align 4
  %add3.i.i.i.i = add i32 %77, 32
  %and.i.i.i.i = and i32 %add3.i.i.i.i, 1048575
  %add4.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %78 = inttoptr i32 %add4.i.i.i.i to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %80 = and i8 %79, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i.i.i.i61 = icmp eq i8 %80, 0
  br i1 %tobool.not.i.i.i.i61, label %while.cond.i.i.i.i.issue_command.exit.i.i_crit_edge, label %while.body.i.i.i.i

while.cond.i.i.i.i.issue_command.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit.i.i

while.body.i.i.i.i:                               ; preds = %while.cond.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #12
  %inc.i.i.i.i = add nuw nsw i32 %i.0.i.i.i.i, 1
  %cmp.i.i.i.i62 = icmp eq i32 %i.0.i.i.i.i, 1000
  br i1 %cmp.i.i.i.i62, label %while.body.i.i.i.i.issue_command.exit.i.i_crit_edge, label %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge

while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i.i

while.body.i.i.i.i.issue_command.exit.i.i_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit.i.i

issue_command.exit.i.i:                           ; preds = %while.body.i.i.i.i.issue_command.exit.i.i_crit_edge, %while.cond.i.i.i.i.issue_command.exit.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %82 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %io_base.i.i, align 4
  %add3.i.i.i = add i32 %83, 32
  %and.i47.i.i = and i32 %add3.i.i.i, 1048575
  %add4.i.i.i = or i32 %and.i47.i.i, -18874368
  %84 = inttoptr i32 %add4.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 16) #12, !srcloc !628
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i33.i) #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %issue_command.exit.i.i
  %dec48.i.i = phi i32 [ 99, %issue_command.exit.i.i ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %85 = ptrtoint ptr %irq_occurred.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %irq_occurred.i.i, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool12.not.i.i = icmp eq i8 %86, 0
  br i1 %tobool12.not.i.i, label %while.body.i.i, label %land.rhs.i.i.irq_test.exit.i_crit_edge

land.rhs.i.i.irq_test.exit.i_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_test.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %call13.i.i = tail call i32 @msleep_interruptible(i32 noundef 10) #12
  %dec.i.i = add nsw i32 %dec48.i.i, -1
  %tobool.not.i.i63 = icmp eq i32 %dec48.i.i, 0
  br i1 %tobool.not.i.i63, label %while.body.i.i.irq_test.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

while.body.i.i.irq_test.exit.i_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_test.exit.i

irq_test.exit.i:                                  ; preds = %while.body.i.i.irq_test.exit.i_crit_edge, %land.rhs.i.i.irq_test.exit.i_crit_edge
  %87 = ptrtoint ptr %testing_irq.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %testing_irq.i.i, align 2
  %call24.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  tail call fastcc void @reset_device(ptr noundef %info) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call24.i.i) #12
  %88 = ptrtoint ptr %irq_occurred.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %irq_occurred.i.i, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool31.i.not.i = icmp eq i8 %89, 0
  br i1 %tobool31.i.not.i, label %if.then4.i, label %if.end14.i

if.then4.i:                                       ; preds = %irq_test.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %init_error5.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 51
  %90 = ptrtoint ptr %init_error5.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3, ptr %init_error5.i, align 4
  %device_name9.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %irq_level.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 46
  %91 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq_level.i, align 4
  %conv12.i = and i32 %92, 65535
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.3, i32 noundef 3780, ptr noundef %device_name9.i, i32 noundef %conv12.i) #15
  br label %if.then29

if.end14.i:                                       ; preds = %irq_test.exit.i
  %93 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp.i = icmp sgt i32 %93, 2
  br i1 %cmp.i, label %do.end18.i, label %if.end14.i.if.end34_crit_edge

if.end14.i.if.end34_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %device_name20.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.3, i32 noundef 3786, ptr noundef %device_name20.i) #15
  br label %if.end34

if.then29:                                        ; preds = %if.then4.i, %if.then.i, %claim_resources.exit
  %call30 = tail call zeroext i1 @capable(i32 noundef 21) #12
  %tobool31.not = icmp ne ptr %tty, null
  %94 = and i1 %tobool31.not, %call30
  br i1 %94, label %if.then32, label %if.then29.if.end33_crit_edge

if.then29.if.end33_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then29.if.end33_crit_edge
  %95 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp.i65 = icmp sgt i32 %95, 2
  br i1 %cmp.i65, label %do.end.i67, label %if.end33.release_resources.exit_crit_edge

if.end33.release_resources.exit_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_resources.exit

do.end.i67:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i66 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %device_name.i66) #15
  br label %release_resources.exit

release_resources.exit:                           ; preds = %do.end.i67, %if.end33.release_resources.exit_crit_edge
  %rx_buf.i.i68 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 13
  %96 = ptrtoint ptr %rx_buf.i.i68 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_buf.i.i68, align 4
  tail call void @kfree(ptr noundef %97) #12
  %98 = ptrtoint ptr %rx_buf.i.i68 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %rx_buf.i.i68, align 4
  %flag_buf.i.i69 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 52
  %99 = ptrtoint ptr %flag_buf.i.i69 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %flag_buf.i.i69, align 4
  tail call void @kfree(ptr noundef %100) #12
  %101 = ptrtoint ptr %flag_buf.i.i69 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %flag_buf.i.i69, align 4
  br label %cleanup

if.end34:                                         ; preds = %do.end18.i, %if.end14.i.if.end34_crit_edge
  tail call fastcc void @mgslpc_change_params(ptr noundef %info, ptr noundef %tty)
  %tobool35.not = icmp eq ptr %tty, null
  br i1 %tobool35.not, label %if.end34.if.end38_crit_edge, label %if.then36

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %flags37 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags37) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %iflags.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %release_resources.exit, %do.end13, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %release_resources.exit ], [ 0, %if.end38 ], [ -12, %do.end13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mgslpc_program_hw(ptr noundef %info, ptr noundef readonly %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp.i = icmp sgt i32 %0, 4
  br i1 %cmp.i, label %do.end.i, label %entry.rx_stop.exit_crit_edge

entry.rx_stop.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_stop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.3, i32 noundef 3249, ptr noundef %device_name.i) #15
  br label %rx_stop.exit

rx_stop.exit:                                     ; preds = %do.end.i, %entry.rx_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !662
  tail call void @arm_heavy_mb() #12
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %1 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %2, 34
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add3.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !663
  %5 = and i8 %4, -9
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_base.i, align 4
  %add10.i = add i32 %7, 34
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %8 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %5) #12, !srcloc !628
  %rx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 37
  %9 = ptrtoint ptr %rx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rx_enabled.i, align 4
  %rx_overflow.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 38
  %10 = ptrtoint ptr %rx_overflow.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %rx_overflow.i, align 1
  %11 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i48 = icmp sgt i32 %11, 4
  br i1 %cmp.i48, label %do.end.i51, label %rx_stop.exit.tx_stop.exit_crit_edge

rx_stop.exit.tx_stop.exit_crit_edge:              ; preds = %rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit

do.end.i51:                                       ; preds = %rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i49 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name.i49) #15
  br label %tx_stop.exit

tx_stop.exit:                                     ; preds = %do.end.i51, %rx_stop.exit.tx_stop.exit_crit_edge
  %tx_timer.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 22
  %call1.i = tail call i32 @del_timer(ptr noundef %tx_timer.i) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 39
  %12 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %tx_enabled.i, align 2
  %tx_active.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %13 = ptrtoint ptr %tx_active.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %tx_active.i, align 1
  %tx_get = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 11
  %14 = ptrtoint ptr %tx_get to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_get, align 4
  %tx_put = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 10
  %15 = ptrtoint ptr %tx_put to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_put, align 4
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 12
  %16 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tx_count, align 4
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp5 = icmp eq i32 %18, 2
  br i1 %cmp5, label %tx_stop.exit.if.then_crit_edge, label %lor.lhs.false

tx_stop.exit.if.then_crit_edge:                   ; preds = %tx_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %tx_stop.exit
  %netcount = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 57
  %19 = ptrtoint ptr %netcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %netcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %tx_stop.exit.if.then_crit_edge
  tail call fastcc void @hdlc_mode(ptr noundef %info)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %imra_value.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 24
  %21 = ptrtoint ptr %imra_value.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %imra_value.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !635
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %imra_value.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %imra_value.i.i, align 4
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #12
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_base.i, align 4
  %add.i.i = add i32 %26, 58
  %and.i.i = and i32 %add.i.i, 1048575
  %add6.i.i = or i32 %and.i.i, -18874368
  %27 = inttoptr i32 %add6.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %24) #12, !srcloc !633
  %imrb_value.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 25
  %28 = ptrtoint ptr %imrb_value.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %imrb_value.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !632
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %imrb_value.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %imrb_value.i.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #12
  %32 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_base.i, align 4
  %add15.i.i = add i32 %33, 122
  %and16.i.i = and i32 %add15.i.i, 1048575
  %add17.i.i = or i32 %and16.i.i, -18874368
  %34 = inttoptr i32 %add17.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #12, !srcloc !633
  %pim_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 26
  %35 = ptrtoint ptr %pim_value.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %pim_value.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !664
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %pim_value.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pim_value.i, align 4
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_base.i, align 4
  %add.i52 = add i32 %39, 61
  %and.i53 = and i32 %add.i52, 1048575
  %add3.i54 = or i32 %and.i53, -18874368
  %40 = inttoptr i32 %add3.i54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %37) #12, !srcloc !628
  %loopback.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 1
  %41 = ptrtoint ptr %loopback.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %loopback.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  %spec.select.i = select i1 %tobool.not.i, i8 6, i8 7
  %serial_signals.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %43 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %serial_signals.i, align 4
  %45 = shl i8 %44, 1
  %46 = and i8 %45, 64
  %47 = or i8 %46, %spec.select.i
  %48 = xor i8 %47, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !665
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %io_base.i, align 4
  %add19.i = add i32 %50, 34
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %51 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %48) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !666
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %io_base.i, align 4
  %add27.i = add i32 %53, 44
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %54 = inttoptr i32 %add29.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 -125) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !667
  tail call void @arm_heavy_mb() #12
  %55 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %io_base.i, align 4
  %add35.i = add i32 %56, 45
  %and36.i = and i32 %add35.i, 1048575
  %add37.i = or i32 %and36.i, -18874368
  %57 = inttoptr i32 %add37.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 31) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !668
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %io_base.i, align 4
  %add43.i = add i32 %59, 46
  %and44.i = and i32 %add43.i, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %60 = inttoptr i32 %add45.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 16) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !669
  tail call void @arm_heavy_mb() #12
  %61 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %io_base.i, align 4
  %add51.i = add i32 %62, 47
  %and52.i = and i32 %add51.i, 1048575
  %add53.i = or i32 %and52.i, -18874368
  %63 = inttoptr i32 %add53.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 0) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !670
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_base.i, align 4
  %add59.i = add i32 %65, 63
  %and60.i = and i32 %add59.i, 1048575
  %add61.i = or i32 %and60.i, -18874368
  %66 = inttoptr i32 %add61.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 80) #12, !srcloc !628
  %data_rate.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 9
  %67 = ptrtoint ptr %data_rate.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_rate.i, align 4
  %mul.i = shl i32 %68, 4
  tail call fastcc void @mgslpc_set_rate(ptr noundef %info, i8 noundef zeroext 0, i32 noundef %mul.i) #12
  %data_bits.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 10
  %69 = ptrtoint ptr %data_bits.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %70)
  %cmp.not.i = icmp ne i8 %70, 8
  %val.2.i = zext i1 %cmp.not.i to i8
  %stop_bits.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 11
  %71 = ptrtoint ptr %stop_bits.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %stop_bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp74.not.i = icmp eq i8 %72, 1
  %73 = or i8 %val.2.i, 32
  %val.3.i = select i1 %cmp74.not.i, i8 %val.2.i, i8 %73
  %parity.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 12
  %74 = ptrtoint ptr %parity.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %parity.i, align 2
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %75, label %if.else.i [
    i8 0, label %if.else.do.body103.i_crit_edge
    i8 2, label %if.then94.i
  ]

if.else.do.body103.i_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103.i

if.then94.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %77 = or i8 %val.3.i, 12
  br label %do.body103.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %78 = or i8 %val.3.i, 20
  br label %do.body103.i

do.body103.i:                                     ; preds = %if.else.i, %if.then94.i, %if.else.do.body103.i_crit_edge
  %val.4.i = phi i8 [ %77, %if.then94.i ], [ %78, %if.else.i ], [ %val.3.i, %if.else.do.body103.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !671
  tail call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %io_base.i, align 4
  %add107.i = add i32 %80, 39
  %and108.i = and i32 %add107.i, 1048575
  %add109.i = or i32 %and108.i, -18874368
  %81 = inttoptr i32 %add109.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 %val.4.i) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !672
  tail call void @arm_heavy_mb() #12
  %82 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %io_base.i, align 4
  %add115.i = add i32 %83, 40
  %and116.i = and i32 %add115.i, 1048575
  %add117.i = or i32 %and116.i, -18874368
  %84 = inttoptr i32 %add117.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 92) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !673
  tail call void @arm_heavy_mb() #12
  %85 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_base.i, align 4
  %add123.i = add i32 %86, 53
  %and124.i = and i32 %add123.i, 1048575
  %add125.i = or i32 %and124.i, -18874368
  %87 = inttoptr i32 %add125.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 0) #12, !srcloc !628
  %flags.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 2
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %flags.i, align 2
  %90 = trunc i16 %89 to i8
  %91 = lshr i8 %90, 1
  %92 = and i8 %91, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !674
  tail call void @arm_heavy_mb() #12
  %93 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %io_base.i, align 4
  %add140.i = add i32 %94, 43
  %and141.i = and i32 %add140.i, 1048575
  %add142.i = or i32 %and141.i, -18874368
  %95 = inttoptr i32 %add142.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 %92) #12, !srcloc !628
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags.i, align 2
  %98 = and i16 %97, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool148.not.i = icmp eq i16 %98, 0
  br i1 %tobool148.not.i, label %do.body103.i.do.body151.i_crit_edge, label %if.then149.i

do.body103.i.do.body151.i_crit_edge:              ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151.i

if.then149.i:                                     ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %imra_value.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %imra_value.i.i, align 4
  %and.i273.i = and i16 %100, -1025
  store i16 %and.i273.i, ptr %imra_value.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !660
  tail call void @arm_heavy_mb() #12
  %101 = ptrtoint ptr %imra_value.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %imra_value.i.i, align 4
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #12
  %104 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %io_base.i, align 4
  %add.i275.i = add i32 %105, 58
  %and6.i.i = and i32 %add.i275.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %106 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %106, i16 %103) #12, !srcloc !633
  br label %do.body151.i

do.body151.i:                                     ; preds = %if.then149.i, %do.body103.i.do.body151.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !675
  tail call void @arm_heavy_mb() #12
  %107 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %io_base.i, align 4
  %add155.i = add i32 %108, 34
  %and156.i = and i32 %add155.i, 1048575
  %add157.i = or i32 %and156.i, -18874368
  %109 = inttoptr i32 %add157.i to ptr
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %109) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !676
  %111 = or i8 %110, 8
  %112 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %io_base.i, align 4
  %add164.i = add i32 %113, 34
  %and165.i = and i32 %add164.i, 1048575
  %add166.i = or i32 %and165.i, -18874368
  %114 = inttoptr i32 %add166.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 %111) #12, !srcloc !628
  tail call fastcc void @enable_auxclk(ptr noundef %info) #12
  %115 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %flags.i, align 2
  %117 = and i16 %116, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool172.not.i = icmp eq i16 %117, 0
  br i1 %tobool172.not.i, label %do.body194.i, label %if.then173.i

if.then173.i:                                     ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %imrb_value.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %imrb_value.i.i, align 2
  %and11.i.i = and i16 %119, -1025
  store i16 %and11.i.i, ptr %imrb_value.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !677
  tail call void @arm_heavy_mb() #12
  %120 = ptrtoint ptr %imrb_value.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %imrb_value.i.i, align 2
  %122 = tail call i16 @llvm.bswap.i16(i16 %121) #12
  %123 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %io_base.i, align 4
  %add17.i277.i = add i32 %124, 122
  %and18.i.i = and i32 %add17.i277.i, 1048575
  %add19.i.i = or i32 %and18.i.i, -18874368
  %125 = inttoptr i32 %add19.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %125, i16 %122) #12, !srcloc !633
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !678
  tail call void @arm_heavy_mb() #12
  %126 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %io_base.i, align 4
  %add179.i = add i32 %127, 60
  %and180.i = and i32 %add179.i, 1048575
  %add181.i = or i32 %and180.i, -18874368
  %128 = inttoptr i32 %add181.i to ptr
  %129 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %128) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !679
  %130 = or i8 %129, 8
  %131 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %io_base.i, align 4
  %add189.i = add i32 %132, 60
  %and190.i = and i32 %add189.i, 1048575
  %add191.i = or i32 %and190.i, -18874368
  %133 = inttoptr i32 %add191.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 %130) #12, !srcloc !628
  br label %if.end213.i

do.body194.i:                                     ; preds = %do.body151.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !680
  tail call void @arm_heavy_mb() #12
  %134 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %io_base.i, align 4
  %add199.i = add i32 %135, 60
  %and200.i = and i32 %add199.i, 1048575
  %add201.i = or i32 %and200.i, -18874368
  %136 = inttoptr i32 %add201.i to ptr
  %137 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %136) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !681
  %138 = and i8 %137, -9
  %139 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %io_base.i, align 4
  %add209.i = add i32 %140, 60
  %and210.i = and i32 %add209.i, 1048575
  %add211.i = or i32 %and210.i, -18874368
  %141 = inttoptr i32 %add211.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %141, i8 %138) #12, !srcloc !628
  br label %if.end213.i

if.end213.i:                                      ; preds = %do.body194.i, %if.then173.i
  %142 = ptrtoint ptr %imra_value.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %imra_value.i.i, align 4
  %and.i279.i = and i16 %143, 24126
  store i16 %and.i279.i, ptr %imra_value.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !660
  tail call void @arm_heavy_mb() #12
  %144 = ptrtoint ptr %imra_value.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %imra_value.i.i, align 4
  %146 = tail call i16 @llvm.bswap.i16(i16 %145) #12
  %147 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %io_base.i, align 4
  %add.i281.i = add i32 %148, 58
  %and6.i282.i = and i32 %add.i281.i, 1048575
  %add7.i283.i = or i32 %and6.i282.i, -18874368
  %149 = inttoptr i32 %add7.i283.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %149, i16 %146) #12, !srcloc !633
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.end213.i
  %i.0.i.i.i = phi i32 [ 0, %if.end213.i ], [ %inc.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %150 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %io_base.i, align 4
  %add3.i.i.i = add i32 %151, 32
  %and.i.i.i = and i32 %add3.i.i.i, 1048575
  %add4.i.i.i = or i32 %and.i.i.i, -18874368
  %152 = inttoptr i32 %add4.i.i.i to ptr
  %153 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %152) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %154 = and i8 %153, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i.i.i = icmp eq i8 %154, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.issue_command.exit.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.issue_command.exit.i_crit_edge:  ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748) #12
  %inc.i.i.i = add nuw nsw i32 %i.0.i.i.i, 1
  %cmp.i.i.i = icmp eq i32 %i.0.i.i.i, 1000
  br i1 %cmp.i.i.i, label %while.body.i.i.i.issue_command.exit.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i

while.body.i.i.i.issue_command.exit.i_crit_edge:  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit.i

issue_command.exit.i:                             ; preds = %while.body.i.i.i.issue_command.exit.i_crit_edge, %while.cond.i.i.i.issue_command.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %156 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %io_base.i, align 4
  %add3.i.i = add i32 %157, 32
  %and.i284.i = and i32 %add3.i.i, 1048575
  %add4.i.i = or i32 %and.i284.i, -18874368
  %158 = inttoptr i32 %add4.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 65) #12, !srcloc !628
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %issue_command.exit.i
  %i.0.i.i = phi i32 [ 0, %issue_command.exit.i ], [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %159 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %io_base.i, align 4
  %add3.i286.i = add i32 %160, 32
  %and.i287.i = and i32 %add3.i286.i, 1048575
  %add4.i288.i = or i32 %and.i287.i, -18874368
  %161 = inttoptr i32 %add4.i288.i to ptr
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %161) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %163 = and i8 %162, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i.i = icmp eq i8 %163, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.async_mode.exit_crit_edge, label %while.body.i.i

while.cond.i.i.async_mode.exit_crit_edge:         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %async_mode.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %cmp.i.i = icmp eq i32 %i.0.i.i, 1000
  br i1 %cmp.i.i, label %while.body.i.i.async_mode.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.body.i.i.async_mode.exit_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %async_mode.exit

async_mode.exit:                                  ; preds = %while.body.i.i.async_mode.exit_crit_edge, %while.cond.i.i.async_mode.exit_crit_edge
  %165 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %io_base.i, align 4
  %add217.i = add i32 %166, 58
  %and218.i = and i32 %add217.i, 1048575
  %add219.i = or i32 %and218.i, -18874368
  %167 = inttoptr i32 %add219.i to ptr
  %168 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %167) #12, !srcloc !630
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !682
  br label %if.end

if.end:                                           ; preds = %async_mode.exit, %if.then
  tail call fastcc void @set_signals(ptr noundef %info)
  %dcd_chkcount = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 33
  %imrb_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 25
  %169 = call ptr @memset(ptr %dcd_chkcount, i32 0, i32 16)
  %170 = ptrtoint ptr %imrb_value.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %imrb_value.i, align 2
  %and11.i55 = and i16 %171, -1029
  store i16 %and11.i55, ptr %imrb_value.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !677
  tail call void @arm_heavy_mb() #12
  %172 = ptrtoint ptr %imrb_value.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %imrb_value.i, align 2
  %174 = tail call i16 @llvm.bswap.i16(i16 %173) #12
  %175 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %io_base.i, align 4
  %add17.i = add i32 %176, 122
  %and18.i = and i32 %add17.i, 1048575
  %add19.i56 = or i32 %and18.i, -18874368
  %177 = inttoptr i32 %add19.i56 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %177, i16 %174) #12, !srcloc !633
  %pim_value = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 26
  %178 = ptrtoint ptr %pim_value to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %pim_value, align 4
  %180 = and i8 %179, -7
  store i8 %180, ptr %pim_value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !683
  tail call void @arm_heavy_mb() #12
  %181 = ptrtoint ptr %pim_value to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %pim_value, align 4
  %183 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %io_base.i, align 4
  %add = add i32 %184, 61
  %and13 = and i32 %add, 1048575
  %add14 = or i32 %and13, -18874368
  %185 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %185, i8 %182) #12, !srcloc !628
  %serial_signals.i58 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %186 = ptrtoint ptr %serial_signals.i58 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %serial_signals.i58, align 4
  %188 = and i8 %187, -96
  store i8 %188, ptr %serial_signals.i58, align 4
  %189 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %io_base.i, align 4
  %add.i60 = add i32 %190, 116
  %and2.i = and i32 %add.i60, 1048575
  %add3.i61 = or i32 %and2.i, -18874368
  %191 = inttoptr i32 %add3.i61 to ptr
  %192 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %191) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %192)
  %tobool.not.i62 = icmp sgt i8 %192, -1
  br i1 %tobool.not.i62, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %193 = ptrtoint ptr %serial_signals.i58 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %serial_signals.i58, align 4
  %195 = or i8 %194, 1
  store i8 %195, ptr %serial_signals.i58, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %196 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %io_base.i, align 4
  %add12.i63 = add i32 %197, 96
  %and13.i = and i32 %add12.i63, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %198 = inttoptr i32 %add14.i to ptr
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %198) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %200 = and i8 %199, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool20.not.i = icmp eq i8 %200, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then21.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %201 = ptrtoint ptr %serial_signals.i58 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %serial_signals.i58, align 4
  %203 = or i8 %202, 16
  store i8 %203, ptr %serial_signals.i58, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end.i.if.end26.i_crit_edge
  %204 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %io_base.i, align 4
  %add29.i64 = add i32 %205, 60
  %and30.i = and i32 %add29.i64, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %206 = inttoptr i32 %add31.i to ptr
  %207 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %206) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i = zext i8 %207 to i32
  %and36.i65 = and i32 %conv35.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i65)
  %tobool37.not.i = icmp eq i32 %and36.i65, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end26.i.if.end43.i_crit_edge

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %208 = ptrtoint ptr %serial_signals.i58 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %serial_signals.i58, align 4
  %210 = or i8 %209, 4
  store i8 %210, ptr %serial_signals.i58, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end26.i.if.end43.i_crit_edge
  %and45.i = and i32 %conv35.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.get_signals.exit_crit_edge

if.end43.i.get_signals.exit_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %211 = ptrtoint ptr %serial_signals.i58 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %serial_signals.i58, align 4
  %213 = or i8 %212, 64
  store i8 %213, ptr %serial_signals.i58, align 4
  br label %get_signals.exit

get_signals.exit:                                 ; preds = %if.then47.i, %if.end43.i.get_signals.exit_crit_edge
  %netcount16 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 57
  %214 = ptrtoint ptr %netcount16 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %netcount16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool17.not = icmp eq i32 %215, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %get_signals.exit.if.then22_crit_edge

get_signals.exit.if.then22_crit_edge:             ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

lor.lhs.false18:                                  ; preds = %get_signals.exit
  %tobool19.not = icmp eq ptr %tty, null
  br i1 %tobool19.not, label %lor.lhs.false18.if.end23_crit_edge, label %land.lhs.true

lor.lhs.false18.if.end23_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false18
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %216 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %c_cflag, align 4
  %and20 = and i32 %217, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.then22_crit_edge

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true.if.then22_crit_edge, %get_signals.exit.if.then22_crit_edge
  tail call fastcc void @rx_start(ptr noundef %info)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true.if.end23_crit_edge, %lor.lhs.false18.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -840
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr i8, ptr %t, i32 192
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.3, i32 noundef 3832, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_active = getelementptr i8, ptr %t, i32 179
  %1 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end.do.body6_crit_edge, label %land.lhs.true

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

land.lhs.true:                                    ; preds = %if.end
  %params = getelementptr i8, ptr %t, i32 228
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %if.then3, label %land.lhs.true.do.body6_crit_edge

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %txtimeout = getelementptr i8, ptr %t, i32 -196
  %5 = ptrtoint ptr %txtimeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txtimeout, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %txtimeout, align 4
  br label %do.body6

do.body6:                                         ; preds = %if.then3, %land.lhs.true.do.body6_crit_edge, %if.end.do.body6_crit_edge
  %lock = getelementptr i8, ptr %t, i32 60
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %7 = ptrtoint ptr %tx_active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tx_active, align 1
  %tx_get = getelementptr i8, ptr %t, i32 -140
  %8 = ptrtoint ptr %tx_get to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_get, align 4
  %tx_put = getelementptr i8, ptr %t, i32 -144
  %9 = ptrtoint ptr %tx_put to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_put, align 4
  %tx_count = getelementptr i8, ptr %t, i32 -136
  %10 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tx_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #12
  %netcount = getelementptr i8, ptr %t, i32 316
  %11 = ptrtoint ptr %netcount to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %netcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %do.body6
  %netdev.i = getelementptr i8, ptr %t, i32 364
  %13 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then18.if.end20_crit_edge, label %if.then.i

if.then18.if.end20_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %16) #12
  br label %if.end20

if.else:                                          ; preds = %do.body6
  %call19 = tail call ptr @tty_port_tty_get(ptr noundef %add.ptr) #12
  %19 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp.i = icmp sgt i32 %19, 3
  br i1 %cmp.i, label %do.end.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr i8, ptr %t, i32 192
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %device_name.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.else.if.end.i_crit_edge
  %tobool.not.i = icmp eq ptr %call19, null
  br i1 %tobool.not.i, label %if.end.i.bh_transmit.exit_crit_edge, label %if.then1.i

if.end.i.bh_transmit.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bh_transmit.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_wakeup(ptr noundef nonnull %call19) #12
  br label %bh_transmit.exit

bh_transmit.exit:                                 ; preds = %if.then1.i, %if.end.i.bh_transmit.exit_crit_edge
  tail call void @tty_kref_put(ptr noundef %call19) #12
  br label %if.end20

if.end20:                                         ; preds = %bh_transmit.exit, %if.then.i, %if.then18.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mgslpc_change_params(ptr noundef %info, ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tty, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.3, i32 noundef 1409, ptr noundef %device_name) #15
  br label %if.end2

if.end2:                                          ; preds = %do.end, %if.end.if.end2_crit_edge
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %1 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %c_cflag, align 4
  %and = and i32 %2, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %serial_signals6 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %3 = ptrtoint ptr %serial_signals6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %serial_signals6, align 4
  %5 = and i8 %4, 95
  %masksel = select i1 %tobool3.not, i8 0, i8 -96
  %.sink128 = or i8 %5, %masksel
  store i8 %.sink128, ptr %serial_signals6, align 4
  %call11 = tail call zeroext i8 @tty_get_char_size(i32 noundef %2) #12
  %data_bits = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 10
  %6 = ptrtoint ptr %data_bits to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call11, ptr %data_bits, align 4
  %and12 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %.sink = select i1 %tobool13.not, i8 1, i8 2
  %7 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 11
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %7, align 1
  %parity = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 12
  %and21 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end2.if.end39_crit_edge, label %if.then23

if.end2.if.end39_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then23:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %and24 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %. = select i1 %tobool25.not, i8 1, i8 2
  %and33 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %spec.store.select123 = select i1 %tobool34.not, i8 %., i8 3
  br label %if.end39

if.end39:                                         ; preds = %if.then23, %if.end2.if.end39_crit_edge
  %storemerge = phi i8 [ %spec.store.select123, %if.then23 ], [ 0, %if.end2.if.end39_crit_edge ]
  %9 = ptrtoint ptr %parity to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %parity, align 2
  %conv42 = zext i8 %call11 to i32
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %7, align 1
  %conv45 = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv45, %conv42
  %data_rate = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 9
  %12 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 460801, i32 %13)
  %cmp48 = icmp ult i32 %13, 460801
  br i1 %cmp48, label %if.end54, label %if.end39.if.then58_crit_edge

if.end39.if.then58_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end54:                                         ; preds = %if.end39
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #12
  %14 = ptrtoint ptr %data_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %data_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.end54.if.end61_crit_edge, label %if.end54.if.then58_crit_edge

if.end54.if.then58_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then58:                                        ; preds = %if.end54.if.then58_crit_edge, %if.end39.if.then58_crit_edge
  %15 = phi i32 [ %call.i, %if.end54.if.then58_crit_edge ], [ %13, %if.end39.if.then58_crit_edge ]
  %16 = mul nuw nsw i32 %add, 3200
  %mul = add nuw nsw i32 %16, 3200
  %div = udiv i32 %mul, %15
  %timeout = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %timeout, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end54.if.end61_crit_edge
  %timeout62 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 5
  %18 = ptrtoint ptr %timeout62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout62, align 4
  %add63 = add i32 %19, 2
  store i32 %add63, ptr %timeout62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool65 = icmp slt i32 %2, 0
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %info, i32 0, i32 11
  br i1 %tobool65, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %iflags.i) #12
  br label %tty_port_set_cts_flow.exit

if.else.i.i:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %iflags.i) #12
  br label %tty_port_set_cts_flow.exit

tty_port_set_cts_flow.exit:                       ; preds = %if.else.i.i, %if.then.i.i
  %neg = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool68 = icmp eq i32 %neg, 0
  br i1 %tobool68, label %if.then.i.i125, label %if.else.i.i126

if.then.i.i125:                                   ; preds = %tty_port_set_cts_flow.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %iflags.i) #12
  br label %tty_port_set_check_carrier.exit

if.else.i.i126:                                   ; preds = %tty_port_set_cts_flow.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %iflags.i) #12
  br label %tty_port_set_check_carrier.exit

tty_port_set_check_carrier.exit:                  ; preds = %if.else.i.i126, %if.then.i.i125
  %read_status_mask = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 7
  %20 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %read_status_mask, align 4
  %21 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %termios, align 4
  %and70 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %spec.store.select = select i1 %tobool71.not, i8 0, i8 -64
  %23 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.store.select, ptr %read_status_mask, align 4
  %24 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %termios, align 4
  %and80 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %tty_port_set_check_carrier.exit.if.end86_crit_edge, label %if.then82

tty_port_set_check_carrier.exit.if.end86_crit_edge: ; preds = %tty_port_set_check_carrier.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then82:                                        ; preds = %tty_port_set_check_carrier.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ignore_status_mask = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 8
  %26 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ignore_status_mask, align 1
  %28 = or i8 %27, -64
  store i8 %28, ptr %ignore_status_mask, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %tty_port_set_check_carrier.exit.if.end86_crit_edge
  tail call fastcc void @mgslpc_program_hw(ptr noundef %info, ptr noundef nonnull %tty)
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_device(ptr nocapture noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !684
  tail call void @arm_heavy_mb() #12
  %io_base = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 4
  %add = add i32 %1, 44
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -128) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !685
  tail call void @arm_heavy_mb() #12
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base, align 4
  %add5 = add i32 %4, 108
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -128) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !686
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_base, align 4
  %add12 = add i32 %7, 34
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %8 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !687
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_base, align 4
  %add19 = add i32 %10, 98
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %11 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #12, !srcloc !628
  %imra_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 24
  %12 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %imra_value.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !635
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %imra_value.i, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_base, align 4
  %add.i = add i32 %17, 58
  %and.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #12, !srcloc !633
  %imrb_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 25
  %19 = ptrtoint ptr %imrb_value.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %imrb_value.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !632
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %imrb_value.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %imrb_value.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #12
  %23 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_base, align 4
  %add15.i = add i32 %24, 122
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %25 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %22) #12, !srcloc !633
  %pim_value = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 26
  %26 = ptrtoint ptr %pim_value to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %pim_value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !688
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %pim_value to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pim_value, align 4
  %29 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %io_base, align 4
  %add28 = add i32 %30, 61
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %31 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %28) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !689
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_base, align 4
  %add35 = add i32 %33, 62
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %34 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 6) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !690
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_base, align 4
  %add42 = add i32 %36, 57
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %37 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 5) #12, !srcloc !628
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdlc_mode(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %imra_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 24
  %0 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %imra_value.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !635
  tail call void @arm_heavy_mb() #12
  %1 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %imra_value.i, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %5, 58
  %and.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 %3) #12, !srcloc !633
  %imrb_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 25
  %7 = ptrtoint ptr %imrb_value.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %imrb_value.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !632
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %imrb_value.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %imrb_value.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #12
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_base.i, align 4
  %add15.i = add i32 %12, 122
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %13 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #12, !srcloc !633
  %pim_value = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 26
  %14 = ptrtoint ptr %pim_value to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %pim_value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !691
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %pim_value to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pim_value, align 4
  %17 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_base.i, align 4
  %add = add i32 %18, 61
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %19 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #12, !srcloc !628
  %flags = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 2
  %conv4 = zext i16 %21 to i32
  %and5 = and i32 %conv4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %22 = and i32 %conv4, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %22)
  %.not = icmp eq i32 %22, 1280
  br i1 %.not, label %entry.if.end47_crit_edge, label %if.else

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.else:                                          ; preds = %entry
  %23 = and i32 %conv4, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %23)
  %.not483 = icmp eq i32 %23, 2560
  br i1 %.not483, label %if.else.if.end47_crit_edge, label %if.else23

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and20 = and i32 %conv4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %.485 = select i1 %tobool.not, i8 16, i8 22
  %phi.sel = select i1 %not.tobool.not, i1 true, i1 %tobool21.not
  br label %if.end47

if.end47:                                         ; preds = %if.else23, %if.else.if.end47_crit_edge, %entry.if.end47_crit_edge
  %tobool133.not = phi i1 [ true, %entry.if.end47_crit_edge ], [ false, %if.else.if.end47_crit_edge ], [ %tobool21.not, %if.else23 ]
  %cmp114 = phi i1 [ false, %entry.if.end47_crit_edge ], [ false, %if.else.if.end47_crit_edge ], [ %not.tobool.not, %if.else23 ]
  %cmp118 = phi i1 [ true, %entry.if.end47_crit_edge ], [ true, %if.else.if.end47_crit_edge ], [ false, %if.else23 ]
  %cmp122 = phi i1 [ true, %entry.if.end47_crit_edge ], [ true, %if.else.if.end47_crit_edge ], [ %phi.sel, %if.else23 ]
  %clkmode.0 = phi i8 [ 23, %entry.if.end47_crit_edge ], [ 23, %if.else.if.end47_crit_edge ], [ %.485, %if.else23 ]
  %loopback = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 1
  %24 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool49.not = icmp eq i8 %25, 0
  %spec.select441 = select i1 %tobool49.not, i8 -126, i8 -125
  %serial_signals = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %26 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %serial_signals, align 4
  %28 = lshr i8 %27, 3
  %29 = and i8 %28, 4
  %30 = or i8 %29, %spec.select441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !692
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_base.i, align 4
  %add67 = add i32 %32, 34
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %33 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %30) #12, !srcloc !628
  %encoding = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 3
  %34 = ptrtoint ptr %encoding to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %encoding, align 4
  %switch.tableidx = add i8 %35, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %36 = icmp ult i8 %switch.tableidx, 4
  %switch.cast = zext i8 %switch.tableidx to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 -657402680, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %val.2 = select i1 %36, i8 %switch.masked, i8 -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !693
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %io_base.i, align 4
  %add92 = add i32 %38, 44
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %39 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %val.2) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !694
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_base.i, align 4
  %add103 = add i32 %41, 45
  %and104 = and i32 %add103, 1048575
  %add105 = or i32 %and104, -18874368
  %42 = inttoptr i32 %add105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %clkmode.0) #12, !srcloc !628
  %brmerge = or i1 %cmp114, %cmp118
  %brmerge.not = xor i1 %brmerge, true
  %or.cond = select i1 %brmerge.not, i1 %cmp122, i1 false
  %val.3 = select i1 %or.cond, i8 0, i8 32
  %43 = or i8 %val.3, 16
  %spec.select443 = select i1 %tobool133.not, i8 %val.3, i8 %43
  %crc_type = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 6
  %44 = ptrtoint ptr %crc_type to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %crc_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %45)
  %cmp141 = icmp eq i16 %45, 2
  %46 = or i8 %spec.select443, 2
  %val.5 = select i1 %cmp141, i8 %46, i8 %spec.select443
  %47 = ptrtoint ptr %encoding to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp151 = icmp eq i8 %48, 1
  %49 = zext i1 %cmp151 to i8
  %val.6 = or i8 %val.5, %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !695
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %io_base.i, align 4
  %add162 = add i32 %51, 46
  %and163 = and i32 %add162, 1048575
  %add164 = or i32 %and163, -18874368
  %52 = inttoptr i32 %add164 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %val.6) #12, !srcloc !628
  %53 = ptrtoint ptr %crc_type to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %crc_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp169 = icmp eq i16 %54, 0
  %val.7 = select i1 %cmp169, i8 6, i8 0
  %preamble = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 8
  %55 = ptrtoint ptr %preamble to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %preamble, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp178.not = icmp eq i8 %56, 0
  %57 = or i8 %val.7, 32
  %val.8 = select i1 %cmp178.not, i8 %val.7, i8 %57
  %preamble_length = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 7
  %58 = ptrtoint ptr %preamble_length to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %preamble_length, align 4
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.280)
  switch i8 %59, label %if.end47.do.body200_crit_edge [
    i8 1, label %sw.bb187
    i8 2, label %sw.bb191
    i8 3, label %sw.bb195
  ]

if.end47.do.body200_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body200

sw.bb187:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %61 = or i8 %val.8, 64
  br label %do.body200

sw.bb191:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %62 = or i8 %val.8, 64
  br label %do.body200

sw.bb195:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %63 = or i8 %val.8, -64
  br label %do.body200

do.body200:                                       ; preds = %sw.bb195, %sw.bb191, %sw.bb187, %if.end47.do.body200_crit_edge
  %val.9 = phi i8 [ %val.8, %if.end47.do.body200_crit_edge ], [ %63, %sw.bb195 ], [ %62, %sw.bb191 ], [ %61, %sw.bb187 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !696
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %io_base.i, align 4
  %add204 = add i32 %65, 47
  %and205 = and i32 %add204, 1048575
  %add206 = or i32 %and205, -18874368
  %66 = inttoptr i32 %add206 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %val.9) #12, !srcloc !628
  %67 = ptrtoint ptr %preamble to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %preamble, align 1
  %switch.tableidx487 = add i8 %68, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx487)
  %69 = icmp ult i8 %switch.tableidx487, 4
  %switch.cast488 = zext i8 %switch.tableidx487 to i32
  %switch.shiftamt489 = shl nuw nsw i32 %switch.cast488, 3
  %switch.downshift490 = lshr i32 -11163010, %switch.shiftamt489
  %switch.masked491 = trunc i32 %switch.downshift490 to i8
  %val.10 = select i1 %69, i8 %switch.masked491, i8 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !697
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %io_base.i, align 4
  %add220 = add i32 %71, 33
  %and221 = and i32 %add220, 1048575
  %add222 = or i32 %and221, -18874368
  %72 = inttoptr i32 %add222 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %val.10) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !698
  tail call void @arm_heavy_mb() #12
  %73 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %io_base.i, align 4
  %add228 = add i32 %74, 63
  %and229 = and i32 %add228, 1048575
  %add230 = or i32 %and229, -18874368
  %75 = inttoptr i32 %add230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 80) #12, !srcloc !628
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags, align 2
  %78 = and i16 %77, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool236.not = icmp eq i16 %78, 0
  %clock_speed241 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 4
  %79 = ptrtoint ptr %clock_speed241 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %clock_speed241, align 4
  %mul = shl i32 %80, 4
  %mul.sink = select i1 %tobool236.not, i32 %80, i32 %mul
  tail call fastcc void @mgslpc_set_rate(ptr noundef %info, i8 noundef zeroext 0, i32 noundef %mul.sink)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !699
  tail call void @arm_heavy_mb() #12
  %81 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %io_base.i, align 4
  %add247 = add i32 %82, 53
  %and248 = and i32 %add247, 1048575
  %add249 = or i32 %and248, -18874368
  %83 = inttoptr i32 %add249 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 0) #12, !srcloc !628
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %flags, align 2
  %86 = trunc i16 %85 to i8
  %87 = lshr i8 %86, 1
  %88 = and i8 %87, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !700
  tail call void @arm_heavy_mb() #12
  %89 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %io_base.i, align 4
  %add265 = add i32 %90, 43
  %and266 = and i32 %add265, 1048575
  %add267 = or i32 %and266, -18874368
  %91 = inttoptr i32 %add267 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %88) #12, !srcloc !628
  tail call fastcc void @enable_auxclk(ptr noundef %info)
  %92 = ptrtoint ptr %loopback to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %loopback, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool272.not = icmp eq i8 %93, 0
  br i1 %tobool272.not, label %lor.lhs.false273, label %do.body200.if.then276_crit_edge

do.body200.if.then276_crit_edge:                  ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then276

lor.lhs.false273:                                 ; preds = %do.body200
  %testing_irq = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 50
  %94 = ptrtoint ptr %testing_irq to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %testing_irq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool275.not = icmp eq i8 %95, 0
  br i1 %tobool275.not, label %lor.lhs.false273.if.end277_crit_edge, label %lor.lhs.false273.if.then276_crit_edge

lor.lhs.false273.if.then276_crit_edge:            ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then276

lor.lhs.false273.if.end277_crit_edge:             ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end277

if.then276:                                       ; preds = %lor.lhs.false273.if.then276_crit_edge, %do.body200.if.then276_crit_edge
  %96 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %io_base.i, align 4
  %add.i446 = add i32 %97, 45
  %and.i447 = and i32 %add.i446, 1048575
  %add1.i = or i32 %and.i447, -18874368
  %98 = inttoptr i32 %add1.i to ptr
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %98) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !701
  %100 = or i8 %99, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  tail call void @arm_heavy_mb() #12
  %101 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %io_base.i, align 4
  %add5.i = add i32 %102, 45
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %103 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 %100) #12, !srcloc !628
  %104 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %io_base.i, align 4
  %add11.i = add i32 %105, 46
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %106 = inttoptr i32 %add13.i to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !703
  %108 = or i8 %107, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !704
  tail call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %io_base.i, align 4
  %add24.i = add i32 %110, 46
  %and25.i = and i32 %add24.i, 1048575
  %add26.i = or i32 %and25.i, -18874368
  %111 = inttoptr i32 %add26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 %108) #12, !srcloc !628
  %clock_speed.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 4
  %112 = ptrtoint ptr %clock_speed.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %clock_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i = icmp eq i32 %113, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mgslpc_set_rate(ptr noundef %info, i8 noundef zeroext 0, i32 noundef %113) #12
  br label %loopback_enable.exit

if.else.i:                                        ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !705
  tail call void @arm_heavy_mb() #12
  %114 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %io_base.i, align 4
  %add9.i.i = add i32 %115, 52
  %and.i.i = and i32 %add9.i.i, 1048575
  %add10.i.i = or i32 %and.i.i, -18874368
  %116 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %116, i8 64) #12, !srcloc !628
  %117 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %io_base.i, align 4
  %add16.i.i = add i32 %118, 46
  %and17.i.i = and i32 %add16.i.i, 1048575
  %add18.i.i = or i32 %and17.i.i, -18874368
  %119 = inttoptr i32 %add18.i.i to ptr
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %119) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %121 = and i8 %120, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %122 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %io_base.i, align 4
  %add36.i.i = add i32 %123, 46
  %and37.i.i = and i32 %add36.i.i, 1048575
  %add38.i.i = or i32 %and37.i.i, -18874368
  %124 = inttoptr i32 %add38.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 %121) #12, !srcloc !628
  br label %loopback_enable.exit

loopback_enable.exit:                             ; preds = %if.else.i, %if.then.i
  %125 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %io_base.i, align 4
  %add32.i = add i32 %126, 34
  %and33.i = and i32 %add32.i, 1048575
  %add34.i = or i32 %and33.i, -18874368
  %127 = inttoptr i32 %add34.i to ptr
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %127) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  %129 = or i8 %128, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !709
  tail call void @arm_heavy_mb() #12
  %130 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %io_base.i, align 4
  %add45.i = add i32 %131, 34
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %132 = inttoptr i32 %add47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 %129) #12, !srcloc !628
  br label %if.end277

if.end277:                                        ; preds = %loopback_enable.exit, %lor.lhs.false273.if.end277_crit_edge
  %133 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %flags, align 2
  %135 = and i16 %134, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool282.not = icmp eq i16 %135, 0
  br i1 %tobool282.not, label %do.body302, label %if.then283

if.then283:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %imrb_value.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %imrb_value.i, align 2
  %and11.i = and i16 %137, -1025
  store i16 %and11.i, ptr %imrb_value.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !677
  tail call void @arm_heavy_mb() #12
  %138 = ptrtoint ptr %imrb_value.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %imrb_value.i, align 2
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #12
  %141 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %io_base.i, align 4
  %add17.i449 = add i32 %142, 122
  %and18.i = and i32 %add17.i449, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %143 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %143, i16 %140) #12, !srcloc !633
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !710
  tail call void @arm_heavy_mb() #12
  %144 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %io_base.i, align 4
  %add288 = add i32 %145, 60
  %and289 = and i32 %add288, 1048575
  %add290 = or i32 %and289, -18874368
  %146 = inttoptr i32 %add290 to ptr
  %147 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %146) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !711
  %148 = or i8 %147, 8
  %149 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %io_base.i, align 4
  %add297 = add i32 %150, 60
  %and298 = and i32 %add297, 1048575
  %add299 = or i32 %and298, -18874368
  %151 = inttoptr i32 %add299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 %148) #12, !srcloc !628
  br label %if.end321

do.body302:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !712
  tail call void @arm_heavy_mb() #12
  %152 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %io_base.i, align 4
  %add307 = add i32 %153, 60
  %and308 = and i32 %add307, 1048575
  %add309 = or i32 %and308, -18874368
  %154 = inttoptr i32 %add309 to ptr
  %155 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %154) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !713
  %156 = and i8 %155, -9
  %157 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %io_base.i, align 4
  %add317 = add i32 %158, 60
  %and318 = and i32 %add317, 1048575
  %add319 = or i32 %and318, -18874368
  %159 = inttoptr i32 %add319 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %159, i8 %156) #12, !srcloc !628
  br label %if.end321

if.end321:                                        ; preds = %do.body302, %if.then283
  %160 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %imra_value.i, align 4
  %and.i452 = and i16 %161, -12674
  store i16 %and.i452, ptr %imra_value.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !660
  tail call void @arm_heavy_mb() #12
  %162 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %imra_value.i, align 4
  %164 = tail call i16 @llvm.bswap.i16(i16 %163) #12
  %165 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %io_base.i, align 4
  %add.i454 = add i32 %166, 58
  %and6.i455 = and i32 %add.i454, 1048575
  %add7.i456 = or i32 %and6.i455, -18874368
  %167 = inttoptr i32 %add7.i456 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %167, i16 %164) #12, !srcloc !633
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end321
  %i.0.i.i = phi i32 [ 0, %if.end321 ], [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %168 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %io_base.i, align 4
  %add3.i.i = add i32 %169, 32
  %and.i.i458 = and i32 %add3.i.i, 1048575
  %add4.i.i = or i32 %and.i.i458, -18874368
  %170 = inttoptr i32 %add4.i.i to ptr
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %170) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %172 = and i8 %171, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i.i = icmp eq i8 %172, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.issue_command.exit_crit_edge, label %while.body.i.i

while.cond.i.i.issue_command.exit_crit_edge:      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %cmp.i.i = icmp eq i32 %i.0.i.i, 1000
  br i1 %cmp.i.i, label %while.body.i.i.issue_command.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.body.i.i.issue_command.exit_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %issue_command.exit

issue_command.exit:                               ; preds = %while.body.i.i.issue_command.exit_crit_edge, %while.cond.i.i.issue_command.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  tail call void @arm_heavy_mb() #12
  %174 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %io_base.i, align 4
  %add3.i = add i32 %175, 32
  %and.i459 = and i32 %add3.i, 1048575
  %add4.i = or i32 %and.i459, -18874368
  %176 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %176, i8 65) #12, !srcloc !628
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %issue_command.exit
  %i.0.i = phi i32 [ 0, %issue_command.exit ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %177 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %io_base.i, align 4
  %add3.i461 = add i32 %178, 32
  %and.i462 = and i32 %add3.i461, 1048575
  %add4.i463 = or i32 %and.i462, -18874368
  %179 = inttoptr i32 %add4.i463 to ptr
  %180 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %179) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  %181 = and i8 %180, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i464 = icmp eq i8 %181, 0
  br i1 %tobool.not.i464, label %while.cond.i.wait_command_complete.exit_crit_edge, label %while.body.i

while.cond.i.wait_command_complete.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_command_complete.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %182(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %cmp.i = icmp eq i32 %i.0.i, 1000
  br i1 %cmp.i, label %while.body.i.wait_command_complete.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.wait_command_complete.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_command_complete.exit

wait_command_complete.exit:                       ; preds = %while.body.i.wait_command_complete.exit_crit_edge, %while.cond.i.wait_command_complete.exit_crit_edge
  %183 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %io_base.i, align 4
  %add325 = add i32 %184, 58
  %and326 = and i32 %add325, 1048575
  %add327 = or i32 %and326, -18874368
  %185 = inttoptr i32 %add327 to ptr
  %186 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %185) #12, !srcloc !630
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !714
  %testing_irq331 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 50
  %187 = ptrtoint ptr %testing_irq331 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %testing_irq331, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool332.not = icmp eq i8 %188, 0
  br i1 %tobool332.not, label %do.body334, label %wait_command_complete.exit.if.end353_crit_edge

wait_command_complete.exit.if.end353_crit_edge:   ; preds = %wait_command_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end353

do.body334:                                       ; preds = %wait_command_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !715
  tail call void @arm_heavy_mb() #12
  %189 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %io_base.i, align 4
  %add339 = add i32 %190, 44
  %and340 = and i32 %add339, 1048575
  %add341 = or i32 %and340, -18874368
  %191 = inttoptr i32 %add341 to ptr
  %192 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %191) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !716
  %193 = and i8 %192, -65
  %194 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %io_base.i, align 4
  %add349 = add i32 %195, 44
  %and350 = and i32 %add349, 1048575
  %add351 = or i32 %and350, -18874368
  %196 = inttoptr i32 %add351 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %196, i8 %193) #12, !srcloc !628
  br label %if.end353

if.end353:                                        ; preds = %do.body334, %wait_command_complete.exit.if.end353_crit_edge
  %idle_mode.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 42
  %197 = ptrtoint ptr %idle_mode.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %idle_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp.i465 = icmp eq i32 %198, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %199 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %io_base.i, align 4
  %add.i467 = add i32 %200, 45
  %and.i468 = and i32 %add.i467, 1048575
  %add1.i469 = or i32 %and.i468, -18874368
  %201 = inttoptr i32 %add1.i469 to ptr
  %202 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %201) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp.i465, label %do.body.i, label %do.body9.i

do.body.i:                                        ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #14
  %203 = or i8 %202, 8
  %204 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %io_base.i, align 4
  %add5.i470 = add i32 %205, 45
  %and6.i471 = and i32 %add5.i470, 1048575
  %add7.i472 = or i32 %and6.i471, -18874368
  %206 = inttoptr i32 %add7.i472 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 %203) #12, !srcloc !628
  br label %tx_set_idle.exit

do.body9.i:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #14
  %207 = and i8 %202, -9
  %208 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %io_base.i, align 4
  %add23.i = add i32 %209, 45
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %210 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %210, i8 %207) #12, !srcloc !628
  br label %tx_set_idle.exit

tx_set_idle.exit:                                 ; preds = %do.body9.i, %do.body.i
  %211 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %211)
  %cmp.i473 = icmp sgt i32 %211, 4
  br i1 %cmp.i473, label %do.end.i, label %tx_set_idle.exit.tx_stop.exit_crit_edge

tx_set_idle.exit.tx_stop.exit_crit_edge:          ; preds = %tx_set_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit

do.end.i:                                         ; preds = %tx_set_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name.i) #15
  br label %tx_stop.exit

tx_stop.exit:                                     ; preds = %do.end.i, %tx_set_idle.exit.tx_stop.exit_crit_edge
  %tx_timer.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 22
  %call1.i = tail call i32 @del_timer(ptr noundef %tx_timer.i) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 39
  %212 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %tx_enabled.i, align 2
  %tx_active.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %213 = ptrtoint ptr %tx_active.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %tx_active.i, align 1
  %214 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %214)
  %cmp.i474 = icmp sgt i32 %214, 4
  br i1 %cmp.i474, label %do.end.i477, label %tx_stop.exit.rx_stop.exit_crit_edge

tx_stop.exit.rx_stop.exit_crit_edge:              ; preds = %tx_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_stop.exit

do.end.i477:                                      ; preds = %tx_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i475 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i476 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.3, i32 noundef 3249, ptr noundef %device_name.i475) #15
  br label %rx_stop.exit

rx_stop.exit:                                     ; preds = %do.end.i477, %tx_stop.exit.rx_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !662
  tail call void @arm_heavy_mb() #12
  %215 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %io_base.i, align 4
  %add.i479 = add i32 %216, 34
  %and.i480 = and i32 %add.i479, 1048575
  %add3.i481 = or i32 %and.i480, -18874368
  %217 = inttoptr i32 %add3.i481 to ptr
  %218 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %217) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !663
  %219 = and i8 %218, -9
  %220 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %io_base.i, align 4
  %add10.i = add i32 %221, 34
  %and11.i482 = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i482, -18874368
  %222 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %222, i8 %219) #12, !srcloc !628
  %rx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 37
  %223 = ptrtoint ptr %rx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %rx_enabled.i, align 4
  %rx_overflow.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 38
  %224 = ptrtoint ptr %rx_overflow.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %rx_overflow.i, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mgslpc_set_rate(ptr nocapture noundef readonly %info, i8 noundef zeroext %channel, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then:                                          ; preds = %entry
  %div = udiv i32 3686400, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 3686400, i32 %rate)
  %tobool1.not = icmp ugt i32 %rate, 3686400
  %div.op = lshr i32 %div, 1
  %shr = select i1 %tobool1.not, i32 0, i32 %div.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %shr)
  %cmp55 = icmp ugt i32 %shr, 64
  br i1 %cmp55, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %M.057 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.then.for.body_crit_edge ]
  %N.056 = phi i32 [ %shr4, %for.body.for.body_crit_edge ], [ %div.op, %if.then.for.body_crit_edge ]
  %shr4 = lshr i32 %N.056, 1
  %inc = add nuw nsw i32 %M.057, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %N.056)
  %cmp = icmp ugt i32 %N.056, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %M.057)
  %cmp3 = icmp ult i32 %M.057, 15
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %N.0.lcssa = phi i32 [ %shr, %if.then.for.end_crit_edge ], [ %shr4, %for.body.for.end_crit_edge ]
  %M.0.lcssa = phi i32 [ 1, %if.then.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %dec = add nuw nsw i32 %N.0.lcssa, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !705
  tail call void @arm_heavy_mb() #12
  %shl = shl nuw nsw i32 %M.0.lcssa, 6
  %add = add nuw i32 %dec, %shl
  %conv = trunc i32 %add to i8
  %io_base = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 4
  %add6 = add i8 %channel, 52
  %conv8 = zext i8 %add6 to i32
  %add9 = add i32 %1, %conv8
  %and = and i32 %add9, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv) #12, !srcloc !628
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base, align 4
  %add13 = add i8 %channel, 46
  %conv15 = zext i8 %add13 to i32
  %add16 = add i32 %4, %conv15
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %5 = inttoptr i32 %add18 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %7 = and i8 %6, 63
  %M.0.tr = trunc i32 %M.0.lcssa to i8
  %8 = shl i8 %M.0.tr, 4
  %9 = and i8 %8, -64
  %conv27 = or i8 %7, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base, align 4
  %add36 = add i32 %11, %conv15
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %12 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv27) #12, !srcloc !628
  br label %if.end40

if.end40:                                         ; preds = %for.end, %entry.if.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_auxclk(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %clock_speed = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 4
  %2 = ptrtoint ptr %clock_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i8 -126, i8 -122
  br label %do.body

do.body:                                          ; preds = %land.lhs.true, %entry.do.body_crit_edge
  %val.0 = phi i8 [ -126, %entry.do.body_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !717
  tail call void @arm_heavy_mb() #12
  %io_base = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base, align 4
  %add = add i32 %5, 98
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %6 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %val.0) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !718
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_base, align 4
  %add8 = add i32 %8, 108
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %9 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -64) #12, !srcloc !628
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !719
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io_base, align 4
  %add16 = add i32 %11, 109
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %12 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 23) #12, !srcloc !628
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp22 = icmp eq i32 %14, 2
  br i1 %cmp22, label %land.lhs.true24, label %do.body.do.body37_crit_edge

do.body.do.body37_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

land.lhs.true24:                                  ; preds = %do.body
  %clock_speed26 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 4
  %15 = ptrtoint ptr %clock_speed26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clock_speed26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool27.not = icmp eq i32 %16, 0
  br i1 %tobool27.not, label %land.lhs.true24.do.body37_crit_edge, label %do.body29

land.lhs.true24.do.body37_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

do.body29:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !720
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io_base, align 4
  %add33 = add i32 %18, 110
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %19 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 56) #12, !srcloc !628
  br label %do.body46

do.body37:                                        ; preds = %land.lhs.true24.do.body37_crit_edge, %do.body.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !721
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_base, align 4
  %add41 = add i32 %21, 110
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %22 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 48) #12, !srcloc !628
  br label %do.body46

do.body46:                                        ; preds = %do.body37, %do.body29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !722
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_base, align 4
  %add50 = add i32 %24, 127
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %25 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 80) #12, !srcloc !628
  %26 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp56 = icmp eq i32 %27, 2
  br i1 %cmp56, label %land.lhs.true58, label %do.body46.if.else65_crit_edge

do.body46.if.else65_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

land.lhs.true58:                                  ; preds = %do.body46
  %clock_speed60 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47, i32 4
  %28 = ptrtoint ptr %clock_speed60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clock_speed60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool61.not = icmp eq i32 %29, 0
  br i1 %tobool61.not, label %land.lhs.true58.if.else65_crit_edge, label %if.then62

land.lhs.true58.if.else65_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else65

if.then62:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mgslpc_set_rate(ptr noundef %info, i8 noundef zeroext 64, i32 noundef %29)
  br label %if.end66

if.else65:                                        ; preds = %land.lhs.true58.if.else65_crit_edge, %do.body46.if.else65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !705
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_base, align 4
  %add9.i = add i32 %31, 116
  %and.i = and i32 %add9.i, 1048575
  %add10.i = or i32 %and.i, -18874368
  %32 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 65) #12, !srcloc !628
  %33 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_base, align 4
  %add16.i = add i32 %34, 110
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %35 = inttoptr i32 %add18.i to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %37 = and i8 %36, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io_base, align 4
  %add36.i = add i32 %39, 110
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %40 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %37) #12, !srcloc !628
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_char_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_start(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.3, i32 noundef 3262, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rx_put.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 15
  %1 = ptrtoint ptr %rx_put.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rx_put.i, align 4
  %rx_get.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 16
  %2 = ptrtoint ptr %rx_get.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rx_get.i, align 4
  %rx_frame_count.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 19
  %3 = ptrtoint ptr %rx_frame_count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rx_frame_count.i, align 4
  %rx_buf_count.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 18
  %4 = ptrtoint ptr %rx_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i = icmp sgt i32 %5, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %if.end.rx_reset_buffers.exit_crit_edge

if.end.rx_reset_buffers.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_reset_buffers.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %rx_buf.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 13
  %rx_buf_size.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf.i, align 4
  %8 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_buf_size.i, align 4
  %mul.i = mul i32 %9, %i.010.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %add.ptr.i, align 4
  %status.i = getelementptr inbounds %struct.RXBUF, ptr %add.ptr.i, i32 0, i32 1
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %status.i, align 4
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %12 = ptrtoint ptr %rx_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buf_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rx_reset_buffers.exit_crit_edge

for.body.i.rx_reset_buffers.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_reset_buffers.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

rx_reset_buffers.exit:                            ; preds = %for.body.i.rx_reset_buffers.exit_crit_edge, %if.end.rx_reset_buffers.exit_crit_edge
  %rx_enabled = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 37
  %14 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %rx_enabled, align 4
  %rx_overflow = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 38
  %15 = ptrtoint ptr %rx_overflow to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rx_overflow, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !723
  tail call void @arm_heavy_mb() #12
  %io_base = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_base, align 4
  %add = add i32 %17, 34
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %18 = inttoptr i32 %add3 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !724
  %20 = or i8 %19, 8
  %21 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_base, align 4
  %add9 = add i32 %22, 34
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %23 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %20) #12, !srcloc !628
  %24 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %rx_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shutdown(ptr noundef %info, ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %info, i32 0, i32 11
  %0 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.3, i32 noundef 1328, ptr noundef %device_name) #15
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %status_event_wait_q = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %status_event_wait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %event_wait_q = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %event_wait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %tx_timer = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 22
  %call4 = tail call i32 @del_timer_sync(ptr noundef %tx_timer) #12
  %tx_buf = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 9
  %3 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end3.do.body10_crit_edge, label %if.then5

if.end3.do.body10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %5, i32 noundef 0) #12
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx_buf, align 4
  br label %do.body10

do.body10:                                        ; preds = %if.then5, %if.end3.do.body10_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %7 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp sgt i32 %7, 4
  br i1 %cmp.i, label %do.end.i, label %do.body10.rx_stop.exit_crit_edge

do.body10.rx_stop.exit_crit_edge:                 ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_stop.exit

do.end.i:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.3, i32 noundef 3249, ptr noundef %device_name.i) #15
  br label %rx_stop.exit

rx_stop.exit:                                     ; preds = %do.end.i, %do.body10.rx_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !662
  tail call void @arm_heavy_mb() #12
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %9, 34
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add3.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !663
  %12 = and i8 %11, -9
  %13 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base.i, align 4
  %add10.i = add i32 %14, 34
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %15 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #12, !srcloc !628
  %rx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 37
  %16 = ptrtoint ptr %rx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rx_enabled.i, align 4
  %rx_overflow.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 38
  %17 = ptrtoint ptr %rx_overflow.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %rx_overflow.i, align 1
  %18 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.i53 = icmp sgt i32 %18, 4
  br i1 %cmp.i53, label %do.end.i56, label %rx_stop.exit.tx_stop.exit_crit_edge

rx_stop.exit.tx_stop.exit_crit_edge:              ; preds = %rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit

do.end.i56:                                       ; preds = %rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i54 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name.i54) #15
  br label %tx_stop.exit

tx_stop.exit:                                     ; preds = %do.end.i56, %rx_stop.exit.tx_stop.exit_crit_edge
  %call1.i = tail call i32 @del_timer(ptr noundef %tx_timer) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 39
  %19 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %tx_enabled.i, align 2
  %tx_active.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %20 = ptrtoint ptr %tx_active.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %tx_active.i, align 1
  tail call fastcc void @reset_device(ptr noundef %info)
  %tobool19.not = icmp eq ptr %tty, null
  br i1 %tobool19.not, label %if.end30.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %tx_stop.exit
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %21 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_cflag, align 4
  %and = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.then28.critedge, label %if.then28.critedge51

if.then28.critedge:                               ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #12
  %23 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i57 = icmp sgt i32 %23, 2
  br i1 %cmp.i57, label %if.then28.critedge.if.then28.sink.split_crit_edge, label %if.then28.critedge.if.then28_crit_edge

if.then28.critedge.if.then28_crit_edge:           ; preds = %if.then28.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then28.critedge.if.then28.sink.split_crit_edge: ; preds = %if.then28.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.sink.split

if.then28.critedge51:                             ; preds = %lor.lhs.false
  %serial_signals.c = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %24 = ptrtoint ptr %serial_signals.c to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %serial_signals.c, align 4
  %26 = and i8 %25, 95
  store i8 %26, ptr %serial_signals.c, align 4
  tail call fastcc void @set_signals(ptr noundef %info)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #12
  %27 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i61 = icmp sgt i32 %27, 2
  br i1 %cmp.i61, label %if.then28.critedge51.if.then28.sink.split_crit_edge, label %if.then28.critedge51.if.then28_crit_edge

if.then28.critedge51.if.then28_crit_edge:         ; preds = %if.then28.critedge51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then28.critedge51.if.then28.sink.split_crit_edge: ; preds = %if.then28.critedge51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.sink.split

if.then28.sink.split:                             ; preds = %if.then28.critedge51.if.then28.sink.split_crit_edge, %if.then28.critedge.if.then28.sink.split_crit_edge
  %device_name.i62 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %device_name.i62) #15
  br label %if.then28

if.then28:                                        ; preds = %if.then28.sink.split, %if.then28.critedge51.if.then28_crit_edge, %if.then28.critedge.if.then28_crit_edge
  %rx_buf.i.i65 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 13
  %28 = ptrtoint ptr %rx_buf.i.i65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buf.i.i65, align 4
  tail call void @kfree(ptr noundef %29) #12
  %30 = ptrtoint ptr %rx_buf.i.i65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rx_buf.i.i65, align 4
  %flag_buf.i.i66 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 52
  %31 = ptrtoint ptr %flag_buf.i.i66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %flag_buf.i.i66, align 4
  tail call void @kfree(ptr noundef %32) #12
  %33 = ptrtoint ptr %flag_buf.i.i66 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %flag_buf.i.i66, align 4
  %flags29 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags29) #12
  br label %if.end30

if.end30.critedge:                                ; preds = %tx_stop.exit
  %serial_signals.c52 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %34 = ptrtoint ptr %serial_signals.c52 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %serial_signals.c52, align 4
  %36 = and i8 %35, 95
  store i8 %36, ptr %serial_signals.c52, align 4
  tail call fastcc void @set_signals(ptr noundef %info)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #12
  %37 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i68 = icmp sgt i32 %37, 2
  br i1 %cmp.i68, label %do.end.i71, label %if.end30.critedge.release_resources.exit74_crit_edge

if.end30.critedge.release_resources.exit74_crit_edge: ; preds = %if.end30.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_resources.exit74

do.end.i71:                                       ; preds = %if.end30.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i69 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %device_name.i69) #15
  br label %release_resources.exit74

release_resources.exit74:                         ; preds = %do.end.i71, %if.end30.critedge.release_resources.exit74_crit_edge
  %rx_buf.i.i72 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 13
  %38 = ptrtoint ptr %rx_buf.i.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buf.i.i72, align 4
  tail call void @kfree(ptr noundef %39) #12
  %40 = ptrtoint ptr %rx_buf.i.i72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %rx_buf.i.i72, align 4
  %flag_buf.i.i73 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 52
  %41 = ptrtoint ptr %flag_buf.i.i73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %flag_buf.i.i73, align 4
  tail call void @kfree(ptr noundef %42) #12
  %43 = ptrtoint ptr %flag_buf.i.i73 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %flag_buf.i.i73, align 4
  br label %if.end30

if.end30:                                         ; preds = %release_resources.exit74, %if.then28
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %iflags.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdlc_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdlc_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_open(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = load i32, ptr @mgslpc_device_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp slt i32 %1, %2
  br i1 %cmp.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %entry
  %info.0107 = load ptr, ptr @mgslpc_device_list, align 4
  %tobool.not108 = icmp eq ptr %info.0107, null
  br i1 %tobool.not108, label %while.cond.preheader.cleanup70_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.cleanup70_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.3, i32 noundef 2470, i32 noundef %1) #15
  br label %cleanup70

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %info.0109 = phi ptr [ %info.0, %while.body.land.rhs_crit_edge ], [ %info.0107, %while.cond.preheader.land.rhs_crit_edge ]
  %line2 = getelementptr inbounds %struct._mgslpc_info, ptr %info.0109, i32 0, i32 3
  %3 = ptrtoint ptr %line2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %line2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp3.not = icmp eq i32 %4, %1
  br i1 %cmp3.not, label %if.end6, label %while.body

while.body:                                       ; preds = %land.rhs
  %next_device = getelementptr inbounds %struct._mgslpc_info, ptr %info.0109, i32 0, i32 23
  %5 = ptrtoint ptr %next_device to i32
  call void @__asan_load4_noabort(i32 %5)
  %info.0 = load ptr, ptr %next_device, align 4
  %tobool.not = icmp eq ptr %info.0, null
  br i1 %tobool.not, label %while.body.cleanup70_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.body.cleanup70_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end6:                                          ; preds = %land.rhs
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %info.0109, ptr %driver_data, align 4
  tail call void @tty_port_tty_set(ptr noundef nonnull %info.0109, ptr noundef %tty) #12
  %7 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp8 = icmp sgt i32 %7, 2
  br i1 %cmp8, label %do.end12, label %if.end6.do.body18_crit_edge

if.end6.do.body18_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %name14 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name14, align 4
  %count = getelementptr inbounds %struct.tty_port, ptr %info.0109, i32 0, i32 7
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.3, i32 noundef 2487, ptr noundef %11, i32 noundef %13) #15
  br label %do.body18

do.body18:                                        ; preds = %do.end12, %if.end6.do.body18_crit_edge
  %netlock = getelementptr inbounds %struct._mgslpc_info, ptr %info.0109, i32 0, i32 58
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %netlock) #12
  %netcount = getelementptr inbounds %struct._mgslpc_info, ptr %info.0109, i32 0, i32 57
  %14 = ptrtoint ptr %netcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %netcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %netlock, i32 noundef %call22) #12
  br label %cleanup70

if.end30:                                         ; preds = %do.body18
  %lock = getelementptr inbounds %struct.tty_port, ptr %info.0109, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %count31 = getelementptr inbounds %struct.tty_port, ptr %info.0109, i32 0, i32 7
  %16 = ptrtoint ptr %count31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count31, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %count31, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %netlock, i32 noundef %call22) #12
  %18 = ptrtoint ptr %count31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp35 = icmp eq i32 %19, 1
  br i1 %cmp35, label %if.then37, label %if.end30.if.end43_crit_edge

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then37:                                        ; preds = %if.end30
  %call38 = tail call fastcc i32 @startup(ptr noundef nonnull %info.0109, ptr noundef %tty)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then37.cleanup70_crit_edge, label %if.then37.if.end43_crit_edge

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then37.cleanup70_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end43:                                         ; preds = %if.then37.if.end43_crit_edge, %if.end30.if.end43_crit_edge
  %call45 = tail call i32 @tty_port_block_til_ready(ptr noundef nonnull %info.0109, ptr noundef %tty, ptr noundef %filp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  %20 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp59 = icmp sgt i32 %20, 2
  br i1 %tobool46.not, label %if.end58, label %if.then47

if.then47:                                        ; preds = %if.end43
  br i1 %cmp59, label %do.end53, label %if.then47.cleanup70_crit_edge

if.then47.cleanup70_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

do.end53:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info.0109, i32 0, i32 44
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.3, i32 noundef 2511, ptr noundef %device_name, i32 noundef %call45) #15
  br label %cleanup70

if.end58:                                         ; preds = %if.end43
  br i1 %cmp59, label %do.end64, label %if.end58.cleanup70_crit_edge

if.end58.cleanup70_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %device_name66 = getelementptr inbounds %struct._mgslpc_info, ptr %info.0109, i32 0, i32 44
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.3, i32 noundef 2517, ptr noundef %device_name66) #15
  br label %cleanup70

cleanup70:                                        ; preds = %do.end64, %if.end58.cleanup70_crit_edge, %do.end53, %if.then47.cleanup70_crit_edge, %if.then37.cleanup70_crit_edge, %if.then28, %while.body.cleanup70_crit_edge, %do.end, %while.cond.preheader.cleanup70_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -16, %if.then28 ], [ %call38, %if.then37.cleanup70_crit_edge ], [ %call45, %do.end53 ], [ %call45, %if.then47.cleanup70_crit_edge ], [ 0, %do.end64 ], [ 0, %if.end58.cleanup70_crit_edge ], [ -19, %while.cond.preheader.cleanup70_crit_edge ], [ -19, %while.body.cleanup70_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_close(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.3, i32 noundef 2327, ptr noundef %device_name, i32 noundef %4) #15
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @tty_port_close_start(ptr noundef nonnull %1, ptr noundef %tty, ptr noundef %filp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %timeout = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  tail call void @mgslpc_wait_until_sent(ptr noundef %tty, i32 noundef %8)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  tail call void @mgslpc_flush_buffer(ptr noundef %tty)
  tail call void @tty_ldisc_flush(ptr noundef %tty) #12
  tail call fastcc void @shutdown(ptr noundef nonnull %1, ptr noundef %tty)
  tail call void @tty_port_close_end(ptr noundef nonnull %1, ptr noundef %tty) #12
  tail call void @tty_port_tty_set(ptr noundef nonnull %1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge
  %9 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp13 = icmp sgt i32 %9, 2
  br i1 %cmp13, label %do.end17, label %cleanup.cleanup23_crit_edge

cleanup.cleanup23_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

do.end17:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %name19 = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name19, align 4
  %count20 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %count20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.3, i32 noundef 2345, ptr noundef %13, i32 noundef %15) #15
  br label %cleanup23

cleanup23:                                        ; preds = %do.end17, %cleanup.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_write(ptr noundef %tty, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.3, i32 noundef 1555, ptr noundef %device_name, i32 noundef %count) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %tx_buf = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp5 = icmp eq i32 %6, 2
  br i1 %cmp5, label %if.then6, label %if.end4.if.end16_crit_edge

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp7 = icmp sgt i32 %count, 4096
  br i1 %cmp7, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %if.else, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.else.if.end16_crit_edge, label %if.else.start_crit_edge

if.else.start_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %start

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %tx_count17 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %tx_put = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %tx_count17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_count17, align 4
  %sub18133 = sub i32 4095, %12
  %13 = ptrtoint ptr %tx_put to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_put, align 4
  %sub19134 = sub i32 4096, %14
  %15 = tail call i32 @llvm.smin.i32(i32 %sub18133, i32 %sub19134)
  %16 = tail call i32 @llvm.smin.i32(i32 %count, i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp28135 = icmp slt i32 %16, 1
  br i1 %cmp28135, label %if.end16.start_crit_edge, label %if.end30.lr.ph

if.end16.start_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %start

if.end30.lr.ph:                                   ; preds = %if.end16
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  br label %if.end30

if.end30:                                         ; preds = %if.end30.if.end30_crit_edge, %if.end30.lr.ph
  %17 = phi i32 [ %16, %if.end30.lr.ph ], [ %31, %if.end30.if.end30_crit_edge ]
  %18 = phi i32 [ %14, %if.end30.lr.ph ], [ %29, %if.end30.if.end30_crit_edge ]
  %buf.addr.0138 = phi ptr [ %buf, %if.end30.lr.ph ], [ %add.ptr48, %if.end30.if.end30_crit_edge ]
  %count.addr.0137 = phi i32 [ %count, %if.end30.lr.ph ], [ %sub49, %if.end30.if.end30_crit_edge ]
  %ret.0136 = phi i32 [ 0, %if.end30.lr.ph ], [ %add50, %if.end30.if.end30_crit_edge ]
  %19 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_buf, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %18
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.0138, i32 %17)
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %22 = ptrtoint ptr %tx_put to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_put, align 4
  %add = add i32 %23, %17
  %and = and i32 %add, 4095
  store i32 %and, ptr %tx_put, align 4
  %24 = ptrtoint ptr %tx_count17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_count17, align 4
  %add46 = add i32 %25, %17
  store i32 %add46, ptr %tx_count17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call38) #12
  %add.ptr48 = getelementptr i8, ptr %buf.addr.0138, i32 %17
  %sub49 = sub i32 %count.addr.0137, %17
  %add50 = add i32 %17, %ret.0136
  %26 = ptrtoint ptr %tx_count17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_count17, align 4
  %sub18 = sub i32 4095, %27
  %28 = ptrtoint ptr %tx_put to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_put, align 4
  %sub19 = sub i32 4096, %29
  %30 = tail call i32 @llvm.smin.i32(i32 %sub18, i32 %sub19)
  %31 = tail call i32 @llvm.smin.i32(i32 %sub49, i32 %30)
  %cmp28 = icmp slt i32 %31, 1
  br i1 %cmp28, label %if.end30.start_crit_edge, label %if.end30.if.end30_crit_edge

if.end30.if.end30_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end30.start_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %start

start:                                            ; preds = %if.end30.start_crit_edge, %if.end16.start_crit_edge, %if.else.start_crit_edge
  %ret.1 = phi i32 [ 0, %if.else.start_crit_edge ], [ 0, %if.end16.start_crit_edge ], [ %add50, %if.end30.start_crit_edge ]
  %tx_count51 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %tx_count51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_count51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool52.not = icmp eq i32 %33, 0
  br i1 %tobool52.not, label %start.cleanup_crit_edge, label %land.lhs.true

start.cleanup_crit_edge:                          ; preds = %start
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %start
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %34 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %stopped, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool53.not = icmp eq i8 %35, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true54:                                  ; preds = %land.lhs.true
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %36 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool55.not = icmp eq i32 %37, 0
  br i1 %tobool55.not, label %do.body58, label %land.lhs.true54.cleanup_crit_edge

land.lhs.true54.cleanup_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body58:                                        ; preds = %land.lhs.true54
  %lock64 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock64) #12
  %tx_active71 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %38 = ptrtoint ptr %tx_active71 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_active71, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool72.not = icmp eq i8 %39, 0
  br i1 %tobool72.not, label %if.then73, label %do.body58.if.end74_crit_edge

do.body58.if.end74_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then73:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_start(ptr noundef nonnull %1, ptr noundef %tty)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %do.body58.if.end74_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock64, i32 noundef %call66) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %land.lhs.true54.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %start.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %ret.2 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %ret.1, %land.lhs.true.cleanup_crit_edge ], [ %ret.1, %land.lhs.true54.cleanup_crit_edge ], [ %ret.1, %if.end74 ], [ %ret.1, %start.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.then6.cleanup_crit_edge ]
  %40 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp77 = icmp sgt i32 %40, 2
  br i1 %cmp77, label %do.end82, label %cleanup.if.end87_crit_edge

cleanup.if.end87_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

do.end82:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %device_name84 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.3, i32 noundef 1600, ptr noundef %device_name84, i32 noundef %ret.2) #15
  br label %if.end87

if.end87:                                         ; preds = %do.end82, %cleanup.if.end87_crit_edge
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_put_char(ptr nocapture noundef readonly %tty, i8 noundef zeroext %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %ch to i32
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.3, i32 noundef 1484, i32 noundef %conv, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tx_buf = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %do.body8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body8:                                         ; preds = %if.end4
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp18 = icmp eq i32 %6, 1
  br i1 %cmp18, label %do.body8.if.then21_crit_edge, label %lor.lhs.false

do.body8.if.then21_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

lor.lhs.false:                                    ; preds = %do.body8
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool20.not = icmp eq i8 %8, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end30_crit_edge

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %do.body8.if.then21_crit_edge
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %10)
  %cmp22 = icmp slt i32 %10, 4095
  br i1 %cmp22, label %if.then24, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_buf, align 4
  %tx_put = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %tx_put to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_put, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tx_put, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %ch, ptr %arrayidx, align 1
  %16 = load i32, ptr %tx_put, align 4
  %and = and i32 %16, 4095
  store i32 %and, ptr %tx_put, align 4
  %17 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_count, align 4
  %inc28 = add i32 %18, 1
  store i32 %inc28, ptr %tx_count, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.then21.if.end30_crit_edge, %lor.lhs.false.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end30 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_flush_chars(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_count, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.3, i32 noundef 1517, ptr noundef %device_name, i32 noundef %4) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tx_count5 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %tx_count5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_count5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp6 = icmp slt i32 %6, 1
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stopped, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %9 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %tx_buf = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_buf, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %lor.lhs.false9.cleanup_crit_edge, label %if.end12

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false9
  %13 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp13 = icmp sgt i32 %13, 2
  br i1 %cmp13, label %do.end17, label %if.end12.do.body24_crit_edge

if.end12.do.body24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %device_name19 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.3, i32 noundef 1528, ptr noundef %device_name19) #15
  br label %do.body24

do.body24:                                        ; preds = %do.end17, %if.end12.do.body24_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %14 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool33.not = icmp eq i8 %15, 0
  br i1 %tobool33.not, label %if.then34, label %do.body24.if.end35_crit_edge

do.body24.if.end35_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_start(ptr noundef nonnull %1, ptr noundef %tty)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %do.body24.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_write_room(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %. = select i1 %tobool.not, i32 65535, i32 0
  br label %cleanup

if.else3:                                         ; preds = %if.end
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_count, align 4
  %sub4 = sub i32 4095, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %sub4, i32 0)
  %9 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp9 = icmp sgt i32 %9, 2
  br i1 %cmp9, label %do.end, label %if.else3.cleanup_crit_edge

if.else3.cleanup_crit_edge:                       ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.3, i32 noundef 1628, ptr noundef %device_name, i32 noundef %8) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else3.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.then1 ], [ %8, %do.end ], [ %8, %if.else3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_chars_in_buffer(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.3, i32 noundef 1641, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 47
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp5 = icmp eq i32 %4, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then6.if.end7_crit_edge, label %cond.true

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

cond.true:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %max_frame_size = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 29
  br label %if.end7.sink.split

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.else, %cond.true
  %max_frame_size.sink = phi ptr [ %max_frame_size, %cond.true ], [ %tx_count, %if.else ]
  %7 = ptrtoint ptr %max_frame_size.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_frame_size.sink, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.then6.if.end7_crit_edge
  %rc.0 = phi i32 [ 0, %if.then6.if.end7_crit_edge ], [ %8, %if.end7.sink.split ]
  %9 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp8 = icmp sgt i32 %9, 2
  br i1 %cmp8, label %do.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %device_name14 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.3, i32 noundef 1653, ptr noundef %device_name14, i32 noundef %rc.0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %rc.0, %do.end12 ], [ %rc.0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %3 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.3, i32 noundef 2227, ptr noundef %device_name, i32 noundef %cmd) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 21596, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21596
  br i1 %cond, label %sw.bb32, label %if.then6

if.then6:                                         ; preds = %if.end4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.281)
  switch i32 %cmd, label %if.end10.cleanup_crit_edge [
    i32 -2145358591, label %sw.bb
    i32 1075866880, label %sw.bb12
    i32 27907, label %sw.bb14
    i32 27906, label %sw.bb16
    i32 27915, label %sw.bb18
    i32 27914, label %sw.bb20
    i32 27908, label %sw.bb22
    i32 27909, label %sw.bb24
    i32 27910, label %sw.bb26
    i32 27911, label %sw.bb28
    i32 -1073451768, label %sw.bb30
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call fastcc i32 @get_params(ptr noundef nonnull %1, ptr noundef %2)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call fastcc i32 @set_params(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %tty)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call fastcc i32 @get_txidle(ptr noundef nonnull %1, ptr noundef %2)
  br label %cleanup

sw.bb16:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @set_txidle(ptr noundef nonnull %1, i32 noundef %arg)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call fastcc i32 @get_interface(ptr noundef nonnull %1, ptr noundef %2)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @set_interface(ptr noundef nonnull %1, i32 noundef %arg)
  br label %cleanup

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @set_txenable(ptr noundef nonnull %1, i32 noundef %arg, ptr noundef %tty)
  br label %cleanup

sw.bb24:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @set_rxenable(ptr noundef nonnull %1, i32 noundef %arg)
  br label %cleanup

sw.bb26:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_abort(ptr noundef nonnull %1)
  br label %cleanup

sw.bb28:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call fastcc i32 @get_stats(ptr noundef nonnull %1, ptr noundef %2)
  br label %cleanup

sw.bb30:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call fastcc i32 @wait_events(ptr noundef nonnull %1, ptr noundef %2)
  br label %cleanup

sw.bb32:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call fastcc i32 @modem_input_wait(ptr noundef nonnull %1, i32 noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb, %if.end10.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ 0, %sw.bb26 ], [ 0, %sw.bb24 ], [ 0, %sw.bb22 ], [ 0, %sw.bb20 ], [ %call19, %sw.bb18 ], [ 0, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb ], [ -19, %if.end.cleanup_crit_edge ], [ -5, %if.then6.cleanup_crit_edge ], [ -515, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_set_termios(ptr noundef %tty, ptr nocapture noundef readonly %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.3, i32 noundef 2282, ptr noundef %6) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %7 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_cflag, align 4
  %c_cflag1 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %9 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_cflag1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp2 = icmp eq i32 %8, %10
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %11 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %termios, align 4
  %13 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old_termios, align 4
  %15 = xor i32 %14, %12
  %16 = and i32 %15, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6 = icmp eq i32 %16, 0
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  tail call fastcc void @mgslpc_change_params(ptr noundef %1, ptr noundef %tty)
  %17 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag1, align 4
  %and10 = and i32 %18, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.end8.if.end31_crit_edge, label %land.lhs.true11

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true11:                                  ; preds = %if.end8
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  %and14 = and i32 %20, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true11.if.end31_crit_edge

land.lhs.true11.if.end31_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  %serial_signals = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %21 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %serial_signals, align 4
  %23 = and i8 %22, 95
  store i8 %23, ptr %serial_signals, align 4
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @set_signals(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call25) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then16, %land.lhs.true11.if.end31_crit_edge, %if.end8.if.end31_crit_edge
  %24 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_cflag1, align 4
  %and33 = and i32 %25, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.end31.if.end70_crit_edge

if.end31.if.end70_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true35:                                  ; preds = %if.end31
  %26 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_cflag, align 4
  %and38 = and i32 %27, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %land.lhs.true35.if.end70thread-pre-split_crit_edge, label %if.then40

land.lhs.true35.if.end70thread-pre-split_crit_edge: ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70thread-pre-split

if.then40:                                        ; preds = %land.lhs.true35
  %serial_signals41 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %28 = ptrtoint ptr %serial_signals41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %serial_signals41, align 4
  %30 = or i8 %29, -128
  store i8 %30, ptr %serial_signals41, align 4
  %31 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool47.not = icmp sgt i32 %32, -1
  br i1 %tobool47.not, label %if.then40.if.then49_crit_edge, label %lor.lhs.false

if.then40.if.then49_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

lor.lhs.false:                                    ; preds = %if.then40
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then49_crit_edge, label %lor.lhs.false.do.body56_crit_edge

lor.lhs.false.do.body56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body56

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %if.then40.if.then49_crit_edge
  %35 = or i8 %29, -96
  %36 = ptrtoint ptr %serial_signals41 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %serial_signals41, align 4
  br label %do.body56

do.body56:                                        ; preds = %if.then49, %lor.lhs.false.do.body56_crit_edge
  %lock62 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock62) #12
  tail call fastcc void @set_signals(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock62, i32 noundef %call64) #12
  br label %if.end70thread-pre-split

if.end70thread-pre-split:                         ; preds = %do.body56, %land.lhs.true35.if.end70thread-pre-split_crit_edge
  %37 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %c_cflag1, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end70thread-pre-split, %if.end31.if.end70_crit_edge
  %38 = phi i32 [ %.pr, %if.end70thread-pre-split ], [ %25, %if.end31.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %tobool73.not = icmp sgt i32 %38, -1
  br i1 %tobool73.not, label %if.end70.cleanup_crit_edge, label %land.lhs.true74

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true74:                                  ; preds = %if.end70
  %39 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %tobool78.not = icmp sgt i32 %40, -1
  br i1 %tobool78.not, label %if.then79, label %land.lhs.true74.cleanup_crit_edge

land.lhs.true74.cleanup_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then79:                                        ; preds = %land.lhs.true74
  %hw_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 21
  %41 = ptrtoint ptr %hw_stopped to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %hw_stopped, align 4
  %42 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.then79.cleanup_crit_edge, label %if.end.i

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then79
  %44 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i = icmp sgt i32 %44, 2
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.body6.i_crit_edge

if.end.i.do.body6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %43, i32 0, i32 44
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef %device_name.i) #15
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i, %if.end.i.do.body6.i_crit_edge
  %lock.i = getelementptr inbounds %struct._mgslpc_info, ptr %43, i32 0, i32 27
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %43, i32 0, i32 39
  %45 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_enabled.i, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.then15.i, label %do.body6.i.if.end16.i_crit_edge

do.body6.i.if.end16.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then15.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_start(ptr noundef nonnull %43, ptr noundef %tty) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %do.body6.i.if.end16.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16.i, %if.then79.cleanup_crit_edge, %land.lhs.true74.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_throttle(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.3, i32 noundef 1713, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %3 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %termios, align 4
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.if.end7_crit_edge, label %if.then5

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end4
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data, align 4
  %9 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp sgt i32 %9, 2
  br i1 %cmp.i, label %do.end.i, label %if.then5.if.end.i_crit_edge

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 44
  %conv.i = zext i8 %6 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.3, i32 noundef 1690, ptr noundef %device_name.i, i32 noundef %conv.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then5.if.end.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end7_crit_edge, label %if.end4.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end4.i:                                        ; preds = %if.end.i
  %conv5.i = zext i8 %6 to i32
  %x_char.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 6
  %10 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5.i, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i38 = icmp eq i8 %6, 0
  br i1 %tobool.not.i38, label %if.end4.i.if.end7_crit_edge, label %do.body8.i

if.end4.i.if.end7_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.body8.i:                                       ; preds = %if.end4.i
  %lock.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 27
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %8, i32 0, i32 39
  %11 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_enabled.i, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not.i = icmp eq i8 %12, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %do.body8.i.if.end20.i_crit_edge

do.body8.i.if.end20.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_start(ptr noundef nonnull %8, ptr noundef %tty) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %do.body8.i.if.end20.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call13.i) #12
  br label %if.end7

if.end7:                                          ; preds = %if.end20.i, %if.end4.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool10.not = icmp sgt i32 %14, -1
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %do.body13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %serial_signals = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %15 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %serial_signals, align 4
  %17 = and i8 %16, -33
  store i8 %17, ptr %serial_signals, align 4
  tail call fastcc void @set_signals(ptr noundef nonnull %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_unthrottle(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.3, i32 noundef 1738, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %3 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %termios, align 4
  %and = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.if.end11_crit_edge, label %if.then5

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5:                                         ; preds = %if.end4
  %x_char = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %x_char to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %x_char to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %x_char, align 4
  br label %if.end11

if.else:                                          ; preds = %if.then5
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data, align 4
  %12 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp sgt i32 %12, 2
  br i1 %cmp.i, label %do.end.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %11, i32 0, i32 44
  %conv.i = zext i8 %9 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.3, i32 noundef 1690, ptr noundef %device_name.i, i32 noundef %conv.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.else.if.end.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end11_crit_edge, label %if.end4.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end4.i:                                        ; preds = %if.end.i
  %conv5.i = zext i8 %9 to i32
  %x_char.i = getelementptr inbounds %struct._mgslpc_info, ptr %11, i32 0, i32 6
  %13 = ptrtoint ptr %x_char.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5.i, ptr %x_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i43 = icmp eq i8 %9, 0
  br i1 %tobool.not.i43, label %if.end4.i.if.end11_crit_edge, label %do.body8.i

if.end4.i.if.end11_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.body8.i:                                       ; preds = %if.end4.i
  %lock.i = getelementptr inbounds %struct._mgslpc_info, ptr %11, i32 0, i32 27
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %tx_enabled.i = getelementptr inbounds %struct._mgslpc_info, ptr %11, i32 0, i32 39
  %14 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_enabled.i, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not.i = icmp eq i8 %15, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %do.body8.i.if.end20.i_crit_edge

do.body8.i.if.end20.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_start(ptr noundef nonnull %11, ptr noundef %tty) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %do.body8.i.if.end20.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call13.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.end20.i, %if.end4.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %if.then7, %if.end4.if.end11_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool14.not = icmp sgt i32 %17, -1
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %do.body17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %serial_signals = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %18 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %serial_signals, align 4
  %20 = or i8 %19, 32
  store i8 %20, ptr %serial_signals, align 4
  tail call fastcc void @set_signals(ptr noundef nonnull %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_pause(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef %device_name) #15
  br label %do.body6

do.body6:                                         ; preds = %do.end, %if.end.do.body6_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tx_enabled = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 39
  %3 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_enabled, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body6.if.end16_crit_edge, label %if.then15

do.body6.if.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %do.body6
  %5 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp sgt i32 %5, 4
  br i1 %cmp.i, label %do.end.i, label %if.then15.tx_stop.exit_crit_edge

if.then15.tx_stop.exit_crit_edge:                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name.i) #15
  br label %tx_stop.exit

tx_stop.exit:                                     ; preds = %do.end.i, %if.then15.tx_stop.exit_crit_edge
  %tx_timer.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 22
  %call1.i = tail call i32 @del_timer(ptr noundef %tx_timer.i) #12
  %6 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_enabled, align 2
  %tx_active.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %tx_active.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tx_active.i, align 1
  br label %if.end16

if.end16:                                         ; preds = %tx_stop.exit, %do.body6.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_release(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef %device_name) #15
  br label %do.body6

do.body6:                                         ; preds = %do.end, %if.end.do.body6_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tx_enabled = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 39
  %3 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_enabled, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then15, label %do.body6.if.end16_crit_edge

do.body6.if.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_start(ptr noundef nonnull %1, ptr noundef %tty)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body6.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_hangup(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.3, i32 noundef 2420, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mgslpc_flush_buffer(ptr noundef %tty)
  tail call fastcc void @shutdown(ptr noundef nonnull %1, ptr noundef %tty)
  tail call void @tty_port_hangup(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_break(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.3, i32 noundef 2169, ptr noundef %device_name, i32 noundef %break_state) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp15 = icmp eq i32 %break_state, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %io_base = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 45
  %3 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_base, align 4
  %add = add i32 %4, 39
  %and = and i32 %add, 1048575
  %add21 = or i32 %and, -18874368
  %5 = inttoptr i32 %add21 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp15, label %do.body18, label %do.body32

do.body18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %7 = or i8 %6, 64
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_base, align 4
  %add28 = add i32 %9, 39
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %10 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %7) #12, !srcloc !628
  br label %if.end51

do.body32:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = and i8 %6, -65
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_base, align 4
  %add47 = add i32 %13, 39
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %14 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %11) #12, !srcloc !628
  br label %if.end51

if.end51:                                         ; preds = %do.body32, %do.body18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_flush_buffer(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.3, i32 noundef 1667, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tx_get = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %tx_get to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tx_get, align 4
  %tx_put = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %tx_put to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tx_put, align 4
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_count, align 4
  %tx_timer = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 22
  %call15 = tail call i32 @del_timer(ptr noundef %tx_timer) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #12
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @tty_wakeup(ptr noundef %tty) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_wait_until_sent(ptr nocapture noundef readonly %tty, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.3, i32 noundef 2360, ptr noundef %device_name) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end6.exit_crit_edge, label %if.end9

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end9:                                          ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 47
  %data_rate = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 47, i32 9
  %6 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %if.then11

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %timeout12 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %timeout12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout12, align 4
  %div = sdiv i32 %9, 160
  %.off = add i32 %9, 159
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %.off)
  %10 = icmp ult i32 %.off, 319
  %spec.select = select i1 %10, i32 1, i32 %div
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end9.if.end16_crit_edge
  %char_time.0 = phi i32 [ %spec.select, %if.then11 ], [ 1, %if.end9.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool17.not = icmp eq i32 %timeout, 0
  %11 = tail call i32 @llvm.umin.i32(i32 %char_time.0, i32 %timeout)
  %char_time.1 = select i1 %tobool17.not, i32 %char_time.0, i32 %11
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp23 = icmp eq i32 %13, 2
  br i1 %cmp23, label %while.cond.preheader, label %while.cond38.preheader

while.cond38.preheader:                           ; preds = %if.end16
  %tx_active40 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %add54 = add i32 %5, %timeout
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 12
  %tx_enabled = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 39
  br label %while.cond38

while.cond.preheader:                             ; preds = %if.end16
  %add = add i32 %5, %timeout
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 40
  %14 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not111 = icmp eq i8 %15, 0
  br i1 %tobool25.not111, label %while.cond.preheader.exit_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.exit_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call26 = tail call i32 @jiffies_to_msecs(i32 noundef %char_time.1) #12
  %call27 = tail call i32 @msleep_interruptible(i32 noundef %call26) #12
  %16 = tail call i32 @llvm.read_register.i32(metadata !612) #12
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stack.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i97 = icmp eq i32 %24, 0
  br i1 %tobool.not.i97, label %signal_pending.exit, label %while.body.exit_crit_edge, !prof !652

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

signal_pending.exit:                              ; preds = %while.body
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %21, align 4
  %and1.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool30.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool30.not, label %if.end32, label %signal_pending.exit.exit_crit_edge

signal_pending.exit.exit_crit_edge:               ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end32:                                         ; preds = %signal_pending.exit
  br i1 %tobool17.not, label %if.end32.if.end36_crit_edge, label %land.lhs.true

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp34 = icmp slt i32 %sub, 0
  br i1 %cmp34, label %land.lhs.true.exit_crit_edge, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  %28 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_active, align 1, !range !639
  %tobool25.not = icmp eq i8 %29, 0
  br i1 %tobool25.not, label %if.end36.exit_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end36.exit_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

while.cond38:                                     ; preds = %while.cond38.backedge, %while.cond38.preheader
  %30 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool39.not = icmp eq i32 %31, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %while.cond38.land.rhs_crit_edge

while.cond38.land.rhs_crit_edge:                  ; preds = %while.cond38
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond38
  %32 = ptrtoint ptr %tx_active40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_active40, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool41.not = icmp eq i8 %33, 0
  br i1 %tobool41.not, label %lor.lhs.false.exit_crit_edge, label %lor.lhs.false.land.rhs_crit_edge

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %while.cond38.land.rhs_crit_edge
  %34 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tx_enabled, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool42.not = icmp eq i8 %35, 0
  br i1 %tobool42.not, label %land.rhs.exit_crit_edge, label %while.body43

land.rhs.exit_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

while.body43:                                     ; preds = %land.rhs
  %call44 = tail call i32 @jiffies_to_msecs(i32 noundef %char_time.1) #12
  %call45 = tail call i32 @msleep_interruptible(i32 noundef %call44) #12
  %36 = tail call i32 @llvm.read_register.i32(metadata !612) #12
  %and.i98 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i98 to ptr
  %task47 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task47, align 8
  %stack.i.i99 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %stack.i.i99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stack.i.i99, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i100 = icmp eq i32 %44, 0
  br i1 %tobool.not.i100, label %signal_pending.exit104, label %while.body43.exit_crit_edge, !prof !652

while.body43.exit_crit_edge:                      ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

signal_pending.exit104:                           ; preds = %while.body43
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %41, align 4
  %and1.i.i.i.i.i101 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i101)
  %tobool49.not = icmp eq i32 %and1.i.i.i.i.i101, 0
  br i1 %tobool49.not, label %if.end51, label %signal_pending.exit104.exit_crit_edge

signal_pending.exit104.exit_crit_edge:            ; preds = %signal_pending.exit104
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end51:                                         ; preds = %signal_pending.exit104
  br i1 %tobool17.not, label %if.end51.while.cond38.backedge_crit_edge, label %land.lhs.true53

if.end51.while.cond38.backedge_crit_edge:         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond38.backedge

land.lhs.true53:                                  ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub55 = sub i32 %add54, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55)
  %cmp56 = icmp slt i32 %sub55, 0
  br i1 %cmp56, label %land.lhs.true53.exit_crit_edge, label %land.lhs.true53.while.cond38.backedge_crit_edge

land.lhs.true53.while.cond38.backedge_crit_edge:  ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond38.backedge

land.lhs.true53.exit_crit_edge:                   ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

while.cond38.backedge:                            ; preds = %land.lhs.true53.while.cond38.backedge_crit_edge, %if.end51.while.cond38.backedge_crit_edge
  br label %while.cond38

exit:                                             ; preds = %land.lhs.true53.exit_crit_edge, %signal_pending.exit104.exit_crit_edge, %while.body43.exit_crit_edge, %land.rhs.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %if.end36.exit_crit_edge, %land.lhs.true.exit_crit_edge, %signal_pending.exit.exit_crit_edge, %while.body.exit_crit_edge, %while.cond.preheader.exit_crit_edge, %if.end6.exit_crit_edge
  %48 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp61 = icmp sgt i32 %48, 2
  br i1 %cmp61, label %do.end65, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end65:                                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  %device_name67 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.3, i32 noundef 2408, ptr noundef %device_name67) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgslpc_send_xchar(ptr noundef %tty, i8 noundef zeroext %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %conv = zext i8 %ch to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.3, i32 noundef 1690, ptr noundef %device_name, i32 noundef %conv) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv5 = zext i8 %ch to i32
  %x_char = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %x_char to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv5, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch)
  %tobool.not = icmp eq i8 %ch, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %do.body8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body8:                                         ; preds = %if.end4
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tx_enabled = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_enabled, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool18.not = icmp eq i8 %5, 0
  br i1 %tobool18.not, label %if.then19, label %do.body8.if.end20_crit_edge

do.body8.if.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_start(ptr noundef nonnull %1, ptr noundef %tty)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body8.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %serial_signals.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %serial_signals.i, align 4
  %4 = and i8 %3, -96
  store i8 %4, ptr %serial_signals.i, align 4
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 45
  %5 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %6, 116
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %7 = inttoptr i32 %add3.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool.not.i = icmp sgt i8 %8, -1
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %serial_signals.i, align 4
  %11 = or i8 %10, 1
  store i8 %11, ptr %serial_signals.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %12 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %13, 96
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %14 = inttoptr i32 %add14.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not.i = icmp eq i8 %16, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then21.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %serial_signals.i, align 4
  %19 = or i8 %18, 16
  store i8 %19, ptr %serial_signals.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end.i.if.end26.i_crit_edge
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io_base.i, align 4
  %add29.i = add i32 %21, 60
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %22 = inttoptr i32 %add31.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i = zext i8 %23 to i32
  %and36.i = and i32 %conv35.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end26.i.if.end43.i_crit_edge

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %serial_signals.i, align 4
  %26 = or i8 %25, 4
  store i8 %26, ptr %serial_signals.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end26.i.if.end43.i_crit_edge
  %and45.i = and i32 %conv35.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.get_signals.exit_crit_edge

if.end43.i.get_signals.exit_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %serial_signals.i, align 4
  %29 = or i8 %28, 64
  store i8 %29, ptr %serial_signals.i, align 4
  br label %get_signals.exit

get_signals.exit:                                 ; preds = %if.then47.i, %if.end43.i.get_signals.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  %30 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %serial_signals.i, align 4
  %conv6 = zext i8 %31 to i32
  %and = lshr i32 %conv6, 3
  %32 = and i32 %and, 4
  %and9 = lshr i32 %conv6, 6
  %33 = and i32 %and9, 2
  %add = or i32 %32, %33
  %and14 = shl nuw nsw i32 %conv6, 6
  %34 = and i32 %and14, 64
  %add17 = or i32 %add, %34
  %and20 = shl nuw nsw i32 %conv6, 5
  %35 = and i32 %and20, 128
  %add23 = or i32 %add17, %35
  %and26 = shl nuw nsw i32 %conv6, 2
  %36 = and i32 %and26, 256
  %add29 = or i32 %add23, %36
  %and32 = shl nuw nsw i32 %conv6, 1
  %37 = and i32 %and32, 32
  %add35 = or i32 %add29, %37
  %38 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp36 = icmp sgt i32 %38, 2
  br i1 %cmp36, label %do.end40, label %get_signals.exit.if.end_crit_edge

get_signals.exit.if.end_crit_edge:                ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end40:                                         ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.3, i32 noundef 2125, ptr noundef %device_name, i32 noundef %add35) #15
  br label %if.end

if.end:                                           ; preds = %do.end40, %get_signals.exit.if.end_crit_edge
  ret i32 %add35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.3, i32 noundef 2139, ptr noundef %device_name, i32 noundef %set, i32 noundef %clear) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %serial_signals = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %3 = ptrtoint ptr %serial_signals to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %serial_signals, align 4
  %5 = or i8 %4, 32
  store i8 %5, ptr %serial_signals, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %and4 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end11_crit_edge, label %if.then6

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %serial_signals7 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %serial_signals7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %serial_signals7, align 4
  %8 = or i8 %7, -128
  store i8 %8, ptr %serial_signals7, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end3.if.end11_crit_edge
  %and12 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end19_crit_edge, label %if.then14

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %serial_signals15 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %9 = ptrtoint ptr %serial_signals15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %serial_signals15, align 4
  %11 = and i8 %10, -33
  store i8 %11, ptr %serial_signals15, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end11.if.end19_crit_edge
  %and20 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.do.body29_crit_edge, label %if.then22

if.end19.do.body29_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %serial_signals23 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 48
  %12 = ptrtoint ptr %serial_signals23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %serial_signals23, align 4
  %14 = and i8 %13, 127
  store i8 %14, ptr %serial_signals23, align 4
  br label %do.body29

do.body29:                                        ; preds = %if.then22, %if.end19.do.body29_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @set_signals(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call34) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_get_icount(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %icount) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %icount5 = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %icount5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %cnow.sroa.0.0.copyload = load i32, ptr %icount5, align 4
  %cnow.sroa.5.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %cnow.sroa.5.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %cnow.sroa.5.0.copyload = load i32, ptr %cnow.sroa.5.0.icount5.sroa_idx, align 4
  %cnow.sroa.6.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %cnow.sroa.6.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %cnow.sroa.6.0.copyload = load i32, ptr %cnow.sroa.6.0.icount5.sroa_idx, align 4
  %cnow.sroa.7.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %cnow.sroa.7.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cnow.sroa.7.0.copyload = load i32, ptr %cnow.sroa.7.0.icount5.sroa_idx, align 4
  %cnow.sroa.8.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %cnow.sroa.8.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %cnow.sroa.8.0.copyload = load i32, ptr %cnow.sroa.8.0.icount5.sroa_idx, align 4
  %cnow.sroa.9.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 5
  %7 = ptrtoint ptr %cnow.sroa.9.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cnow.sroa.9.0.copyload = load i32, ptr %cnow.sroa.9.0.icount5.sroa_idx, align 4
  %cnow.sroa.10.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %cnow.sroa.10.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %cnow.sroa.10.0.copyload = load i32, ptr %cnow.sroa.10.0.icount5.sroa_idx, align 4
  %cnow.sroa.11.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %cnow.sroa.11.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %cnow.sroa.11.0.copyload = load i32, ptr %cnow.sroa.11.0.icount5.sroa_idx, align 4
  %cnow.sroa.12.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %cnow.sroa.12.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %cnow.sroa.12.0.copyload = load i32, ptr %cnow.sroa.12.0.icount5.sroa_idx, align 4
  %cnow.sroa.13.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 9
  %11 = ptrtoint ptr %cnow.sroa.13.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %cnow.sroa.13.0.copyload = load i32, ptr %cnow.sroa.13.0.icount5.sroa_idx, align 4
  %cnow.sroa.14.0.icount5.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %1, i32 0, i32 4, i32 10
  %12 = ptrtoint ptr %cnow.sroa.14.0.icount5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %cnow.sroa.14.0.copyload = load i32, ptr %cnow.sroa.14.0.icount5.sroa_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  %13 = ptrtoint ptr %icount to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cnow.sroa.0.0.copyload, ptr %icount, align 4
  %dsr8 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 1
  %14 = ptrtoint ptr %dsr8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cnow.sroa.5.0.copyload, ptr %dsr8, align 4
  %rng9 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 2
  %15 = ptrtoint ptr %rng9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cnow.sroa.6.0.copyload, ptr %rng9, align 4
  %dcd10 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 3
  %16 = ptrtoint ptr %dcd10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cnow.sroa.7.0.copyload, ptr %dcd10, align 4
  %rx11 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 4
  %17 = ptrtoint ptr %rx11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cnow.sroa.9.0.copyload, ptr %rx11, align 4
  %tx12 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 5
  %18 = ptrtoint ptr %tx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cnow.sroa.8.0.copyload, ptr %tx12, align 4
  %frame13 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 6
  %19 = ptrtoint ptr %frame13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cnow.sroa.10.0.copyload, ptr %frame13, align 4
  %overrun14 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 7
  %20 = ptrtoint ptr %overrun14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cnow.sroa.12.0.copyload, ptr %overrun14, align 4
  %parity15 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 8
  %21 = ptrtoint ptr %parity15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cnow.sroa.11.0.copyload, ptr %parity15, align 4
  %brk16 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 9
  %22 = ptrtoint ptr %brk16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cnow.sroa.13.0.copyload, ptr %brk16, align 4
  %buf_overrun17 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 10
  %23 = ptrtoint ptr %buf_overrun17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cnow.sroa.14.0.copyload, ptr %buf_overrun17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgslpc_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  %stat_buf.i = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.274) #12
  %info.04 = load ptr, ptr @mgslpc_device_list, align 4
  %tobool.not5 = icmp eq ptr %info.04, null
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = getelementptr inbounds [30 x i8], ptr %stat_buf.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %line_info.exit.while.body_crit_edge, %while.body.lr.ph
  %info.06 = phi ptr [ %info.04, %while.body.lr.ph ], [ %info.0, %line_info.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %stat_buf.i) #12
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 44
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 45
  %1 = call ptr @memset(ptr %stat_buf.i, i32 255, i32 30)
  %2 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_base.i, align 4
  %irq_level.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 46
  %4 = ptrtoint ptr %irq_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_level.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.252, ptr noundef %device_name.i, i32 noundef %3, i32 noundef %5) #12
  %lock.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 27
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %serial_signals.i.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 48
  %6 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %serial_signals.i.i, align 4
  %8 = and i8 %7, -96
  store i8 %8, ptr %serial_signals.i.i, align 4
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_base.i, align 4
  %add.i.i = add i32 %10, 116
  %and2.i.i = and i32 %add.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %11 = inttoptr i32 %add3.i.i to ptr
  %12 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #12, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not.i.i = icmp sgt i8 %12, -1
  br i1 %tobool.not.i.i, label %while.body.if.end.i.i_crit_edge, label %if.then.i.i

while.body.if.end.i.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %serial_signals.i.i, align 4
  %15 = or i8 %14, 1
  store i8 %15, ptr %serial_signals.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.if.end.i.i_crit_edge
  %16 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_base.i, align 4
  %add12.i.i = add i32 %17, 96
  %and13.i.i = and i32 %add12.i.i, 1048575
  %add14.i.i = or i32 %and13.i.i, -18874368
  %18 = inttoptr i32 %add14.i.i to ptr
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #12, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool20.not.i.i, label %if.end.i.i.if.end26.i.i_crit_edge, label %if.then21.i.i

if.end.i.i.if.end26.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i

if.then21.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %serial_signals.i.i, align 4
  %23 = or i8 %22, 16
  store i8 %23, ptr %serial_signals.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then21.i.i, %if.end.i.i.if.end26.i.i_crit_edge
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_base.i, align 4
  %add29.i.i = add i32 %25, 60
  %and30.i.i = and i32 %add29.i.i, 1048575
  %add31.i.i = or i32 %and30.i.i, -18874368
  %26 = inttoptr i32 %add31.i.i to ptr
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #12, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i.i = zext i8 %27 to i32
  %and36.i.i = and i32 %conv35.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %if.end26.i.i.if.end43.i.i_crit_edge

if.end26.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i.i

if.then38.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %serial_signals.i.i, align 4
  %30 = or i8 %29, 4
  store i8 %30, ptr %serial_signals.i.i, align 4
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then38.i.i, %if.end26.i.i.if.end43.i.i_crit_edge
  %and45.i.i = and i32 %conv35.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.then47.i.i, label %if.end43.i.i.get_signals.exit.i_crit_edge

if.end43.i.i.get_signals.exit.i_crit_edge:        ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit.i

if.then47.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %serial_signals.i.i, align 4
  %33 = or i8 %32, 64
  store i8 %33, ptr %serial_signals.i.i, align 4
  br label %get_signals.exit.i

get_signals.exit.i:                               ; preds = %if.then47.i.i, %if.end43.i.i.get_signals.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %34 = ptrtoint ptr %stat_buf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %stat_buf.i, align 1
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %0, align 1
  %36 = ptrtoint ptr %serial_signals.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %serial_signals.i.i, align 4
  %38 = and i8 %37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %get_signals.exit.i.if.end.i_crit_edge, label %if.then.i

get_signals.exit.i.if.end.i_crit_edge:            ; preds = %get_signals.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %get_signals.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %strlen195.i = call i32 @strlen(ptr noundef nonnull %stat_buf.i) #19
  %endptr196.i = getelementptr i8, ptr %stat_buf.i, i32 %strlen195.i
  %39 = call ptr @memcpy(ptr %endptr196.i, ptr @.str.253, i32 5)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %get_signals.exit.i.if.end.i_crit_edge
  %40 = and i8 %37, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool13.not.i = icmp eq i8 %40, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %strlen193.i = call i32 @strlen(ptr noundef nonnull %stat_buf.i) #19
  %endptr194.i = getelementptr i8, ptr %stat_buf.i, i32 %strlen193.i
  %41 = call ptr @memcpy(ptr %endptr194.i, ptr @.str.254, i32 5)
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %tobool21.not.i = icmp sgt i8 %37, -1
  br i1 %tobool21.not.i, label %if.end17.i.if.end25.i_crit_edge, label %if.then22.i

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %strlen191.i = call i32 @strlen(ptr noundef nonnull %stat_buf.i) #19
  %endptr192.i = getelementptr i8, ptr %stat_buf.i, i32 %strlen191.i
  %42 = call ptr @memcpy(ptr %endptr192.i, ptr @.str.255, i32 5)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end25.i_crit_edge
  %43 = and i8 %37, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool29.not.i = icmp eq i8 %43, 0
  br i1 %tobool29.not.i, label %if.end25.i.if.end33.i_crit_edge, label %if.then30.i

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %strlen189.i = call i32 @strlen(ptr noundef nonnull %stat_buf.i) #19
  %endptr190.i = getelementptr i8, ptr %stat_buf.i, i32 %strlen189.i
  %44 = call ptr @memcpy(ptr %endptr190.i, ptr @.str.256, i32 5)
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end25.i.if.end33.i_crit_edge
  %45 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool37.not.i = icmp eq i8 %45, 0
  br i1 %tobool37.not.i, label %if.end33.i.if.end41.i_crit_edge, label %if.then38.i

if.end33.i.if.end41.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %strlen187.i = call i32 @strlen(ptr noundef nonnull %stat_buf.i) #19
  %endptr188.i = getelementptr i8, ptr %stat_buf.i, i32 %strlen187.i
  %46 = ptrtoint ptr %endptr188.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 2084783104, ptr %endptr188.i, align 1
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end33.i.if.end41.i_crit_edge
  %47 = and i8 %37, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool45.not.i = icmp eq i8 %47, 0
  br i1 %tobool45.not.i, label %if.end41.i.if.end49.i_crit_edge, label %if.then46.i

if.end41.i.if.end49.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %strlen.i = call i32 @strlen(ptr noundef nonnull %stat_buf.i) #19
  %endptr.i = getelementptr i8, ptr %stat_buf.i, i32 %strlen.i
  %48 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 2085767424, ptr %endptr.i, align 1
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end41.i.if.end49.i_crit_edge
  %params.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 47
  %49 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp50.i = icmp eq i32 %50, 2
  br i1 %cmp50.i, label %if.then52.i, label %if.else.i

if.then52.i:                                      ; preds = %if.end49.i
  %txok.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 11
  %51 = ptrtoint ptr %txok.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %txok.i, align 4
  %rxok.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 20
  %53 = ptrtoint ptr %rxok.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rxok.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.259, i32 noundef %52, i32 noundef %54) #12
  %txunder.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 12
  %55 = ptrtoint ptr %txunder.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %txunder.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool55.not.i = icmp eq i32 %56, 0
  br i1 %tobool55.not.i, label %if.then52.i.if.end59.i_crit_edge, label %if.then56.i

if.then52.i.if.end59.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then56.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.260, i32 noundef %56) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then56.i, %if.then52.i.if.end59.i_crit_edge
  %txabort.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 13
  %57 = ptrtoint ptr %txabort.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txabort.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool61.not.i = icmp eq i32 %58, 0
  br i1 %tobool61.not.i, label %if.end59.i.if.end65.i_crit_edge, label %if.then62.i

if.end59.i.if.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.261, i32 noundef %58) #12
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then62.i, %if.end59.i.if.end65.i_crit_edge
  %rxshort.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 15
  %59 = ptrtoint ptr %rxshort.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rxshort.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool67.not.i = icmp eq i32 %60, 0
  br i1 %tobool67.not.i, label %if.end65.i.if.end71.i_crit_edge, label %if.then68.i

if.end65.i.if.end71.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then68.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.262, i32 noundef %60) #12
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then68.i, %if.end65.i.if.end71.i_crit_edge
  %rxlong.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 16
  %61 = ptrtoint ptr %rxlong.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rxlong.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool73.not.i = icmp eq i32 %62, 0
  br i1 %tobool73.not.i, label %if.end71.i.if.end77.i_crit_edge, label %if.then74.i

if.end71.i.if.end77.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

if.then74.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.263, i32 noundef %62) #12
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %if.end71.i.if.end77.i_crit_edge
  %rxover.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 18
  %63 = ptrtoint ptr %rxover.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rxover.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool79.not.i = icmp eq i32 %64, 0
  br i1 %tobool79.not.i, label %if.end77.i.if.end83.i_crit_edge, label %if.then80.i

if.end77.i.if.end83.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i

if.then80.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.264, i32 noundef %64) #12
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then80.i, %if.end77.i.if.end83.i_crit_edge
  %rxcrc.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 19
  %65 = ptrtoint ptr %rxcrc.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rxcrc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool85.not.i = icmp eq i32 %66, 0
  br i1 %tobool85.not.i, label %if.end83.i.line_info.exit_crit_edge, label %if.then86.i

if.end83.i.line_info.exit_crit_edge:              ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %line_info.exit

if.then86.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.265, i32 noundef %66) #12
  br label %line_info.exit

if.else.i:                                        ; preds = %if.end49.i
  %tx.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 4
  %67 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx.i, align 4
  %rx.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 5
  %69 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.266, i32 noundef %68, i32 noundef %70) #12
  %frame.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 6
  %71 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %frame.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool93.not.i = icmp eq i32 %72, 0
  br i1 %tobool93.not.i, label %if.else.i.if.end97.i_crit_edge, label %if.then94.i

if.else.i.if.end97.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97.i

if.then94.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.267, i32 noundef %72) #12
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then94.i, %if.else.i.if.end97.i_crit_edge
  %parity.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 7
  %73 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %parity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool99.not.i = icmp eq i32 %74, 0
  br i1 %tobool99.not.i, label %if.end97.i.if.end103.i_crit_edge, label %if.then100.i

if.end97.i.if.end103.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103.i

if.then100.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.268, i32 noundef %74) #12
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then100.i, %if.end97.i.if.end103.i_crit_edge
  %brk.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 9
  %75 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %brk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool105.not.i = icmp eq i32 %76, 0
  br i1 %tobool105.not.i, label %if.end103.i.if.end109.i_crit_edge, label %if.then106.i

if.end103.i.if.end109.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109.i

if.then106.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.269, i32 noundef %76) #12
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then106.i, %if.end103.i.if.end109.i_crit_edge
  %overrun.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 4, i32 8
  %77 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %overrun.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool111.not.i = icmp eq i32 %78, 0
  br i1 %tobool111.not.i, label %if.end109.i.line_info.exit_crit_edge, label %if.then112.i

if.end109.i.line_info.exit_crit_edge:             ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %line_info.exit

if.then112.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.270, i32 noundef %78) #12
  br label %line_info.exit

line_info.exit:                                   ; preds = %if.then112.i, %if.end109.i.line_info.exit_crit_edge, %if.then86.i, %if.end83.i.line_info.exit_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.271, ptr noundef %0) #12
  %tx_active.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 40
  %79 = ptrtoint ptr %tx_active.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tx_active.i, align 1, !range !639
  %81 = zext i8 %80 to i32
  %bh_requested.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 32
  %82 = ptrtoint ptr %bh_requested.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bh_requested.i, align 1, !range !639
  %84 = zext i8 %83 to i32
  %bh_running.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 31
  %85 = ptrtoint ptr %bh_running.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bh_running.i, align 4, !range !639
  %87 = zext i8 %86 to i32
  %pending_bh.i = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 30
  %88 = ptrtoint ptr %pending_bh.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pending_bh.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.272, i32 noundef %81, i32 noundef %84, i32 noundef %87, i32 noundef %89) #12
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %stat_buf.i) #12
  %next_device = getelementptr inbounds %struct._mgslpc_info, ptr %info.06, i32 0, i32 23
  %90 = ptrtoint ptr %next_device to i32
  call void @__asan_load4_noabort(i32 %90)
  %info.0 = load ptr, ptr %next_device, align 4
  %tobool.not = icmp eq ptr %info.0, null
  br i1 %tobool.not, label %line_info.exit.while.end_crit_edge, label %line_info.exit.while.body_crit_edge

line_info.exit.while.body_crit_edge:              ; preds = %line_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

line_info.exit.while.end_crit_edge:               ; preds = %line_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %line_info.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_block_til_ready(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_close_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_params(ptr noundef %info, ptr noundef %user_params) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  tail call void @__might_fault(ptr noundef nonnull @.str.144, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end.copy_to_user.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_params, i32 32, i32 -1226833920) #17, !srcloc !650
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %params, i32 noundef 32) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user_params, ptr noundef %params, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end.copy_to_user.exit.thread_crit_edge
  %2 = phi i32 [ -14, %if.end.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_params(ptr noundef %info, ptr noundef %new_params, ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  %tmp_params = alloca %struct._MGSL_PARAMS, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_params) #12
  %0 = call ptr @memset(ptr %tmp_params, i32 255, i32 32)
  %1 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.if.end59.i.i_crit_edge

entry.if.end59.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.3, i32 noundef 1805, ptr noundef %device_name) #15
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %do.end, %entry.if.end59.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.144, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %new_params, i32 32, i32 -1226833920) #17, !srcloc !651
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !652

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp_params, i32 noundef 32) #12
  %3 = call i32 @llvm.read_register.i32(metadata !612) #12
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !653
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp_params, ptr noundef %new_params, i32 noundef 32) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #12, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body16, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !652

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i35 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i35
  %add.ptr.i.i = getelementptr i8, ptr %tmp_params, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i35)
  %7 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4 = icmp sgt i32 %7, 2
  br i1 %cmp4, label %do.end8, label %if.then11.i.i.cleanup_crit_edge

if.then11.i.i.cleanup_crit_edge:                  ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end8:                                          ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %device_name10 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.3, i32 noundef 1810, ptr noundef %device_name10) #15
  br label %cleanup

do.body16:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call20 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %8 = call ptr @memcpy(ptr %params, ptr %tmp_params, i32 32)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #12
  call fastcc void @mgslpc_change_params(ptr noundef %info, ptr noundef %tty)
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %do.end8, %if.then11.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body16 ], [ -14, %do.end8 ], [ -14, %if.then11.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_params) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_txidle(ptr noundef %info, ptr noundef %idle_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %idle_mode1 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 42
  %1 = ptrtoint ptr %idle_mode1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idle_mode1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef %device_name, i32 noundef %2) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %idle_mode2 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 42
  tail call void @__might_fault(ptr noundef nonnull @.str.144, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end.copy_to_user.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %idle_mode, i32 4, i32 -1226833920) #17, !srcloc !650
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %idle_mode2, i32 noundef 4) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %idle_mode, ptr noundef %idle_mode2, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end.copy_to_user.exit.thread_crit_edge
  %4 = phi i32 [ -14, %if.end.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_txidle(ptr noundef %info, i32 noundef %idle_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %device_name, i32 noundef %idle_mode) #15
  br label %do.body2

do.body2:                                         ; preds = %do.end, %entry.do.body2_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %idle_mode11 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 42
  %1 = ptrtoint ptr %idle_mode11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %idle_mode, ptr %idle_mode11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idle_mode)
  %cmp.i = icmp eq i32 %idle_mode, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %2 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %3, 45
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp.i, label %do.body.i, label %do.body9.i

do.body.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %6 = or i8 %5, 8
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_base.i, align 4
  %add5.i = add i32 %8, 45
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #12, !srcloc !628
  br label %tx_set_idle.exit

do.body9.i:                                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %10 = and i8 %5, -9
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_base.i, align 4
  %add23.i = add i32 %12, 45
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %13 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #12, !srcloc !628
  br label %tx_set_idle.exit

tx_set_idle.exit:                                 ; preds = %do.body9.i, %do.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_interface(ptr noundef %info, ptr noundef %if_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %if_mode1 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 43
  %1 = ptrtoint ptr %if_mode1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %if_mode1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %device_name, i32 noundef %2) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %if_mode2 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 43
  tail call void @__might_fault(ptr noundef nonnull @.str.144, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end.copy_to_user.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %if_mode, i32 4, i32 -1226833920) #17, !srcloc !650
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %if_mode2, i32 noundef 4) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %if_mode, ptr noundef %if_mode2, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end.copy_to_user.exit.thread_crit_edge
  %4 = phi i32 [ -14, %if.end.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_interface(ptr noundef %info, i32 noundef %if_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef %device_name, i32 noundef %if_mode) #15
  br label %do.body2

do.body2:                                         ; preds = %do.end, %entry.do.body2_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %if_mode11 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 43
  %1 = ptrtoint ptr %if_mode11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %if_mode, ptr %if_mode11, align 4
  %io_base = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_base, align 4
  %add = add i32 %3, 60
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %4 = inttoptr i32 %add12 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !725
  %6 = and i8 %5, 15
  %7 = ptrtoint ptr %if_mode11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %if_mode11, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %8, label %do.body2.do.body30_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb22
    i32 3, label %sw.bb26
  ]

do.body2.do.body30_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

sw.bb:                                            ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %10 = or i8 %6, 32
  br label %do.body30

sw.bb22:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %11 = or i8 %6, -32
  br label %do.body30

sw.bb26:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %12 = or i8 %6, 64
  br label %do.body30

do.body30:                                        ; preds = %sw.bb26, %sw.bb22, %sw.bb, %do.body2.do.body30_crit_edge
  %val.0 = phi i8 [ %6, %do.body2.do.body30_crit_edge ], [ %12, %sw.bb26 ], [ %11, %sw.bb22 ], [ %10, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !726
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_base, align 4
  %add34 = add i32 %14, 60
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %15 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %val.0) #12, !srcloc !628
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_txenable(ptr noundef %info, i32 noundef %enable, ptr noundef %tty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %device_name, i32 noundef %enable) #15
  br label %do.body2

do.body2:                                         ; preds = %do.end, %entry.do.body2_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %tx_enabled15 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 39
  %1 = ptrtoint ptr %tx_enabled15 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_enabled15, align 2, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool16.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.body2
  br i1 %tobool16.not, label %if.then13, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tx_start(ptr noundef %info, ptr noundef %tty)
  br label %if.end19

if.else:                                          ; preds = %do.body2
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.then17

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.else
  %3 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp sgt i32 %3, 4
  br i1 %cmp.i, label %do.end.i, label %if.then17.tx_stop.exit_crit_edge

if.then17.tx_stop.exit_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %tx_stop.exit

do.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.3, i32 noundef 3316, ptr noundef %device_name.i) #15
  br label %tx_stop.exit

tx_stop.exit:                                     ; preds = %do.end.i, %if.then17.tx_stop.exit_crit_edge
  %tx_timer.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 22
  %call1.i = tail call i32 @del_timer(ptr noundef %tx_timer.i) #12
  %4 = ptrtoint ptr %tx_enabled15 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tx_enabled15, align 2
  %tx_active.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %5 = ptrtoint ptr %tx_active.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tx_active.i, align 1
  br label %if.end19

if.end19:                                         ; preds = %tx_stop.exit, %if.else.if.end19_crit_edge, %if.then13, %if.then11.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_rxenable(ptr noundef %info, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef %device_name, i32 noundef %enable) #15
  br label %do.body2

do.body2:                                         ; preds = %do.end, %entry.do.body2_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %rx_enabled15 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 37
  %1 = ptrtoint ptr %rx_enabled15 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rx_enabled15, align 4, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool16.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.body2
  br i1 %tobool16.not, label %if.then13, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rx_start(ptr noundef %info)
  br label %if.end19

if.else:                                          ; preds = %do.body2
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.then17

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.else
  %3 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp sgt i32 %3, 4
  br i1 %cmp.i, label %do.end.i, label %if.then17.rx_stop.exit_crit_edge

if.then17.rx_stop.exit_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_stop.exit

do.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %device_name.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.3, i32 noundef 3249, ptr noundef %device_name.i) #15
  br label %rx_stop.exit

rx_stop.exit:                                     ; preds = %do.end.i, %if.then17.rx_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !662
  tail call void @arm_heavy_mb() #12
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %5, 34
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add3.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #12, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !663
  %8 = and i8 %7, -9
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_base.i, align 4
  %add10.i = add i32 %10, 34
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %11 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %8) #12, !srcloc !628
  %12 = ptrtoint ptr %rx_enabled15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rx_enabled15, align 4
  %rx_overflow.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 38
  %13 = ptrtoint ptr %rx_overflow.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rx_overflow.i, align 1
  br label %if.end19

if.end19:                                         ; preds = %rx_stop.exit, %if.else.if.end19_crit_edge, %if.then13, %if.then11.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_abort(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef %device_name) #15
  br label %do.body2

do.body2:                                         ; preds = %do.end, %entry.do.body2_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tx_active = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 40
  %1 = ptrtoint ptr %tx_active to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_active, align 1, !range !639
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body2.if.end18_crit_edge, label %land.lhs.true

do.body2.if.end18_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %do.body2
  %tx_count = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 12
  %3 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true13

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp14 = icmp eq i32 %6, 2
  br i1 %cmp14, label %if.then16, label %land.lhs.true13.if.end18_crit_edge

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  %tx_get = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 11
  %7 = ptrtoint ptr %tx_get to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_get, align 4
  %tx_put = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 10
  %8 = ptrtoint ptr %tx_put to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_put, align 4
  %9 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_count, align 4
  %tx_aborting = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 41
  %10 = ptrtoint ptr %tx_aborting to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tx_aborting, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true13.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %do.body2.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_stats(ptr noundef %info, ptr noundef %user_icount) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %device_name) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %user_icount, null
  %icount = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 4
  br i1 %tobool.not, label %if.then1, label %if.end59.i.i

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = call ptr @memset(ptr %icount, i32 0, i32 92)
  br label %if.end8

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.144, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %user_icount, i32 92, i32 -1226833920) #17, !srcloc !650
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %icount, i32 noundef 92) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %user_icount, ptr noundef %icount, i32 noundef 92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool4.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool4.not, label %copy_to_user.exit.if.end8_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit.if.end8_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %copy_to_user.exit.if.end8_crit_edge, %if.then1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_events(ptr noundef %info, ptr noundef %mask_ptr) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #12
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !638
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #12
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !612) #12
  %and.i523 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i523 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.144, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %mask_ptr, i32 4, i32 -1226833920) #17, !srcloc !651
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !652

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask, i32 noundef 4) #12
  %15 = call i32 @llvm.read_register.i32(metadata !612) #12
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !653
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mask, ptr noundef %mask_ptr, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !652

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i540 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i540
  %add.ptr.i.i = getelementptr i8, ptr %mask, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i540)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %19 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp sgt i32 %19, 2
  br i1 %cmp, label %do.end, label %if.end.do.body9_crit_edge

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device_name = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 44
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef %device_name, i32 noundef %21) #15
  br label %do.body9

do.body9:                                         ; preds = %do.end, %if.end.do.body9_crit_edge
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %serial_signals.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 48
  %22 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %serial_signals.i, align 4
  %24 = and i8 %23, -96
  store i8 %24, ptr %serial_signals.i, align 4
  %io_base.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 45
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io_base.i, align 4
  %add.i = add i32 %26, 116
  %and2.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %27 = inttoptr i32 %add3.i to ptr
  %28 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #12, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool.not.i = icmp sgt i8 %28, -1
  br i1 %tobool.not.i, label %do.body9.if.end.i_crit_edge, label %if.then.i

do.body9.if.end.i_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %serial_signals.i, align 4
  %31 = or i8 %30, 1
  store i8 %31, ptr %serial_signals.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body9.if.end.i_crit_edge
  %32 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_base.i, align 4
  %add12.i = add i32 %33, 96
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %34 = inttoptr i32 %add14.i to ptr
  %35 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #12, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool20.not.i = icmp eq i8 %36, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then21.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %serial_signals.i, align 4
  %39 = or i8 %38, 16
  store i8 %39, ptr %serial_signals.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end.i.if.end26.i_crit_edge
  %40 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io_base.i, align 4
  %add29.i = add i32 %41, 60
  %and30.i = and i32 %add29.i, 1048575
  %add31.i = or i32 %and30.i, -18874368
  %42 = inttoptr i32 %add31.i to ptr
  %43 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #12, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  %conv35.i = zext i8 %43 to i32
  %and36.i = and i32 %conv35.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end26.i.if.end43.i_crit_edge

if.end26.i.if.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %serial_signals.i, align 4
  %46 = or i8 %45, 4
  store i8 %46, ptr %serial_signals.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end26.i.if.end43.i_crit_edge
  %and45.i = and i32 %conv35.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.get_signals.exit_crit_edge

if.end43.i.get_signals.exit_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_signals.exit

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %serial_signals.i, align 4
  %49 = or i8 %48, 64
  store i8 %49, ptr %serial_signals.i, align 4
  br label %get_signals.exit

get_signals.exit:                                 ; preds = %if.then47.i, %if.end43.i.get_signals.exit_crit_edge
  %50 = ptrtoint ptr %serial_signals.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %serial_signals.i, align 4
  %conv18 = zext i8 %51 to i32
  %52 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask, align 4
  %and = and i32 %conv18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %cond20 = select i1 %tobool19.not, i32 2, i32 1
  %and21 = and i32 %conv18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, i32 32, i32 16
  %add = or i32 %cond20, %cond23
  %and24 = and i32 %conv18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, i32 8, i32 4
  %add27 = or i32 %add, %cond26
  %and28 = and i32 %conv18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond30 = select i1 %tobool29.not, i32 128, i32 64
  %add31 = or i32 %add27, %cond30
  %and32 = and i32 %add31, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end36, label %exit.thread

exit.thread:                                      ; preds = %get_signals.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #12
  br label %if.then429

if.end36:                                         ; preds = %get_signals.exit
  %cprev.sroa.5.0.icount.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 4, i32 21
  %54 = ptrtoint ptr %cprev.sroa.5.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %cprev.sroa.5.0.copyload = load i32, ptr %cprev.sroa.5.0.icount.sroa_idx, align 4
  %cprev.sroa.8.0.icount.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 4, i32 22
  %55 = ptrtoint ptr %cprev.sroa.8.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %cprev.sroa.8.0.copyload = load i32, ptr %cprev.sroa.8.0.icount.sroa_idx, align 4
  %input_signal_events = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 54
  %56 = ptrtoint ptr %input_signal_events to i32
  call void @__asan_load4_noabort(i32 %56)
  %oldsigs.sroa.0.0.copyload = load i32, ptr %input_signal_events, align 4
  %oldsigs.sroa.7.0.input_signal_events.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 54, i32 1
  %57 = ptrtoint ptr %oldsigs.sroa.7.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %oldsigs.sroa.7.0.copyload = load i32, ptr %oldsigs.sroa.7.0.input_signal_events.sroa_idx, align 4
  %oldsigs.sroa.11.0.input_signal_events.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 54, i32 2
  %58 = ptrtoint ptr %oldsigs.sroa.11.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %58)
  %oldsigs.sroa.11.0.copyload = load i32, ptr %oldsigs.sroa.11.0.input_signal_events.sroa_idx, align 4
  %oldsigs.sroa.15.0.input_signal_events.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 54, i32 3
  %59 = ptrtoint ptr %oldsigs.sroa.15.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %59)
  %oldsigs.sroa.15.0.copyload = load i32, ptr %oldsigs.sroa.15.0.input_signal_events.sroa_idx, align 4
  %oldsigs.sroa.19.0.input_signal_events.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 54, i32 4
  %60 = ptrtoint ptr %oldsigs.sroa.19.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %60)
  %oldsigs.sroa.19.0.copyload = load i32, ptr %oldsigs.sroa.19.0.input_signal_events.sroa_idx, align 4
  %oldsigs.sroa.23.0.input_signal_events.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 54, i32 5
  %61 = ptrtoint ptr %oldsigs.sroa.23.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %oldsigs.sroa.23.0.copyload = load i32, ptr %oldsigs.sroa.23.0.input_signal_events.sroa_idx, align 4
  %oldsigs.sroa.27.0.input_signal_events.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 54, i32 6
  %62 = ptrtoint ptr %oldsigs.sroa.27.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %62)
  %oldsigs.sroa.27.0.copyload = load i32, ptr %oldsigs.sroa.27.0.input_signal_events.sroa_idx, align 4
  %oldsigs.sroa.31.0.input_signal_events.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 54, i32 7
  %63 = ptrtoint ptr %oldsigs.sroa.31.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %oldsigs.sroa.31.0.copyload = load i32, ptr %oldsigs.sroa.31.0.input_signal_events.sroa_idx, align 4
  %params = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 47
  %64 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp37 = icmp ne i32 %65, 2
  %and39 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond550 = select i1 %cmp37, i1 true, i1 %tobool40.not
  br i1 %or.cond550, label %if.end36.__here_crit_edge, label %if.then41

if.end36.__here_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %imra_value.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 24
  %66 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %imra_value.i, align 4
  %and.i524 = and i16 %67, -65
  store i16 %and.i524, ptr %imra_value.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !660
  call void @arm_heavy_mb() #12
  %68 = ptrtoint ptr %imra_value.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %imra_value.i, align 4
  %70 = call i16 @llvm.bswap.i16(i16 %69) #12
  %71 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %io_base.i, align 4
  %add.i526 = add i32 %72, 58
  %and6.i = and i32 %add.i526, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %73 = inttoptr i32 %add7.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %73, i16 %70) #12, !srcloc !633
  br label %__here

__here:                                           ; preds = %if.then41, %if.end36.__here_crit_edge
  %74 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 212
  %76 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 ptrtoint (ptr blockaddress(@wait_events, %__here) to i32), ptr %task_state_change, align 4
  %77 = load ptr, ptr %task, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 1, ptr %77, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !727
  %event_wait_q = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 21
  call void @add_wait_queue(ptr noundef %event_wait_q, ptr noundef nonnull %wait) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #12
  br label %for.cond

for.cond:                                         ; preds = %if.end257.for.cond_crit_edge, %__here
  %oldsigs.sroa.0.0 = phi i32 [ %oldsigs.sroa.0.0.copyload, %__here ], [ %newsigs.sroa.0.0.copyload, %if.end257.for.cond_crit_edge ]
  %oldsigs.sroa.7.0 = phi i32 [ %oldsigs.sroa.7.0.copyload, %__here ], [ %newsigs.sroa.7.0.copyload, %if.end257.for.cond_crit_edge ]
  %oldsigs.sroa.11.0 = phi i32 [ %oldsigs.sroa.11.0.copyload, %__here ], [ %newsigs.sroa.10.0.copyload, %if.end257.for.cond_crit_edge ]
  %oldsigs.sroa.15.0 = phi i32 [ %oldsigs.sroa.15.0.copyload, %__here ], [ %newsigs.sroa.13.0.copyload, %if.end257.for.cond_crit_edge ]
  %oldsigs.sroa.19.0 = phi i32 [ %oldsigs.sroa.19.0.copyload, %__here ], [ %newsigs.sroa.16.0.copyload, %if.end257.for.cond_crit_edge ]
  %oldsigs.sroa.23.0 = phi i32 [ %oldsigs.sroa.23.0.copyload, %__here ], [ %newsigs.sroa.19.0.copyload, %if.end257.for.cond_crit_edge ]
  %oldsigs.sroa.27.0 = phi i32 [ %oldsigs.sroa.27.0.copyload, %__here ], [ %newsigs.sroa.22.0.copyload, %if.end257.for.cond_crit_edge ]
  %oldsigs.sroa.31.0 = phi i32 [ %oldsigs.sroa.31.0.copyload, %__here ], [ %newsigs.sroa.25.0.copyload, %if.end257.for.cond_crit_edge ]
  %cprev.sroa.8.0 = phi i32 [ %cprev.sroa.8.0.copyload, %__here ], [ %cnow.sroa.7.0.copyload, %if.end257.for.cond_crit_edge ]
  %cprev.sroa.5.0 = phi i32 [ %cprev.sroa.5.0.copyload, %__here ], [ %cnow.sroa.5.0.copyload, %if.end257.for.cond_crit_edge ]
  call void @schedule() #12
  %79 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stack.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  %85 = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i529 = icmp eq i32 %85, 0
  br i1 %tobool.not.i529, label %signal_pending.exit, label %for.cond.for.end_crit_edge, !prof !652

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

signal_pending.exit:                              ; preds = %for.cond
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %82, align 4
  %and1.i.i.i.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool116.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool116.not, label %do.body120, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body120:                                       ; preds = %signal_pending.exit
  %call128 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %88 = ptrtoint ptr %cprev.sroa.5.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %88)
  %cnow.sroa.5.0.copyload = load i32, ptr %cprev.sroa.5.0.icount.sroa_idx, align 4
  %89 = ptrtoint ptr %cprev.sroa.8.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %89)
  %cnow.sroa.7.0.copyload = load i32, ptr %cprev.sroa.8.0.icount.sroa_idx, align 4
  %90 = ptrtoint ptr %input_signal_events to i32
  call void @__asan_load4_noabort(i32 %90)
  %newsigs.sroa.0.0.copyload = load i32, ptr %input_signal_events, align 4
  %91 = ptrtoint ptr %oldsigs.sroa.7.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %newsigs.sroa.7.0.copyload = load i32, ptr %oldsigs.sroa.7.0.input_signal_events.sroa_idx, align 4
  %92 = ptrtoint ptr %oldsigs.sroa.11.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %newsigs.sroa.10.0.copyload = load i32, ptr %oldsigs.sroa.11.0.input_signal_events.sroa_idx, align 4
  %93 = ptrtoint ptr %oldsigs.sroa.15.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %newsigs.sroa.13.0.copyload = load i32, ptr %oldsigs.sroa.15.0.input_signal_events.sroa_idx, align 4
  %94 = ptrtoint ptr %oldsigs.sroa.19.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %94)
  %newsigs.sroa.16.0.copyload = load i32, ptr %oldsigs.sroa.19.0.input_signal_events.sroa_idx, align 4
  %95 = ptrtoint ptr %oldsigs.sroa.23.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %95)
  %newsigs.sroa.19.0.copyload = load i32, ptr %oldsigs.sroa.23.0.input_signal_events.sroa_idx, align 4
  %96 = ptrtoint ptr %oldsigs.sroa.27.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %96)
  %newsigs.sroa.22.0.copyload = load i32, ptr %oldsigs.sroa.27.0.input_signal_events.sroa_idx, align 4
  %97 = ptrtoint ptr %oldsigs.sroa.31.0.input_signal_events.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %97)
  %newsigs.sroa.25.0.copyload = load i32, ptr %oldsigs.sroa.31.0.input_signal_events.sroa_idx, align 4
  br label %__here186

__here186:                                        ; preds = %do.body120
  %98 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task, align 8
  %task_state_change190 = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 212
  %100 = ptrtoint ptr %task_state_change190 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 ptrtoint (ptr blockaddress(@wait_events, %__here186) to i32), ptr %task_state_change190, align 4
  %101 = load ptr, ptr %task, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 1, ptr %101, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !728
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call128) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.10.0.copyload, i32 %oldsigs.sroa.11.0)
  %cmp218 = icmp eq i32 %newsigs.sroa.10.0.copyload, %oldsigs.sroa.11.0
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.13.0.copyload, i32 %oldsigs.sroa.15.0)
  %cmp222 = icmp eq i32 %newsigs.sroa.13.0.copyload, %oldsigs.sroa.15.0
  %or.cond = select i1 %cmp218, i1 %cmp222, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.16.0.copyload, i32 %oldsigs.sroa.19.0)
  %cmp226 = icmp eq i32 %newsigs.sroa.16.0.copyload, %oldsigs.sroa.19.0
  %or.cond515 = select i1 %or.cond, i1 %cmp226, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.19.0.copyload, i32 %oldsigs.sroa.23.0)
  %cmp230 = icmp eq i32 %newsigs.sroa.19.0.copyload, %oldsigs.sroa.23.0
  %or.cond516 = select i1 %or.cond515, i1 %cmp230, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.22.0.copyload, i32 %oldsigs.sroa.27.0)
  %cmp234 = icmp eq i32 %newsigs.sroa.22.0.copyload, %oldsigs.sroa.27.0
  %or.cond517 = select i1 %or.cond516, i1 %cmp234, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.25.0.copyload, i32 %oldsigs.sroa.31.0)
  %cmp238 = icmp eq i32 %newsigs.sroa.25.0.copyload, %oldsigs.sroa.31.0
  %or.cond518 = select i1 %or.cond517, i1 %cmp238, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.0.0.copyload, i32 %oldsigs.sroa.0.0)
  %cmp242 = icmp eq i32 %newsigs.sroa.0.0.copyload, %oldsigs.sroa.0.0
  %or.cond519 = select i1 %or.cond518, i1 %cmp242, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.7.0.copyload, i32 %oldsigs.sroa.7.0)
  %cmp246 = icmp eq i32 %newsigs.sroa.7.0.copyload, %oldsigs.sroa.7.0
  %or.cond520 = select i1 %or.cond519, i1 %cmp246, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.5.0.copyload, i32 %cprev.sroa.5.0)
  %cmp250 = icmp eq i32 %cnow.sroa.5.0.copyload, %cprev.sroa.5.0
  %or.cond521 = select i1 %or.cond520, i1 %cmp250, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload, i32 %cprev.sroa.8.0)
  %cmp254 = icmp eq i32 %cnow.sroa.7.0.copyload, %cprev.sroa.8.0
  %or.cond522 = select i1 %or.cond521, i1 %cmp254, i1 false
  br i1 %or.cond522, label %__here186.for.end_crit_edge, label %if.end257

__here186.for.end_crit_edge:                      ; preds = %__here186
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end257:                                        ; preds = %__here186
  %103 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %newsigs.sroa.10.0.copyload, i32 %oldsigs.sroa.11.0)
  %cmp260.not = icmp ne i32 %newsigs.sroa.10.0.copyload, %oldsigs.sroa.11.0
  %cond262 = zext i1 %cmp260.not to i32
  %cond267 = select i1 %cmp222, i32 0, i32 2
  %cond273 = select i1 %cmp226, i32 0, i32 16
  %cond279 = select i1 %cmp230, i32 0, i32 32
  %cond285 = select i1 %cmp234, i32 0, i32 4
  %cond291 = select i1 %cmp238, i32 0, i32 8
  %cond297 = select i1 %cmp242, i32 0, i32 64
  %cond303 = select i1 %cmp246, i32 0, i32 128
  %cond309 = select i1 %cmp250, i32 0, i32 256
  %cond315 = select i1 %cmp254, i32 0, i32 512
  %add298 = or i32 %cond315, %cond309
  %add304 = or i32 %add298, %cond297
  %add310 = or i32 %add304, %cond303
  %add292 = or i32 %add310, %cond262
  %add268 = or i32 %add292, %cond267
  %add274 = or i32 %add268, %cond273
  %add280 = add i32 %add274, %cond279
  %add286 = add i32 %add280, %cond285
  %add316 = add i32 %add286, %cond291
  %and317 = and i32 %104, %add316
  %tobool318.not = icmp eq i32 %and317, 0
  br i1 %tobool318.not, label %if.end257.for.cond_crit_edge, label %if.end257.for.end_crit_edge

if.end257.for.end_crit_edge:                      ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end257.for.cond_crit_edge:                     ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %if.end257.for.end_crit_edge, %__here186.for.end_crit_edge, %signal_pending.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %events.1 = phi i32 [ %and317, %if.end257.for.end_crit_edge ], [ 0, %signal_pending.exit.for.end_crit_edge ], [ 0, %__here186.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %cmp427 = phi i1 [ true, %if.end257.for.end_crit_edge ], [ false, %signal_pending.exit.for.end_crit_edge ], [ false, %__here186.for.end_crit_edge ], [ false, %for.cond.for.end_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.end257.for.end_crit_edge ], [ -512, %signal_pending.exit.for.end_crit_edge ], [ -5, %__here186.for.end_crit_edge ], [ -512, %for.cond.for.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %event_wait_q, ptr noundef nonnull %wait) #12
  br label %__here373

__here373:                                        ; preds = %for.end
  %105 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task, align 8
  %task_state_change377 = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 212
  %107 = ptrtoint ptr %task_state_change377 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 ptrtoint (ptr blockaddress(@wait_events, %__here373) to i32), ptr %task_state_change377, align 4
  %108 = load ptr, ptr %task, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 0, ptr %108, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !729
  %110 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mask, align 4
  %and403 = and i32 %111, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and403)
  %tobool404.not = icmp eq i32 %and403, 0
  br i1 %tobool404.not, label %__here373.exit_crit_edge, label %do.body407

__here373.exit_crit_edge:                         ; preds = %__here373
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

do.body407:                                       ; preds = %__here373
  %call415 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %head.i = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 21, i32 1
  %112 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i531.not = icmp eq ptr %113, %head.i
  br i1 %cmp.i.i531.not, label %if.then423, label %do.body407.if.end424_crit_edge

do.body407.if.end424_crit_edge:                   ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end424

if.then423:                                       ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #14
  %imra_value.i532 = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 24
  %114 = ptrtoint ptr %imra_value.i532 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %imra_value.i532, align 4
  %or26.i = or i16 %115, 64
  store i16 %or26.i, ptr %imra_value.i532, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !635
  call void @arm_heavy_mb() #12
  %116 = ptrtoint ptr %imra_value.i532 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %imra_value.i532, align 4
  %118 = call i16 @llvm.bswap.i16(i16 %117) #12
  %119 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %io_base.i, align 4
  %add.i534 = add i32 %120, 58
  %and.i535 = and i32 %add.i534, 1048575
  %add6.i = or i32 %and.i535, -18874368
  %121 = inttoptr i32 %add6.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %121, i16 %118) #12, !srcloc !633
  br label %if.end424

if.end424:                                        ; preds = %if.then423, %do.body407.if.end424_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call415) #12
  br label %exit

exit:                                             ; preds = %if.end424, %__here373.exit_crit_edge
  br i1 %cmp427, label %exit.if.then429_crit_edge, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

exit.if.then429_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then429

if.then429:                                       ; preds = %exit.if.then429_crit_edge, %exit.thread
  %events.2549 = phi i32 [ %and32, %exit.thread ], [ %events.1, %exit.if.then429_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 2050) #12
  %122 = call i32 @llvm.read_register.i32(metadata !612) #12
  %and.i.i.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 4
  %124 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !653
  %and.i = and i32 %124, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  %125 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %mask_ptr, i32 %events.2549, i32 -1226833921) #12, !srcloc !730
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #12, !srcloc !654
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  br label %cleanup

cleanup:                                          ; preds = %if.then429, %exit.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %125, %if.then429 ], [ %rc.0, %exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modem_input_wait(ptr noundef %info, i32 noundef %arg) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #12
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !612) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %lock = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 27
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %icount = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 4
  %13 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %13)
  %cprev.sroa.0.0.copyload = load i32, ptr %icount, align 4
  %cprev.sroa.7.0.icount.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %cprev.sroa.7.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %cprev.sroa.7.0.copyload = load i32, ptr %cprev.sroa.7.0.icount.sroa_idx, align 4
  %cprev.sroa.10.0.icount.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %cprev.sroa.10.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %cprev.sroa.10.0.copyload = load i32, ptr %cprev.sroa.10.0.icount.sroa_idx, align 4
  %cprev.sroa.13.0.icount.sroa_idx = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %cprev.sroa.13.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %cprev.sroa.13.0.copyload = load i32, ptr %cprev.sroa.13.0.icount.sroa_idx, align 4
  %status_event_wait_q = getelementptr inbounds %struct._mgslpc_info, ptr %info, i32 0, i32 20
  call void @add_wait_queue(ptr noundef %status_event_wait_q, ptr noundef nonnull %wait) #12
  br label %__here

__here:                                           ; preds = %entry
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@modem_input_wait, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %20, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !731
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  %and = and i32 %arg, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool194.not = icmp eq i32 %and, 0
  %and200 = and i32 %arg, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  %and208 = and i32 %arg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  %and216 = and i32 %arg, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br label %for.cond

for.cond:                                         ; preds = %if.end193.for.cond_crit_edge, %__here
  %cprev.sroa.13.0 = phi i32 [ %cprev.sroa.13.0.copyload, %__here ], [ %cnow.sroa.11.0.copyload, %if.end193.for.cond_crit_edge ]
  %cprev.sroa.10.0 = phi i32 [ %cprev.sroa.10.0.copyload, %__here ], [ %cnow.sroa.9.0.copyload, %if.end193.for.cond_crit_edge ]
  %cprev.sroa.7.0 = phi i32 [ %cprev.sroa.7.0.copyload, %__here ], [ %cnow.sroa.7.0.copyload, %if.end193.for.cond_crit_edge ]
  %cprev.sroa.0.0 = phi i32 [ %cprev.sroa.0.0.copyload, %__here ], [ %cnow.sroa.0.0.copyload, %if.end193.for.cond_crit_edge ]
  call void @schedule() #12
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %for.cond.for.end_crit_edge, !prof !652

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

signal_pending.exit:                              ; preds = %for.cond
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool78.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool78.not, label %do.body82, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body82:                                        ; preds = %signal_pending.exit
  %call90 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %31 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %31)
  %cnow.sroa.0.0.copyload = load i32, ptr %icount, align 4
  %32 = ptrtoint ptr %cprev.sroa.7.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %cnow.sroa.7.0.copyload = load i32, ptr %cprev.sroa.7.0.icount.sroa_idx, align 4
  %33 = ptrtoint ptr %cprev.sroa.10.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %cnow.sroa.9.0.copyload = load i32, ptr %cprev.sroa.10.0.icount.sroa_idx, align 4
  %34 = ptrtoint ptr %cprev.sroa.13.0.icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %cnow.sroa.11.0.copyload = load i32, ptr %cprev.sroa.13.0.icount.sroa_idx, align 4
  br label %__here147

__here147:                                        ; preds = %do.body82
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change151 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change151 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@modem_input_wait, %__here147) to i32), ptr %task_state_change151, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %38, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !732
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call90) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.9.0.copyload, i32 %cprev.sroa.10.0)
  %cmp179 = icmp eq i32 %cnow.sroa.9.0.copyload, %cprev.sroa.10.0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload, i32 %cprev.sroa.7.0)
  %cmp182 = icmp eq i32 %cnow.sroa.7.0.copyload, %cprev.sroa.7.0
  %or.cond = select i1 %cmp179, i1 %cmp182, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.11.0.copyload, i32 %cprev.sroa.13.0)
  %cmp186 = icmp eq i32 %cnow.sroa.11.0.copyload, %cprev.sroa.13.0
  %or.cond348 = select i1 %or.cond, i1 %cmp186, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.0.0.copyload, i32 %cprev.sroa.0.0)
  %cmp190 = icmp eq i32 %cnow.sroa.0.0.copyload, %cprev.sroa.0.0
  %or.cond349 = select i1 %or.cond348, i1 %cmp190, i1 false
  br i1 %or.cond349, label %__here147.for.end_crit_edge, label %if.end193

__here147.for.end_crit_edge:                      ; preds = %__here147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end193:                                        ; preds = %__here147
  %or.cond350 = select i1 %tobool194.not, i1 true, i1 %cmp179
  %or.cond351 = select i1 %tobool201.not, i1 true, i1 %cmp182
  %or.cond356 = select i1 %or.cond350, i1 %or.cond351, i1 false
  %or.cond352 = select i1 %tobool209.not, i1 true, i1 %cmp186
  %or.cond357 = select i1 %or.cond356, i1 %or.cond352, i1 false
  %or.cond353 = select i1 %tobool217.not, i1 true, i1 %cmp190
  %or.cond358 = select i1 %or.cond357, i1 %or.cond353, i1 false
  br i1 %or.cond358, label %if.end193.for.cond_crit_edge, label %if.end193.for.end_crit_edge

if.end193.for.end_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end193.for.cond_crit_edge:                     ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %if.end193.for.end_crit_edge, %__here147.for.end_crit_edge, %signal_pending.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %rc.0 = phi i32 [ -512, %signal_pending.exit.for.end_crit_edge ], [ -5, %__here147.for.end_crit_edge ], [ 0, %if.end193.for.end_crit_edge ], [ -512, %for.cond.for.end_crit_edge ]
  call void @remove_wait_queue(ptr noundef %status_event_wait_q, ptr noundef nonnull %wait) #12
  br label %__here277

__here277:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %task_state_change281 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 212
  %42 = ptrtoint ptr %task_state_change281 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 ptrtoint (ptr blockaddress(@modem_input_wait, %__here277) to i32), ptr %task_state_change281, align 4
  %43 = load ptr, ptr %task, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %43, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !733
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 316)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 316)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !207, !209, !211, !212, !213, !214, !216, !218, !220, !221, !222, !223, !225, !226, !227, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !252, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !277, !279, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !307, !309, !310, !311, !312, !314, !315, !317, !319, !321, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !334, !336, !337, !338, !339, !341, !343, !345, !346, !347, !348, !350, !351, !352, !354, !356, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !386, !388, !389, !390, !392, !393, !394, !395, !397, !398, !399, !400, !402, !403, !404, !406, !408, !409, !410, !412, !413, !414, !415, !417, !418, !419, !421, !422, !423, !424, !426, !427, !428, !429, !431, !432, !433, !434, !436, !437, !438, !440, !441, !442, !443, !445, !446, !447, !448, !450, !451, !452, !453, !455, !456, !457, !458, !460, !461, !462, !463, !465, !466, !467, !468, !470, !471, !472, !473, !475, !476, !477, !479, !480, !481, !482, !484, !486, !488, !490, !492, !494, !496, !497, !498, !499, !501, !502, !503, !504, !506, !507, !508, !509, !511, !513, !514, !515, !517, !519, !520, !521, !523, !524, !525, !526, !528, !529, !530, !531, !533, !534, !535, !536, !538, !539, !540, !541, !543, !544, !545, !547, !548, !549, !550, !552, !553, !554, !555, !557, !558, !559, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610}
!llvm.named.register.sp = !{!612}
!llvm.module.flags = !{!613, !614, !615, !616, !617, !618, !619, !620}
!llvm.ident = !{!621}

!0 = !{ptr @__param_break_on_load, !1, !"__param_break_on_load", i1 false, i1 false}
!1 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 451, i32 1}
!2 = !{ptr @__UNIQUE_ID_break_on_loadtype343, !1, !"__UNIQUE_ID_break_on_loadtype343", i1 false, i1 false}
!3 = !{ptr @__param_ttymajor, !4, !"__param_ttymajor", i1 false, i1 false}
!4 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 452, i32 1}
!5 = !{ptr @__UNIQUE_ID_ttymajortype344, !4, !"__UNIQUE_ID_ttymajortype344", i1 false, i1 false}
!6 = !{ptr @__param_debug_level, !7, !"__param_debug_level", i1 false, i1 false}
!7 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 453, i32 1}
!8 = !{ptr @__UNIQUE_ID_debug_leveltype345, !7, !"__UNIQUE_ID_debug_leveltype345", i1 false, i1 false}
!9 = !{ptr @__param_maxframe, !10, !"__param_maxframe", i1 false, i1 false}
!10 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 454, i32 1}
!11 = !{ptr @__UNIQUE_ID_maxframetype346, !10, !"__UNIQUE_ID_maxframetype346", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_file347, !13, !"__UNIQUE_ID_file347", i1 false, i1 false}
!13 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 456, i32 1}
!14 = !{ptr @__UNIQUE_ID_license348, !13, !"__UNIQUE_ID_license348", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_synclink_cs__367_2856_synclink_cs_init6, !16, !"__initcall__kmod_synclink_cs__367_2856_synclink_cs_init6", i1 false, i1 false}
!16 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2856, i32 1}
!17 = !{ptr @__exitcall_synclink_cs_exit, !18, !"__exitcall_synclink_cs_exit", i1 false, i1 false}
!18 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2857, i32 1}
!19 = !{ptr @break_on_load, !20, !"break_on_load", i1 false, i1 false}
!20 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 440, i32 13}
!21 = !{ptr @serial_driver, !22, !"serial_driver", i1 false, i1 false}
!22 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 461, i32 27}
!23 = !{ptr @__param_str_break_on_load, !1, !"__param_str_break_on_load", i1 false, i1 false}
!24 = !{ptr @__param_str_ttymajor, !4, !"__param_str_ttymajor", i1 false, i1 false}
!25 = !{ptr @ttymajor, !26, !"ttymajor", i1 false, i1 false}
!26 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 446, i32 12}
!27 = !{ptr @__param_str_debug_level, !7, !"__param_str_debug_level", i1 false, i1 false}
!28 = !{ptr @debug_level, !29, !"debug_level", i1 false, i1 false}
!29 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 448, i32 12}
!30 = !{ptr @__param_str_maxframe, !10, !"__param_str_maxframe", i1 false, i1 false}
!31 = !{ptr @__param_arr_maxframe, !10, !"__param_arr_maxframe", i1 false, i1 false}
!32 = !{ptr @maxframe, !33, !"maxframe", i1 false, i1 false}
!33 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 449, i32 12}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2764, i32 11}
!36 = !{ptr @mgslpc_driver, !37, !"mgslpc_driver", i1 false, i1 false}
!37 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2762, i32 29}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 520, i32 3}
!40 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mgslpc_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @mgslpc_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 524, i32 3}
!46 = !{ptr @mgslpc_probe._entry.4, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mgslpc_probe._entry_ptr.6, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @mgslpc_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 531, i32 2}
!50 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mgslpc_probe.__key.8, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 533, i32 2}
!53 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mgslpc_probe.__key.10, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 534, i32 2}
!56 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mgslpc_probe.__key.12, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 535, i32 2}
!59 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mgslpc_probe.__key.14, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 536, i32 2}
!62 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mgslpc_port_ops, !64, !"mgslpc_port_ops", i1 false, i1 false}
!64 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 509, i32 41}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 773, i32 3}
!67 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @bh_handler._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @bh_handler._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 783, i32 4}
!72 = !{ptr @bh_handler._entry.18, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @bh_handler._entry_ptr.20, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 799, i32 4}
!76 = !{ptr @bh_handler._entry.21, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @bh_handler._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 806, i32 3}
!80 = !{ptr @bh_handler._entry.24, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @bh_handler._entry_ptr.26, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3667, i32 3}
!84 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rx_get_frame._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @rx_get_frame._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3795, i32 3}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @trace_block._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @trace_block._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3797, i32 3}
!94 = !{ptr @trace_block._entry.31, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @trace_block._entry_ptr.33, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3806, i32 4}
!98 = !{ptr @trace_block._entry.34, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @trace_block._entry_ptr.36, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3808, i32 4}
!102 = !{ptr @trace_block._entry.37, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @trace_block._entry_ptr.39, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3811, i32 5}
!106 = !{ptr @trace_block._entry.40, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @trace_block._entry_ptr.42, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3813, i32 5}
!110 = !{ptr @trace_block._entry.43, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @trace_block._entry_ptr.45, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3815, i32 3}
!114 = !{ptr @trace_block._entry.46, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @trace_block._entry_ptr.48, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 4201, i32 3}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @hdlcdev_rx._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @hdlcdev_rx._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 4204, i32 3}
!123 = !{ptr @hdlcdev_rx._entry.51, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @hdlcdev_rx._entry_ptr.53, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 813, i32 3}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @bh_transmit._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @bh_transmit._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @default_params, !131, !"default_params", i1 false, i1 false}
!131 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 89, i32 20}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 580, i32 3}
!134 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @mgslpc_config._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @mgslpc_config._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1164, i32 3}
!139 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mgslpc_isr._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @mgslpc_isr._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1175, i32 4}
!144 = !{ptr @mgslpc_isr._entry.60, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mgslpc_isr._entry_ptr.62, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1178, i32 4}
!148 = !{ptr @mgslpc_isr._entry.63, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @mgslpc_isr._entry_ptr.65, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1248, i32 4}
!152 = !{ptr @mgslpc_isr._entry.66, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mgslpc_isr._entry_ptr.68, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1258, i32 3}
!156 = !{ptr @mgslpc_isr._entry.69, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mgslpc_isr._entry_ptr.71, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1104, i32 4}
!160 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @dcd_change._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @dcd_change._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1110, i32 5}
!167 = !{ptr @dcd_change._entry.76, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @dcd_change._entry_ptr.78, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1062, i32 6}
!171 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cts_change._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @cts_change._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1071, i32 6}
!176 = !{ptr @cts_change._entry.81, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @cts_change._entry_ptr.83, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3277, i32 3}
!180 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @tx_start._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @tx_start._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3315, i32 3}
!185 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @tx_stop._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @tx_stop._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 835, i32 3}
!190 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @rx_ready_hdlc._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @rx_ready_hdlc._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 947, i32 3}
!195 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @rx_ready_async._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @rx_ready_async._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 949, i32 3}
!200 = !{ptr @rx_ready_async._entry.92, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @rx_ready_async._entry_ptr.94, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1002, i32 3}
!204 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @tx_ready._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @tx_ready._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2677, i32 28}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2700, i32 2}
!211 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @mgslpc_add_device._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @mgslpc_add_device._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @mgslpc_device_count, !215, !"mgslpc_device_count", i1 false, i1 false}
!215 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 433, i32 12}
!216 = !{ptr @mgslpc_device_list, !217, !"mgslpc_device_list", i1 false, i1 false}
!217 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 432, i32 21}
!218 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 4245, i32 3}
!220 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @hdlcdev_init._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @hdlcdev_init._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 4266, i32 3}
!225 = !{ptr @hdlcdev_init._entry.102, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @hdlcdev_init._entry_ptr.104, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @hdlcdev_ops, !228, !"hdlcdev_ops", i1 false, i1 false}
!228 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 4219, i32 36}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3971, i32 3}
!231 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @hdlcdev_open._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @hdlcdev_open._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3981, i32 3}
!236 = !{ptr @hdlcdev_open._entry.107, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @hdlcdev_open._entry_ptr.109, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1271, i32 3}
!240 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @startup._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @startup._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1280, i32 4}
!245 = !{ptr @startup._entry.112, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @startup._entry_ptr.114, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @startup.__key, !248, !"__key", i1 false, i1 false}
!248 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1290, i32 2}
!249 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.116, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3831, i32 3}
!252 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @tx_timeout._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @tx_timeout._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.118, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2650, i32 3}
!257 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @claim_resources._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @claim_resources._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3772, i32 3}
!262 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @adapter_test._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @adapter_test._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.123, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3779, i32 3}
!267 = !{ptr @adapter_test._entry.122, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @adapter_test._entry_ptr.124, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3785, i32 3}
!271 = !{ptr @adapter_test._entry.125, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @adapter_test._entry_ptr.127, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @register_test.patterns, !274, !"patterns", i1 false, i1 false}
!274 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3709, i32 23}
!275 = distinct !{null, !276, !"count", i1 false, i1 false}
!276 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3711, i32 22}
!277 = !{ptr @.str.128, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3248, i32 3}
!279 = !{ptr @.str.129, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @rx_stop._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @rx_stop._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.130, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2660, i32 3}
!284 = !{ptr @.str.131, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @release_resources._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @release_resources._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.132, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1408, i32 3}
!289 = !{ptr @.str.133, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @mgslpc_change_params._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @mgslpc_change_params._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.134, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3261, i32 3}
!294 = !{ptr @.str.135, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @rx_start._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @rx_start._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.136, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 4033, i32 3}
!299 = !{ptr @.str.137, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @hdlcdev_close._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @hdlcdev_close._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1327, i32 3}
!304 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @shutdown._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @shutdown._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.140, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 4066, i32 3}
!309 = !{ptr @.str.141, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @hdlcdev_wan_ioctl._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @hdlcdev_wan_ioctl._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = distinct !{null, !313, !"__already_done", i1 false, i1 false}
!313 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!314 = distinct !{null, !313, !"<string literal>", i1 false, i1 false}
!315 = distinct !{null, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!317 = !{ptr @.str.144, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!319 = !{ptr @.str.145, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 4163, i32 3}
!321 = !{ptr @.str.146, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @hdlcdev_tx_timeout._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @hdlcdev_tx_timeout._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.147, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 3923, i32 3}
!326 = !{ptr @.str.148, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @hdlcdev_xmit._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @hdlcdev_xmit._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.149, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 616, i32 3}
!331 = !{ptr @.str.150, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @mgslpc_release._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @mgslpc_release._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.151, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 624, i32 3}
!336 = !{ptr @.str.152, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @mgslpc_detach._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @mgslpc_detach._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @mgslpc_ids, !340, !"mgslpc_ids", i1 false, i1 false}
!340 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2756, i32 38}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2816, i32 24}
!343 = !{ptr @.str.154, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2828, i32 3}
!345 = !{ptr @.str.155, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @synclink_cs_init._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @synclink_cs_init._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.157, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2837, i32 2}
!350 = !{ptr @synclink_cs_init._entry.156, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @synclink_cs_init._entry_ptr.158, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @mgslpc_ops, !353, !"mgslpc_ops", i1 false, i1 false}
!353 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2772, i32 36}
!354 = !{ptr @.str.159, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2469, i32 3}
!356 = !{ptr @.str.160, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @mgslpc_open._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @mgslpc_open._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.162, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2486, i32 3}
!361 = !{ptr @mgslpc_open._entry.161, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @mgslpc_open._entry_ptr.163, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.165, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2510, i32 4}
!365 = !{ptr @mgslpc_open._entry.164, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @mgslpc_open._entry_ptr.166, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.168, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2516, i32 3}
!369 = !{ptr @mgslpc_open._entry.167, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @mgslpc_open._entry_ptr.169, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.170, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2322, i32 45}
!373 = !{ptr @.str.171, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2326, i32 3}
!375 = !{ptr @mgslpc_close._entry, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @mgslpc_close._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.173, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2344, i32 3}
!379 = !{ptr @mgslpc_close._entry.172, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @mgslpc_close._entry_ptr.174, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.175, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1554, i32 3}
!383 = !{ptr @.str.176, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @mgslpc_write._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @mgslpc_write._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.178, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1599, i32 3}
!388 = !{ptr @mgslpc_write._entry.177, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @mgslpc_write._entry_ptr.179, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.180, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1483, i32 3}
!392 = !{ptr @.str.181, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @mgslpc_put_char._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @mgslpc_put_char._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.182, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1516, i32 3}
!397 = !{ptr @.str.183, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @mgslpc_flush_chars._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @mgslpc_flush_chars._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.185, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1527, i32 3}
!402 = !{ptr @mgslpc_flush_chars._entry.184, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @mgslpc_flush_chars._entry_ptr.186, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.187, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1611, i32 45}
!406 = !{ptr @.str.188, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1627, i32 3}
!408 = !{ptr @mgslpc_write_room._entry, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @mgslpc_write_room._entry_ptr, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.189, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1640, i32 3}
!412 = !{ptr @.str.190, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @mgslpc_chars_in_buffer._entry, !411, !"_entry", i1 false, i1 false}
!414 = !{ptr @mgslpc_chars_in_buffer._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.192, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1652, i32 3}
!417 = !{ptr @mgslpc_chars_in_buffer._entry.191, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @mgslpc_chars_in_buffer._entry_ptr.193, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.194, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2226, i32 3}
!421 = !{ptr @.str.195, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @mgslpc_ioctl._entry, !420, !"_entry", i1 false, i1 false}
!423 = !{ptr @mgslpc_ioctl._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.196, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1781, i32 3}
!426 = !{ptr @.str.197, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @get_params._entry, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @get_params._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.198, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1804, i32 3}
!431 = !{ptr @.str.199, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @set_params._entry, !430, !"_entry", i1 false, i1 false}
!433 = !{ptr @set_params._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.201, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1809, i32 4}
!436 = !{ptr @set_params._entry.200, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @set_params._entry_ptr.202, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.203, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1827, i32 3}
!440 = !{ptr @.str.204, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @get_txidle._entry, !439, !"_entry", i1 false, i1 false}
!442 = !{ptr @get_txidle._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.205, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1838, i32 3}
!445 = !{ptr @.str.206, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @set_txidle._entry, !444, !"_entry", i1 false, i1 false}
!447 = !{ptr @set_txidle._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.207, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1850, i32 3}
!450 = !{ptr @.str.208, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @get_interface._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @get_interface._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.209, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1862, i32 3}
!455 = !{ptr @.str.210, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @set_interface._entry, !454, !"_entry", i1 false, i1 false}
!457 = !{ptr @set_interface._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.211, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1884, i32 3}
!460 = !{ptr @.str.212, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @set_txenable._entry, !459, !"_entry", i1 false, i1 false}
!462 = !{ptr @set_txenable._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.213, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1923, i32 3}
!465 = !{ptr @.str.214, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @set_rxenable._entry, !464, !"_entry", i1 false, i1 false}
!467 = !{ptr @set_rxenable._entry_ptr, !464, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.215, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1903, i32 3}
!470 = !{ptr @.str.216, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @tx_abort._entry, !469, !"_entry", i1 false, i1 false}
!472 = !{ptr @tx_abort._entry_ptr, !469, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.217, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1764, i32 3}
!475 = !{ptr @get_stats._entry, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @get_stats._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.218, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1961, i32 3}
!479 = !{ptr @.str.219, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @wait_events._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @wait_events._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = distinct !{null, !483, !"__already_done", i1 false, i1 false}
!483 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1986, i32 2}
!484 = distinct !{null, !485, !"__already_done", i1 false, i1 false}
!485 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2003, i32 3}
!486 = distinct !{null, !487, !"__already_done", i1 false, i1 false}
!487 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2040, i32 2}
!488 = distinct !{null, !489, !"__already_done", i1 false, i1 false}
!489 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2065, i32 2}
!490 = distinct !{null, !491, !"__already_done", i1 false, i1 false}
!491 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2078, i32 3}
!492 = distinct !{null, !493, !"__already_done", i1 false, i1 false}
!493 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2100, i32 2}
!494 = !{ptr @.str.224, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2281, i32 3}
!496 = !{ptr @.str.225, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @mgslpc_set_termios._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @mgslpc_set_termios._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.226, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1712, i32 3}
!501 = !{ptr @.str.227, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @mgslpc_throttle._entry, !500, !"_entry", i1 false, i1 false}
!503 = !{ptr @mgslpc_throttle._entry_ptr, !500, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.228, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1737, i32 3}
!506 = !{ptr @.str.229, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @mgslpc_unthrottle._entry, !505, !"_entry", i1 false, i1 false}
!508 = !{ptr @mgslpc_unthrottle._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.230, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 707, i32 45}
!511 = !{ptr @.str.231, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 710, i32 3}
!513 = !{ptr @tx_pause._entry, !512, !"_entry", i1 false, i1 false}
!514 = !{ptr @tx_pause._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.232, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 723, i32 45}
!517 = !{ptr @.str.233, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 726, i32 3}
!519 = !{ptr @tx_release._entry, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @tx_release._entry_ptr, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.234, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2419, i32 3}
!523 = !{ptr @.str.235, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @mgslpc_hangup._entry, !522, !"_entry", i1 false, i1 false}
!525 = !{ptr @mgslpc_hangup._entry_ptr, !522, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.236, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2168, i32 3}
!528 = !{ptr @.str.237, !527, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @mgslpc_break._entry, !527, !"_entry", i1 false, i1 false}
!530 = !{ptr @mgslpc_break._entry_ptr, !527, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @.str.238, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1666, i32 3}
!533 = !{ptr @.str.239, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @mgslpc_flush_buffer._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @mgslpc_flush_buffer._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.240, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2359, i32 3}
!538 = !{ptr @.str.241, !537, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @mgslpc_wait_until_sent._entry, !537, !"_entry", i1 false, i1 false}
!540 = !{ptr @mgslpc_wait_until_sent._entry_ptr, !537, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @.str.243, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2407, i32 3}
!543 = !{ptr @mgslpc_wait_until_sent._entry.242, !542, !"_entry", i1 false, i1 false}
!544 = !{ptr @mgslpc_wait_until_sent._entry_ptr.244, !542, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.245, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 1689, i32 3}
!547 = !{ptr @.str.246, !546, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @mgslpc_send_xchar._entry, !546, !"_entry", i1 false, i1 false}
!549 = !{ptr @mgslpc_send_xchar._entry_ptr, !546, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.247, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2124, i32 3}
!552 = !{ptr @.str.248, !551, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @tiocmget._entry, !551, !"_entry", i1 false, i1 false}
!554 = !{ptr @tiocmget._entry_ptr, !551, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.249, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2138, i32 3}
!557 = !{ptr @.str.250, !556, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @tiocmset._entry, !556, !"_entry", i1 false, i1 false}
!559 = !{ptr @tiocmset._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.251, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2598, i32 16}
!562 = !{ptr @.str.252, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2533, i32 16}
!564 = !{ptr @.str.253, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2544, i32 20}
!566 = !{ptr @.str.254, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2546, i32 20}
!568 = !{ptr @.str.255, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2548, i32 20}
!570 = !{ptr @.str.256, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2550, i32 20}
!572 = distinct !{null, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2552, i32 20}
!574 = distinct !{null, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2554, i32 20}
!576 = !{ptr @.str.259, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2557, i32 17}
!578 = !{ptr @.str.260, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2560, i32 18}
!580 = !{ptr @.str.261, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2562, i32 18}
!582 = !{ptr @.str.262, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2564, i32 18}
!584 = !{ptr @.str.263, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2566, i32 18}
!586 = !{ptr @.str.264, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2568, i32 18}
!588 = !{ptr @.str.265, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2570, i32 18}
!590 = !{ptr @.str.266, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2572, i32 17}
!592 = !{ptr @.str.267, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2575, i32 18}
!594 = !{ptr @.str.268, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2577, i32 18}
!596 = !{ptr @.str.269, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2579, i32 18}
!598 = !{ptr @.str.270, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2581, i32 18}
!600 = !{ptr @.str.271, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2585, i32 16}
!602 = !{ptr @.str.272, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 2587, i32 16}
!604 = !{ptr @.str.273, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 458, i32 28}
!606 = distinct !{null, !607, !"driver_name", i1 false, i1 false}
!607 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 458, i32 14}
!608 = !{ptr @.str.274, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 459, i32 31}
!610 = distinct !{null, !611, !"driver_version", i1 false, i1 false}
!611 = !{!"../drivers/char/pcmcia/synclink_cs.c", i32 459, i32 14}
!612 = !{!"sp"}
!613 = !{i32 1, !"wchar_size", i32 2}
!614 = !{i32 1, !"min_enum_size", i32 4}
!615 = !{i32 8, !"branch-target-enforcement", i32 0}
!616 = !{i32 8, !"sign-return-address", i32 0}
!617 = !{i32 8, !"sign-return-address-all", i32 0}
!618 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!619 = !{i32 7, !"uwtable", i32 1}
!620 = !{i32 7, !"frame-pointer", i32 2}
!621 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!622 = !{i64 4751184}
!623 = !{i64 2156987742}
!624 = !{i64 2156988141}
!625 = !{i64 2156988540}
!626 = !{i64 2156988961}
!627 = !{i64 2156989308}
!628 = !{i64 4750789}
!629 = !{i64 2156774133}
!630 = !{i64 4750566}
!631 = !{i64 2156777761}
!632 = !{i64 2156643994}
!633 = !{i64 4750366}
!634 = !{i64 2156778606}
!635 = !{i64 2156643351}
!636 = !{i64 2156669305}
!637 = !{i64 2156670194}
!638 = !{!"auto-init"}
!639 = !{i8 0, i8 2}
!640 = !{i64 2156684275}
!641 = !{i64 2156684650}
!642 = !{i64 2156685438}
!643 = !{i64 2156685861}
!644 = !{i64 2156686248}
!645 = !{i64 2156686630}
!646 = !{i64 2156687005}
!647 = !{i64 2156779275}
!648 = !{i64 2156771337}
!649 = !{i64 2156772072}
!650 = !{i64 2153251142, i64 2153251167}
!651 = !{i64 2153250461, i64 2153250486}
!652 = !{!"branch_weights", i32 2000, i32 1}
!653 = !{i64 5746016}
!654 = !{i64 5746213}
!655 = !{i64 2153231446}
!656 = !{i64 2156995513}
!657 = !{i64 2156995982}
!658 = !{i64 2156996480}
!659 = !{i64 2156996841}
!660 = !{i64 2156644642}
!661 = !{i64 2156997516}
!662 = !{i64 2156964584}
!663 = !{i64 2156964363}
!664 = !{i64 2156974162}
!665 = !{i64 2156974625}
!666 = !{i64 2156975078}
!667 = !{i64 2156975531}
!668 = !{i64 2156975984}
!669 = !{i64 2156976431}
!670 = !{i64 2156976884}
!671 = !{i64 2156977379}
!672 = !{i64 2156977832}
!673 = !{i64 2156978279}
!674 = !{i64 2156978744}
!675 = !{i64 2156980261}
!676 = !{i64 2156980041}
!677 = !{i64 2156645285}
!678 = !{i64 2156981782}
!679 = !{i64 2156981562}
!680 = !{i64 2156983281}
!681 = !{i64 2156983060}
!682 = !{i64 2156984348}
!683 = !{i64 2156793089}
!684 = !{i64 2156970852}
!685 = !{i64 2156971305}
!686 = !{i64 2156971752}
!687 = !{i64 2156972199}
!688 = !{i64 2156972757}
!689 = !{i64 2156973184}
!690 = !{i64 2156973611}
!691 = !{i64 2156951914}
!692 = !{i64 2156952426}
!693 = !{i64 2156952952}
!694 = !{i64 2156953403}
!695 = !{i64 2156953886}
!696 = !{i64 2156954396}
!697 = !{i64 2156954855}
!698 = !{i64 2156955306}
!699 = !{i64 2156955770}
!700 = !{i64 2156956235}
!701 = !{i64 2156949321}
!702 = !{i64 2156949649}
!703 = !{i64 2156950180}
!704 = !{i64 2156950501}
!705 = !{i64 2156945069}
!706 = !{i64 2156945683}
!707 = !{i64 2156946029}
!708 = !{i64 2156951042}
!709 = !{i64 2156951356}
!710 = !{i64 2156957752}
!711 = !{i64 2156957532}
!712 = !{i64 2156959251}
!713 = !{i64 2156959030}
!714 = !{i64 2156960306}
!715 = !{i64 2156961657}
!716 = !{i64 2156961436}
!717 = !{i64 2156946511}
!718 = !{i64 2156946964}
!719 = !{i64 2156947417}
!720 = !{i64 2156947872}
!721 = !{i64 2156948325}
!722 = !{i64 2156948778}
!723 = !{i64 2156967514}
!724 = !{i64 2156967294}
!725 = !{i64 2156842558}
!726 = !{i64 2156842867}
!727 = !{i64 2156855062}
!728 = !{i64 2156860203}
!729 = !{i64 2156865014}
!730 = !{i64 2156871352, i64 2156871632, i64 2156871966, i64 2156872300}
!731 = !{i64 2156879649}
!732 = !{i64 2156884790}
!733 = !{i64 2156889565}
