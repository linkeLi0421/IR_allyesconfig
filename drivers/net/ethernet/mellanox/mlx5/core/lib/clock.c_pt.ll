; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.161, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.139] }
%struct.anon.139 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.140 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.140 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.161 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_ib_clock_info = type { i32, i32, i64, i64, i64, i32, i32, i64, i64 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.137, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.137 = type { ptr }
%struct.ptp_clock_event = type { i32, i32, %union.anon.169 }
%union.anon.169 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.mlx5_eqe_pps = type <{ [3 x i8], i8, [4 x i8], %union.anon.173, [12 x i8] }>
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64 }
%struct.mlx5_init_seg = type { i32, i32, [2 x i32], i32, i32, i32, [120 x i32], i32, %struct.health_buffer, [878 x i32], i32, i32, i32, i32, [2 x i32], i32, [11 x i32], i32, i32, [1006 x i32], i64, i32, i32 }
%struct.health_buffer = type { [6 x i32], [2 x i32], i32, i32, [1 x i32], i32, i32, i32, i8, [3 x i8], i8, i8, i16 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.ptp_clock_request = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.163, %struct.ptp_clock_time, i32, i32, %union.anon.164 }
%union.anon.163 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.164 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }

@mlx5_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 874, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s:%d:(pid %d): invalid device_frequency_khz, aborting HW clock init\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_init_clock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_init_clock._entry_ptr = internal global ptr @mlx5_init_clock._entry, section ".printk_index", align 4
@mlx5_init_clock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&clock->lock)->lock\00", [42 x i8] zeroinitializer }, align 32
@mlx5_init_clock.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@mlx5_init_clock.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&clock->pps_info.out_work)\00", [51 x i8] zeroinitializer }, align 32
@mlx5_ptp_clock_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"mlx5_ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @mlx5_ptp_adjfreq, ptr null, ptr @mlx5_ptp_adjtime, ptr null, ptr @mlx5_ptp_gettimex, ptr null, ptr @mlx5_ptp_settime, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mlx5_init_clock._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 892, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): ptp_clock_register failed %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_init_clock._entry_ptr.12 = internal global ptr @mlx5_init_clock._entry.10, section ".printk_index", align 4
@mlx5_init_clock_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 826, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Failed to allocate IB clock info page\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_init_clock_info\00", [43 x i8] zeroinitializer }, align 32
@mlx5_init_clock_info._entry_ptr = internal global ptr @mlx5_init_clock_info._entry, section ".printk_index", align 4
@mlx5_init_overflow_period.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&timer->overflow_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@mlx5_init_overflow_period.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&timer->overflow_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@mlx5_init_overflow_period._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 812, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s:%d:(pid %d): invalid overflow period, overflow_work is not scheduled\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_init_overflow_period\00", [38 x i8] zeroinitializer }, align 32
@mlx5_init_overflow_period._entry_ptr = internal global ptr @mlx5_init_overflow_period._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlx5_pps%d\00", [21 x i8] zeroinitializer }, align 32
@mlx5_pps_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 759, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d):  Unhandled clock PPS event, func %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx5_pps_event\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5_pps_event._entry_ptr = internal global ptr @mlx5_pps_event._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 874, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 878, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 880, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"mlx5_ptp_clock_info\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 599, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 891, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 826, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 807, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 811, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 669, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 758, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @mlx5_init_clock._entry, ptr @mlx5_init_clock._entry.10, ptr @mlx5_init_clock._entry_ptr, ptr @mlx5_init_clock._entry_ptr.12, ptr @mlx5_init_clock_info._entry, ptr @mlx5_init_clock_info._entry_ptr, ptr @mlx5_init_overflow_period._entry, ptr @mlx5_init_overflow_period._entry_ptr, ptr @mlx5_pps_event._entry, ptr @mlx5_pps_event._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlx5_init_clock.__key, ptr @.str.5, ptr @mlx5_init_clock.__key.6, ptr @.str.7, ptr @mlx5_init_clock.__key.8, ptr @.str.9, ptr @mlx5_ptp_clock_info, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @mlx5_init_overflow_period.__key, ptr @.str.15, ptr @mlx5_init_overflow_period.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_clock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_clock.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_clock.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ptp_clock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_clock._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_clock_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_overflow_period.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_overflow_period.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_overflow_period._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pps_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_init_clock(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  %in.i.i.i.i = alloca [15 x i32], align 4
  %out.i.i.i = alloca [15 x i32], align 4
  %out.i.i = alloca [15 x i32], align 4
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 39
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 874, i32 noundef %11) #13
  br label %cleanup

do.body3:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 1
  %lock4 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock4, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlx5_init_clock.__key, i16 noundef signext 3) #10
  %dep_map.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 1, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @mlx5_init_clock.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %lock, align 4
  %lock16 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %lock16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock4, ptr %lock16, align 4
  %timer2.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caps, align 8
  %add.ptr.i.i = getelementptr i32, ptr %15, i32 39
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %18 = ptrtoint ptr %timer2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @read_internal_timer, ptr %timer2.i.i, align 8
  %shift.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 0, i32 3
  %19 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 23, ptr %shift.i.i, align 4
  %div1.i.i.i.i = lshr i32 %17, 1
  %conv.i.i.i.i = zext i32 %div1.i.i.i.i to i64
  %add.i.i.i.i = add nuw nsw i64 %conv.i.i.i.i, 8388608000000
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %add.i.i.i.i) #14, !srcloc !55
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %20, 1
  %extract.t = trunc i64 %asmresult1.i.i.i.i.i to i32
  %mult.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %extract.t, ptr %mult.i.i, align 8
  %nominal_c_mult.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 2
  %22 = ptrtoint ptr %nominal_c_mult.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %extract.t, ptr %nominal_c_mult.i.i, align 8
  %mask.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 0, i32 1
  %23 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 2199023255551, ptr %mask.i.i, align 8
  %tc.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 1
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  tail call void @timecounter_init(ptr noundef %tc.i.i, ptr noundef %timer2.i.i, i64 noundef %call.i.i.i) #10
  %call.i.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #10
  %24 = inttoptr i32 %call.i.i to ptr
  %clock_info.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 28
  %25 = ptrtoint ptr %clock_info.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %clock_info.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 826, i32 noundef %33) #13
  br label %mlx5_init_clock_info.exit.i

if.end.i.i:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %nsec.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 1, i32 2
  %34 = ptrtoint ptr %nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %nsec.i.i, align 8
  %nsec6.i.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %24, i32 0, i32 2
  %36 = ptrtoint ptr %nsec6.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %nsec6.i.i, align 8
  %cycle_last.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 1, i32 1
  %37 = ptrtoint ptr %cycle_last.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %cycle_last.i.i, align 8
  %cycles.i.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %24, i32 0, i32 3
  %39 = ptrtoint ptr %cycles.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %cycles.i.i, align 8
  %40 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %mask.i.i, align 8
  %mask9.i.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %24, i32 0, i32 7
  %42 = ptrtoint ptr %mask9.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %mask9.i.i, align 8
  %43 = ptrtoint ptr %nominal_c_mult.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nominal_c_mult.i.i, align 8
  %mult.i11.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %24, i32 0, i32 5
  %45 = ptrtoint ptr %mult.i11.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mult.i11.i, align 8
  %46 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %shift.i.i, align 4
  %shift11.i.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %24, i32 0, i32 6
  %48 = ptrtoint ptr %shift11.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %shift11.i.i, align 4
  %frac.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 1, i32 4
  %49 = ptrtoint ptr %frac.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %frac.i.i, align 8
  %frac13.i.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %24, i32 0, i32 4
  %51 = ptrtoint ptr %frac13.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %frac13.i.i, align 8
  br label %mlx5_init_clock_info.exit.i

mlx5_init_clock_info.exit.i:                      ; preds = %if.end.i.i, %do.end.i.i
  %52 = ptrtoint ptr %clock_info.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clock_info.i.i, align 8
  %54 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mult.i.i, align 8
  %conv.i.i = zext i32 %55 to i64
  %call.i14.i = tail call i64 @div64_u64(i64 noundef 9223372036854775807, i64 noundef %conv.i.i) #10
  %56 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %mask.i.i, align 8
  %58 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %57, i64 6148914691236517205) #14, !srcloc !56
  %59 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %57, i64 %58) #14, !srcloc !57
  %60 = tail call i64 @llvm.umin.i64(i64 %call.i14.i, i64 %59) #10
  %61 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mult.i.i, align 8
  %conv.i.i.i = zext i32 %62 to i64
  %mul.i.i.i = mul i64 %60, %conv.i.i.i
  %63 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %shift.i.i, align 4
  %sh_prom.i.i.i = zext i32 %64 to i64
  %shr.i.i.i = lshr i64 %mul.i.i.i, %sh_prom.i.i.i
  %65 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %shr.i.i.i) #14, !srcloc !58
  %66 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %shr.i.i.i, i64 %65, i32 0) #14, !srcloc !59
  %asmresult10.i.i.i = extractvalue { i64, i32 } %66, 0
  %extract330.i.i = lshr i64 %asmresult10.i.i.i, 23
  %extract.t331.i.i = trunc i64 %extract330.i.i to i32
  %overflow_period.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 3
  %67 = ptrtoint ptr %overflow_period.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %extract.t331.i.i, ptr %overflow_period.i.i, align 4
  %overflow_work.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 4
  tail call void @__init_work(ptr noundef %overflow_work.i.i, i32 noundef 0) #10
  %68 = ptrtoint ptr %overflow_work.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -64, ptr %overflow_work.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @mlx5_init_overflow_period.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry205.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 4, i32 0, i32 1
  %69 = ptrtoint ptr %entry205.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %entry205.i.i, ptr %entry205.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 4, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entry205.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 4, i32 0, i32 2
  %71 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @mlx5_timestamp_overflow, ptr %func.i.i, align 4
  %timer210.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer210.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.17, ptr noundef nonnull @mlx5_init_overflow_period.__key.16) #10
  %72 = ptrtoint ptr %overflow_period.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %overflow_period.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool216.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool216.not.i.i, label %do.end223.i.i, label %if.then217.i.i

if.then217.i.i:                                   ; preds = %mlx5_init_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %74 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %overflow_work.i.i, i32 noundef 0) #10
  br label %if.end225.i.i

do.end223.i.i:                                    ; preds = %mlx5_init_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mdev, align 8
  %77 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i332.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i332.i.i to ptr
  %task.i17.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i17.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i17.i, align 8
  %pid.i18.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 68
  %81 = ptrtoint ptr %pid.i18.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pid.i18.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 812, i32 noundef %82) #13
  br label %if.end225.i.i

if.end225.i.i:                                    ; preds = %do.end223.i.i, %if.then217.i.i
  %tobool226.not.i.i = icmp eq ptr %53, null
  br i1 %tobool226.not.i.i, label %if.end225.i.i.mlx5_init_overflow_period.exit.i_crit_edge, label %if.then227.i.i

if.end225.i.i.mlx5_init_overflow_period.exit.i_crit_edge: ; preds = %if.end225.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_init_overflow_period.exit.i

if.then227.i.i:                                   ; preds = %if.end225.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %overflow_period.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %overflow_period.i.i, align 4
  %conv229.i.i = zext i32 %84 to i64
  %overflow_period230.i.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %53, i32 0, i32 8
  %85 = ptrtoint ptr %overflow_period230.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv229.i.i, ptr %overflow_period230.i.i, align 8
  br label %mlx5_init_overflow_period.exit.i

mlx5_init_overflow_period.exit.i:                 ; preds = %if.then227.i.i, %if.end225.i.i.mlx5_init_overflow_period.exit.i_crit_edge
  %ptp_info.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4
  %86 = call ptr @memcpy(ptr %ptp_info.i, ptr @mlx5_ptp_clock_info, i32 108)
  %87 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %caps, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %88, i32 34
  %89 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr.i.i.i, align 4
  %shr.i.i19.i = lshr i32 %90, 28
  %conv.i.i20.i = and i32 %shr.i.i19.i, 3
  %91 = add nsw i32 %conv.i.i20.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %92 = icmp ult i32 %91, 2
  %shr.i5.i.i = lshr i32 %90, 30
  %93 = add nsw i32 %shr.i5.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %94 = icmp ult i32 %93, 2
  %95 = select i1 %92, i1 true, i1 %94
  br i1 %95, label %if.then.i, label %mlx5_init_overflow_period.exit.i.mlx5_init_timer_clock.exit_crit_edge

mlx5_init_overflow_period.exit.i.mlx5_init_timer_clock.exit_crit_edge: ; preds = %mlx5_init_overflow_period.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_init_timer_clock.exit

if.then.i:                                        ; preds = %mlx5_init_overflow_period.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %96 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #10
  %call3.i = call i32 @mlx5_ptp_settime(ptr noundef %ptp_info.i, ptr noundef nonnull %ts.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  br label %mlx5_init_timer_clock.exit

mlx5_init_timer_clock.exit:                       ; preds = %if.then.i, %mlx5_init_overflow_period.exit.i.mlx5_init_timer_clock.exit_crit_edge
  %out_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 1
  call void @__init_work(ptr noundef %out_work, i32 noundef 0) #10
  %97 = ptrtoint ptr %out_work to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -64, ptr %out_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 1, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @mlx5_init_clock.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry28 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 1, i32 1
  %98 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 1, i32 1, i32 1
  %99 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 1, i32 2
  %100 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @mlx5_pps_out, ptr %func, align 4
  %101 = call ptr @memcpy(ptr %ptp_info.i, ptr @mlx5_ptp_clock_info, i32 108)
  %102 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %caps, align 8
  %add.ptr.i = getelementptr i32, ptr %103, i32 14
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr.i, align 4
  %106 = and i32 %105, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %106)
  %.not.i = icmp eq i32 %106, 1610612736
  br i1 %.not.i, label %land.lhs.true11.i, label %mlx5_init_timer_clock.exit.mlx5_init_pps.exit_crit_edge

mlx5_init_timer_clock.exit.mlx5_init_pps.exit_crit_edge: ; preds = %mlx5_init_timer_clock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_init_pps.exit

land.lhs.true11.i:                                ; preds = %mlx5_init_timer_clock.exit
  %add.ptr14.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 2, i32 0, i32 13
  %107 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr14.i, align 4
  %109 = and i32 %108, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %109)
  %.not33.i = icmp eq i32 %109, 6
  br i1 %.not33.i, label %if.end.i, label %land.lhs.true11.i.mlx5_init_pps.exit_crit_edge

land.lhs.true11.i.mlx5_init_pps.exit_crit_edge:   ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_init_pps.exit

if.end.i:                                         ; preds = %land.lhs.true11.i
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %out.i.i) #10
  %110 = call ptr @memset(ptr %out.i.i, i32 0, i32 60)
  %call.i.i79 = call i32 @mlx5_query_mtpps(ptr noundef %mdev, ptr noundef nonnull %out.i.i, i32 noundef 60) #10
  %111 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %out.i.i, align 4
  %shr.i.i = lshr i32 %112, 16
  %and.i.i = and i32 %shr.i.i, 15
  %n_pins.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4, i32 6
  %113 = ptrtoint ptr %n_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and.i.i, ptr %n_pins.i.i, align 4
  %shr5.i.i = lshr i32 %112, 8
  %and6.i.i = and i32 %shr5.i.i, 15
  %n_ext_ts.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4, i32 4
  %114 = ptrtoint ptr %n_ext_ts.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and6.i.i, ptr %n_ext_ts.i.i, align 4
  %and11.i.i = and i32 %112, 15
  %n_per_out.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4, i32 5
  %115 = ptrtoint ptr %n_per_out.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and11.i.i, ptr %n_per_out.i.i, align 8
  %add.ptr14.i.i = getelementptr inbounds i32, ptr %out.i.i, i32 2
  %116 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr14.i.i, align 4
  %118 = trunc i32 %117 to i8
  %conv.i.i80 = and i8 %118, 15
  %pps_info.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5
  %119 = ptrtoint ptr %pps_info.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i.i80, ptr %pps_info.i.i, align 8
  %shr19.i.i = lshr i32 %117, 8
  %120 = trunc i32 %shr19.i.i to i8
  %conv21.i.i = and i8 %120, 15
  %arrayidx24.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 0, i32 1
  %121 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv21.i.i, ptr %arrayidx24.i.i, align 1
  %shr27.i.i = lshr i32 %117, 16
  %122 = trunc i32 %shr27.i.i to i8
  %conv29.i.i = and i8 %122, 15
  %arrayidx32.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 0, i32 2
  %123 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv29.i.i, ptr %arrayidx32.i.i, align 2
  %shr35.i.i = lshr i32 %117, 24
  %124 = trunc i32 %shr35.i.i to i8
  %conv37.i.i = and i8 %124, 15
  %arrayidx40.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 0, i32 3
  %125 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv37.i.i, ptr %arrayidx40.i.i, align 1
  %add.ptr42.i.i = getelementptr inbounds i32, ptr %out.i.i, i32 3
  %126 = ptrtoint ptr %add.ptr42.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr42.i.i, align 4
  %128 = trunc i32 %127 to i8
  %conv45.i.i = and i8 %128, 15
  %arrayidx48.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 0, i32 4
  %129 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv45.i.i, ptr %arrayidx48.i.i, align 4
  %shr51.i.i = lshr i32 %127, 8
  %130 = trunc i32 %shr51.i.i to i8
  %conv53.i.i = and i8 %130, 15
  %arrayidx56.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 0, i32 5
  %131 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv53.i.i, ptr %arrayidx56.i.i, align 1
  %shr59.i.i = lshr i32 %127, 16
  %132 = trunc i32 %shr59.i.i to i8
  %conv61.i.i = and i8 %132, 15
  %arrayidx64.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 0, i32 6
  %133 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv61.i.i, ptr %arrayidx64.i.i, align 2
  %shr67.i.i = lshr i32 %127, 24
  %134 = trunc i32 %shr67.i.i to i8
  %conv69.i.i = and i8 %134, 15
  %arrayidx72.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 0, i32 7
  %135 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv69.i.i, ptr %arrayidx72.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %out.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i81 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i81, label %if.end.i.mlx5_init_pps.exit_crit_edge, label %if.end7.i.i.i.i

if.end.i.mlx5_init_pps.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_init_pps.exit

if.end7.i.i.i.i:                                  ; preds = %if.end.i
  %136 = mul nuw nsw i32 %and.i.i, 96
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %136, i32 noundef 3520) #15
  %pin_config.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4, i32 8
  %137 = ptrtoint ptr %pin_config.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call8.i.i.i.i, ptr %pin_config.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end7.i.i.i.i.mlx5_init_pps.exit_crit_edge, label %if.end8.i.i

if.end7.i.i.i.i.mlx5_init_pps.exit_crit_edge:     ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_init_pps.exit

if.end8.i.i:                                      ; preds = %if.end7.i.i.i.i
  %enable.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4, i32 17
  %138 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @mlx5_ptp_enable, ptr %enable.i.i, align 8
  %verify.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4, i32 18
  %139 = ptrtoint ptr %verify.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @mlx5_ptp_verify, ptr %verify.i.i, align 4
  %pps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4, i32 7
  %140 = ptrtoint ptr %pps.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %pps.i.i, align 8
  %141 = ptrtoint ptr %n_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %n_pins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp55.i.i = icmp sgt i32 %142, 0
  br i1 %cmp55.i.i, label %for.body.lr.ph.i.i, label %if.end8.i.i.mlx5_init_pps.exit_crit_edge

if.end8.i.i.mlx5_init_pps.exit_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_init_pps.exit

for.body.lr.ph.i.i:                               ; preds = %if.end8.i.i
  %add.ptr.i.i.i.i = getelementptr inbounds i32, ptr %in.i.i.i.i, i32 8
  %add.ptr2.i.i.i = getelementptr inbounds i32, ptr %out.i.i.i, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %mlx5_get_pps_pin_mode.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.056.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %mlx5_get_pps_pin_mode.exit.i.i.for.body.i.i_crit_edge ]
  %143 = ptrtoint ptr %pin_config.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pin_config.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ptp_pin_desc, ptr %144, i32 %i.056.i.i
  %call16.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i.i, i32 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %i.056.i.i) #10
  %145 = ptrtoint ptr %pin_config.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pin_config.i.i, align 4
  %index.i.i = getelementptr %struct.ptp_pin_desc, ptr %146, i32 %i.056.i.i, i32 1
  %147 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %i.056.i.i, ptr %index.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %out.i.i.i) #10
  %148 = call ptr @memset(ptr %out.i.i.i, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %in.i.i.i.i) #10
  %149 = call ptr @memset(ptr %in.i.i.i.i, i32 0, i32 60)
  %conv.i.i.i.i82 = and i32 %i.056.i.i, 255
  %150 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv.i.i.i.i82, ptr %add.ptr.i.i.i.i, align 4
  %call.i.i.i.i83 = call i32 @mlx5_core_access_reg(ptr noundef %mdev, ptr noundef nonnull %in.i.i.i.i, i32 noundef 60, ptr noundef nonnull %out.i.i.i, i32 noundef 60, i16 noundef zeroext -28589, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %in.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i83)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i83, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %for.body.i.i.mlx5_get_pps_pin_mode.exit.i.i_crit_edge

for.body.i.i.mlx5_get_pps_pin_mode.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_get_pps_pin_mode.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i
  %151 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %152)
  %tobool3.not.i.i.i = icmp sgt i32 %152, -1
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false.i.i.i.mlx5_get_pps_pin_mode.exit.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.mlx5_get_pps_pin_mode.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_get_pps_pin_mode.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr6.i.i.i = lshr i32 %152, 8
  %conv.i.i.i84 = and i32 %shr6.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i.i.i84)
  %switch.selectcmp.i.i.i = icmp eq i32 %conv.i.i.i84, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i84)
  %switch.selectcmp21.i.i.i = icmp eq i32 %conv.i.i.i84, 0
  %switch.select22.i.i.i = select i1 %switch.selectcmp21.i.i.i, i32 1, i32 %switch.select.i.i.i
  br label %mlx5_get_pps_pin_mode.exit.i.i

mlx5_get_pps_pin_mode.exit.i.i:                   ; preds = %if.end.i.i.i, %lor.lhs.false.i.i.i.mlx5_get_pps_pin_mode.exit.i.i_crit_edge, %for.body.i.i.mlx5_get_pps_pin_mode.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %lor.lhs.false.i.i.i.mlx5_get_pps_pin_mode.exit.i.i_crit_edge ], [ 0, %for.body.i.i.mlx5_get_pps_pin_mode.exit.i.i_crit_edge ], [ %switch.select22.i.i.i, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %out.i.i.i) #10
  %153 = ptrtoint ptr %pin_config.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pin_config.i.i, align 4
  %func.i.i85 = getelementptr %struct.ptp_pin_desc, ptr %154, i32 %i.056.i.i, i32 2
  %155 = ptrtoint ptr %func.i.i85 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %retval.0.i.i.i, ptr %func.i.i85, align 4
  %156 = load ptr, ptr %pin_config.i.i, align 4
  %chan.i.i = getelementptr %struct.ptp_pin_desc, ptr %156, i32 %i.056.i.i, i32 3
  %157 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %chan.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  %158 = ptrtoint ptr %n_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %n_pins.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %159
  br i1 %cmp.i.i, label %mlx5_get_pps_pin_mode.exit.i.i.for.body.i.i_crit_edge, label %mlx5_get_pps_pin_mode.exit.i.i.mlx5_init_pps.exit_crit_edge

mlx5_get_pps_pin_mode.exit.i.i.mlx5_init_pps.exit_crit_edge: ; preds = %mlx5_get_pps_pin_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_init_pps.exit

mlx5_get_pps_pin_mode.exit.i.i.for.body.i.i_crit_edge: ; preds = %mlx5_get_pps_pin_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

mlx5_init_pps.exit:                               ; preds = %mlx5_get_pps_pin_mode.exit.i.i.mlx5_init_pps.exit_crit_edge, %if.end8.i.i.mlx5_init_pps.exit_crit_edge, %if.end7.i.i.i.i.mlx5_init_pps.exit_crit_edge, %if.end.i.mlx5_init_pps.exit_crit_edge, %land.lhs.true11.i.mlx5_init_pps.exit_crit_edge, %mlx5_init_timer_clock.exit.mlx5_init_pps.exit_crit_edge
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 2
  %160 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 44
  %call34 = call ptr @ptp_clock_register(ptr noundef %ptp_info.i, ptr noundef %dev) #10
  %ptp = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 3
  %162 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call34, ptr %ptp, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %mlx5_init_pps.exit.do.body49_crit_edge

mlx5_init_pps.exit.do.body49_crit_edge:           ; preds = %mlx5_init_pps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.end40:                                         ; preds = %mlx5_init_pps.exit
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mdev, align 8
  %165 = call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i86 = and i32 %165, -16384
  %166 = inttoptr i32 %and.i86 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %task43, align 8
  %pid44 = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 68
  %169 = ptrtoint ptr %pid44 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pid44, align 8
  %171 = ptrtoint ptr %call34 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %164, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 892, i32 noundef %170, i32 noundef %171) #13
  %172 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %ptp, align 4
  br label %do.body49

do.body49:                                        ; preds = %do.end40, %mlx5_init_pps.exit.do.body49_crit_edge
  %173 = ptrtoint ptr %clock1 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @mlx5_pps_event, ptr %clock1, align 8
  %event_type = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 0, i32 1
  %174 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 37, ptr %event_type, align 4
  %call54 = call i32 @mlx5_eq_notifier_register(ptr noundef %mdev, ptr noundef %clock1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body49, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_pps_out(ptr noundef %work) #0 align 64 {
entry:
  %in = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr6 = getelementptr i8, ptr %work, i32 -4368
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %in) #10
  %0 = call ptr @memset(ptr %in, i32 0, i32 60)
  %n_pins = getelementptr i8, ptr %work, i32 -68
  %1 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp64 = icmp sgt i32 %2, 0
  br i1 %cmp64, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 -216
  %lock.i = getelementptr i8, ptr %work, i32 -180
  %dep_map.i.i.i = getelementptr i8, ptr %work, i32 -212
  %start = getelementptr i8, ptr %work, i32 48
  %add.ptr16 = getelementptr inbounds i32, ptr %in, i32 8
  %add.ptr31 = getelementptr inbounds i64, ptr %in, i32 5
  %add.ptr42 = getelementptr inbounds i32, ptr %in, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %4, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %5 = call ptr @llvm.returnaddress(i32 0) #10
  %6 = ptrtoint ptr %5 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #10
  %arrayidx = getelementptr [8 x i64], ptr %start, i32 0, i32 %i.065
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx, align 8
  store i64 0, ptr %arrayidx, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %6) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %do.body12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr16, align 4
  %and = and i32 %12, -256
  %and17 = and i32 %i.065, 255
  %or = or i32 %and, %and17
  store i32 %or, ptr %add.ptr16, align 4
  %13 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %8, ptr %add.ptr31, align 8
  %14 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %add.ptr42, align 4
  %call52 = call i32 @mlx5_set_mtpps(ptr noundef %add.ptr6, ptr noundef nonnull %in, i32 noundef 60) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %15 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_pins, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %in) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_pps_event(ptr noundef %nb, i32 noundef %type, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  %ptp_event = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ptp_event) #10
  %0 = call ptr @memset(ptr %ptp_event, i32 255, i32 24)
  %data4 = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5
  %pin5 = getelementptr inbounds %struct.mlx5_eqe_pps, ptr %data4, i32 0, i32 1
  %1 = ptrtoint ptr %pin5 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pin5, align 1
  %conv = zext i8 %2 to i32
  %add.ptr8 = getelementptr i8, ptr %nb, i32 -4136
  %pin_config = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pin_config, align 4
  %func = getelementptr %struct.ptp_pin_desc, ptr %4, i32 %conv, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %func, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end28 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %index = getelementptr inbounds %struct.ptp_clock_event, ptr %ptp_event, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %index, align 4
  %caps.i.i = getelementptr i8, ptr %nb, i32 -3192
  %9 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %10, i32 34
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i = lshr i32 %12, 28
  %conv.i.i = and i32 %shr.i.i, 3
  %13 = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %14 = icmp ult i32 %13, 2
  %shr.i5.i = lshr i32 %12, 30
  %15 = add nsw i32 %shr.i5.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %16 = icmp ult i32 %15, 2
  %17 = select i1 %14, i1 true, i1 %16
  %18 = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %18, align 1
  br i1 %17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i64 %20, 32
  %mul.i = mul nuw nsw i64 %shr.i, 1000000000
  %and.i = and i64 %20, 4294967295
  %add.i = add nuw nsw i64 %mul.i, %and.i
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 1
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 1, i32 0, i32 0, i32 1
  %tc.i = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 6, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %read_seqbegin.exit.i.do.body.i_crit_edge, %cond.false
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !62
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %22 = tail call ptr @llvm.returnaddress(i32 0) #10
  %23 = ptrtoint ptr %22 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %23) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %23) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = tail call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %25) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %25) #10
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !63
  %and.i.i.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !64

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #10, !srcloc !65
  %27 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %lock.i, align 4
  %and18.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !67
  %29 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %lock.i, align 4
  %and.i.i = and i32 %30, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %28, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %30, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  %call2.i = tail call i64 @timecounter_cyc2time(ptr noundef %tc.i, i64 noundef %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %31 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %lock.i, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %32, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %read_seqbegin.exit.i.cond.end_crit_edge, label %read_seqbegin.exit.i.do.body.i_crit_edge

read_seqbegin.exit.i.do.body.i_crit_edge:         ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

read_seqbegin.exit.i.cond.end_crit_edge:          ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.end:                                         ; preds = %read_seqbegin.exit.i.cond.end_crit_edge, %cond.true
  %cond = phi i64 [ %add.i, %cond.true ], [ %call2.i, %read_seqbegin.exit.i.cond.end_crit_edge ]
  %33 = getelementptr inbounds %struct.ptp_clock_event, ptr %ptp_event, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %cond, ptr %33, align 8
  %enabled = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 5, i32 3
  %35 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %ptp_event to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %ptp_event, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %33, i64 noundef %cond) #10
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %ptp_event to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %ptp_event, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ptp = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 3
  %39 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptp, align 4
  call void @ptp_clock_event(ptr noundef %40, ptr noundef nonnull %ptp_event) #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %41 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %ptp_info.i = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 4
  %call.i = call i32 @mlx5_ptp_gettimex(ptr noundef %ptp_info.i, ptr noundef nonnull %ts.i, ptr noundef null) #10
  %42 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ts.i, align 8
  %add.i.i = add i64 %43, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %add.i.i)
  %cmp.i.i = icmp sgt i64 %add.i.i, 9223372035
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %add.i.i)
  %cmp2.i.i = icmp slt i64 %add.i.i, -9223372035
  %mul.i.i = mul nsw i64 %add.i.i, 1000000000
  %spec.select.i = select i1 %cmp2.i.i, i64 -9223372036854775808, i64 %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %spec.select.i
  %call2.i52 = tail call fastcc i64 @find_target_cycles(ptr noundef %add.ptr8, i64 noundef %retval.0.i.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  %lock = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 1
  %lock.i53 = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 1, i32 1
  %call2.i54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i53) #10
  %44 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %dep_map.i.i.i = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 1, i32 0, i32 0, i32 1
  %46 = tail call ptr @llvm.returnaddress(i32 0) #10
  %47 = ptrtoint ptr %46 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %47) #10
  %arrayidx22 = getelementptr %struct.mlx5_clock, ptr %nb, i32 0, i32 5, i32 2, i32 %conv
  %48 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %call2.i52, ptr %arrayidx22, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %47) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %49 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i53, i32 noundef %call2.i54) #10
  %out_work = getelementptr inbounds %struct.mlx5_clock, ptr %nb, i32 0, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %51 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %51, ptr noundef %out_work) #10
  br label %sw.epilog

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr8, align 8
  %54 = tail call i32 @llvm.read_register.i32(metadata !45) #10
  %and.i56 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i56 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 759, i32 noundef %59, i32 noundef %6) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end28, %sw.bb18, %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ptp_event) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cleanup_clock(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 39
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %clock1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27
  %call = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %mdev, ptr noundef %clock1) #10
  %ptp = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 3
  %4 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %5) #10
  %6 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ptp, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %out_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 5, i32 1
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %out_work) #10
  %overflow_work = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 4
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %overflow_work) #10
  %clock_info = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 28
  %7 = ptrtoint ptr %clock_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clock_info, align 8
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %8 to i32
  tail call void @free_pages(i32 noundef %9, i32 noundef 0) #10
  %10 = ptrtoint ptr %clock_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %clock_info, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %pin_config = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 4, i32 8
  %11 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin_config, align 4
  tail call void @kfree(ptr noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  %out.i.i = alloca [7 x i32], align 4
  %in.i = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr4 = getelementptr i8, ptr %ptp, i32 -4248
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %in.i) #10
  %0 = call ptr @memset(ptr %in.i, i32 0, i32 28)
  %add.ptr.i.i = getelementptr i8, ptr %ptp, i32 -3020
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %3 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %mlx5_ptp_settime_real_time.exit.thread29, label %if.end.i

mlx5_ptp_settime_real_time.exit.thread29:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %5)
  %6 = icmp ugt i64 %5, 4294967295
  br i1 %6, label %if.end.i.mlx5_ptp_settime_real_time.exit.thread_crit_edge, label %lor.lhs.false3.i

if.end.i.mlx5_ptp_settime_real_time.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_ptp_settime_real_time.exit.thread

lor.lhs.false3.i:                                 ; preds = %if.end.i
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %8)
  %9 = icmp ugt i32 %8, 1000000000
  br i1 %9, label %lor.lhs.false3.i.mlx5_ptp_settime_real_time.exit.thread_crit_edge, label %do.body.i

lor.lhs.false3.i.mlx5_ptp_settime_real_time.exit.thread_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_ptp_settime_real_time.exit.thread

do.body.i:                                        ; preds = %lor.lhs.false3.i
  %10 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in.i, align 4
  %and.i = and i32 %11, -16
  %or.i = or i32 %and.i, 1
  store i32 %or.i, ptr %in.i, align 4
  %conv.i = trunc i64 %5 to i32
  %add.ptr23.i = getelementptr inbounds i32, ptr %in.i, i32 4
  %12 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %add.ptr23.i, align 4
  %add.ptr39.i = getelementptr inbounds i32, ptr %in.i, i32 5
  %13 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr39.i, align 4
  %and40.i = and i32 %14, -1073741824
  %or43.i = or i32 %and40.i, %8
  store i32 %or43.i, ptr %add.ptr39.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %out.i.i) #10
  %15 = call ptr @memset(ptr %out.i.i, i32 0, i32 28)
  %add.ptr.i58.i = getelementptr i8, ptr %ptp, i32 -3060
  %16 = ptrtoint ptr %add.ptr.i58.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i58.i, align 4
  %18 = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %mlx5_ptp_settime_real_time.exit.thread32, label %mlx5_ptp_settime_real_time.exit

mlx5_ptp_settime_real_time.exit.thread32:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %out.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  br label %cleanup

mlx5_ptp_settime_real_time.exit.thread:           ; preds = %lor.lhs.false3.i.mlx5_ptp_settime_real_time.exit.thread_crit_edge, %if.end.i.mlx5_ptp_settime_real_time.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  br label %cleanup

mlx5_ptp_settime_real_time.exit:                  ; preds = %do.body.i
  %call.i.i = call i32 @mlx5_core_access_reg(ptr noundef %add.ptr4, ptr noundef nonnull %in.i, i32 noundef 28, ptr noundef nonnull %out.i.i, i32 noundef 28, i16 noundef zeroext -28587, i32 noundef 0, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %out.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %mlx5_ptp_settime_real_time.exit.do.body_crit_edge, label %mlx5_ptp_settime_real_time.exit.cleanup_crit_edge

mlx5_ptp_settime_real_time.exit.cleanup_crit_edge: ; preds = %mlx5_ptp_settime_real_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5_ptp_settime_real_time.exit.do.body_crit_edge: ; preds = %mlx5_ptp_settime_real_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %mlx5_ptp_settime_real_time.exit.do.body_crit_edge, %mlx5_ptp_settime_real_time.exit.thread29
  %timer1 = getelementptr i8, ptr %ptp, i32 240
  %lock = getelementptr i8, ptr %ptp, i32 -96
  %lock.i = getelementptr i8, ptr %ptp, i32 -60
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %dep_map.i.i.i = getelementptr i8, ptr %ptp, i32 -92
  %21 = call ptr @llvm.returnaddress(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %22) #10
  %tc = getelementptr i8, ptr %ptp, i32 264
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %24)
  %cmp.i = icmp sgt i64 %24, 9223372035
  br i1 %cmp.i, label %do.body.timespec64_to_ns.exit_crit_edge, label %if.end.i19

do.body.timespec64_to_ns.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit

if.end.i19:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %24)
  %cmp2.i = icmp slt i64 %24, -9223372035
  br i1 %cmp2.i, label %if.end.i19.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i19.timespec64_to_ns.exit_crit_edge:       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = mul nsw i64 %24, 1000000000
  %tv_nsec.i20 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %25 = ptrtoint ptr %tv_nsec.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_nsec.i20, align 8
  %conv.i21 = sext i32 %26 to i64
  %add.i = add i64 %mul.i, %conv.i21
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i19.timespec64_to_ns.exit_crit_edge, %do.body.timespec64_to_ns.exit_crit_edge
  %retval.0.i22 = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %do.body.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i19.timespec64_to_ns.exit_crit_edge ]
  call void @timecounter_init(ptr noundef %tc, ptr noundef %timer1, i64 noundef %retval.0.i22) #10
  %clock_info1.i = getelementptr i8, ptr %ptp, i32 416
  %27 = ptrtoint ptr %clock_info1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clock_info1.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %timespec64_to_ns.exit.mlx5_update_clock_info_page.exit_crit_edge, label %if.end.i25

timespec64_to_ns.exit.mlx5_update_clock_info_page.exit_crit_edge: ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_update_clock_info_page.exit

if.end.i25:                                       ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %or.i23 = or i32 %30, 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %or.i23, ptr %28, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %cycle_last.i = getelementptr i8, ptr %ptp, i32 272
  %32 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cycle_last.i, align 8
  %cycles.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %28, i32 0, i32 3
  %34 = ptrtoint ptr %cycles.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %cycles.i, align 8
  %mult.i = getelementptr i8, ptr %ptp, i32 256
  %35 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mult.i, align 8
  %mult29.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %28, i32 0, i32 5
  %37 = ptrtoint ptr %mult29.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %mult29.i, align 8
  %nsec.i = getelementptr i8, ptr %ptp, i32 280
  %38 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %nsec.i, align 8
  %nsec31.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %28, i32 0, i32 2
  %40 = ptrtoint ptr %nsec31.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %nsec31.i, align 8
  %frac.i = getelementptr i8, ptr %ptp, i32 296
  %41 = ptrtoint ptr %frac.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %frac.i, align 8
  %frac33.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %28, i32 0, i32 4
  %43 = ptrtoint ptr %frac33.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %frac33.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %add.i24 = add i32 %30, 2
  %44 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %add.i24, ptr %28, align 8
  br label %mlx5_update_clock_info_page.exit

mlx5_update_clock_info_page.exit:                 ; preds = %if.end.i25, %timespec64_to_ns.exit.mlx5_update_clock_info_page.exit_crit_edge
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %22) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %45 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mlx5_update_clock_info_page.exit, %mlx5_ptp_settime_real_time.exit.cleanup_crit_edge, %mlx5_ptp_settime_real_time.exit.thread, %mlx5_ptp_settime_real_time.exit.thread32
  %retval.0 = phi i32 [ 0, %mlx5_update_clock_info_page.exit ], [ %call.i.i, %mlx5_ptp_settime_real_time.exit.cleanup_crit_edge ], [ -22, %mlx5_ptp_settime_real_time.exit.thread ], [ -95, %mlx5_ptp_settime_real_time.exit.thread32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @read_internal_timer(ptr nocapture noundef readonly %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iseg.i = getelementptr i8, ptr %cc, i32 -2748
  %0 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg.i, align 4
  %internal_timer_h.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %internal_timer_h.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %3 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iseg.i, align 4
  %internal_timer_l.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %4, i32 0, i32 13
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %internal_timer_l.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %6 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iseg.i, align 4
  %internal_timer_h19.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %7, i32 0, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %internal_timer_h19.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp.not.i = icmp eq i32 %2, %8
  br i1 %cmp.not.i, label %entry.mlx5_read_time.exit_crit_edge, label %if.then.i

entry.mlx5_read_time.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_read_time.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iseg.i, align 4
  %internal_timer_l31.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %10, i32 0, i32 13
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %internal_timer_l31.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  br label %mlx5_read_time.exit

mlx5_read_time.exit:                              ; preds = %if.then.i, %entry.mlx5_read_time.exit_crit_edge
  %timer_l.0.i = phi i32 [ %5, %entry.mlx5_read_time.exit_crit_edge ], [ %11, %if.then.i ]
  %conv40.i = zext i32 %timer_l.0.i to i64
  %conv41.i = zext i32 %8 to i64
  %shl.i = shl nuw i64 %conv41.i, 32
  %or.i = or i64 %shl.i, %conv40.i
  %mask = getelementptr inbounds %struct.cyclecounter, ptr %cc, i32 0, i32 1
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mask, align 8
  %and = and i64 %or.i, %13
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @mlx5_read_time(ptr nocapture noundef readonly %dev, ptr noundef %sts, i1 noundef zeroext %real_time) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iseg = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %iseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg, align 4
  %real_time_h = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 17
  %internal_timer_h = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 12
  %cond = select i1 %real_time, ptr %real_time_h, ptr %internal_timer_h
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %entry.ptp_read_system_prets.exit_crit_edge, label %if.then.i

entry.ptp_read_system_prets.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptp_read_system_prets.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #10
  br label %ptp_read_system_prets.exit

ptp_read_system_prets.exit:                       ; preds = %if.then.i, %entry.ptp_read_system_prets.exit_crit_edge
  %iseg5 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %3 = ptrtoint ptr %iseg5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iseg5, align 4
  %real_time_l = getelementptr inbounds %struct.mlx5_init_seg, ptr %4, i32 0, i32 18
  %internal_timer_l = getelementptr inbounds %struct.mlx5_init_seg, ptr %4, i32 0, i32 13
  %cond9 = select i1 %real_time, ptr %real_time_l, ptr %internal_timer_l
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond9) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge, label %if.then.i62

ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge: ; preds = %ptp_read_system_prets.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptp_read_system_postts.exit

if.then.i62:                                      ; preds = %ptp_read_system_prets.exit
  call void @__sanitizer_cov_trace_pc() #12
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #10
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit:                      ; preds = %if.then.i62, %ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge
  %iseg15 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %6 = ptrtoint ptr %iseg15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iseg15, align 4
  %real_time_h16 = getelementptr inbounds %struct.mlx5_init_seg, ptr %7, i32 0, i32 17
  %internal_timer_h19 = getelementptr inbounds %struct.mlx5_init_seg, ptr %7, i32 0, i32 12
  %cond21 = select i1 %real_time, ptr %real_time_h16, ptr %internal_timer_h19
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond21) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp.not = icmp eq i32 %2, %8
  br i1 %cmp.not, label %ptp_read_system_postts.exit.if.end_crit_edge, label %if.then

ptp_read_system_postts.exit.if.end_crit_edge:     ; preds = %ptp_read_system_postts.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %ptp_read_system_postts.exit
  br i1 %tobool.not.i, label %if.then.ptp_read_system_prets.exit65_crit_edge, label %if.then.i64

if.then.ptp_read_system_prets.exit65_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptp_read_system_prets.exit65

if.then.i64:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #10
  br label %ptp_read_system_prets.exit65

ptp_read_system_prets.exit65:                     ; preds = %if.then.i64, %if.then.ptp_read_system_prets.exit65_crit_edge
  %iseg27 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %9 = ptrtoint ptr %iseg27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iseg27, align 4
  %real_time_l28 = getelementptr inbounds %struct.mlx5_init_seg, ptr %10, i32 0, i32 18
  %internal_timer_l31 = getelementptr inbounds %struct.mlx5_init_seg, ptr %10, i32 0, i32 13
  %cond33 = select i1 %real_time, ptr %real_time_l28, ptr %internal_timer_l31
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond33) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit65.if.end_crit_edge, label %if.then.i68

ptp_read_system_prets.exit65.if.end_crit_edge:    ; preds = %ptp_read_system_prets.exit65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i68:                                      ; preds = %ptp_read_system_prets.exit65
  call void @__sanitizer_cov_trace_pc() #12
  %post_ts.i67 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i67) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i68, %ptp_read_system_prets.exit65.if.end_crit_edge, %ptp_read_system_postts.exit.if.end_crit_edge
  %timer_l.0 = phi i32 [ %5, %ptp_read_system_postts.exit.if.end_crit_edge ], [ %11, %ptp_read_system_prets.exit65.if.end_crit_edge ], [ %11, %if.then.i68 ]
  br i1 %real_time, label %cond.true37, label %cond.false39

cond.true37:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %8 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %conv38 = zext i32 %timer_l.0 to i64
  %add = add nuw nsw i64 %mul, %conv38
  br label %cond.end42

cond.false39:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv40 = zext i32 %timer_l.0 to i64
  %conv41 = zext i32 %8 to i64
  %shl = shl nuw i64 %conv41, 32
  %or = or i64 %shl, %conv40
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false39, %cond.true37
  %cond43 = phi i64 [ %add, %cond.true37 ], [ %or, %cond.false39 ]
  ret i64 %cond43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_timestamp_overflow(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -408
  %lock.i = getelementptr i8, ptr %work, i32 -372
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %dep_map.i.i.i = getelementptr i8, ptr %work, i32 -404
  %2 = tail call ptr @llvm.returnaddress(i32 0) #10
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #10
  %tc = getelementptr i8, ptr %work, i32 -48
  %call8 = tail call i64 @timecounter_read(ptr noundef %tc) #10
  %clock_info1.i = getelementptr i8, ptr %work, i32 104
  %4 = ptrtoint ptr %clock_info1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock_info1.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mlx5_update_clock_info_page.exit_crit_edge, label %if.end.i

entry.mlx5_update_clock_info_page.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_update_clock_info_page.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %or.i = or i32 %7, 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %or.i, ptr %5, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %cycle_last.i = getelementptr i8, ptr %work, i32 -40
  %9 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cycle_last.i, align 8
  %cycles.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %cycles.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %cycles.i, align 8
  %mult.i = getelementptr i8, ptr %work, i32 -56
  %12 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mult.i, align 8
  %mult29.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %mult29.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mult29.i, align 8
  %nsec.i = getelementptr i8, ptr %work, i32 -32
  %15 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %nsec.i, align 8
  %nsec31.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %nsec31.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %nsec31.i, align 8
  %frac.i = getelementptr i8, ptr %work, i32 -16
  %18 = ptrtoint ptr %frac.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %frac.i, align 8
  %frac33.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %frac33.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %frac33.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %add.i = add i32 %7, 2
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %add.i, ptr %5, align 8
  br label %mlx5_update_clock_info_page.exit

mlx5_update_clock_info_page.exit:                 ; preds = %if.end.i, %entry.mlx5_update_clock_info_page.exit_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %overflow_period = getelementptr i8, ptr %work, i32 -4
  %24 = ptrtoint ptr %overflow_period to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %overflow_period, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef %25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_mtpps(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ptp_adjfreq(ptr noundef %ptp, i32 noundef %delta) #0 align 64 {
entry:
  %out.i.i = alloca [7 x i32], align 4
  %in.i = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr4 = getelementptr i8, ptr %ptp, i32 -4248
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %in.i) #10
  %0 = call ptr @memset(ptr %in.i, i32 0, i32 28)
  %add.ptr.i.i = getelementptr i8, ptr %ptp, i32 -3020
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %3 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %mlx5_ptp_adjfreq_real_time.exit.thread, label %do.body.i

mlx5_ptp_adjfreq_real_time.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  br label %if.end

do.body.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in.i, align 4
  %and.i = and i32 %5, -16
  %or.i = or i32 %and.i, 3
  store i32 %or.i, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %6 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %delta, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %out.i.i) #10
  %7 = call ptr @memset(ptr %out.i.i, i32 0, i32 28)
  %add.ptr.i25.i = getelementptr i8, ptr %ptp, i32 -3060
  %8 = ptrtoint ptr %add.ptr.i25.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i25.i, align 4
  %10 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %mlx5_ptp_adjfreq_real_time.exit.thread42, label %mlx5_ptp_adjfreq_real_time.exit

mlx5_ptp_adjfreq_real_time.exit.thread42:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %out.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  br label %cleanup

mlx5_ptp_adjfreq_real_time.exit:                  ; preds = %do.body.i
  %call.i.i = call i32 @mlx5_core_access_reg(ptr noundef %add.ptr4, ptr noundef nonnull %in.i, i32 noundef 28, ptr noundef nonnull %out.i.i, i32 noundef 28, i16 noundef zeroext -28587, i32 noundef 0, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %out.i.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %mlx5_ptp_adjfreq_real_time.exit.if.end_crit_edge, label %mlx5_ptp_adjfreq_real_time.exit.cleanup_crit_edge

mlx5_ptp_adjfreq_real_time.exit.cleanup_crit_edge: ; preds = %mlx5_ptp_adjfreq_real_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5_ptp_adjfreq_real_time.exit.if.end_crit_edge: ; preds = %mlx5_ptp_adjfreq_real_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %mlx5_ptp_adjfreq_real_time.exit.if.end_crit_edge, %mlx5_ptp_adjfreq_real_time.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %cmp = icmp slt i32 %delta, 0
  %11 = call i32 @llvm.abs.i32(i32 %delta, i1 false)
  %nominal_c_mult = getelementptr i8, ptr %ptp, i32 304
  %12 = ptrtoint ptr %nominal_c_mult to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nominal_c_mult, align 8
  %conv = zext i32 %13 to i64
  %conv7 = sext i32 %11 to i64
  %mul = mul nsw i64 %conv, %conv7
  %14 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #14, !srcloc !78
  %asmresult.i.i.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %14, 1
  %15 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !59
  %asmresult10.i.i.i = extractvalue { i64, i32 } %15, 0
  %div158.i.i45 = lshr i64 %asmresult10.i.i.i, 29
  %conv9 = trunc i64 %div158.i.i45 to i32
  %lock = getelementptr i8, ptr %ptp, i32 -96
  %lock.i = getelementptr i8, ptr %ptp, i32 -60
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %dep_map.i.i.i = getelementptr i8, ptr %ptp, i32 -92
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %19) #10
  %tc = getelementptr i8, ptr %ptp, i32 264
  %call11 = call i64 @timecounter_read(ptr noundef %tc) #10
  %20 = ptrtoint ptr %nominal_c_mult to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nominal_c_mult, align 8
  %22 = sub i32 0, %conv9
  %cond.p = select i1 %cmp, i32 %22, i32 %conv9
  %cond = add i32 %21, %cond.p
  %mult = getelementptr i8, ptr %ptp, i32 256
  %23 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %mult, align 8
  %clock_info1.i = getelementptr i8, ptr %ptp, i32 416
  %24 = ptrtoint ptr %clock_info1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clock_info1.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.mlx5_update_clock_info_page.exit_crit_edge, label %if.end.i

if.end.mlx5_update_clock_info_page.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_update_clock_info_page.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %or.i38 = or i32 %27, 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %or.i38, ptr %25, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %cycle_last.i = getelementptr i8, ptr %ptp, i32 272
  %29 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cycle_last.i, align 8
  %cycles.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %25, i32 0, i32 3
  %31 = ptrtoint ptr %cycles.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %cycles.i, align 8
  %32 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mult, align 8
  %mult29.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %25, i32 0, i32 5
  %34 = ptrtoint ptr %mult29.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mult29.i, align 8
  %nsec.i = getelementptr i8, ptr %ptp, i32 280
  %35 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %nsec.i, align 8
  %nsec31.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %25, i32 0, i32 2
  %37 = ptrtoint ptr %nsec31.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %nsec31.i, align 8
  %frac.i = getelementptr i8, ptr %ptp, i32 296
  %38 = ptrtoint ptr %frac.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %frac.i, align 8
  %frac33.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %25, i32 0, i32 4
  %40 = ptrtoint ptr %frac33.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %frac33.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %add.i = add i32 %27, 2
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %add.i, ptr %25, align 8
  br label %mlx5_update_clock_info_page.exit

mlx5_update_clock_info_page.exit:                 ; preds = %if.end.i, %if.end.mlx5_update_clock_info_page.exit_crit_edge
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %19) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %42 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %43, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mlx5_update_clock_info_page.exit, %mlx5_ptp_adjfreq_real_time.exit.cleanup_crit_edge, %mlx5_ptp_adjfreq_real_time.exit.thread42
  %retval.0 = phi i32 [ 0, %mlx5_update_clock_info_page.exit ], [ %call.i.i, %mlx5_ptp_adjfreq_real_time.exit.cleanup_crit_edge ], [ -95, %mlx5_ptp_adjfreq_real_time.exit.thread42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %out.i.i = alloca [7 x i32], align 4
  %out.i.i.i = alloca [7 x i32], align 4
  %in.i.i = alloca [7 x i32], align 4
  %in.i = alloca [7 x i32], align 4
  %tmp.i = alloca %struct.timespec64, align 8
  %tmp4.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr4 = getelementptr i8, ptr %ptp, i32 -4248
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %in.i) #10
  %0 = call ptr @memset(ptr %in.i, i32 0, i32 28)
  %add.ptr.i.i = getelementptr i8, ptr %ptp, i32 -3020
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %3 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %mlx5_ptp_adjtime_real_time.exit.thread, label %if.end.i

mlx5_ptp_adjtime_real_time.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %4 = add i64 %delta, -32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 -65536, i64 %4)
  %5 = icmp ult i64 %4, -65536
  br i1 %5, label %if.then2.i, label %do.body.i

if.then2.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  %iseg.i.i = getelementptr i8, ptr %ptp, i32 -2508
  %6 = ptrtoint ptr %iseg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iseg.i.i, align 4, !noalias !79
  %real_time_h.i.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %7, i32 0, i32 17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %real_time_h.i.i) #10, !noalias !79, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !noalias !79, !srcloc !74
  %9 = ptrtoint ptr %iseg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iseg.i.i, align 4, !noalias !79
  %real_time_l.i.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %10, i32 0, i32 18
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %real_time_l.i.i) #10, !noalias !79, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !noalias !79, !srcloc !75
  %12 = ptrtoint ptr %iseg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iseg.i.i, align 4, !noalias !79
  %real_time_h16.i.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %13, i32 0, i32 17
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %real_time_h16.i.i) #10, !noalias !79, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !noalias !79, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp.not.i.i = icmp eq i32 %8, %14
  br i1 %cmp.not.i.i, label %if.then2.i.mlx5_read_time.exit.i_crit_edge, label %if.then.i.i

if.then2.i.mlx5_read_time.exit.i_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_read_time.exit.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %iseg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iseg.i.i, align 4, !noalias !79
  %real_time_l28.i.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %16, i32 0, i32 18
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %real_time_l28.i.i) #10, !noalias !79, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !noalias !79, !srcloc !77
  br label %mlx5_read_time.exit.i

mlx5_read_time.exit.i:                            ; preds = %if.then.i.i, %if.then2.i.mlx5_read_time.exit.i_crit_edge
  %timer_l.0.i.i = phi i32 [ %11, %if.then2.i.mlx5_read_time.exit.i_crit_edge ], [ %17, %if.then.i.i ]
  %conv.i45.i = zext i32 %14 to i64
  %mul.i46.i = mul nuw nsw i64 %conv.i45.i, 1000000000
  %conv38.i.i = zext i32 %timer_l.0.i.i to i64
  %add.i47.i = add nuw nsw i64 %mul.i46.i, %conv38.i.i
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %add.i47.i) #10
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %ts.sroa.0.0.copyload49.i = load i64, ptr %tmp.i, align 8
  %ts.sroa.7.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %19 = ptrtoint ptr %ts.sroa.7.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %ts.sroa.7.0.copyload51.i = load i32, ptr %ts.sroa.7.0.tmp.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %ts.sroa.0.0.copyload49.i)
  %cmp.i.i = icmp sgt i64 %ts.sroa.0.0.copyload49.i, 9223372035
  br i1 %cmp.i.i, label %mlx5_read_time.exit.i.timespec64_to_ns.exit.i_crit_edge, label %if.end.i.i

mlx5_read_time.exit.i.timespec64_to_ns.exit.i_crit_edge: ; preds = %mlx5_read_time.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit.i

if.end.i.i:                                       ; preds = %mlx5_read_time.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0.copyload49.i)
  %cmp2.i.i = icmp slt i64 %ts.sroa.0.0.copyload49.i, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.timespec64_to_ns.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.timespec64_to_ns.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = mul nsw i64 %ts.sroa.0.0.copyload49.i, 1000000000
  %conv.i.i = sext i32 %ts.sroa.7.0.copyload51.i to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %timespec64_to_ns.exit.i

timespec64_to_ns.exit.i:                          ; preds = %if.end4.i.i, %if.end.i.i.timespec64_to_ns.exit.i_crit_edge, %mlx5_read_time.exit.i.timespec64_to_ns.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %mlx5_read_time.exit.i.timespec64_to_ns.exit.i_crit_edge ], [ -9223372036854775808, %if.end.i.i.timespec64_to_ns.exit.i_crit_edge ]
  %add.i = add i64 %retval.0.i.i, %delta
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp4.i) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp4.i, i64 noundef %add.i) #10
  %20 = ptrtoint ptr %tmp4.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %ts.sroa.0.0.copyload50.i = load i64, ptr %tmp4.i, align 8
  %ts.sroa.7.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 8
  %21 = ptrtoint ptr %ts.sroa.7.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %ts.sroa.7.0.copyload52.i = load i32, ptr %ts.sroa.7.0.tmp4.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp4.i) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %in.i.i) #10
  %22 = call ptr @memset(ptr %in.i.i, i32 0, i32 28)
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %25 = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i.i, label %timespec64_to_ns.exit.i.mlx5_ptp_settime_real_time.exit.i_crit_edge, label %if.end.i36.i

timespec64_to_ns.exit.i.mlx5_ptp_settime_real_time.exit.i_crit_edge: ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_ptp_settime_real_time.exit.i

if.end.i36.i:                                     ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %ts.sroa.0.0.copyload50.i)
  %26 = icmp ugt i64 %ts.sroa.0.0.copyload50.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %ts.sroa.7.0.copyload52.i)
  %27 = icmp ugt i32 %ts.sroa.7.0.copyload52.i, 1000000000
  %or.cond56.i = select i1 %26, i1 true, i1 %27
  br i1 %or.cond56.i, label %if.end.i36.i.mlx5_ptp_settime_real_time.exit.i_crit_edge, label %do.body.i.i

if.end.i36.i.mlx5_ptp_settime_real_time.exit.i_crit_edge: ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_ptp_settime_real_time.exit.i

do.body.i.i:                                      ; preds = %if.end.i36.i
  %28 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %in.i.i, align 4
  %and.i.i = and i32 %29, -16
  %or.i.i = or i32 %and.i.i, 1
  store i32 %or.i.i, ptr %in.i.i, align 4
  %conv.i38.i = trunc i64 %ts.sroa.0.0.copyload50.i to i32
  %add.ptr23.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 4
  %30 = ptrtoint ptr %add.ptr23.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i38.i, ptr %add.ptr23.i.i, align 4
  %add.ptr39.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 5
  %31 = ptrtoint ptr %add.ptr39.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr39.i.i, align 4
  %and40.i.i = and i32 %32, -1073741824
  %or43.i.i = or i32 %and40.i.i, %ts.sroa.7.0.copyload52.i
  store i32 %or43.i.i, ptr %add.ptr39.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %out.i.i.i) #10
  %33 = call ptr @memset(ptr %out.i.i.i, i32 0, i32 28)
  %add.ptr.i58.i.i = getelementptr i8, ptr %ptp, i32 -3060
  %34 = ptrtoint ptr %add.ptr.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i58.i.i, align 4
  %36 = and i32 %35, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.mlx5_set_mtutc.exit.i.i_crit_edge, label %if.end.i.i.i

do.body.i.i.mlx5_set_mtutc.exit.i.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_set_mtutc.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call i32 @mlx5_core_access_reg(ptr noundef %add.ptr4, ptr noundef nonnull %in.i.i, i32 noundef 28, ptr noundef nonnull %out.i.i.i, i32 noundef 28, i16 noundef zeroext -28587, i32 noundef 0, i32 noundef 1) #10
  br label %mlx5_set_mtutc.exit.i.i

mlx5_set_mtutc.exit.i.i:                          ; preds = %if.end.i.i.i, %do.body.i.i.mlx5_set_mtutc.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.end.i.i.i ], [ -95, %do.body.i.i.mlx5_set_mtutc.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %out.i.i.i) #10
  br label %mlx5_ptp_settime_real_time.exit.i

mlx5_ptp_settime_real_time.exit.i:                ; preds = %mlx5_set_mtutc.exit.i.i, %if.end.i36.i.mlx5_ptp_settime_real_time.exit.i_crit_edge, %timespec64_to_ns.exit.i.mlx5_ptp_settime_real_time.exit.i_crit_edge
  %retval.0.i39.i = phi i32 [ %retval.0.i.i.i, %mlx5_set_mtutc.exit.i.i ], [ 0, %timespec64_to_ns.exit.i.mlx5_ptp_settime_real_time.exit.i_crit_edge ], [ -22, %if.end.i36.i.mlx5_ptp_settime_real_time.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i.i) #10
  br label %mlx5_ptp_adjtime_real_time.exit

do.body.i:                                        ; preds = %if.end.i
  %37 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in.i, align 4
  %and.i = and i32 %38, -16
  %or.i = or i32 %and.i, 2
  store i32 %or.i, ptr %in.i, align 4
  %conv.i = trunc i64 %delta to i32
  %add.ptr19.i = getelementptr inbounds i32, ptr %in.i, i32 6
  %39 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %add.ptr19.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %out.i.i) #10
  %40 = call ptr @memset(ptr %out.i.i, i32 0, i32 28)
  %add.ptr.i40.i = getelementptr i8, ptr %ptp, i32 -3060
  %41 = ptrtoint ptr %add.ptr.i40.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i40.i, align 4
  %43 = and i32 %42, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %do.body.i.mlx5_set_mtutc.exit.i_crit_edge, label %if.end.i42.i

do.body.i.mlx5_set_mtutc.exit.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_set_mtutc.exit.i

if.end.i42.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i41.i = call i32 @mlx5_core_access_reg(ptr noundef %add.ptr4, ptr noundef nonnull %in.i, i32 noundef 28, ptr noundef nonnull %out.i.i, i32 noundef 28, i16 noundef zeroext -28587, i32 noundef 0, i32 noundef 1) #10
  br label %mlx5_set_mtutc.exit.i

mlx5_set_mtutc.exit.i:                            ; preds = %if.end.i42.i, %do.body.i.mlx5_set_mtutc.exit.i_crit_edge
  %retval.0.i43.i = phi i32 [ %call.i41.i, %if.end.i42.i ], [ -95, %do.body.i.mlx5_set_mtutc.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %out.i.i) #10
  br label %mlx5_ptp_adjtime_real_time.exit

mlx5_ptp_adjtime_real_time.exit:                  ; preds = %mlx5_set_mtutc.exit.i, %mlx5_ptp_settime_real_time.exit.i
  %retval.0.i = phi i32 [ %retval.0.i39.i, %mlx5_ptp_settime_real_time.exit.i ], [ %retval.0.i43.i, %mlx5_set_mtutc.exit.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %in.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %mlx5_ptp_adjtime_real_time.exit.do.body_crit_edge, label %mlx5_ptp_adjtime_real_time.exit.cleanup_crit_edge

mlx5_ptp_adjtime_real_time.exit.cleanup_crit_edge: ; preds = %mlx5_ptp_adjtime_real_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5_ptp_adjtime_real_time.exit.do.body_crit_edge: ; preds = %mlx5_ptp_adjtime_real_time.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %mlx5_ptp_adjtime_real_time.exit.do.body_crit_edge, %mlx5_ptp_adjtime_real_time.exit.thread
  %lock = getelementptr i8, ptr %ptp, i32 -96
  %lock.i = getelementptr i8, ptr %ptp, i32 -60
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %44 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %dep_map.i.i.i = getelementptr i8, ptr %ptp, i32 -92
  %46 = call ptr @llvm.returnaddress(i32 0) #10
  %47 = ptrtoint ptr %46 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %47) #10
  %nsec.i = getelementptr i8, ptr %ptp, i32 280
  %48 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %nsec.i, align 8
  %add.i17 = add i64 %49, %delta
  store i64 %add.i17, ptr %nsec.i, align 8
  %clock_info1.i = getelementptr i8, ptr %ptp, i32 416
  %50 = ptrtoint ptr %clock_info1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clock_info1.i, align 8
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %do.body.mlx5_update_clock_info_page.exit_crit_edge, label %if.end.i21

do.body.mlx5_update_clock_info_page.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_update_clock_info_page.exit

if.end.i21:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %or.i18 = or i32 %53, 1
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %or.i18, ptr %51, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %cycle_last.i = getelementptr i8, ptr %ptp, i32 272
  %55 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %cycle_last.i, align 8
  %cycles.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %51, i32 0, i32 3
  %57 = ptrtoint ptr %cycles.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %cycles.i, align 8
  %mult.i = getelementptr i8, ptr %ptp, i32 256
  %58 = ptrtoint ptr %mult.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mult.i, align 8
  %mult29.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %51, i32 0, i32 5
  %60 = ptrtoint ptr %mult29.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %mult29.i, align 8
  %61 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %nsec.i, align 8
  %nsec31.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %51, i32 0, i32 2
  %63 = ptrtoint ptr %nsec31.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %nsec31.i, align 8
  %frac.i = getelementptr i8, ptr %ptp, i32 296
  %64 = ptrtoint ptr %frac.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %frac.i, align 8
  %frac33.i = getelementptr inbounds %struct.mlx5_ib_clock_info, ptr %51, i32 0, i32 4
  %66 = ptrtoint ptr %frac33.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %frac33.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %add.i20 = add i32 %53, 2
  %67 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %add.i20, ptr %51, align 8
  br label %mlx5_update_clock_info_page.exit

mlx5_update_clock_info_page.exit:                 ; preds = %if.end.i21, %do.body.mlx5_update_clock_info_page.exit_crit_edge
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %47) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %68 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %mlx5_update_clock_info_page.exit, %mlx5_ptp_adjtime_real_time.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5_update_clock_info_page.exit ], [ %retval.0.i, %mlx5_ptp_adjtime_real_time.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ptp_gettimex(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp5 = alloca %struct.timespec64, align 8
  %tmp10 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr4 = getelementptr i8, ptr %ptp, i32 -4248
  %caps.i.i = getelementptr i8, ptr %ptp, i32 -3304
  %0 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 34
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i = lshr i32 %3, 28
  %conv.i.i = and i32 %shr.i.i, 3
  %4 = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %shr.i5.i = lshr i32 %3, 30
  %6 = add nsw i32 %shr.i5.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp5) #10
  %call.i = tail call fastcc i64 @mlx5_read_time(ptr noundef %add.ptr4, ptr noundef %sts, i1 noundef zeroext true) #10, !noalias !82
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp5, i64 noundef %call.i) #10
  %9 = call ptr @memcpy(ptr %ts, ptr %tmp5, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp5) #10
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr i8, ptr %ptp, i32 -96
  %lock.i = getelementptr i8, ptr %ptp, i32 -60
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %11, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %dep_map.i.i.i = getelementptr i8, ptr %ptp, i32 -92
  %12 = tail call ptr @llvm.returnaddress(i32 0) #10
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %13) #10
  %call7 = tail call fastcc i64 @mlx5_read_time(ptr noundef %add.ptr4, ptr noundef %sts, i1 noundef zeroext false)
  %tc = getelementptr i8, ptr %ptp, i32 264
  %call8 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %call7) #10
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %15, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp10) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp10, i64 noundef %call8) #10
  %16 = call ptr @memcpy(ptr %ts, ptr %tmp10, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp10) #10
  br label %out

out:                                              ; preds = %do.body, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_mtpps(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ptp_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %in.i12 = alloca [15 x i32], align 4
  %in.i = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %add.ptr3.i = getelementptr i8, ptr %ptp, i32 -4248
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %in.i) #10
  %3 = call ptr @memset(ptr %in.i, i32 0, i32 60)
  %caps.i = getelementptr i8, ptr %ptp, i32 -3304
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr4.i = getelementptr i32, ptr %5, i32 14
  %6 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr4.i, align 4
  %8 = and i32 %7, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %8)
  %.not.i = icmp eq i32 %8, 1610612736
  br i1 %.not.i, label %land.lhs.true14.i, label %sw.bb.mlx5_extts_configure.exit_crit_edge

sw.bb.mlx5_extts_configure.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_extts_configure.exit

land.lhs.true14.i:                                ; preds = %sw.bb
  %add.ptr17.i = getelementptr i8, ptr %ptp, i32 -3020
  %9 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr17.i, align 4
  %11 = and i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %.not168.i = icmp eq i32 %11, 6
  br i1 %.not168.i, label %if.end.i, label %land.lhs.true14.i.mlx5_extts_configure.exit_crit_edge

land.lhs.true14.i.mlx5_extts_configure.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_extts_configure.exit

if.end.i:                                         ; preds = %land.lhs.true14.i
  %12 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.ptp_extts_request, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %14)
  %tobool30.not.i = icmp ugt i32 %14, 15
  %15 = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %15)
  %16 = icmp eq i32 %15, 15
  %or.cond.i = or i1 %tobool30.not.i, %16
  br i1 %or.cond.i, label %if.end.i.mlx5_extts_configure.exit_crit_edge, label %if.end44.i

if.end.i.mlx5_extts_configure.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_extts_configure.exit

if.end44.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 8
  %n_pins.i = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 6
  %19 = ptrtoint ptr %n_pins.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_pins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp45.not.i = icmp ult i32 %18, %20
  br i1 %cmp45.not.i, label %if.end47.i, label %if.end44.i.mlx5_extts_configure.exit_crit_edge

if.end44.i.mlx5_extts_configure.exit_crit_edge:   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_extts_configure.exit

if.end47.i:                                       ; preds = %if.end44.i
  %ptp48.i = getelementptr i8, ptr %ptp, i32 -4
  %21 = ptrtoint ptr %ptp48.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptp48.i, align 4
  %call.i = tail call i32 @ptp_find_pin(ptr noundef %22, i32 noundef 1, i32 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp50.i = icmp slt i32 %call.i, 0
  br i1 %cmp50.i, label %if.end47.i.mlx5_extts_configure.exit_crit_edge, label %if.end52.i

if.end47.i.mlx5_extts_configure.exit_crit_edge:   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_extts_configure.exit

if.end52.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool53.not.i = icmp eq i32 %on, 0
  br i1 %tobool53.not.i, label %if.end52.i.do.body.i_crit_edge, label %if.then54.i

if.end52.i.do.body.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and56.i = shl i32 %24, 14
  %25 = and i32 %and56.i, 65536
  br label %do.body.i

do.body.i:                                        ; preds = %if.then54.i, %if.end52.i.do.body.i_crit_edge
  %pattern.0.i = phi i32 [ %25, %if.then54.i ], [ 0, %if.end52.i.do.body.i_crit_edge ]
  %field_select.0.i = phi i32 [ 13, %if.then54.i ], [ 1, %if.end52.i.do.body.i_crit_edge ]
  %add.ptr62.i = getelementptr inbounds i32, ptr %in.i, i32 8
  %26 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr62.i, align 4
  %and63.i = and i32 %27, 2146496512
  %and64.i = and i32 %call.i, 255
  %shl110.i = shl i32 %on, 31
  %or96.i = or i32 %and64.i, %shl110.i
  %or.i = or i32 %pattern.0.i, %or96.i
  %or111.i = or i32 %and63.i, %or.i
  store i32 %or111.i, ptr %add.ptr62.i, align 4
  %add.ptr122.i = getelementptr inbounds i32, ptr %in.i, i32 4
  %28 = ptrtoint ptr %add.ptr122.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %field_select.0.i, ptr %add.ptr122.i, align 4
  %call132.i = call i32 @mlx5_set_mtpps(ptr noundef %add.ptr3.i, ptr noundef nonnull %in.i, i32 noundef 60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i)
  %tobool133.not.i = icmp eq i32 %call132.i, 0
  br i1 %tobool133.not.i, label %if.end135.i, label %do.body.i.mlx5_extts_configure.exit_crit_edge

do.body.i.mlx5_extts_configure.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_extts_configure.exit

if.end135.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv136.i = trunc i32 %call.i to i8
  %29 = trunc i32 %on to i8
  %conv138.i = and i8 %29, 1
  %call139.i = call i32 @mlx5_set_mtppse(ptr noundef %add.ptr3.i, i8 noundef zeroext %conv136.i, i8 noundef zeroext 0, i8 noundef zeroext %conv138.i) #10
  br label %mlx5_extts_configure.exit

mlx5_extts_configure.exit:                        ; preds = %if.end135.i, %do.body.i.mlx5_extts_configure.exit_crit_edge, %if.end47.i.mlx5_extts_configure.exit_crit_edge, %if.end44.i.mlx5_extts_configure.exit_crit_edge, %if.end.i.mlx5_extts_configure.exit_crit_edge, %land.lhs.true14.i.mlx5_extts_configure.exit_crit_edge, %sw.bb.mlx5_extts_configure.exit_crit_edge
  %retval.0.i = phi i32 [ %call139.i, %if.end135.i ], [ -95, %land.lhs.true14.i.mlx5_extts_configure.exit_crit_edge ], [ -95, %sw.bb.mlx5_extts_configure.exit_crit_edge ], [ -95, %if.end.i.mlx5_extts_configure.exit_crit_edge ], [ -22, %if.end44.i.mlx5_extts_configure.exit_crit_edge ], [ -16, %if.end47.i.mlx5_extts_configure.exit_crit_edge ], [ %call132.i, %do.body.i.mlx5_extts_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %in.i) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  %add.ptr3.i13 = getelementptr i8, ptr %ptp, i32 -4248
  %caps.i.i.i = getelementptr i8, ptr %ptp, i32 -3304
  %30 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %31, i32 34
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i.i, align 4
  %shr.i.i.i = lshr i32 %33, 28
  %conv.i.i.i = and i32 %shr.i.i.i, 3
  %34 = add nsw i32 %conv.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %35 = icmp ult i32 %34, 2
  %shr.i5.i.i = lshr i32 %33, 30
  %36 = add nsw i32 %shr.i5.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %37 = icmp ult i32 %36, 2
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %in.i12) #10
  %38 = call ptr @memset(ptr %in.i12, i32 0, i32 60)
  %add.ptr4.i14 = getelementptr i32, ptr %31, i32 14
  %39 = ptrtoint ptr %add.ptr4.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr4.i14, align 4
  %41 = and i32 %40, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %41)
  %.not.i15 = icmp eq i32 %41, 1610612736
  br i1 %.not.i15, label %land.lhs.true14.i17, label %sw.bb1.mlx5_perout_configure.exit_crit_edge

sw.bb1.mlx5_perout_configure.exit_crit_edge:      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

land.lhs.true14.i17:                              ; preds = %sw.bb1
  %add.ptr17.i16 = getelementptr i8, ptr %ptp, i32 -3020
  %42 = ptrtoint ptr %add.ptr17.i16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr17.i16, align 4
  %44 = and i32 %43, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %.not222.i = icmp eq i32 %44, 6
  br i1 %.not222.i, label %if.end.i19, label %land.lhs.true14.i17.mlx5_perout_configure.exit_crit_edge

land.lhs.true14.i17.mlx5_perout_configure.exit_crit_edge: ; preds = %land.lhs.true14.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

if.end.i19:                                       ; preds = %land.lhs.true14.i17
  %45 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %flags.i18 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 3
  %46 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool29.not.i = icmp eq i32 %47, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end.i19.mlx5_perout_configure.exit_crit_edge

if.end.i19.mlx5_perout_configure.exit_crit_edge:  ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

if.end31.i:                                       ; preds = %if.end.i19
  %index.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index.i, align 8
  %n_pins.i20 = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 6
  %50 = ptrtoint ptr %n_pins.i20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_pins.i20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.not.i = icmp ult i32 %49, %51
  br i1 %cmp.not.i, label %if.end33.i, label %if.end31.i.mlx5_perout_configure.exit_crit_edge

if.end31.i.mlx5_perout_configure.exit_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

if.end33.i:                                       ; preds = %if.end31.i
  %ptp34.i = getelementptr i8, ptr %ptp, i32 -4
  %52 = ptrtoint ptr %ptp34.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptp34.i, align 4
  %call36.i = tail call i32 @ptp_find_pin(ptr noundef %53, i32 noundef 2, i32 noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end33.i.mlx5_perout_configure.exit_crit_edge, label %if.end39.i

if.end33.i.mlx5_perout_configure.exit_crit_edge:  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

if.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool40.not.i = icmp eq i32 %on, 0
  br i1 %tobool40.not.i, label %if.end39.i.do.body.i21_crit_edge, label %if.then41.i

if.end39.i.do.body.i21_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i21

if.then41.i:                                      ; preds = %if.end39.i
  %54 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i206.i = getelementptr i32, ptr %55, i32 34
  %56 = ptrtoint ptr %add.ptr.i.i206.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i206.i, align 4
  %shr.i.i207.i = lshr i32 %57, 28
  %conv.i.i208.i = and i32 %shr.i.i207.i, 3
  %58 = add nsw i32 %conv.i.i208.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %59 = icmp ult i32 %58, 2
  %shr.i5.i209.i = lshr i32 %57, 30
  %60 = add nsw i32 %shr.i5.i209.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %61 = icmp ult i32 %60, 2
  %62 = select i1 %59, i1 true, i1 %61
  %63 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %45, align 8
  %nsec.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool46.not.i = icmp eq i32 %66, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.then41.i.mlx5_perout_configure.exit_crit_edge

if.then41.i.mlx5_perout_configure.exit_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

if.end48.i:                                       ; preds = %if.then41.i
  %period.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %period.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %period.i, align 8
  %69 = add i64 %68, -9223372036
  call void @__sanitizer_cov_trace_const_cmp8(i64 -18446744071, i64 %69)
  %70 = icmp ult i64 %69, -18446744071
  br i1 %70, label %if.end48.i.mlx5_perout_configure.exit_crit_edge, label %timespec64_to_ns.exit.i

if.end48.i.mlx5_perout_configure.exit_crit_edge:  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

timespec64_to_ns.exit.i:                          ; preds = %if.end48.i
  %nsec51.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %nsec51.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nsec51.i, align 8
  %mul.i.i = mul nsw i64 %68, 1000000000
  %conv.i.i = sext i32 %72 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  %shr53.mask.i = and i64 %add.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %shr53.mask.i)
  %cmp54.not.i = icmp ne i64 %shr53.mask.i, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %64)
  %cmp59.i = icmp sgt i64 %64, 4294967295
  %or.cond203.i = select i1 %62, i1 %cmp59.i, i1 false
  %or.cond204.i = select i1 %cmp54.not.i, i1 true, i1 %or.cond203.i
  br i1 %or.cond204.i, label %timespec64_to_ns.exit.i.mlx5_perout_configure.exit_crit_edge, label %if.end61.i

timespec64_to_ns.exit.i.mlx5_perout_configure.exit_crit_edge: ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

if.end61.i:                                       ; preds = %timespec64_to_ns.exit.i
  br i1 %62, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i = shl i64 %64, 32
  br label %do.body.i21

cond.false.i:                                     ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %64)
  %cmp.i.i.i = icmp sgt i64 %64, 9223372035
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %64)
  %cmp2.i.i.i = icmp slt i64 %64, -9223372035
  %mul.i.i.i = mul nsw i64 %64, 1000000000
  %spec.select.i.i = select i1 %cmp2.i.i.i, i64 -9223372036854775808, i64 %mul.i.i.i
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i64 9223372036854775807, i64 %spec.select.i.i
  %call1.i.i = tail call fastcc i64 @find_target_cycles(ptr noundef %add.ptr3.i13, i64 noundef %retval.0.i.i.i) #10
  br label %do.body.i21

do.body.i21:                                      ; preds = %cond.false.i, %cond.true.i, %if.end39.i.do.body.i21_crit_edge
  %time_stamp.1.i = phi i64 [ 0, %if.end39.i.do.body.i21_crit_edge ], [ %shl.i.i, %cond.true.i ], [ %call1.i.i, %cond.false.i ]
  %pin_mode.1.i = phi i32 [ 0, %if.end39.i.do.body.i21_crit_edge ], [ 256, %cond.true.i ], [ 256, %cond.false.i ]
  %pattern.1.i = phi i32 [ 0, %if.end39.i.do.body.i21_crit_edge ], [ 65536, %cond.true.i ], [ 65536, %cond.false.i ]
  %field_select.1.i = phi i32 [ 1, %if.end39.i.do.body.i21_crit_edge ], [ 29, %cond.true.i ], [ 29, %cond.false.i ]
  %add.ptr69.i = getelementptr inbounds i32, ptr %in.i12, i32 8
  %73 = ptrtoint ptr %add.ptr69.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr69.i, align 4
  %and70.i = and i32 %74, 2146496512
  %and71.i = and i32 %call36.i, 255
  %shl117.i = shl i32 %on, 31
  %or103.i = or i32 %and71.i, %shl117.i
  %or87.i = or i32 %pin_mode.1.i, %or103.i
  %or72.i = or i32 %or87.i, %pattern.1.i
  %or118.i = or i32 %and70.i, %or72.i
  store i32 %or118.i, ptr %add.ptr69.i, align 4
  %add.ptr132.i = getelementptr inbounds i64, ptr %in.i12, i32 5
  %75 = ptrtoint ptr %add.ptr132.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %time_stamp.1.i, ptr %add.ptr132.i, align 8
  %add.ptr143.i = getelementptr inbounds i32, ptr %in.i12, i32 4
  %76 = ptrtoint ptr %add.ptr143.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %field_select.1.i, ptr %add.ptr143.i, align 4
  %call153.i = call i32 @mlx5_set_mtpps(ptr noundef %add.ptr3.i13, ptr noundef nonnull %in.i12, i32 noundef 60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153.i)
  %tobool154.not.i = icmp ne i32 %call153.i, 0
  %77 = select i1 %tobool154.not.i, i1 true, i1 %35
  %brmerge.i = select i1 %77, i1 true, i1 %37
  br i1 %brmerge.i, label %do.body.i21.mlx5_perout_configure.exit_crit_edge, label %if.end159.i

do.body.i21.mlx5_perout_configure.exit_crit_edge: ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_perout_configure.exit

if.end159.i:                                      ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #12
  %conv160.i = trunc i32 %call36.i to i8
  %78 = trunc i32 %on to i8
  %conv162.i = and i8 %78, 1
  %call163.i = call i32 @mlx5_set_mtppse(ptr noundef %add.ptr3.i13, i8 noundef zeroext %conv160.i, i8 noundef zeroext 0, i8 noundef zeroext %conv162.i) #10
  br label %mlx5_perout_configure.exit

mlx5_perout_configure.exit:                       ; preds = %if.end159.i, %do.body.i21.mlx5_perout_configure.exit_crit_edge, %timespec64_to_ns.exit.i.mlx5_perout_configure.exit_crit_edge, %if.end48.i.mlx5_perout_configure.exit_crit_edge, %if.then41.i.mlx5_perout_configure.exit_crit_edge, %if.end33.i.mlx5_perout_configure.exit_crit_edge, %if.end31.i.mlx5_perout_configure.exit_crit_edge, %if.end.i19.mlx5_perout_configure.exit_crit_edge, %land.lhs.true14.i17.mlx5_perout_configure.exit_crit_edge, %sw.bb1.mlx5_perout_configure.exit_crit_edge
  %retval.1.i = phi i32 [ %call163.i, %if.end159.i ], [ -95, %land.lhs.true14.i17.mlx5_perout_configure.exit_crit_edge ], [ -95, %sw.bb1.mlx5_perout_configure.exit_crit_edge ], [ -95, %if.end.i19.mlx5_perout_configure.exit_crit_edge ], [ -22, %if.end31.i.mlx5_perout_configure.exit_crit_edge ], [ -16, %if.end33.i.mlx5_perout_configure.exit_crit_edge ], [ %call153.i, %do.body.i21.mlx5_perout_configure.exit_crit_edge ], [ -22, %if.then41.i.mlx5_perout_configure.exit_crit_edge ], [ -22, %timespec64_to_ns.exit.i.mlx5_perout_configure.exit_crit_edge ], [ -22, %if.end48.i.mlx5_perout_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %in.i12) #10
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.i = icmp ne i32 %on, 0
  %conv.i = zext i1 %tobool.i to i8
  %enabled.i = getelementptr i8, ptr %ptp, i32 232
  %79 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.i, ptr %enabled.i, align 8
  br label %return

return:                                           ; preds = %sw.bb3, %mlx5_perout_configure.exit, %mlx5_extts_configure.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ %retval.1.i, %mlx5_perout_configure.exit ], [ %retval.0.i, %mlx5_extts_configure.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_ptp_verify(ptr nocapture noundef readonly %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %func, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pps_info = getelementptr i8, ptr %ptp, i32 112
  %arrayidx = getelementptr [8 x i8], ptr %pps_info, i32 0, i32 %pin
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, 1
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pps_info3 = getelementptr i8, ptr %ptp, i32 112
  %arrayidx5 = getelementptr [8 x i8], ptr %pps_info3, i32 0, i32 %pin
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %8 = lshr i8 %7, 1
  %.lobit = and i8 %8, 1
  %9 = xor i8 %.lobit, 1
  %10 = zext i8 %9 to i32
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ %10, %sw.bb2 ], [ %5, %sw.bb1 ], [ %func, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_mtppse(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @find_target_cycles(ptr noundef %mdev, i64 noundef %target_ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 12
  %0 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg.i, align 4
  %internal_timer_h.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %internal_timer_h.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %3 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iseg.i, align 4
  %internal_timer_l.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %4, i32 0, i32 13
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %internal_timer_l.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %6 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iseg.i, align 4
  %internal_timer_h19.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %7, i32 0, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %internal_timer_h19.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp.not.i = icmp eq i32 %2, %8
  br i1 %cmp.not.i, label %entry.mlx5_read_time.exit_crit_edge, label %if.then.i

entry.mlx5_read_time.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_read_time.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iseg.i, align 4
  %internal_timer_l31.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %10, i32 0, i32 13
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %internal_timer_l31.i) #10, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  br label %mlx5_read_time.exit

mlx5_read_time.exit:                              ; preds = %if.then.i, %entry.mlx5_read_time.exit_crit_edge
  %timer_l.0.i = phi i32 [ %5, %entry.mlx5_read_time.exit_crit_edge ], [ %11, %if.then.i ]
  %conv40.i = zext i32 %timer_l.0.i to i64
  %conv41.i = zext i32 %8 to i64
  %shl.i = shl nuw i64 %conv41.i, 32
  %or.i = or i64 %shl.i, %conv40.i
  %lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 1
  %lock.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 1, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lock, align 4
  %inc.i.i.i.i = add i32 %13, 1
  store i32 %inc.i.i.i.i, ptr %lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %dep_map.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 1, i32 0, i32 0, i32 1
  %14 = tail call ptr @llvm.returnaddress(i32 0) #10
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %15) #10
  %tc = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 1
  %call4 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %or.i) #10
  %sub = sub i64 %target_ns, %call4
  %shift = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 0, i32 3
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %17 to i64
  %shl = shl i64 %sub, %sh_prom
  %mult = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 27, i32 6, i32 0, i32 2
  %18 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mult, align 8
  %conv = zext i32 %19 to i64
  %call6 = tail call i64 @div64_u64(i64 noundef %shl, i64 noundef %conv) #10
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lock, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %add = add i64 %call6, %or.i
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 874, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_init_clock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_init_clock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mlx5_init_clock.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 878, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5_init_clock.__key.6, !9, !"__key", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mlx5_init_clock.__key.8, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 880, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 891, i32 3}
!18 = !{ptr @mlx5_init_clock._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx5_init_clock._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 826, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_init_clock_info._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5_init_clock_info._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @mlx5_init_overflow_period.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 807, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mlx5_init_overflow_period.__key.16, !26, !"__key", i1 false, i1 false}
!29 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 811, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mlx5_init_overflow_period._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mlx5_init_overflow_period._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @mlx5_ptp_clock_info, !36, !"mlx5_ptp_clock_info", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 599, i32 36}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 669, i32 5}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c", i32 758, i32 3}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mlx5_pps_event._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlx5_pps_event._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148044735, i64 2148045015, i64 2148045349, i64 2148045683}
!56 = !{i64 559074, i64 559101}
!57 = !{i64 559414, i64 559441, i64 559475, i64 559496}
!58 = !{i64 558904, i64 558931}
!59 = !{i64 559599, i64 559626, i64 559659, i64 559680, i64 559707, i64 559733}
!60 = !{i64 2149973819}
!61 = !{i64 2149974144}
!62 = !{i64 640996, i64 641057}
!63 = !{i64 643728}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 644013}
!66 = !{i64 2149988247}
!67 = !{i64 2149988089}
!68 = !{i64 2149988417}
!69 = !{i64 2149973494}
!70 = !{i64 2160067693}
!71 = !{i64 2160070300}
!72 = !{i64 2160072541}
!73 = !{i64 3998031}
!74 = !{i64 2160056865}
!75 = !{i64 2160057279}
!76 = !{i64 2160057695}
!77 = !{i64 2160058111}
!78 = !{i64 559191, i64 559218, i64 559240, i64 559268}
!79 = !{!80}
!80 = distinct !{!80, !81, !"mlx5_ptp_gettimex_real_time: %agg.result"}
!81 = distinct !{!81, !"mlx5_ptp_gettimex_real_time"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"mlx5_ptp_gettimex_real_time: %agg.result"}
!84 = distinct !{!84, !"mlx5_ptp_gettimex_real_time"}
