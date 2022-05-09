; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/rss.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_rss_params_traffic_type = type { i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5e_rss = type { %struct.mlx5e_rss_params_hash, %struct.mlx5e_rss_params_indir, [10 x i32], [10 x ptr], [10 x ptr], %struct.mlx5e_rqt, ptr, i32, i8, i8, %struct.refcount_struct }
%struct.mlx5e_rss_params_hash = type { i8, [40 x i8] }
%struct.mlx5e_rss_params_indir = type { [256 x i32] }
%struct.mlx5e_rqt = type { ptr, i32, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mlx5e_tir = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@rss_default_config = internal constant { [10 x %struct.mlx5e_rss_params_traffic_type], [48 x i8] } { [10 x %struct.mlx5e_rss_params_traffic_type] [%struct.mlx5e_rss_params_traffic_type { i8 0, i8 0, i32 15 }, %struct.mlx5e_rss_params_traffic_type { i8 1, i8 0, i32 15 }, %struct.mlx5e_rss_params_traffic_type { i8 0, i8 1, i32 15 }, %struct.mlx5e_rss_params_traffic_type { i8 1, i8 1, i32 15 }, %struct.mlx5e_rss_params_traffic_type { i8 0, i8 0, i32 19 }, %struct.mlx5e_rss_params_traffic_type { i8 1, i8 0, i32 19 }, %struct.mlx5e_rss_params_traffic_type { i8 0, i8 0, i32 19 }, %struct.mlx5e_rss_params_traffic_type { i8 1, i8 0, i32 19 }, %struct.mlx5e_rss_params_traffic_type { i8 0, i8 0, i32 3 }, %struct.mlx5e_rss_params_traffic_type { i8 1, i8 0, i32 3 }], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/rss.c\00", [47 x i8] zeroinitializer }, align 32
@mlx5e_rss_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): Failed to redirect RQT %#x to drop RQ %#x: err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5e_rss_disable\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_rss_disable._entry_ptr = internal global ptr @mlx5e_rss_disable._entry, section ".printk_index", align 4
@mlx5e_rss_packet_merge_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s:%d:(pid %d): Failed to update LRO state of indirect TIR %#x for traffic type %d: err = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5e_rss_packet_merge_set_param\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_rss_packet_merge_set_param._entry_ptr = internal global ptr @mlx5e_rss_packet_merge_set_param._entry, section ".printk_index", align 4
@mlx5e_rss_packet_merge_set_param._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"%s:%d:(pid %d): Failed to update LRO state of inner indirect TIR %#x for traffic type %d: err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5e_rss_packet_merge_set_param._entry_ptr.9 = internal global ptr @mlx5e_rss_packet_merge_set_param._entry.7, section ".printk_index", align 4
@mlx5e_rss_set_hash_fields._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s:%d:(pid %d): Failed to update RSS hash fields of indirect TIR for traffic type %d: err = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5e_rss_set_hash_fields\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_rss_set_hash_fields._entry_ptr = internal global ptr @mlx5e_rss_set_hash_fields._entry, section ".printk_index", align 4
@mlx5e_rss_set_hash_fields._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 593, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"%s:%d:(pid %d): Failed to update RSS hash fields of inner indirect TIR for traffic type %d: err = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5e_rss_set_hash_fields._entry_ptr.14 = internal global ptr @mlx5e_rss_set_hash_fields._entry.12, section ".printk_index", align 4
@mlx5e_rss_set_hash_fields._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"%s:%d:(pid %d): Partial update of RSS hash fields happened: failed to revert indirect TIR for traffic type %d to the old values\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_rss_set_hash_fields._entry_ptr.17 = internal global ptr @mlx5e_rss_set_hash_fields._entry.15, section ".printk_index", align 4
@mlx5e_rss_create_tir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s:%d:(pid %d): Cannot create inner indirect TIR[%d], RSS inner FT is not supported.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5e_rss_create_tir\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_rss_create_tir._entry_ptr = internal global ptr @mlx5e_rss_create_tir._entry, section ".printk_index", align 4
@mlx5e_rss_create_tir._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): Failed to create %sindirect TIR: err = %d, tt = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5e_rss_create_tir._entry_ptr.22 = internal global ptr @mlx5e_rss_create_tir._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"inner \00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mlx5e_rss_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Failed to redirect RQT %#x to channels: err = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5e_rss_apply\00", [16 x i8] zeroinitializer }, align 32
@mlx5e_rss_apply._entry_ptr = internal global ptr @mlx5e_rss_apply._entry, section ".printk_index", align 4
@mlx5e_rss_update_tirs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s:%d:(pid %d): Failed to update RSS hash of indirect TIR for traffic type %d: err = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5e_rss_update_tirs\00", [42 x i8] zeroinitializer }, align 32
@mlx5e_rss_update_tirs._entry_ptr = internal global ptr @mlx5e_rss_update_tirs._entry, section ".printk_index", align 4
@mlx5e_rss_update_tirs._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str, i32 279, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s:%d:(pid %d): Failed to update RSS hash of inner indirect TIR for traffic type %d: err = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5e_rss_update_tirs._entry_ptr.31 = internal global ptr @mlx5e_rss_update_tirs._entry.29, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"rss_default_config\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 11, i32 51 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 363, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 418, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 445, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 460, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 576, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 591, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 595, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 141, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 171, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 400, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 266, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 277, i32 4 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @mlx5e_rss_apply._entry, ptr @mlx5e_rss_apply._entry_ptr, ptr @mlx5e_rss_create_tir._entry, ptr @mlx5e_rss_create_tir._entry.20, ptr @mlx5e_rss_create_tir._entry_ptr, ptr @mlx5e_rss_create_tir._entry_ptr.22, ptr @mlx5e_rss_disable._entry, ptr @mlx5e_rss_disable._entry_ptr, ptr @mlx5e_rss_packet_merge_set_param._entry, ptr @mlx5e_rss_packet_merge_set_param._entry.7, ptr @mlx5e_rss_packet_merge_set_param._entry_ptr, ptr @mlx5e_rss_packet_merge_set_param._entry_ptr.9, ptr @mlx5e_rss_set_hash_fields._entry, ptr @mlx5e_rss_set_hash_fields._entry.12, ptr @mlx5e_rss_set_hash_fields._entry.15, ptr @mlx5e_rss_set_hash_fields._entry_ptr, ptr @mlx5e_rss_set_hash_fields._entry_ptr.14, ptr @mlx5e_rss_set_hash_fields._entry_ptr.17, ptr @mlx5e_rss_update_tirs._entry, ptr @mlx5e_rss_update_tirs._entry.29, ptr @mlx5e_rss_update_tirs._entry_ptr, ptr @mlx5e_rss_update_tirs._entry_ptr.31, ptr @rss_default_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rss_default_config to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_packet_merge_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_packet_merge_set_param._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_set_hash_fields._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_set_hash_fields._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_set_hash_fields._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_create_tir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_create_tir._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_update_tirs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rss_update_tirs._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlx5e_rss_get_default_tt_config(ptr noalias nocapture writeonly sret(%struct.mlx5e_rss_params_traffic_type) align 4 %agg.result, i32 noundef %tt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [10 x %struct.mlx5e_rss_params_traffic_type], ptr @rss_default_config, i32 0, i32 %tt
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @mlx5e_rss_alloc() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1216, i32 noundef 3520, i32 noundef -1) #14
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rss_free(ptr noundef %rss) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %rss) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_init_no_tirs(ptr noundef %rss, ptr noundef %mdev, i1 noundef zeroext %inner_ft_support, i32 noundef %drop_rqn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %inner_ft_support to i8
  %mdev1 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdev, ptr %mdev1, align 4
  %inner_ft_support2 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  %1 = ptrtoint ptr %inner_ft_support2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %inner_ft_support2, align 4
  %drop_rqn4 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 7
  %2 = ptrtoint ptr %drop_rqn4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %drop_rqn, ptr %drop_rqn4, align 4
  %3 = ptrtoint ptr %rss to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %rss, align 4
  %toeplitz_hash_key.i = getelementptr inbounds %struct.mlx5e_rss_params_hash, ptr %rss, i32 0, i32 1
  tail call void @netdev_rss_key_fill(ptr noundef %toeplitz_hash_key.i, i32 noundef 40) #11
  %arrayidx.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 15, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 19, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 19, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 19, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 19, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %arrayidx.9.i, align 4
  %refcnt = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %14 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcnt, align 4
  %rqt = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5
  %call = tail call i32 @mlx5e_rqt_init_direct(ptr noundef %rqt, ptr noundef %mdev, i1 noundef zeroext true, i32 noundef %drop_rqn) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rqt_init_direct(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_init(ptr noundef %rss, ptr noundef %mdev, i1 noundef zeroext %inner_ft_support, i32 noundef %drop_rqn, ptr noundef %init_pkt_merge_param) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool.i = zext i1 %inner_ft_support to i8
  %mdev1.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdev, ptr %mdev1.i, align 4
  %inner_ft_support2.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  %1 = ptrtoint ptr %inner_ft_support2.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool.i, ptr %inner_ft_support2.i, align 4
  %drop_rqn4.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 7
  %2 = ptrtoint ptr %drop_rqn4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %drop_rqn, ptr %drop_rqn4.i, align 4
  %3 = ptrtoint ptr %rss to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %rss, align 4
  %toeplitz_hash_key.i.i = getelementptr inbounds %struct.mlx5e_rss_params_hash, ptr %rss, i32 0, i32 1
  tail call void @netdev_rss_key_fill(ptr noundef %toeplitz_hash_key.i.i, i32 noundef 40) #11
  %arrayidx.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %arrayidx.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %arrayidx.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 15, ptr %arrayidx.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %arrayidx.3.i.i, align 4
  %arrayidx.4.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 19, ptr %arrayidx.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 19, ptr %arrayidx.5.i.i, align 4
  %arrayidx.6.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 19, ptr %arrayidx.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 19, ptr %arrayidx.7.i.i, align 4
  %arrayidx.8.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %arrayidx.8.i.i, align 4
  %arrayidx.9.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %arrayidx.9.i.i, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcnt.i, align 4
  %rqt.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5
  %call.i = tail call i32 @mlx5e_rqt_init_direct(ptr noundef %rqt.i, ptr noundef %mdev, i1 noundef zeroext true, i32 noundef %drop_rqn) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @mlx5e_rss_create_tirs(ptr noundef %rss, ptr noundef %init_pkt_merge_param, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_destroy_rqt_crit_edge

if.end.err_destroy_rqt_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_rqt

if.end5:                                          ; preds = %if.end
  br i1 %inner_ft_support, label %if.then7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %call8 = tail call fastcc i32 @mlx5e_rss_create_tirs(ptr noundef %rss, ptr noundef %init_pkt_merge_param, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %err_destroy_tirs

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_destroy_tirs:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlx5e_rss_destroy_tirs(ptr noundef %rss, i1 noundef zeroext false)
  br label %err_destroy_rqt

err_destroy_rqt:                                  ; preds = %err_destroy_tirs, %if.end.err_destroy_rqt_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.err_destroy_rqt_crit_edge ], [ %call8, %err_destroy_tirs ]
  tail call void @mlx5e_rqt_destroy(ptr noundef %rqt.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_rqt, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %err.0, %err_destroy_rqt ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_rss_create_tirs(ptr noundef %rss, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 0, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body4.preheader:                              ; preds = %for.inc.8.for.body4.preheader_crit_edge, %for.inc.7.for.body4.preheader_crit_edge, %for.inc.6.for.body4.preheader_crit_edge, %for.inc.5.for.body4.preheader_crit_edge, %for.inc.4.for.body4.preheader_crit_edge, %for.inc.3.for.body4.preheader_crit_edge, %for.inc.2.for.body4.preheader_crit_edge, %for.inc.1.for.body4.preheader_crit_edge, %for.inc.for.body4.preheader_crit_edge
  %tt.022.lcssa.ph = phi i32 [ 9, %for.inc.8.for.body4.preheader_crit_edge ], [ 8, %for.inc.7.for.body4.preheader_crit_edge ], [ 7, %for.inc.6.for.body4.preheader_crit_edge ], [ 6, %for.inc.5.for.body4.preheader_crit_edge ], [ 5, %for.inc.4.for.body4.preheader_crit_edge ], [ 4, %for.inc.3.for.body4.preheader_crit_edge ], [ 3, %for.inc.2.for.body4.preheader_crit_edge ], [ 2, %for.inc.1.for.body4.preheader_crit_edge ], [ 1, %for.inc.for.body4.preheader_crit_edge ]
  %call.lcssa.ph = phi i32 [ %call.9, %for.inc.8.for.body4.preheader_crit_edge ], [ %call.8, %for.inc.7.for.body4.preheader_crit_edge ], [ %call.7, %for.inc.6.for.body4.preheader_crit_edge ], [ %call.6, %for.inc.5.for.body4.preheader_crit_edge ], [ %call.5, %for.inc.4.for.body4.preheader_crit_edge ], [ %call.4, %for.inc.3.for.body4.preheader_crit_edge ], [ %call.3, %for.inc.2.for.body4.preheader_crit_edge ], [ %call.2, %for.inc.1.for.body4.preheader_crit_edge ], [ %call.1, %for.inc.for.body4.preheader_crit_edge ]
  br label %for.body4

for.inc:                                          ; preds = %entry
  %call.1 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 1, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %for.inc.1, label %for.inc.for.body4.preheader_crit_edge

for.inc.for.body4.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 2, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %for.inc.2, label %for.inc.1.for.body4.preheader_crit_edge

for.inc.1.for.body4.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 3, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool1.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool1.not.3, label %for.inc.3, label %for.inc.2.for.body4.preheader_crit_edge

for.inc.2.for.body4.preheader_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 4, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool1.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool1.not.4, label %for.inc.4, label %for.inc.3.for.body4.preheader_crit_edge

for.inc.3.for.body4.preheader_crit_edge:          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 5, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool1.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool1.not.5, label %for.inc.5, label %for.inc.4.for.body4.preheader_crit_edge

for.inc.4.for.body4.preheader_crit_edge:          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 6, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool1.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool1.not.6, label %for.inc.6, label %for.inc.5.for.body4.preheader_crit_edge

for.inc.5.for.body4.preheader_crit_edge:          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 7, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool1.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool1.not.7, label %for.inc.7, label %for.inc.6.for.body4.preheader_crit_edge

for.inc.6.for.body4.preheader_crit_edge:          ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 8, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool1.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool1.not.8, label %for.inc.8, label %for.inc.7.for.body4.preheader_crit_edge

for.inc.7.for.body4.preheader_crit_edge:          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.8:                                        ; preds = %for.inc.7
  %call.9 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef 9, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool1.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool1.not.9, label %for.inc.8.cleanup_crit_edge, label %for.inc.8.for.body4.preheader_crit_edge

for.inc.8.for.body4.preheader_crit_edge:          ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.preheader

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body4:                                        ; preds = %mlx5e_rss_destroy_tir.exit.for.body4_crit_edge, %for.body4.preheader
  %tt.124 = phi i32 [ %inc7, %mlx5e_rss_destroy_tir.exit.for.body4_crit_edge ], [ 0, %for.body4.preheader ]
  %arrayidx.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 %tt.124
  %arrayidx1.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 %tt.124
  %cond.i.i = select i1 %inner, ptr %arrayidx.i.i, ptr %arrayidx1.i.i
  %0 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cond.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %for.body4.mlx5e_rss_destroy_tir.exit_crit_edge, label %if.end.i

for.body4.mlx5e_rss_destroy_tir.exit_crit_edge:   ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit

if.end.i:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %1) #11
  tail call void @kvfree(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cond.i.i, align 4
  br label %mlx5e_rss_destroy_tir.exit

mlx5e_rss_destroy_tir.exit:                       ; preds = %if.end.i, %for.body4.mlx5e_rss_destroy_tir.exit_crit_edge
  %inc7 = add nuw nsw i32 %tt.124, 1
  %exitcond.not = icmp eq i32 %inc7, %tt.022.lcssa.ph
  br i1 %exitcond.not, label %mlx5e_rss_destroy_tir.exit.cleanup_crit_edge, label %mlx5e_rss_destroy_tir.exit.for.body4_crit_edge

mlx5e_rss_destroy_tir.exit.for.body4_crit_edge:   ; preds = %mlx5e_rss_destroy_tir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

mlx5e_rss_destroy_tir.exit.cleanup_crit_edge:     ; preds = %mlx5e_rss_destroy_tir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_rss_destroy_tir.exit.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.inc.8.cleanup_crit_edge ], [ %call.lcssa.ph, %mlx5e_rss_destroy_tir.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_rss_destroy_tirs(ptr nocapture noundef %rss, i1 noundef zeroext %inner) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 0
  %arrayidx1.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 0
  %cond.i.i = select i1 %inner, ptr %arrayidx.i.i, ptr %arrayidx1.i.i
  %0 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cond.i.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %entry.mlx5e_rss_destroy_tir.exit_crit_edge, label %if.end.i

entry.mlx5e_rss_destroy_tir.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %1) #11
  tail call void @kvfree(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cond.i.i, align 4
  br label %mlx5e_rss_destroy_tir.exit

mlx5e_rss_destroy_tir.exit:                       ; preds = %if.end.i, %entry.mlx5e_rss_destroy_tir.exit_crit_edge
  %arrayidx.i.i.1 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 1
  %arrayidx1.i.i.1 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 1
  %cond.i.i.1 = select i1 %inner, ptr %arrayidx.i.i.1, ptr %arrayidx1.i.i.1
  %3 = ptrtoint ptr %cond.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cond.i.i.1, align 4
  %tobool1.not.i.1 = icmp eq ptr %4, null
  br i1 %tobool1.not.i.1, label %mlx5e_rss_destroy_tir.exit.mlx5e_rss_destroy_tir.exit.1_crit_edge, label %if.end.i.1

mlx5e_rss_destroy_tir.exit.mlx5e_rss_destroy_tir.exit.1_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.1

if.end.i.1:                                       ; preds = %mlx5e_rss_destroy_tir.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %4) #11
  tail call void @kvfree(ptr noundef nonnull %4) #11
  %5 = ptrtoint ptr %cond.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cond.i.i.1, align 4
  br label %mlx5e_rss_destroy_tir.exit.1

mlx5e_rss_destroy_tir.exit.1:                     ; preds = %if.end.i.1, %mlx5e_rss_destroy_tir.exit.mlx5e_rss_destroy_tir.exit.1_crit_edge
  %arrayidx.i.i.2 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 2
  %arrayidx1.i.i.2 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 2
  %cond.i.i.2 = select i1 %inner, ptr %arrayidx.i.i.2, ptr %arrayidx1.i.i.2
  %6 = ptrtoint ptr %cond.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cond.i.i.2, align 4
  %tobool1.not.i.2 = icmp eq ptr %7, null
  br i1 %tobool1.not.i.2, label %mlx5e_rss_destroy_tir.exit.1.mlx5e_rss_destroy_tir.exit.2_crit_edge, label %if.end.i.2

mlx5e_rss_destroy_tir.exit.1.mlx5e_rss_destroy_tir.exit.2_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.2

if.end.i.2:                                       ; preds = %mlx5e_rss_destroy_tir.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %7) #11
  tail call void @kvfree(ptr noundef nonnull %7) #11
  %8 = ptrtoint ptr %cond.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cond.i.i.2, align 4
  br label %mlx5e_rss_destroy_tir.exit.2

mlx5e_rss_destroy_tir.exit.2:                     ; preds = %if.end.i.2, %mlx5e_rss_destroy_tir.exit.1.mlx5e_rss_destroy_tir.exit.2_crit_edge
  %arrayidx.i.i.3 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 3
  %arrayidx1.i.i.3 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 3
  %cond.i.i.3 = select i1 %inner, ptr %arrayidx.i.i.3, ptr %arrayidx1.i.i.3
  %9 = ptrtoint ptr %cond.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cond.i.i.3, align 4
  %tobool1.not.i.3 = icmp eq ptr %10, null
  br i1 %tobool1.not.i.3, label %mlx5e_rss_destroy_tir.exit.2.mlx5e_rss_destroy_tir.exit.3_crit_edge, label %if.end.i.3

mlx5e_rss_destroy_tir.exit.2.mlx5e_rss_destroy_tir.exit.3_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.3

if.end.i.3:                                       ; preds = %mlx5e_rss_destroy_tir.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %10) #11
  tail call void @kvfree(ptr noundef nonnull %10) #11
  %11 = ptrtoint ptr %cond.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cond.i.i.3, align 4
  br label %mlx5e_rss_destroy_tir.exit.3

mlx5e_rss_destroy_tir.exit.3:                     ; preds = %if.end.i.3, %mlx5e_rss_destroy_tir.exit.2.mlx5e_rss_destroy_tir.exit.3_crit_edge
  %arrayidx.i.i.4 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 4
  %arrayidx1.i.i.4 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 4
  %cond.i.i.4 = select i1 %inner, ptr %arrayidx.i.i.4, ptr %arrayidx1.i.i.4
  %12 = ptrtoint ptr %cond.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cond.i.i.4, align 4
  %tobool1.not.i.4 = icmp eq ptr %13, null
  br i1 %tobool1.not.i.4, label %mlx5e_rss_destroy_tir.exit.3.mlx5e_rss_destroy_tir.exit.4_crit_edge, label %if.end.i.4

mlx5e_rss_destroy_tir.exit.3.mlx5e_rss_destroy_tir.exit.4_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.4

if.end.i.4:                                       ; preds = %mlx5e_rss_destroy_tir.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %13) #11
  tail call void @kvfree(ptr noundef nonnull %13) #11
  %14 = ptrtoint ptr %cond.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cond.i.i.4, align 4
  br label %mlx5e_rss_destroy_tir.exit.4

mlx5e_rss_destroy_tir.exit.4:                     ; preds = %if.end.i.4, %mlx5e_rss_destroy_tir.exit.3.mlx5e_rss_destroy_tir.exit.4_crit_edge
  %arrayidx.i.i.5 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 5
  %arrayidx1.i.i.5 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 5
  %cond.i.i.5 = select i1 %inner, ptr %arrayidx.i.i.5, ptr %arrayidx1.i.i.5
  %15 = ptrtoint ptr %cond.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cond.i.i.5, align 4
  %tobool1.not.i.5 = icmp eq ptr %16, null
  br i1 %tobool1.not.i.5, label %mlx5e_rss_destroy_tir.exit.4.mlx5e_rss_destroy_tir.exit.5_crit_edge, label %if.end.i.5

mlx5e_rss_destroy_tir.exit.4.mlx5e_rss_destroy_tir.exit.5_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.5

if.end.i.5:                                       ; preds = %mlx5e_rss_destroy_tir.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %16) #11
  tail call void @kvfree(ptr noundef nonnull %16) #11
  %17 = ptrtoint ptr %cond.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cond.i.i.5, align 4
  br label %mlx5e_rss_destroy_tir.exit.5

mlx5e_rss_destroy_tir.exit.5:                     ; preds = %if.end.i.5, %mlx5e_rss_destroy_tir.exit.4.mlx5e_rss_destroy_tir.exit.5_crit_edge
  %arrayidx.i.i.6 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 6
  %arrayidx1.i.i.6 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 6
  %cond.i.i.6 = select i1 %inner, ptr %arrayidx.i.i.6, ptr %arrayidx1.i.i.6
  %18 = ptrtoint ptr %cond.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cond.i.i.6, align 4
  %tobool1.not.i.6 = icmp eq ptr %19, null
  br i1 %tobool1.not.i.6, label %mlx5e_rss_destroy_tir.exit.5.mlx5e_rss_destroy_tir.exit.6_crit_edge, label %if.end.i.6

mlx5e_rss_destroy_tir.exit.5.mlx5e_rss_destroy_tir.exit.6_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.6

if.end.i.6:                                       ; preds = %mlx5e_rss_destroy_tir.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %19) #11
  tail call void @kvfree(ptr noundef nonnull %19) #11
  %20 = ptrtoint ptr %cond.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cond.i.i.6, align 4
  br label %mlx5e_rss_destroy_tir.exit.6

mlx5e_rss_destroy_tir.exit.6:                     ; preds = %if.end.i.6, %mlx5e_rss_destroy_tir.exit.5.mlx5e_rss_destroy_tir.exit.6_crit_edge
  %arrayidx.i.i.7 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 7
  %arrayidx1.i.i.7 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 7
  %cond.i.i.7 = select i1 %inner, ptr %arrayidx.i.i.7, ptr %arrayidx1.i.i.7
  %21 = ptrtoint ptr %cond.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cond.i.i.7, align 4
  %tobool1.not.i.7 = icmp eq ptr %22, null
  br i1 %tobool1.not.i.7, label %mlx5e_rss_destroy_tir.exit.6.mlx5e_rss_destroy_tir.exit.7_crit_edge, label %if.end.i.7

mlx5e_rss_destroy_tir.exit.6.mlx5e_rss_destroy_tir.exit.7_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.7

if.end.i.7:                                       ; preds = %mlx5e_rss_destroy_tir.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %22) #11
  tail call void @kvfree(ptr noundef nonnull %22) #11
  %23 = ptrtoint ptr %cond.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cond.i.i.7, align 4
  br label %mlx5e_rss_destroy_tir.exit.7

mlx5e_rss_destroy_tir.exit.7:                     ; preds = %if.end.i.7, %mlx5e_rss_destroy_tir.exit.6.mlx5e_rss_destroy_tir.exit.7_crit_edge
  %arrayidx.i.i.8 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 8
  %arrayidx1.i.i.8 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 8
  %cond.i.i.8 = select i1 %inner, ptr %arrayidx.i.i.8, ptr %arrayidx1.i.i.8
  %24 = ptrtoint ptr %cond.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cond.i.i.8, align 4
  %tobool1.not.i.8 = icmp eq ptr %25, null
  br i1 %tobool1.not.i.8, label %mlx5e_rss_destroy_tir.exit.7.mlx5e_rss_destroy_tir.exit.8_crit_edge, label %if.end.i.8

mlx5e_rss_destroy_tir.exit.7.mlx5e_rss_destroy_tir.exit.8_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.8

if.end.i.8:                                       ; preds = %mlx5e_rss_destroy_tir.exit.7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %25) #11
  tail call void @kvfree(ptr noundef nonnull %25) #11
  %26 = ptrtoint ptr %cond.i.i.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cond.i.i.8, align 4
  br label %mlx5e_rss_destroy_tir.exit.8

mlx5e_rss_destroy_tir.exit.8:                     ; preds = %if.end.i.8, %mlx5e_rss_destroy_tir.exit.7.mlx5e_rss_destroy_tir.exit.8_crit_edge
  %arrayidx.i.i.9 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 9
  %arrayidx1.i.i.9 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 9
  %cond.i.i.9 = select i1 %inner, ptr %arrayidx.i.i.9, ptr %arrayidx1.i.i.9
  %27 = ptrtoint ptr %cond.i.i.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cond.i.i.9, align 4
  %tobool1.not.i.9 = icmp eq ptr %28, null
  br i1 %tobool1.not.i.9, label %mlx5e_rss_destroy_tir.exit.8.mlx5e_rss_destroy_tir.exit.9_crit_edge, label %if.end.i.9

mlx5e_rss_destroy_tir.exit.8.mlx5e_rss_destroy_tir.exit.9_crit_edge: ; preds = %mlx5e_rss_destroy_tir.exit.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_destroy_tir.exit.9

if.end.i.9:                                       ; preds = %mlx5e_rss_destroy_tir.exit.8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_destroy(ptr noundef nonnull %28) #11
  tail call void @kvfree(ptr noundef nonnull %28) #11
  %29 = ptrtoint ptr %cond.i.i.9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cond.i.i.9, align 4
  br label %mlx5e_rss_destroy_tir.exit.9

mlx5e_rss_destroy_tir.exit.9:                     ; preds = %if.end.i.9, %mlx5e_rss_destroy_tir.exit.8.mlx5e_rss_destroy_tir.exit.9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rqt_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_cleanup(ptr noundef %rss) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 10
  %call = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt) #11
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @mlx5e_rss_destroy_tirs(ptr noundef %rss, i1 noundef zeroext false)
  %inner_ft_support = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  %0 = ptrtoint ptr %inner_ft_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %inner_ft_support, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlx5e_rss_destroy_tirs(ptr noundef %rss, i1 noundef zeroext true)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %rqt = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5
  tail call void @mlx5e_rqt_destroy(ptr noundef %rqt) #11
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rss_refcnt_inc(ptr noundef %rss) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !70

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !71

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rss_refcnt_dec(ptr noundef %rss) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !73
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %entry.refcount_dec.exit_crit_edge, !prof !70

entry.refcount_dec.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 4) #11
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %entry.refcount_dec.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_refcnt_read(ptr noundef %rss) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_get_tirn(ptr nocapture noundef readonly %rss, i32 noundef %tt, i1 noundef zeroext %inner) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %inner, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %inner_ft_support = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  %0 = ptrtoint ptr %inner_ft_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %inner_ft_support, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !70

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 %tt
  %arrayidx1.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 %tt
  %cond.i.i = select i1 %inner, ptr %arrayidx.i.i, ptr %arrayidx1.i.i
  %2 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i.i, align 4
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %do.end42, label %if.end.if.end48_crit_edge, !prof !70

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 365, i32 noundef 9, ptr noundef null) #11
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end.if.end48_crit_edge
  %tirn.i = getelementptr inbounds %struct.mlx5e_tir, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tirn.i, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_obtain_tirn(ptr noundef %rss, i32 noundef %tt, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner, ptr nocapture noundef writeonly %tirn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 %tt
  %arrayidx1.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 %tt
  %cond.i.i = select i1 %inner, ptr %arrayidx.i.i, ptr %arrayidx1.i.i
  %0 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cond.i.i, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef %tt, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.thread, label %if.then.cleanup10_crit_edge

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %cleanup.thread, %entry.if.end8_crit_edge
  %tir.1 = phi ptr [ %1, %entry.if.end8_crit_edge ], [ %3, %cleanup.thread ]
  %tirn.i = getelementptr inbounds %struct.mlx5e_tir, ptr %tir.1, i32 0, i32 1
  %4 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tirn.i, align 4
  %6 = ptrtoint ptr %tirn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tirn, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.end8, %if.then.cleanup10_crit_edge
  %retval.1 = phi i32 [ 0, %if.end8 ], [ %call3, %if.then.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_rss_create_tir(ptr noundef %rss, i32 noundef %tt, ptr noundef %init_pkt_merge_param, i1 noundef zeroext %inner) unnamed_addr #1 align 64 {
entry:
  %rss_tt = alloca %struct.mlx5e_rss_params_traffic_type, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rss_tt) #11
  %0 = ptrtoint ptr %rss_tt to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rss_tt, align 8, !annotation !74
  br i1 %inner, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %inner_ft_support = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  %1 = ptrtoint ptr %inner_ft_support to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %inner_ft_support, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %mdev = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 143, i32 noundef %12, i32 noundef %tt) #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 %tt
  %arrayidx1.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 %tt
  %cond.i = select i1 %inner, ptr %arrayidx.i, ptr %arrayidx1.i
  %13 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cond.i, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 16, i32 noundef 3520, i32 noundef -1) #14
  %tobool8.not = icmp eq ptr %call.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext false) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.free_tir_crit_edge, label %if.end14

if.end10.free_tir_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_tir

if.end14:                                         ; preds = %if.end10
  %rqtn.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rqtn.i, align 4
  %mdev16 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %17 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev16, align 4
  %tdn = getelementptr inbounds %struct.mlx5_core_dev, ptr %18, i32 0, i32 20, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %tdn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tdn, align 4
  %inner_ft_support17 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  %21 = ptrtoint ptr %inner_ft_support17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %inner_ft_support17, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool18 = icmp ne i8 %22, 0
  tail call void @mlx5e_tir_builder_build_rqt(ptr noundef nonnull %call11, i32 noundef %20, i32 noundef %16, i1 noundef zeroext %tobool18) #11
  tail call void @mlx5e_tir_builder_build_packet_merge(ptr noundef nonnull %call11, ptr noundef %init_pkt_merge_param) #11
  %arrayidx.i.i = getelementptr [10 x %struct.mlx5e_rss_params_traffic_type], ptr @rss_default_config, i32 0, i32 %tt
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx.i.i, align 4, !noalias !75
  %tmp.sroa.0.0.extract.shift = and i64 %24, -4294967296
  %arrayidx.i65 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 %tt
  %25 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i65, align 4, !noalias !80
  %tmp.sroa.4.0.insert.ext = zext i32 %26 to i64
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.extract.shift, %tmp.sroa.4.0.insert.ext
  %27 = ptrtoint ptr %rss_tt to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %rss_tt, align 8
  call void @mlx5e_tir_builder_build_rss(ptr noundef nonnull %call11, ptr noundef %rss, ptr noundef nonnull %rss_tt, i1 noundef zeroext %inner) #11
  %28 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev16, align 4
  %call21 = call i32 @mlx5e_tir_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call11, ptr noundef %29, i1 noundef zeroext true) #11
  call void @mlx5e_tir_builder_free(ptr noundef nonnull %call11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end33, label %do.end26

do.end26:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev16, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i66 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i66 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task30, align 8
  %pid31 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid31, align 8
  %cond = select i1 %inner, ptr @.str.23, ptr @.str.24
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 172, i32 noundef %39, ptr noundef nonnull %cond, i32 noundef %call21, i32 noundef %tt) #15
  br label %free_tir

if.end33:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %cond.i, align 4
  br label %cleanup

free_tir:                                         ; preds = %do.end26, %if.end10.free_tir_crit_edge
  %err.0 = phi i32 [ %call21, %do.end26 ], [ -12, %if.end10.free_tir_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_tir, %if.end33, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %free_tir ], [ 0, %if.end33 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rss_enable(ptr noundef %rss, ptr noundef %rqns, i32 noundef %num_rqns) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 9
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %enabled, align 1
  %rqt.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5
  %1 = ptrtoint ptr %rss to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rss, align 4
  %indir.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 1
  %call.i = tail call i32 @mlx5e_rqt_redirect_indir(ptr noundef %rqt.i, ptr noundef %rqns, i32 noundef %num_rqns, i8 noundef zeroext %2, ptr noundef %indir.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.mlx5e_rss_apply.exit_crit_edge, label %do.end.i

entry.mlx5e_rss_apply.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_rss_apply.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mdev.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %3 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid.i, align 8
  %rqtn.i.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %rqtn.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rqtn.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 401, i32 noundef %12, i32 noundef %14, i32 noundef %call.i) #15
  br label %mlx5e_rss_apply.exit

mlx5e_rss_apply.exit:                             ; preds = %do.end.i, %entry.mlx5e_rss_apply.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rss_disable(ptr noundef %rss) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 9
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled, align 1
  %rqt = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5
  %drop_rqn = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 7
  %1 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %drop_rqn, align 4
  %call = tail call i32 @mlx5e_rqt_redirect_direct(ptr noundef %rqt, i32 noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mdev = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %rqtn.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rqtn.i, align 4
  %15 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drop_rqn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 419, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rqt_redirect_direct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_packet_merge_set_param(ptr nocapture noundef readonly %rss, ptr noundef %pkt_merge_param) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext true) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup37

if.end:                                           ; preds = %entry
  tail call void @mlx5e_tir_builder_build_packet_merge(ptr noundef nonnull %call, ptr noundef %pkt_merge_param) #11
  %mdev = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %inner_ft_support = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %final_err.073 = phi i32 [ 0, %if.end ], [ %final_err.3, %cleanup.for.body_crit_edge ]
  %tt.071 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx1.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 %tt.071
  %0 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %for.body.inner_tir_crit_edge, label %if.end4

for.body.inner_tir_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %inner_tir

if.end4:                                          ; preds = %for.body
  %call5 = tail call i32 @mlx5e_tir_modify(ptr noundef nonnull %1, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.inner_tir_crit_edge, label %do.end

if.end4.inner_tir_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %inner_tir

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !58) #11
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
  %tirn.i = getelementptr inbounds %struct.mlx5e_tir, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tirn.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 446, i32 noundef %11, i32 noundef %13, i32 noundef %tt.071, i32 noundef %call5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final_err.073)
  %tobool10.not = icmp eq i32 %final_err.073, 0
  %spec.select = select i1 %tobool10.not, i32 %call5, i32 %final_err.073
  br label %inner_tir

inner_tir:                                        ; preds = %do.end, %if.end4.inner_tir_crit_edge, %for.body.inner_tir_crit_edge
  %final_err.1 = phi i32 [ %final_err.073, %if.end4.inner_tir_crit_edge ], [ %final_err.073, %for.body.inner_tir_crit_edge ], [ %spec.select, %do.end ]
  %14 = ptrtoint ptr %inner_ft_support to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %inner_ft_support, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %inner_tir.cleanup_crit_edge, label %if.end16

inner_tir.cleanup_crit_edge:                      ; preds = %inner_tir
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %inner_tir
  %arrayidx.i.i67 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 %tt.071
  %16 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i67, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @mlx5e_tir_modify(ptr noundef nonnull %17, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %do.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i69 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i69 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task30, align 8
  %pid31 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid31, align 8
  %tirn.i70 = getelementptr inbounds %struct.mlx5e_tir, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %tirn.i70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tirn.i70, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 461, i32 noundef %27, i32 noundef %29, i32 noundef %tt.071, i32 noundef %call21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final_err.1)
  %tobool33.not = icmp eq i32 %final_err.1, 0
  %spec.select66 = select i1 %tobool33.not, i32 %call21, i32 %final_err.1
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %inner_tir.cleanup_crit_edge
  %final_err.3 = phi i32 [ %final_err.1, %inner_tir.cleanup_crit_edge ], [ %final_err.1, %if.end16.cleanup_crit_edge ], [ %final_err.1, %if.end20.cleanup_crit_edge ], [ %spec.select66, %do.end26 ]
  %inc = add nuw nsw i32 %tt.071, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5e_tir_builder_free(ptr noundef nonnull %call) #11
  br label %cleanup37

cleanup37:                                        ; preds = %for.end, %entry.cleanup37_crit_edge
  %retval.0 = phi i32 [ %final_err.3, %for.end ], [ -12, %entry.cleanup37_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_build_packet_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tir_modify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_get_rxfh(ptr nocapture noundef readonly %rss, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %indir1 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.019 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x i32], ptr %indir1, i32 0, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %indir, i32 %i.019
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %key, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %toeplitz_hash_key = getelementptr inbounds %struct.mlx5e_rss_params_hash, ptr %rss, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %key, ptr %toeplitz_hash_key, i32 40)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %hfunc, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %rss to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rss, align 4
  %6 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %hfunc, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_set_rxfh(ptr noundef %rss, ptr noundef readonly %indir, ptr noundef readonly %key, ptr noundef readonly %hfunc, ptr noundef %rqns, i32 noundef %num_rqns) local_unnamed_addr #1 align 64 {
entry:
  %rss_tt.i2.i = alloca %struct.mlx5e_rss_params_traffic_type, align 8
  %rss_tt.i.i = alloca %struct.mlx5e_rss_params_traffic_type, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1216, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memcpy(ptr %call.i.i.i, ptr %rss, i32 1216)
  %tobool1.not = icmp eq ptr %hfunc, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %1 = ptrtoint ptr %hfunc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hfunc, align 1
  %3 = ptrtoint ptr %rss to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rss, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.not = icmp eq i8 %2, %4
  br i1 %cmp.not, label %land.lhs.true.if.end9_crit_edge, label %if.then5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  %.off = add i8 %2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.epilog, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.epilog:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %rss to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %rss, align 4
  br label %if.end9

if.end9:                                          ; preds = %sw.epilog, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %changed_hash.0.off0 = phi i1 [ true, %sw.epilog ], [ false, %land.lhs.true.if.end9_crit_edge ], [ false, %if.end.if.end9_crit_edge ]
  %tobool10.not = icmp eq ptr %key, null
  br i1 %tobool10.not, label %if.end9.if.end20_crit_edge, label %if.then11

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %rss to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rss, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp15 = icmp eq i8 %7, 1
  %spec.select = or i1 %changed_hash.0.off0, %cmp15
  %toeplitz_hash_key = getelementptr inbounds %struct.mlx5e_rss_params_hash, ptr %rss, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %toeplitz_hash_key, ptr %key, i32 40)
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end9.if.end20_crit_edge
  %changed_hash.2.off0 = phi i1 [ %spec.select, %if.then11 ], [ %changed_hash.0.off0, %if.end9.if.end20_crit_edge ]
  %tobool21.not = icmp eq ptr %indir, null
  br i1 %tobool21.not, label %if.end27, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end20
  %indir25 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.075 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.075
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx26 = getelementptr [256 x i32], ptr %indir25, i32 0, i32 %i.075
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx26, align 4
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.land.lhs.true30_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.land.lhs.true30_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30

if.end27:                                         ; preds = %if.end20
  br i1 %changed_hash.0.off0, label %if.end27.land.lhs.true30_crit_edge, label %if.end27.if.end38_crit_edge

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end27.land.lhs.true30_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end27.land.lhs.true30_crit_edge, %for.body.land.lhs.true30_crit_edge
  %enabled = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 9
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool31.not = icmp eq i8 %13, 0
  br i1 %tobool31.not, label %land.lhs.true30.if.end38_crit_edge, label %if.then33

land.lhs.true30.if.end38_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then33:                                        ; preds = %land.lhs.true30
  %rqt.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5
  %14 = ptrtoint ptr %rss to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rss, align 4
  %indir.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 1
  %call.i = tail call i32 @mlx5e_rqt_redirect_indir(ptr noundef %rqt.i, ptr noundef %rqns, i32 noundef %num_rqns, i8 noundef zeroext %15, ptr noundef %indir.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then33.if.end38_crit_edge, label %if.then36

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %mdev.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %16 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid.i, align 8
  %rqtn.i.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %rqtn.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rqtn.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 401, i32 noundef %25, i32 noundef %27, i32 noundef %call.i) #15
  %28 = call ptr @memcpy(ptr %rss, ptr %call.i.i.i, i32 1216)
  br label %out

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %land.lhs.true30.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  br i1 %changed_hash.2.off0, label %if.then40, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then40:                                        ; preds = %if.end38
  %mdev.i70 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %inner_ft_support.i = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then40
  %tt.031.i = phi i32 [ 0, %if.then40 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rss_tt.i.i) #11
  %arrayidx1.i.i.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 %tt.031.i
  %29 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1.i.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %30, null
  br i1 %tobool1.not.i.i, label %mlx5e_rss_update_tir.exit.thread.i, label %if.end.i.i

mlx5e_rss_update_tir.exit.thread.i:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i.i) #11
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i
  %call2.i.i = call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext true) #11
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %mlx5e_rss_update_tir.exit.thread21.i, label %mlx5e_rss_update_tir.exit.i

mlx5e_rss_update_tir.exit.thread21.i:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i.i) #11
  br label %if.then.i

mlx5e_rss_update_tir.exit.i:                      ; preds = %if.end.i.i
  %arrayidx.i.i19.i.i = getelementptr [10 x %struct.mlx5e_rss_params_traffic_type], ptr @rss_default_config, i32 0, i32 %tt.031.i
  %31 = ptrtoint ptr %arrayidx.i.i19.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %arrayidx.i.i19.i.i, align 4, !noalias !81
  %tmp.sroa.0.0.extract.shift.i.i = and i64 %32, -4294967296
  %arrayidx.i.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 %tt.031.i
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i, align 4, !noalias !86
  %tmp.sroa.4.0.insert.ext.i.i = zext i32 %34 to i64
  %tmp.sroa.0.0.insert.insert.i.i = or i64 %tmp.sroa.0.0.extract.shift.i.i, %tmp.sroa.4.0.insert.ext.i.i
  %35 = ptrtoint ptr %rss_tt.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %tmp.sroa.0.0.insert.insert.i.i, ptr %rss_tt.i.i, align 8
  call void @mlx5e_tir_builder_build_rss(ptr noundef nonnull %call2.i.i, ptr noundef %rss, ptr noundef nonnull %rss_tt.i.i, i1 noundef zeroext false) #11
  %call7.i.i = call i32 @mlx5e_tir_modify(ptr noundef nonnull %30, ptr noundef nonnull %call2.i.i) #11
  call void @mlx5e_tir_builder_free(ptr noundef nonnull %call2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i71 = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i71, label %mlx5e_rss_update_tir.exit.i.if.end.i_crit_edge, label %mlx5e_rss_update_tir.exit.i.if.then.i_crit_edge

mlx5e_rss_update_tir.exit.i.if.then.i_crit_edge:  ; preds = %mlx5e_rss_update_tir.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

mlx5e_rss_update_tir.exit.i.if.end.i_crit_edge:   ; preds = %mlx5e_rss_update_tir.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %mlx5e_rss_update_tir.exit.i.if.then.i_crit_edge, %mlx5e_rss_update_tir.exit.thread21.i
  %retval.0.i24.i = phi i32 [ -12, %mlx5e_rss_update_tir.exit.thread21.i ], [ %call7.i.i, %mlx5e_rss_update_tir.exit.i.if.then.i_crit_edge ]
  %36 = ptrtoint ptr %mdev.i70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdev.i70, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %40 = call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i.i72 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i72 to ptr
  %task.i73 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i73, align 8
  %pid.i74 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid.i74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid.i74, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 268, i32 noundef %45, i32 noundef %tt.031.i, i32 noundef %retval.0.i24.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %mlx5e_rss_update_tir.exit.i.if.end.i_crit_edge, %mlx5e_rss_update_tir.exit.thread.i
  %46 = ptrtoint ptr %inner_ft_support.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %inner_ft_support.i, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool4.not.i = icmp eq i8 %47, 0
  br i1 %tobool4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end6.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rss_tt.i2.i) #11
  %arrayidx.i.i.i3.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 %tt.031.i
  %48 = ptrtoint ptr %arrayidx.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i3.i, align 4
  %tobool1.not.i5.i = icmp eq ptr %49, null
  br i1 %tobool1.not.i5.i, label %mlx5e_rss_update_tir.exit17.thread.i, label %if.end.i8.i

mlx5e_rss_update_tir.exit17.thread.i:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i2.i) #11
  br label %for.inc.i

if.end.i8.i:                                      ; preds = %if.end6.i
  %call2.i6.i = call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext true) #11
  %tobool3.not.i7.i = icmp eq ptr %call2.i6.i, null
  br i1 %tobool3.not.i7.i, label %mlx5e_rss_update_tir.exit17.thread27.i, label %mlx5e_rss_update_tir.exit17.i

mlx5e_rss_update_tir.exit17.thread27.i:           ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i2.i) #11
  br label %if.then9.i

mlx5e_rss_update_tir.exit17.i:                    ; preds = %if.end.i8.i
  %arrayidx.i.i19.i9.i = getelementptr [10 x %struct.mlx5e_rss_params_traffic_type], ptr @rss_default_config, i32 0, i32 %tt.031.i
  %50 = ptrtoint ptr %arrayidx.i.i19.i9.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %arrayidx.i.i19.i9.i, align 4, !noalias !87
  %tmp.sroa.0.0.extract.shift.i10.i = and i64 %51, -4294967296
  %arrayidx.i.i11.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 %tt.031.i
  %52 = ptrtoint ptr %arrayidx.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i11.i, align 4, !noalias !92
  %tmp.sroa.4.0.insert.ext.i12.i = zext i32 %53 to i64
  %tmp.sroa.0.0.insert.insert.i13.i = or i64 %tmp.sroa.0.0.extract.shift.i10.i, %tmp.sroa.4.0.insert.ext.i12.i
  %54 = ptrtoint ptr %rss_tt.i2.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %tmp.sroa.0.0.insert.insert.i13.i, ptr %rss_tt.i2.i, align 8
  call void @mlx5e_tir_builder_build_rss(ptr noundef nonnull %call2.i6.i, ptr noundef %rss, ptr noundef nonnull %rss_tt.i2.i, i1 noundef zeroext true) #11
  %call7.i14.i = call i32 @mlx5e_tir_modify(ptr noundef nonnull %49, ptr noundef nonnull %call2.i6.i) #11
  call void @mlx5e_tir_builder_free(ptr noundef nonnull %call2.i6.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i14.i)
  %tobool8.not.i = icmp eq i32 %call7.i14.i, 0
  br i1 %tobool8.not.i, label %mlx5e_rss_update_tir.exit17.i.for.inc.i_crit_edge, label %mlx5e_rss_update_tir.exit17.i.if.then9.i_crit_edge

mlx5e_rss_update_tir.exit17.i.if.then9.i_crit_edge: ; preds = %mlx5e_rss_update_tir.exit17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

mlx5e_rss_update_tir.exit17.i.for.inc.i_crit_edge: ; preds = %mlx5e_rss_update_tir.exit17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then9.i:                                       ; preds = %mlx5e_rss_update_tir.exit17.i.if.then9.i_crit_edge, %mlx5e_rss_update_tir.exit17.thread27.i
  %retval.0.i1630.i = phi i32 [ -12, %mlx5e_rss_update_tir.exit17.thread27.i ], [ %call7.i14.i, %mlx5e_rss_update_tir.exit17.i.if.then9.i_crit_edge ]
  %55 = ptrtoint ptr %mdev.i70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdev.i70, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %59 = call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i18.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i18.i to ptr
  %task21.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task21.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task21.i, align 8
  %pid22.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 68
  %63 = ptrtoint ptr %pid22.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pid22.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 279, i32 noundef %64, i32 noundef %tt.031.i, i32 noundef %retval.0.i1630.i) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %mlx5e_rss_update_tir.exit17.i.for.inc.i_crit_edge, %mlx5e_rss_update_tir.exit17.thread.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %tt.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc.i.out_crit_edge, %if.end38.out_crit_edge, %if.then36, %if.then5.out_crit_edge
  %err.1 = phi i32 [ %call.i, %if.then36 ], [ 0, %if.end38.out_crit_edge ], [ -22, %if.then5.out_crit_edge ], [ 0, %for.inc.i.out_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_rss_get_hash(ptr noalias nocapture writeonly sret(%struct.mlx5e_rss_params_hash) align 1 %agg.result, ptr nocapture noundef readonly %rss) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %agg.result, ptr %rss, i32 41)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5e_rss_get_hash_fields(ptr nocapture noundef readonly %rss, i32 noundef %tt) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 %tt
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rss_set_hash_fields(ptr noundef %rss, i32 noundef %tt, i8 noundef zeroext %rx_hash_fields) local_unnamed_addr #1 align 64 {
entry:
  %rss_tt.i72 = alloca %struct.mlx5e_rss_params_traffic_type, align 8
  %rss_tt.i = alloca %struct.mlx5e_rss_params_traffic_type, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 %tt
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv2 = and i32 %1, 255
  %conv3 = zext i8 %rx_hash_fields to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3)
  %cmp = icmp eq i32 %conv2, %conv3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv3, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rss_tt.i) #11
  %arrayidx1.i.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 %tt
  %3 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i.i.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %mlx5e_rss_update_tir.exit.thread, label %if.end.i

mlx5e_rss_update_tir.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i) #11
  br label %if.end13

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext true) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %mlx5e_rss_update_tir.exit.thread91, label %mlx5e_rss_update_tir.exit

mlx5e_rss_update_tir.exit.thread91:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i) #11
  br label %if.then8

mlx5e_rss_update_tir.exit:                        ; preds = %if.end.i
  %arrayidx.i.i19.i = getelementptr [10 x %struct.mlx5e_rss_params_traffic_type], ptr @rss_default_config, i32 0, i32 %tt
  %5 = ptrtoint ptr %arrayidx.i.i19.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %arrayidx.i.i19.i, align 4, !noalias !93
  %tmp.sroa.0.0.extract.shift.i = and i64 %6, -4294967296
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4, !noalias !98
  %tmp.sroa.4.0.insert.ext.i = zext i32 %8 to i64
  %tmp.sroa.0.0.insert.insert.i = or i64 %tmp.sroa.0.0.extract.shift.i, %tmp.sroa.4.0.insert.ext.i
  %9 = ptrtoint ptr %rss_tt.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %tmp.sroa.0.0.insert.insert.i, ptr %rss_tt.i, align 8
  call void @mlx5e_tir_builder_build_rss(ptr noundef nonnull %call2.i, ptr noundef %rss, ptr noundef nonnull %rss_tt.i, i1 noundef zeroext false) #11
  %call7.i = call i32 @mlx5e_tir_modify(ptr noundef nonnull %4, ptr noundef nonnull %call2.i) #11
  call void @mlx5e_tir_builder_free(ptr noundef nonnull %call2.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %mlx5e_rss_update_tir.exit.if.end13_crit_edge, label %mlx5e_rss_update_tir.exit.if.then8_crit_edge

mlx5e_rss_update_tir.exit.if.then8_crit_edge:     ; preds = %mlx5e_rss_update_tir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

mlx5e_rss_update_tir.exit.if.end13_crit_edge:     ; preds = %mlx5e_rss_update_tir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %mlx5e_rss_update_tir.exit.if.then8_crit_edge, %mlx5e_rss_update_tir.exit.thread91
  %retval.0.i94 = phi i32 [ -12, %mlx5e_rss_update_tir.exit.thread91 ], [ %call7.i, %mlx5e_rss_update_tir.exit.if.then8_crit_edge ]
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv2, ptr %arrayidx, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 578, i32 noundef %20, i32 noundef %tt, i32 noundef %retval.0.i94) #15
  br label %cleanup

if.end13:                                         ; preds = %mlx5e_rss_update_tir.exit.if.end13_crit_edge, %mlx5e_rss_update_tir.exit.thread
  %inner_ft_support = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 8
  %21 = ptrtoint ptr %inner_ft_support to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %inner_ft_support, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not = icmp eq i8 %22, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rss_tt.i72) #11
  %arrayidx.i.i.i73 = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 %tt
  %23 = ptrtoint ptr %arrayidx.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i73, align 4
  %tobool1.not.i75 = icmp eq ptr %24, null
  br i1 %tobool1.not.i75, label %mlx5e_rss_update_tir.exit87.thread, label %if.end.i78

mlx5e_rss_update_tir.exit87.thread:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i72) #11
  br label %cleanup

if.end.i78:                                       ; preds = %if.end16
  %call2.i76 = call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext true) #11
  %tobool3.not.i77 = icmp eq ptr %call2.i76, null
  br i1 %tobool3.not.i77, label %mlx5e_rss_update_tir.exit87.thread97, label %mlx5e_rss_update_tir.exit87

mlx5e_rss_update_tir.exit87.thread97:             ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i72) #11
  br label %if.then19

mlx5e_rss_update_tir.exit87:                      ; preds = %if.end.i78
  %arrayidx.i.i19.i79 = getelementptr [10 x %struct.mlx5e_rss_params_traffic_type], ptr @rss_default_config, i32 0, i32 %tt
  %25 = ptrtoint ptr %arrayidx.i.i19.i79 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %arrayidx.i.i19.i79, align 4, !noalias !99
  %tmp.sroa.0.0.extract.shift.i80 = and i64 %26, -4294967296
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4, !noalias !104
  %tmp.sroa.4.0.insert.ext.i82 = zext i32 %28 to i64
  %tmp.sroa.0.0.insert.insert.i83 = or i64 %tmp.sroa.0.0.extract.shift.i80, %tmp.sroa.4.0.insert.ext.i82
  %29 = ptrtoint ptr %rss_tt.i72 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %tmp.sroa.0.0.insert.insert.i83, ptr %rss_tt.i72, align 8
  call void @mlx5e_tir_builder_build_rss(ptr noundef nonnull %call2.i76, ptr noundef %rss, ptr noundef nonnull %rss_tt.i72, i1 noundef zeroext true) #11
  %call7.i84 = call i32 @mlx5e_tir_modify(ptr noundef nonnull %24, ptr noundef nonnull %call2.i76) #11
  call void @mlx5e_tir_builder_free(ptr noundef nonnull %call2.i76) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt.i72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i84)
  %tobool18.not = icmp eq i32 %call7.i84, 0
  br i1 %tobool18.not, label %mlx5e_rss_update_tir.exit87.cleanup_crit_edge, label %mlx5e_rss_update_tir.exit87.if.then19_crit_edge

mlx5e_rss_update_tir.exit87.if.then19_crit_edge:  ; preds = %mlx5e_rss_update_tir.exit87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

mlx5e_rss_update_tir.exit87.cleanup_crit_edge:    ; preds = %mlx5e_rss_update_tir.exit87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %mlx5e_rss_update_tir.exit87.if.then19_crit_edge, %mlx5e_rss_update_tir.exit87.thread97
  %retval.0.i86100 = phi i32 [ -12, %mlx5e_rss_update_tir.exit87.thread97 ], [ %call7.i84, %mlx5e_rss_update_tir.exit87.if.then19_crit_edge ]
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv2, ptr %arrayidx, align 4
  %mdev26 = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 6
  %31 = ptrtoint ptr %mdev26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev26, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %35 = call i32 @llvm.read_register.i32(metadata !58) #11
  %and.i88 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i88 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task29, align 8
  %pid30 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid30, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 593, i32 noundef %40, i32 noundef %tt, i32 noundef %retval.0.i86100) #15
  %call31 = call fastcc i32 @mlx5e_rss_update_tir(ptr noundef %rss, i32 noundef %tt, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then19.cleanup_crit_edge, label %do.end36

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end36:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %mdev26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev26, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %45 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task29, align 8
  %pid41 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid41, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef 597, i32 noundef %48, i32 noundef %tt) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.then19.cleanup_crit_edge, %mlx5e_rss_update_tir.exit87.cleanup_crit_edge, %mlx5e_rss_update_tir.exit87.thread, %if.end13.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i94, %if.then8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %retval.0.i86100, %if.then19.cleanup_crit_edge ], [ %retval.0.i86100, %do.end36 ], [ 0, %mlx5e_rss_update_tir.exit87.cleanup_crit_edge ], [ 0, %mlx5e_rss_update_tir.exit87.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_rss_update_tir(ptr noundef %rss, i32 noundef %tt, i1 noundef zeroext %inner) unnamed_addr #1 align 64 {
entry:
  %rss_tt = alloca %struct.mlx5e_rss_params_traffic_type, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rss_tt) #11
  %arrayidx.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 4, i32 %tt
  %arrayidx1.i.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 3, i32 %tt
  %cond.i.i = select i1 %inner, ptr %arrayidx.i.i, ptr %arrayidx1.i.i
  %0 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cond.i.i, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext true) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i19 = getelementptr [10 x %struct.mlx5e_rss_params_traffic_type], ptr @rss_default_config, i32 0, i32 %tt
  %2 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %arrayidx.i.i19, align 4, !noalias !105
  %tmp.sroa.0.0.extract.shift = and i64 %3, -4294967296
  %arrayidx.i = getelementptr %struct.mlx5e_rss, ptr %rss, i32 0, i32 2, i32 %tt
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4, !noalias !110
  %tmp.sroa.4.0.insert.ext = zext i32 %5 to i64
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.extract.shift, %tmp.sroa.4.0.insert.ext
  %6 = ptrtoint ptr %rss_tt to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %rss_tt, align 8
  call void @mlx5e_tir_builder_build_rss(ptr noundef nonnull %call2, ptr noundef %rss, ptr noundef nonnull %rss_tt, i1 noundef zeroext %inner) #11
  %call7 = call i32 @mlx5e_tir_modify(ptr noundef nonnull %1, ptr noundef nonnull %call2) #11
  call void @mlx5e_tir_builder_free(ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rss_tt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rss_set_indir_uniform(ptr noundef %rss, i32 noundef %nch) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %indir = getelementptr inbounds %struct.mlx5e_rss, ptr %rss, i32 0, i32 1
  tail call void @mlx5e_rss_params_indir_init_uniform(ptr noundef %indir, i32 noundef %nch) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rss_params_indir_init_uniform(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_build_rqt(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_build_rss(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tir_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rqt_redirect_indir(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 363, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 418, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mlx5e_rss_disable._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @mlx5e_rss_disable._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 445, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlx5e_rss_packet_merge_set_param._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlx5e_rss_packet_merge_set_param._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 460, i32 4}
!16 = !{ptr @mlx5e_rss_packet_merge_set_param._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx5e_rss_packet_merge_set_param._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 576, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mlx5e_rss_set_hash_fields._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mlx5e_rss_set_hash_fields._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 591, i32 3}
!25 = !{ptr @mlx5e_rss_set_hash_fields._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5e_rss_set_hash_fields._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 595, i32 4}
!29 = !{ptr @mlx5e_rss_set_hash_fields._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlx5e_rss_set_hash_fields._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @rss_default_config, !32, !"rss_default_config", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 11, i32 51}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 141, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mlx5e_rss_create_tir._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mlx5e_rss_create_tir._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 171, i32 3}
!40 = !{ptr @mlx5e_rss_create_tir._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mlx5e_rss_create_tir._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 400, i32 3}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mlx5e_rss_apply._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlx5e_rss_apply._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 266, i32 4}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlx5e_rss_update_tirs._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mlx5e_rss_update_tirs._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rss.c", i32 277, i32 4}
!56 = !{ptr @mlx5e_rss_update_tirs._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mlx5e_rss_update_tirs._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i8 0, i8 2}
!69 = !{i64 2148226989, i64 2148227021, i64 2148227050, i64 2148227084, i64 2148227115, i64 2148227138}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2148314990}
!73 = !{i64 2148229454, i64 2148229486, i64 2148229515, i64 2148229549, i64 2148229580, i64 2148229603}
!74 = !{!"auto-init"}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"mlx5e_rss_get_default_tt_config: %agg.result"}
!77 = distinct !{!77, !"mlx5e_rss_get_default_tt_config"}
!78 = distinct !{!78, !79, !"mlx5e_rss_get_tt_config: %agg.result"}
!79 = distinct !{!79, !"mlx5e_rss_get_tt_config"}
!80 = !{!78}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"mlx5e_rss_get_default_tt_config: %agg.result"}
!83 = distinct !{!83, !"mlx5e_rss_get_default_tt_config"}
!84 = distinct !{!84, !85, !"mlx5e_rss_get_tt_config: %agg.result"}
!85 = distinct !{!85, !"mlx5e_rss_get_tt_config"}
!86 = !{!84}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"mlx5e_rss_get_default_tt_config: %agg.result"}
!89 = distinct !{!89, !"mlx5e_rss_get_default_tt_config"}
!90 = distinct !{!90, !91, !"mlx5e_rss_get_tt_config: %agg.result"}
!91 = distinct !{!91, !"mlx5e_rss_get_tt_config"}
!92 = !{!90}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"mlx5e_rss_get_default_tt_config: %agg.result"}
!95 = distinct !{!95, !"mlx5e_rss_get_default_tt_config"}
!96 = distinct !{!96, !97, !"mlx5e_rss_get_tt_config: %agg.result"}
!97 = distinct !{!97, !"mlx5e_rss_get_tt_config"}
!98 = !{!96}
!99 = !{!100, !102}
!100 = distinct !{!100, !101, !"mlx5e_rss_get_default_tt_config: %agg.result"}
!101 = distinct !{!101, !"mlx5e_rss_get_default_tt_config"}
!102 = distinct !{!102, !103, !"mlx5e_rss_get_tt_config: %agg.result"}
!103 = distinct !{!103, !"mlx5e_rss_get_tt_config"}
!104 = !{!102}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"mlx5e_rss_get_default_tt_config: %agg.result"}
!107 = distinct !{!107, !"mlx5e_rss_get_default_tt_config"}
!108 = distinct !{!108, !109, !"mlx5e_rss_get_tt_config: %agg.result"}
!109 = distinct !{!109, !"mlx5e_rss_get_tt_config"}
!110 = !{!108}
