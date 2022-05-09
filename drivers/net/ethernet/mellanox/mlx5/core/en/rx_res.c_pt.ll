; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5e_rx_res = type { ptr, i32, i32, i32, %struct.mlx5e_packet_merge_param, %struct.rw_semaphore, [16 x ptr], i8, [256 x i32], i32, ptr, %struct.anon.167 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.165 }
%struct.anon.165 = type { i8, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.167 = type { %struct.mlx5e_rqt, %struct.mlx5e_tir }
%struct.mlx5e_rqt = type { ptr, i32, i16 }
%struct.mlx5e_tir = type { ptr, i32, %struct.list_head }
%struct.anon.166 = type { %struct.mlx5e_rqt, %struct.mlx5e_tir, %struct.mlx5e_rqt, %struct.mlx5e_tir }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.161, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.214, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.214 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.215 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.215 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_rss_params_hash = type { i8, [40 x i8] }

@mlx5e_rx_res_rss_set_indir_uniform.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c\00", [44 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&res->pkt_merge_param_sem\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s:%d:(pid %d): Failed to redirect direct RQT %#x to RQ %#x (channel %u): err = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5e_rx_res_channels_activate\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_activate._entry_ptr = internal global ptr @mlx5e_rx_res_channels_activate._entry, section ".printk_index", align 4
@mlx5e_rx_res_channels_activate._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s:%d:(pid %d): Failed to redirect XSK RQT %#x to RQ %#x (channel %u): err = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_activate._entry_ptr.8 = internal global ptr @mlx5e_rx_res_channels_activate._entry.6, section ".printk_index", align 4
@mlx5e_rx_res_channels_activate._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str, i32 565, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s:%d:(pid %d): Failed to redirect direct RQT %#x to drop RQ %#x (channel %u): err = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_activate._entry_ptr.11 = internal global ptr @mlx5e_rx_res_channels_activate._entry.9, section ".printk_index", align 4
@mlx5e_rx_res_channels_activate._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s:%d:(pid %d): Failed to redirect XSK RQT %#x to drop RQ %#x (channel %u): err = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_activate._entry_ptr.14 = internal global ptr @mlx5e_rx_res_channels_activate._entry.12, section ".printk_index", align 4
@mlx5e_rx_res_channels_activate._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str, i32 587, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): Failed to redirect direct RQT %#x to RQ %#x (PTP): err = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_activate._entry_ptr.17 = internal global ptr @mlx5e_rx_res_channels_activate._entry.15, section ".printk_index", align 4
@mlx5e_rx_res_channels_deactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.18, ptr @.str, i32 603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5e_rx_res_channels_deactivate\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_deactivate._entry_ptr = internal global ptr @mlx5e_rx_res_channels_deactivate._entry, section ".printk_index", align 4
@mlx5e_rx_res_channels_deactivate._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.18, ptr @.str, i32 612, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_deactivate._entry_ptr.20 = internal global ptr @mlx5e_rx_res_channels_deactivate._entry.19, section ".printk_index", align 4
@mlx5e_rx_res_channels_deactivate._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s:%d:(pid %d): Failed to redirect direct RQT %#x to drop RQ %#x (PTP): err = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_deactivate._entry_ptr.23 = internal global ptr @mlx5e_rx_res_channels_deactivate._entry.21, section ".printk_index", align 4
@mlx5e_rx_res_xsk_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 637, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s:%d:(pid %d): Failed to redirect XSK RQT %#x to XSK RQ %#x (channel %u): err = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5e_rx_res_xsk_activate\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_xsk_activate._entry_ptr = internal global ptr @mlx5e_rx_res_xsk_activate._entry, section ".printk_index", align 4
@mlx5e_rx_res_xsk_deactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.26, ptr @.str, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5e_rx_res_xsk_deactivate\00", [36 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_xsk_deactivate._entry_ptr = internal global ptr @mlx5e_rx_res_xsk_deactivate._entry, section ".printk_index", align 4
@mlx5e_rx_res_packet_merge_set_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 686, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s:%d:(pid %d): Failed to update packet merge state of direct TIR %#x for channel %u: err = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mlx5e_rx_res_packet_merge_set_param\00", [60 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_packet_merge_set_param._entry_ptr = internal global ptr @mlx5e_rx_res_packet_merge_set_param._entry, section ".printk_index", align 4
@mlx5e_rx_res_channels_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Failed to create a direct RQT: err = %d, ix = %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5e_rx_res_channels_init\00", [37 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_init._entry_ptr = internal global ptr @mlx5e_rx_res_channels_init._entry, section ".printk_index", align 4
@mlx5e_rx_res_channels_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Failed to create a direct TIR: err = %d, ix = %u\0A\00", [62 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_init._entry_ptr.33 = internal global ptr @mlx5e_rx_res_channels_init._entry.31, section ".printk_index", align 4
@mlx5e_rx_res_channels_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Failed to create an XSK RQT: err = %d, ix = %u\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_init._entry_ptr.36 = internal global ptr @mlx5e_rx_res_channels_init._entry.34, section ".printk_index", align 4
@mlx5e_rx_res_channels_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Failed to create an XSK TIR: err = %d, ix = %u\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_channels_init._entry_ptr.39 = internal global ptr @mlx5e_rx_res_channels_init._entry.37, section ".printk_index", align 4
@mlx5e_rx_res_rss_destroy_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s:%d:(pid %d): Failed to destroy RSS context %d, refcount = %u, err = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5e_rx_res_rss_destroy_all\00", [35 x i8] zeroinitializer }, align 32
@mlx5e_rx_res_rss_destroy_all._entry_ptr = internal global ptr @mlx5e_rx_res_rss_destroy_all._entry, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 189, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 453, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 545, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 556, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 563, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 572, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 585, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 601, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 610, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 618, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 635, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 647, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 685, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 300, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 315, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 330, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 345, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 149, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @mlx5e_rx_res_channels_activate._entry, ptr @mlx5e_rx_res_channels_activate._entry.12, ptr @mlx5e_rx_res_channels_activate._entry.15, ptr @mlx5e_rx_res_channels_activate._entry.6, ptr @mlx5e_rx_res_channels_activate._entry.9, ptr @mlx5e_rx_res_channels_activate._entry_ptr, ptr @mlx5e_rx_res_channels_activate._entry_ptr.11, ptr @mlx5e_rx_res_channels_activate._entry_ptr.14, ptr @mlx5e_rx_res_channels_activate._entry_ptr.17, ptr @mlx5e_rx_res_channels_activate._entry_ptr.8, ptr @mlx5e_rx_res_channels_deactivate._entry, ptr @mlx5e_rx_res_channels_deactivate._entry.19, ptr @mlx5e_rx_res_channels_deactivate._entry.21, ptr @mlx5e_rx_res_channels_deactivate._entry_ptr, ptr @mlx5e_rx_res_channels_deactivate._entry_ptr.20, ptr @mlx5e_rx_res_channels_deactivate._entry_ptr.23, ptr @mlx5e_rx_res_channels_init._entry, ptr @mlx5e_rx_res_channels_init._entry.31, ptr @mlx5e_rx_res_channels_init._entry.34, ptr @mlx5e_rx_res_channels_init._entry.37, ptr @mlx5e_rx_res_channels_init._entry_ptr, ptr @mlx5e_rx_res_channels_init._entry_ptr.33, ptr @mlx5e_rx_res_channels_init._entry_ptr.36, ptr @mlx5e_rx_res_channels_init._entry_ptr.39, ptr @mlx5e_rx_res_packet_merge_set_param._entry, ptr @mlx5e_rx_res_packet_merge_set_param._entry_ptr, ptr @mlx5e_rx_res_rss_destroy_all._entry, ptr @mlx5e_rx_res_rss_destroy_all._entry_ptr, ptr @mlx5e_rx_res_xsk_activate._entry, ptr @mlx5e_rx_res_xsk_activate._entry_ptr, ptr @mlx5e_rx_res_xsk_deactivate._entry, ptr @mlx5e_rx_res_xsk_deactivate._entry_ptr, ptr @.str, ptr @mlx5e_rx_res_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_activate._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_activate._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_activate._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_activate._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_deactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_deactivate._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_deactivate._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_xsk_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_xsk_deactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_packet_merge_set_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_channels_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rx_res_rss_destroy_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_rss_init(ptr noundef %res, ptr nocapture noundef writeonly %rss_idx, i32 noundef %init_nch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %entry.if.end5_crit_edge, label %for.inc

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %5, null
  br i1 %tobool2.not.1, label %for.inc.if.end5_crit_edge, label %for.inc.1

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool2.not.2 = icmp eq ptr %7, null
  br i1 %tobool2.not.2, label %for.inc.1.if.end5_crit_edge, label %for.inc.2

for.inc.1.if.end5_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %tobool2.not.3 = icmp eq ptr %9, null
  br i1 %tobool2.not.3, label %for.inc.2.if.end5_crit_edge, label %for.inc.3

for.inc.2.if.end5_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 5
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  %tobool2.not.4 = icmp eq ptr %11, null
  br i1 %tobool2.not.4, label %for.inc.3.if.end5_crit_edge, label %for.inc.4

for.inc.3.if.end5_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  %tobool2.not.5 = icmp eq ptr %13, null
  br i1 %tobool2.not.5, label %for.inc.4.if.end5_crit_edge, label %for.inc.5

for.inc.4.if.end5_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 7
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.6, align 4
  %tobool2.not.6 = icmp eq ptr %15, null
  br i1 %tobool2.not.6, label %for.inc.5.if.end5_crit_edge, label %for.inc.6

for.inc.5.if.end5_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 8
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.7, align 4
  %tobool2.not.7 = icmp eq ptr %17, null
  br i1 %tobool2.not.7, label %for.inc.6.if.end5_crit_edge, label %for.inc.7

for.inc.6.if.end5_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 9
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.8, align 4
  %tobool2.not.8 = icmp eq ptr %19, null
  br i1 %tobool2.not.8, label %for.inc.7.if.end5_crit_edge, label %for.inc.8

for.inc.7.if.end5_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 10
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.9, align 4
  %tobool2.not.9 = icmp eq ptr %21, null
  br i1 %tobool2.not.9, label %for.inc.8.if.end5_crit_edge, label %for.inc.9

for.inc.8.if.end5_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 11
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.10, align 4
  %tobool2.not.10 = icmp eq ptr %23, null
  br i1 %tobool2.not.10, label %for.inc.9.if.end5_crit_edge, label %for.inc.10

for.inc.9.if.end5_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 12
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.11, align 4
  %tobool2.not.11 = icmp eq ptr %25, null
  br i1 %tobool2.not.11, label %for.inc.10.if.end5_crit_edge, label %for.inc.11

for.inc.10.if.end5_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 13
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.12, align 4
  %tobool2.not.12 = icmp eq ptr %27, null
  br i1 %tobool2.not.12, label %for.inc.11.if.end5_crit_edge, label %for.inc.12

for.inc.11.if.end5_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 14
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.13, align 4
  %tobool2.not.13 = icmp eq ptr %29, null
  br i1 %tobool2.not.13, label %for.inc.12.if.end5_crit_edge, label %for.inc.13

for.inc.12.if.end5_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 15
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.14, align 4
  %tobool2.not.14 = icmp eq ptr %31, null
  br i1 %tobool2.not.14, label %for.inc.13.if.end5_crit_edge, label %for.inc.13.cleanup_crit_edge

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.13.if.end5_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %for.inc.13.if.end5_crit_edge, %for.inc.12.if.end5_crit_edge, %for.inc.11.if.end5_crit_edge, %for.inc.10.if.end5_crit_edge, %for.inc.9.if.end5_crit_edge, %for.inc.8.if.end5_crit_edge, %for.inc.7.if.end5_crit_edge, %for.inc.6.if.end5_crit_edge, %for.inc.5.if.end5_crit_edge, %for.inc.4.if.end5_crit_edge, %for.inc.3.if.end5_crit_edge, %for.inc.2.if.end5_crit_edge, %for.inc.1.if.end5_crit_edge, %for.inc.if.end5_crit_edge, %entry.if.end5_crit_edge
  %i.043.lcssa = phi i32 [ 1, %entry.if.end5_crit_edge ], [ 2, %for.inc.if.end5_crit_edge ], [ 3, %for.inc.1.if.end5_crit_edge ], [ 4, %for.inc.2.if.end5_crit_edge ], [ 5, %for.inc.3.if.end5_crit_edge ], [ 6, %for.inc.4.if.end5_crit_edge ], [ 7, %for.inc.5.if.end5_crit_edge ], [ 8, %for.inc.6.if.end5_crit_edge ], [ 9, %for.inc.7.if.end5_crit_edge ], [ 10, %for.inc.8.if.end5_crit_edge ], [ 11, %for.inc.9.if.end5_crit_edge ], [ 12, %for.inc.10.if.end5_crit_edge ], [ 13, %for.inc.11.if.end5_crit_edge ], [ 14, %for.inc.12.if.end5_crit_edge ], [ 15, %for.inc.13.if.end5_crit_edge ]
  %call = tail call ptr @mlx5e_rss_alloc() #10
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %32 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %res, align 4
  %drop_rqn = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 3
  %34 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %drop_rqn, align 4
  %call10 = tail call i32 @mlx5e_rss_init_no_tirs(ptr noundef nonnull %call, ptr noundef %33, i1 noundef zeroext %tobool, i32 noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %err_rss_free

if.end13:                                         ; preds = %if.end8
  tail call void @mlx5e_rss_set_indir_uniform(ptr noundef nonnull %call, i32 noundef %init_nch) #10
  %rss_active = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 7
  %36 = ptrtoint ptr %rss_active to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rss_active, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool14.not = icmp eq i8 %37, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %rss_rqns = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 8
  %rss_nch = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 9
  %38 = ptrtoint ptr %rss_nch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rss_nch, align 4
  tail call void @mlx5e_rss_enable(ptr noundef nonnull %call, ptr noundef %rss_rqns, i32 noundef %39) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %arrayidx18 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 %i.043.lcssa
  %40 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call, ptr %arrayidx18, align 4
  %41 = ptrtoint ptr %rss_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.043.lcssa, ptr %rss_idx, align 4
  br label %cleanup

err_rss_free:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_rss_free, %if.end16, %if.end5.cleanup_crit_edge, %for.inc.13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %err_rss_free ], [ 0, %if.end16 ], [ -12, %if.end5.cleanup_crit_edge ], [ -28, %for.inc.13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_rss_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_init_no_tirs(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rss_set_indir_uniform(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rss_enable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rss_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_rss_destroy(ptr nocapture noundef %res, i32 noundef %rss_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rss_idx)
  %cmp = icmp ugt i32 %rss_idx, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 %rss_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call i32 @mlx5e_rss_cleanup(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_free(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rx_res_rss_set_indir_uniform(ptr nocapture noundef readonly %res, i32 noundef %nch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_active = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 7
  %0 = ptrtoint ptr %rss_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rss_active, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @mlx5e_rx_res_rss_set_indir_uniform.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !87

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5e_rx_res_rss_set_indir_uniform.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %rss = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6
  %2 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rss, align 4
  tail call void @mlx5e_rss_set_indir_uniform(ptr noundef %3, i32 noundef %nch) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_rss_get_rxfh(ptr nocapture noundef readonly %res, i32 noundef %rss_idx, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rss_idx)
  %cmp = icmp ugt i32 %rss_idx, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 %rss_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @mlx5e_rss_get_rxfh(ptr noundef nonnull %1, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_get_rxfh(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_rss_set_rxfh(ptr noundef %res, i32 noundef %rss_idx, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rss_idx)
  %cmp = icmp ugt i32 %rss_idx, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 %rss_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rss_rqns = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 8
  %rss_nch = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 9
  %2 = ptrtoint ptr %rss_nch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rss_nch, align 4
  %call = tail call i32 @mlx5e_rss_set_rxfh(ptr noundef nonnull %1, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc, ptr noundef %rss_rqns, i32 noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_set_rxfh(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mlx5e_rx_res_rss_get_hash_fields(ptr nocapture noundef readonly %res, i32 noundef %tt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss1 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6
  %0 = ptrtoint ptr %rss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss1, align 4
  %call = tail call zeroext i8 @mlx5e_rss_get_hash_fields(ptr noundef %1, i32 noundef %tt) #10
  ret i8 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5e_rss_get_hash_fields(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_rss_set_hash_fields(ptr nocapture noundef readonly %res, i32 noundef %tt, i8 noundef zeroext %rx_hash_fields) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss1 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6
  %0 = ptrtoint ptr %rss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss1, align 4
  %call = tail call i32 @mlx5e_rss_set_hash_fields(ptr noundef %1, i32 noundef %tt, i8 noundef zeroext %rx_hash_fields) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_set_hash_fields(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_rss_cnt(ptr nocapture noundef readonly %res) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp ne ptr %1, null
  %inc = zext i1 %tobool.not to i32
  %arrayidx.1 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp ne ptr %3, null
  %inc.1 = zext i1 %tobool.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  %arrayidx.2 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp ne ptr %5, null
  %inc.2 = zext i1 %tobool.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.2
  %arrayidx.3 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp ne ptr %7, null
  %inc.3 = zext i1 %tobool.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.3
  %arrayidx.4 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp ne ptr %9, null
  %inc.4 = zext i1 %tobool.not.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc.4
  %arrayidx.5 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp ne ptr %11, null
  %inc.5 = zext i1 %tobool.not.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc.5
  %arrayidx.6 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp ne ptr %13, null
  %inc.6 = zext i1 %tobool.not.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc.6
  %arrayidx.7 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp ne ptr %15, null
  %inc.7 = zext i1 %tobool.not.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc.7
  %arrayidx.8 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp ne ptr %17, null
  %inc.8 = zext i1 %tobool.not.8 to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %inc.8
  %arrayidx.9 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp ne ptr %19, null
  %inc.9 = zext i1 %tobool.not.9 to i32
  %spec.select.9 = add nuw nsw i32 %spec.select.8, %inc.9
  %arrayidx.10 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp ne ptr %21, null
  %inc.10 = zext i1 %tobool.not.10 to i32
  %spec.select.10 = add nuw nsw i32 %spec.select.9, %inc.10
  %arrayidx.11 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp ne ptr %23, null
  %inc.11 = zext i1 %tobool.not.11 to i32
  %spec.select.11 = add nuw nsw i32 %spec.select.10, %inc.11
  %arrayidx.12 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp ne ptr %25, null
  %inc.12 = zext i1 %tobool.not.12 to i32
  %spec.select.12 = add nuw nsw i32 %spec.select.11, %inc.12
  %arrayidx.13 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp ne ptr %27, null
  %inc.13 = zext i1 %tobool.not.13 to i32
  %spec.select.13 = add nuw nsw i32 %spec.select.12, %inc.13
  %arrayidx.14 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp ne ptr %29, null
  %inc.14 = zext i1 %tobool.not.14 to i32
  %spec.select.14 = add nuw nsw i32 %spec.select.13, %inc.14
  %arrayidx.15 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp ne ptr %31, null
  %inc.15 = zext i1 %tobool.not.15 to i32
  %spec.select.15 = add nuw nsw i32 %spec.select.14, %inc.15
  ret i32 %spec.select.15
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_rss_index(ptr nocapture noundef readonly %res, ptr noundef readnone %rss) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rss, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %1, %rss
  br i1 %cmp2, label %for.body.preheader.cleanup_crit_edge, label %for.inc

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp eq ptr %3, %rss
  br i1 %cmp2.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.2 = icmp eq ptr %5, %rss
  br i1 %cmp2.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.3 = icmp eq ptr %7, %rss
  br i1 %cmp2.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %cmp2.4 = icmp eq ptr %9, %rss
  br i1 %cmp2.4, label %for.inc.3.cleanup_crit_edge, label %for.inc.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %cmp2.5 = icmp eq ptr %11, %rss
  br i1 %cmp2.5, label %for.inc.4.cleanup_crit_edge, label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  %cmp2.6 = icmp eq ptr %13, %rss
  br i1 %cmp2.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  %cmp2.7 = icmp eq ptr %15, %rss
  br i1 %cmp2.7, label %for.inc.6.cleanup_crit_edge, label %for.inc.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  %cmp2.8 = icmp eq ptr %17, %rss
  br i1 %cmp2.8, label %for.inc.7.cleanup_crit_edge, label %for.inc.8

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 4
  %cmp2.9 = icmp eq ptr %19, %rss
  br i1 %cmp2.9, label %for.inc.8.cleanup_crit_edge, label %for.inc.9

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 4
  %cmp2.10 = icmp eq ptr %21, %rss
  br i1 %cmp2.10, label %for.inc.9.cleanup_crit_edge, label %for.inc.10

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11, align 4
  %cmp2.11 = icmp eq ptr %23, %rss
  br i1 %cmp2.11, label %for.inc.10.cleanup_crit_edge, label %for.inc.11

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.12, align 4
  %cmp2.12 = icmp eq ptr %25, %rss
  br i1 %cmp2.12, label %for.inc.11.cleanup_crit_edge, label %for.inc.12

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.13, align 4
  %cmp2.13 = icmp eq ptr %27, %rss
  br i1 %cmp2.13, label %for.inc.12.cleanup_crit_edge, label %for.inc.13

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.14, align 4
  %cmp2.14 = icmp eq ptr %29, %rss
  br i1 %cmp2.14, label %for.inc.13.cleanup_crit_edge, label %for.inc.14

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.15 = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.15, align 4
  %cmp2.15 = icmp eq ptr %31, %rss
  %spec.select = select i1 %cmp2.15, i32 15, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %for.inc.14, %for.inc.13.cleanup_crit_edge, %for.inc.12.cleanup_crit_edge, %for.inc.11.cleanup_crit_edge, %for.inc.10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ 4, %for.inc.3.cleanup_crit_edge ], [ 5, %for.inc.4.cleanup_crit_edge ], [ 6, %for.inc.5.cleanup_crit_edge ], [ 7, %for.inc.6.cleanup_crit_edge ], [ 8, %for.inc.7.cleanup_crit_edge ], [ 9, %for.inc.8.cleanup_crit_edge ], [ 10, %for.inc.9.cleanup_crit_edge ], [ 11, %for.inc.10.cleanup_crit_edge ], [ 12, %for.inc.11.cleanup_crit_edge ], [ 13, %for.inc.12.cleanup_crit_edge ], [ 14, %for.inc.13.cleanup_crit_edge ], [ %spec.select, %for.inc.14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5e_rx_res_rss_get(ptr nocapture noundef readonly %res, i32 noundef %rss_idx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rss_idx)
  %cmp = icmp ugt i32 %rss_idx, 15
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 %rss_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @mlx5e_rx_res_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1252, i32 noundef 3520, i32 noundef -1) #13
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_init(ptr noundef %res, ptr noundef %mdev, i32 noundef %features, i32 noundef %max_nch, i32 noundef %drop_rqn, ptr nocapture noundef readonly %init_pkt_merge_param, i32 noundef %init_nch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdev, ptr %res, align 4
  %features2 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  %1 = ptrtoint ptr %features2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %features, ptr %features2, align 4
  %max_nch3 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 2
  %2 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %max_nch, ptr %max_nch3, align 4
  %drop_rqn4 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 3
  %3 = ptrtoint ptr %drop_rqn4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %drop_rqn, ptr %drop_rqn4, align 4
  %pkt_merge_param = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %pkt_merge_param, ptr %init_pkt_merge_param, i32 12)
  %pkt_merge_param_sem = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 5
  tail call void @__init_rwsem(ptr noundef %pkt_merge_param_sem, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx5e_rx_res_init.__key) #10
  %5 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %features2, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %rss1.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6
  %7 = ptrtoint ptr %rss1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rss1.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.end24.i, label %do.end.i, !prof !87

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24.i:                                       ; preds = %entry
  %call.i = tail call ptr @mlx5e_rss_alloc() #10
  %tobool25.not.i = icmp eq ptr %call.i, null
  br i1 %tobool25.not.i, label %if.end24.i.cleanup_crit_edge, label %if.end27.i

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27.i:                                       ; preds = %if.end24.i
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res, align 4
  %11 = ptrtoint ptr %drop_rqn4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drop_rqn4, align 4
  %call29.i = tail call i32 @mlx5e_rss_init(ptr noundef nonnull %call.i, ptr noundef %10, i1 noundef zeroext %tobool.i, i32 noundef %12, ptr noundef %pkt_merge_param) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end, label %err_rss_free.i

err_rss_free.i:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_free(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end27.i
  tail call void @mlx5e_rss_set_indir_uniform(ptr noundef nonnull %call.i, i32 noundef %init_nch) #10
  %13 = ptrtoint ptr %rss1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %rss1.i, align 4
  %14 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %features2, align 4
  %and.i28 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.i29 = icmp ne i32 %and.i28, 0
  %call.i30 = tail call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext false) #10
  %tobool1.not.i = icmp eq ptr %call.i30, null
  br i1 %tobool1.not.i, label %if.end.err_rss_destroy_crit_edge, label %if.end.i

if.end.err_rss_destroy_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rss_destroy

if.end.i:                                         ; preds = %if.end
  %16 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_nch3, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 56) #10
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kvcalloc.exit.thread.i, label %kvcalloc.exit.i, !prof !88

kvcalloc.exit.thread.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %channels225.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %20 = ptrtoint ptr %channels225.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %channels225.i, align 4
  br label %mlx5e_rx_res_channels_init.exit.thread57

kvcalloc.exit.i:                                  ; preds = %if.end.i
  %21 = extractvalue { i32, i1 } %18, 0
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %21, i32 noundef 3520, i32 noundef -1) #13
  %channels.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %22 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i.i.i, ptr %channels.i, align 4
  %tobool4.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool4.not.i, label %kvcalloc.exit.i.mlx5e_rx_res_channels_init.exit.thread57_crit_edge, label %for.cond.preheader.i

kvcalloc.exit.i.mlx5e_rx_res_channels_init.exit.thread57_crit_edge: ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_channels_init.exit.thread57

for.cond.preheader.i:                             ; preds = %kvcalloc.exit.i
  %23 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_nch3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp232.not.i = icmp eq i32 %24, 0
  br i1 %cmp232.not.i, label %for.cond.preheader.i.for.end42.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end42.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42.i

for.cond15.preheader.i:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp17234.not.i = icmp eq i32 %42, 0
  br i1 %cmp17234.not.i, label %for.cond15.preheader.i.for.end42.i_crit_edge, label %for.cond15.preheader.i.for.body18.i_crit_edge

for.cond15.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond15.preheader.i
  br label %for.body18.i

for.cond15.preheader.i.for.end42.i_crit_edge:     ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ix.0233.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channels.i, align 4
  %arrayidx.i = getelementptr %struct.anon.166, ptr %26, i32 %ix.0233.i
  %27 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res, align 4
  %29 = ptrtoint ptr %drop_rqn4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %drop_rqn4, align 4
  %call9.i = tail call i32 @mlx5e_rqt_init_direct(ptr noundef %arrayidx.i, ptr noundef %28, i1 noundef zeroext false, i32 noundef %30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.inc.i, label %do.end.i33

do.end.i33:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %35 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 301, i32 noundef %40, i32 noundef %call9.i, i32 noundef %ix.0233.i) #14
  br label %err_destroy_direct_rqts.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %ix.0233.i, 1
  %41 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_nch3, align 4
  %cmp.i = icmp ult i32 %inc.i, %42
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.cond15.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body18.i:                                     ; preds = %if.end39.i.for.body18.i_crit_edge, %for.cond15.preheader.i.for.body18.i_crit_edge
  %ix.1235.i = phi i32 [ %inc41.i, %if.end39.i.for.body18.i_crit_edge ], [ 0, %for.cond15.preheader.i.for.body18.i_crit_edge ]
  %43 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %res, align 4
  %tdn.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %44, i32 0, i32 20, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %tdn.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tdn.i, align 4
  %47 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %channels.i, align 4
  %rqtn.i.i = getelementptr %struct.anon.166, ptr %48, i32 %ix.1235.i, i32 0, i32 1
  %49 = ptrtoint ptr %rqtn.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rqtn.i.i, align 4
  tail call void @mlx5e_tir_builder_build_rqt(ptr noundef nonnull %call.i30, i32 noundef %46, i32 noundef %50, i1 noundef zeroext %tobool.i29) #10
  tail call void @mlx5e_tir_builder_build_packet_merge(ptr noundef nonnull %call.i30, ptr noundef %pkt_merge_param) #10
  tail call void @mlx5e_tir_builder_build_direct(ptr noundef nonnull %call.i30) #10
  %51 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %channels.i, align 4
  %direct_tir.i = getelementptr %struct.anon.166, ptr %52, i32 %ix.1235.i, i32 1
  %53 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %res, align 4
  %call28.i = tail call i32 @mlx5e_tir_init(ptr noundef %direct_tir.i, ptr noundef nonnull %call.i30, ptr noundef %54, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end39.i, label %do.end33.i

do.end33.i:                                       ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %res, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %59 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i220.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i220.i to ptr
  %task37.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task37.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task37.i, align 8
  %pid38.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 68
  %63 = ptrtoint ptr %pid38.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pid38.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 316, i32 noundef %64, i32 noundef %call28.i, i32 noundef %ix.1235.i) #14
  br label %err_destroy_direct_tirs.i

if.end39.i:                                       ; preds = %for.body18.i
  tail call void @mlx5e_tir_builder_clear(ptr noundef nonnull %call.i30) #10
  %inc41.i = add nuw i32 %ix.1235.i, 1
  %65 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_nch3, align 4
  %cmp17.i = icmp ult i32 %inc41.i, %66
  br i1 %cmp17.i, label %if.end39.i.for.body18.i_crit_edge, label %if.end39.i.for.end42.i_crit_edge

if.end39.i.for.end42.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42.i

if.end39.i.for.body18.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.i

for.end42.i:                                      ; preds = %if.end39.i.for.end42.i_crit_edge, %for.cond15.preheader.i.for.end42.i_crit_edge, %for.cond.preheader.i.for.end42.i_crit_edge
  %67 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %features2, align 4
  %and44.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %for.end42.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge, label %for.cond48.preheader.i

for.end42.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge: ; preds = %for.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_channels_init.exit.thread53

for.cond48.preheader.i:                           ; preds = %for.end42.i
  %69 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_nch3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp50236.not.i = icmp eq i32 %70, 0
  br i1 %cmp50236.not.i, label %for.cond48.preheader.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge, label %for.cond48.preheader.i.for.body51.i_crit_edge

for.cond48.preheader.i.for.body51.i_crit_edge:    ; preds = %for.cond48.preheader.i
  br label %for.body51.i

for.cond48.preheader.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge: ; preds = %for.cond48.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_channels_init.exit.thread53

for.cond71.preheader.i:                           ; preds = %for.inc68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp73238.not.i = icmp eq i32 %88, 0
  br i1 %cmp73238.not.i, label %for.cond71.preheader.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge, label %for.cond71.preheader.i.for.body74.i_crit_edge

for.cond71.preheader.i.for.body74.i_crit_edge:    ; preds = %for.cond71.preheader.i
  br label %for.body74.i

for.cond71.preheader.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge: ; preds = %for.cond71.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_channels_init.exit.thread53

for.body51.i:                                     ; preds = %for.inc68.i.for.body51.i_crit_edge, %for.cond48.preheader.i.for.body51.i_crit_edge
  %ix.2237.i = phi i32 [ %inc69.i, %for.inc68.i.for.body51.i_crit_edge ], [ 0, %for.cond48.preheader.i.for.body51.i_crit_edge ]
  %71 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %channels.i, align 4
  %xsk_rqt.i = getelementptr %struct.anon.166, ptr %72, i32 %ix.2237.i, i32 2
  %73 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %res, align 4
  %75 = ptrtoint ptr %drop_rqn4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %drop_rqn4, align 4
  %call56.i = tail call i32 @mlx5e_rqt_init_direct(ptr noundef %xsk_rqt.i, ptr noundef %74, i1 noundef zeroext false, i32 noundef %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %for.inc68.i, label %do.end61.i

do.end61.i:                                       ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %res, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %81 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i221.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i221.i to ptr
  %task65.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task65.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task65.i, align 8
  %pid66.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 68
  %85 = ptrtoint ptr %pid66.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pid66.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, i32 noundef 331, i32 noundef %86, i32 noundef %call56.i, i32 noundef %ix.2237.i) #14
  br label %err_destroy_xsk_rqts.i

for.inc68.i:                                      ; preds = %for.body51.i
  %inc69.i = add nuw i32 %ix.2237.i, 1
  %87 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_nch3, align 4
  %cmp50.i = icmp ult i32 %inc69.i, %88
  br i1 %cmp50.i, label %for.inc68.i.for.body51.i_crit_edge, label %for.cond71.preheader.i

for.inc68.i.for.body51.i_crit_edge:               ; preds = %for.inc68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body51.i

for.body74.i:                                     ; preds = %if.end100.i.for.body74.i_crit_edge, %for.cond71.preheader.i.for.body74.i_crit_edge
  %ix.3239.i = phi i32 [ %inc102.i, %if.end100.i.for.body74.i_crit_edge ], [ 0, %for.cond71.preheader.i.for.body74.i_crit_edge ]
  %89 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %res, align 4
  %tdn79.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %90, i32 0, i32 20, i32 0, i32 1, i32 2
  %91 = ptrtoint ptr %tdn79.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tdn79.i, align 4
  %93 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %channels.i, align 4
  %rqtn.i222.i = getelementptr %struct.anon.166, ptr %94, i32 %ix.3239.i, i32 2, i32 1
  %95 = ptrtoint ptr %rqtn.i222.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rqtn.i222.i, align 4
  tail call void @mlx5e_tir_builder_build_rqt(ptr noundef nonnull %call.i30, i32 noundef %92, i32 noundef %96, i1 noundef zeroext %tobool.i29) #10
  tail call void @mlx5e_tir_builder_build_packet_merge(ptr noundef nonnull %call.i30, ptr noundef %pkt_merge_param) #10
  tail call void @mlx5e_tir_builder_build_direct(ptr noundef nonnull %call.i30) #10
  %97 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %channels.i, align 4
  %xsk_tir.i = getelementptr %struct.anon.166, ptr %98, i32 %ix.3239.i, i32 3
  %99 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %res, align 4
  %call89.i = tail call i32 @mlx5e_tir_init(ptr noundef %xsk_tir.i, ptr noundef nonnull %call.i30, ptr noundef %100, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.end100.i, label %do.end94.i

do.end94.i:                                       ; preds = %for.body74.i
  %101 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %res, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %105 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i223.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i223.i to ptr
  %task98.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task98.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task98.i, align 8
  %pid99.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 68
  %109 = ptrtoint ptr %pid99.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pid99.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.30, i32 noundef 346, i32 noundef %110, i32 noundef %call89.i, i32 noundef %ix.3239.i) #14
  %dec240.i = add i32 %ix.3239.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec240.i)
  %cmp104241.i = icmp sgt i32 %dec240.i, -1
  br i1 %cmp104241.i, label %do.end94.i.while.body.i_crit_edge, label %do.end94.i.while.end.i_crit_edge

do.end94.i.while.end.i_crit_edge:                 ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.end94.i.while.body.i_crit_edge:                ; preds = %do.end94.i
  br label %while.body.i

if.end100.i:                                      ; preds = %for.body74.i
  tail call void @mlx5e_tir_builder_clear(ptr noundef nonnull %call.i30) #10
  %inc102.i = add nuw i32 %ix.3239.i, 1
  %111 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_nch3, align 4
  %cmp73.i = icmp ult i32 %inc102.i, %112
  br i1 %cmp73.i, label %if.end100.i.for.body74.i_crit_edge, label %if.end100.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge

if.end100.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge: ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_channels_init.exit.thread53

if.end100.i.for.body74.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end94.i.while.body.i_crit_edge
  %dec242.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec240.i, %do.end94.i.while.body.i_crit_edge ]
  %113 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %channels.i, align 4
  %xsk_tir107.i = getelementptr %struct.anon.166, ptr %114, i32 %dec242.i, i32 3
  tail call void @mlx5e_tir_destroy(ptr noundef %xsk_tir107.i) #10
  %dec.i = add nsw i32 %dec242.i, -1
  %cmp104.i.not = icmp eq i32 %dec242.i, 0
  br i1 %cmp104.i.not, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end94.i.while.end.i_crit_edge
  %115 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_nch3, align 4
  br label %err_destroy_xsk_rqts.i

err_destroy_xsk_rqts.i:                           ; preds = %while.end.i, %do.end61.i
  %err.4.i = phi i32 [ %call56.i, %do.end61.i ], [ %call89.i, %while.end.i ]
  %ix.5.i = phi i32 [ %ix.2237.i, %do.end61.i ], [ %116, %while.end.i ]
  %dec110243.i = add i32 %ix.5.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec110243.i)
  %cmp111244.i = icmp sgt i32 %dec110243.i, -1
  br i1 %cmp111244.i, label %err_destroy_xsk_rqts.i.while.body112.i_crit_edge, label %err_destroy_xsk_rqts.i.while.end116.i_crit_edge

err_destroy_xsk_rqts.i.while.end116.i_crit_edge:  ; preds = %err_destroy_xsk_rqts.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end116.i

err_destroy_xsk_rqts.i.while.body112.i_crit_edge: ; preds = %err_destroy_xsk_rqts.i
  br label %while.body112.i

while.body112.i:                                  ; preds = %while.body112.i.while.body112.i_crit_edge, %err_destroy_xsk_rqts.i.while.body112.i_crit_edge
  %dec110245.i = phi i32 [ %dec110.i, %while.body112.i.while.body112.i_crit_edge ], [ %dec110243.i, %err_destroy_xsk_rqts.i.while.body112.i_crit_edge ]
  %117 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %channels.i, align 4
  %xsk_rqt115.i = getelementptr %struct.anon.166, ptr %118, i32 %dec110245.i, i32 2
  tail call void @mlx5e_rqt_destroy(ptr noundef %xsk_rqt115.i) #10
  %dec110.i = add nsw i32 %dec110245.i, -1
  %cmp111.i.not = icmp eq i32 %dec110245.i, 0
  br i1 %cmp111.i.not, label %while.body112.i.while.end116.i_crit_edge, label %while.body112.i.while.body112.i_crit_edge

while.body112.i.while.body112.i_crit_edge:        ; preds = %while.body112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body112.i

while.body112.i.while.end116.i_crit_edge:         ; preds = %while.body112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end116.i

while.end116.i:                                   ; preds = %while.body112.i.while.end116.i_crit_edge, %err_destroy_xsk_rqts.i.while.end116.i_crit_edge
  %119 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max_nch3, align 4
  br label %err_destroy_direct_tirs.i

err_destroy_direct_tirs.i:                        ; preds = %while.end116.i, %do.end33.i
  %err.5.i = phi i32 [ %call28.i, %do.end33.i ], [ %err.4.i, %while.end116.i ]
  %ix.7.i = phi i32 [ %ix.1235.i, %do.end33.i ], [ %120, %while.end116.i ]
  %dec119246.i = add i32 %ix.7.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec119246.i)
  %cmp120247.i = icmp sgt i32 %dec119246.i, -1
  br i1 %cmp120247.i, label %err_destroy_direct_tirs.i.while.body121.i_crit_edge, label %err_destroy_direct_tirs.i.while.end125.i_crit_edge

err_destroy_direct_tirs.i.while.end125.i_crit_edge: ; preds = %err_destroy_direct_tirs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end125.i

err_destroy_direct_tirs.i.while.body121.i_crit_edge: ; preds = %err_destroy_direct_tirs.i
  br label %while.body121.i

while.body121.i:                                  ; preds = %while.body121.i.while.body121.i_crit_edge, %err_destroy_direct_tirs.i.while.body121.i_crit_edge
  %dec119248.i = phi i32 [ %dec119.i, %while.body121.i.while.body121.i_crit_edge ], [ %dec119246.i, %err_destroy_direct_tirs.i.while.body121.i_crit_edge ]
  %121 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %channels.i, align 4
  %direct_tir124.i = getelementptr %struct.anon.166, ptr %122, i32 %dec119248.i, i32 1
  tail call void @mlx5e_tir_destroy(ptr noundef %direct_tir124.i) #10
  %dec119.i = add nsw i32 %dec119248.i, -1
  %cmp120.i.not = icmp eq i32 %dec119248.i, 0
  br i1 %cmp120.i.not, label %while.body121.i.while.end125.i_crit_edge, label %while.body121.i.while.body121.i_crit_edge

while.body121.i.while.body121.i_crit_edge:        ; preds = %while.body121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body121.i

while.body121.i.while.end125.i_crit_edge:         ; preds = %while.body121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end125.i

while.end125.i:                                   ; preds = %while.body121.i.while.end125.i_crit_edge, %err_destroy_direct_tirs.i.while.end125.i_crit_edge
  %123 = ptrtoint ptr %max_nch3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_nch3, align 4
  br label %err_destroy_direct_rqts.i

err_destroy_direct_rqts.i:                        ; preds = %while.end125.i, %do.end.i33
  %err.6.i = phi i32 [ %call9.i, %do.end.i33 ], [ %err.5.i, %while.end125.i ]
  %ix.9.i = phi i32 [ %ix.0233.i, %do.end.i33 ], [ %124, %while.end125.i ]
  %dec128249.i = add i32 %ix.9.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec128249.i)
  %cmp129250.i = icmp sgt i32 %dec128249.i, -1
  br i1 %cmp129250.i, label %err_destroy_direct_rqts.i.while.body130.i_crit_edge, label %err_destroy_direct_rqts.i.mlx5e_rx_res_channels_init.exit_crit_edge

err_destroy_direct_rqts.i.mlx5e_rx_res_channels_init.exit_crit_edge: ; preds = %err_destroy_direct_rqts.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_channels_init.exit

err_destroy_direct_rqts.i.while.body130.i_crit_edge: ; preds = %err_destroy_direct_rqts.i
  br label %while.body130.i

while.body130.i:                                  ; preds = %while.body130.i.while.body130.i_crit_edge, %err_destroy_direct_rqts.i.while.body130.i_crit_edge
  %dec128251.i = phi i32 [ %dec128.i, %while.body130.i.while.body130.i_crit_edge ], [ %dec128249.i, %err_destroy_direct_rqts.i.while.body130.i_crit_edge ]
  %125 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %channels.i, align 4
  %arrayidx132.i = getelementptr %struct.anon.166, ptr %126, i32 %dec128251.i
  tail call void @mlx5e_rqt_destroy(ptr noundef %arrayidx132.i) #10
  %dec128.i = add nsw i32 %dec128251.i, -1
  %cmp129.i.not = icmp eq i32 %dec128251.i, 0
  br i1 %cmp129.i.not, label %while.body130.i.mlx5e_rx_res_channels_init.exit_crit_edge, label %while.body130.i.while.body130.i_crit_edge

while.body130.i.while.body130.i_crit_edge:        ; preds = %while.body130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body130.i

while.body130.i.mlx5e_rx_res_channels_init.exit_crit_edge: ; preds = %while.body130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_channels_init.exit

mlx5e_rx_res_channels_init.exit.thread53:         ; preds = %if.end100.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge, %for.cond71.preheader.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge, %for.cond48.preheader.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge, %for.end42.i.mlx5e_rx_res_channels_init.exit.thread53_crit_edge
  tail call void @mlx5e_tir_builder_free(ptr noundef nonnull %call.i30) #10
  %127 = ptrtoint ptr %features2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %features2, align 4
  %and.i36 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.i37 = icmp ne i32 %and.i36, 0
  %call.i38 = tail call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext false) #10
  %tobool1.not.i39 = icmp eq ptr %call.i38, null
  br i1 %tobool1.not.i39, label %mlx5e_rx_res_channels_init.exit.thread53.err_channels_destroy_crit_edge, label %if.end.i41

mlx5e_rx_res_channels_init.exit.thread53.err_channels_destroy_crit_edge: ; preds = %mlx5e_rx_res_channels_init.exit.thread53
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_channels_destroy

mlx5e_rx_res_channels_init.exit.thread57:         ; preds = %kvcalloc.exit.i.mlx5e_rx_res_channels_init.exit.thread57_crit_edge, %kvcalloc.exit.thread.i
  tail call void @mlx5e_tir_builder_free(ptr noundef nonnull %call.i30) #10
  br label %err_rss_destroy

mlx5e_rx_res_channels_init.exit:                  ; preds = %while.body130.i.mlx5e_rx_res_channels_init.exit_crit_edge, %err_destroy_direct_rqts.i.mlx5e_rx_res_channels_init.exit_crit_edge
  %129 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %channels.i, align 4
  tail call void @kvfree(ptr noundef %130) #10
  tail call void @mlx5e_tir_builder_free(ptr noundef nonnull %call.i30) #10
  br label %err_rss_destroy

if.end.i41:                                       ; preds = %mlx5e_rx_res_channels_init.exit.thread53
  %ptp.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11
  %131 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %res, align 4
  %133 = ptrtoint ptr %drop_rqn4 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %drop_rqn4, align 4
  %call2.i = tail call i32 @mlx5e_rqt_init_direct(ptr noundef %ptp.i, ptr noundef %132, i1 noundef zeroext false, i32 noundef %134) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i41.mlx5e_rx_res_ptp_init.exit.thread63_crit_edge

if.end.i41.mlx5e_rx_res_ptp_init.exit.thread63_crit_edge: ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_ptp_init.exit.thread63

if.end5.i:                                        ; preds = %if.end.i41
  %135 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %res, align 4
  %tdn.i42 = getelementptr inbounds %struct.mlx5_core_dev, ptr %136, i32 0, i32 20, i32 0, i32 1, i32 2
  %137 = ptrtoint ptr %tdn.i42 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tdn.i42, align 4
  %rqtn.i.i43 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11, i32 0, i32 1
  %139 = ptrtoint ptr %rqtn.i.i43 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rqtn.i.i43, align 4
  tail call void @mlx5e_tir_builder_build_rqt(ptr noundef nonnull %call.i38, i32 noundef %138, i32 noundef %140, i1 noundef zeroext %tobool.i37) #10
  tail call void @mlx5e_tir_builder_build_direct(ptr noundef nonnull %call.i38) #10
  %tir.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11, i32 1
  %141 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %res, align 4
  %call13.i = tail call i32 @mlx5e_tir_init(ptr noundef %tir.i, ptr noundef nonnull %call.i38, ptr noundef %142, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %mlx5e_rx_res_ptp_init.exit, label %err_destroy_ptp_rqt.i

err_destroy_ptp_rqt.i:                            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rqt_destroy(ptr noundef %ptp.i) #10
  br label %mlx5e_rx_res_ptp_init.exit.thread63

mlx5e_rx_res_ptp_init.exit.thread63:              ; preds = %err_destroy_ptp_rqt.i, %if.end.i41.mlx5e_rx_res_ptp_init.exit.thread63_crit_edge
  %err.0.i.ph = phi i32 [ %call13.i, %err_destroy_ptp_rqt.i ], [ %call2.i, %if.end.i41.mlx5e_rx_res_ptp_init.exit.thread63_crit_edge ]
  tail call void @mlx5e_tir_builder_free(ptr noundef nonnull %call.i38) #10
  br label %err_channels_destroy

mlx5e_rx_res_ptp_init.exit:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_tir_builder_free(ptr noundef nonnull %call.i38) #10
  br label %cleanup

err_channels_destroy:                             ; preds = %mlx5e_rx_res_ptp_init.exit.thread63, %mlx5e_rx_res_channels_init.exit.thread53.err_channels_destroy_crit_edge
  %retval.0.i4562 = phi i32 [ %err.0.i.ph, %mlx5e_rx_res_ptp_init.exit.thread63 ], [ -12, %mlx5e_rx_res_channels_init.exit.thread53.err_channels_destroy_crit_edge ]
  tail call fastcc void @mlx5e_rx_res_channels_destroy(ptr noundef %res)
  br label %err_rss_destroy

err_rss_destroy:                                  ; preds = %err_channels_destroy, %mlx5e_rx_res_channels_init.exit, %mlx5e_rx_res_channels_init.exit.thread57, %if.end.err_rss_destroy_crit_edge
  %err.0 = phi i32 [ %err.6.i, %mlx5e_rx_res_channels_init.exit ], [ %retval.0.i4562, %err_channels_destroy ], [ -12, %mlx5e_rx_res_channels_init.exit.thread57 ], [ -12, %if.end.err_rss_destroy_crit_edge ]
  %143 = ptrtoint ptr %rss1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rss1.i, align 4
  %call.i47 = tail call i32 @mlx5e_rss_cleanup(ptr noundef %144) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i, label %if.end.i48, label %err_rss_destroy.cleanup_crit_edge

err_rss_destroy.cleanup_crit_edge:                ; preds = %err_rss_destroy
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i48:                                       ; preds = %err_rss_destroy
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_free(ptr noundef %144) #10
  %145 = ptrtoint ptr %rss1.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %rss1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i48, %err_rss_destroy.cleanup_crit_edge, %mlx5e_rx_res_ptp_init.exit, %err_rss_free.i, %if.end24.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %mlx5e_rx_res_ptp_init.exit ], [ %err.0, %err_rss_destroy.cleanup_crit_edge ], [ %err.0, %if.end.i48 ], [ -12, %if.end24.i.cleanup_crit_edge ], [ %call29.i, %err_rss_free.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_rx_res_channels_destroy(ptr nocapture noundef readonly %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_nch = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %max_nch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_nch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %features = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ix.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %direct_tir = getelementptr %struct.anon.166, ptr %3, i32 %ix.020, i32 1
  tail call void @mlx5e_tir_destroy(ptr noundef %direct_tir) #10
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %arrayidx2 = getelementptr %struct.anon.166, ptr %5, i32 %ix.020
  tail call void @mlx5e_rqt_destroy(ptr noundef %arrayidx2) #10
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels, align 4
  %xsk_tir = getelementptr %struct.anon.166, ptr %9, i32 %ix.020, i32 3
  tail call void @mlx5e_tir_destroy(ptr noundef %xsk_tir) #10
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels, align 4
  %xsk_rqt = getelementptr %struct.anon.166, ptr %11, i32 %ix.020, i32 2
  tail call void @mlx5e_rqt_destroy(ptr noundef %xsk_rqt) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %ix.020, 1
  %12 = ptrtoint ptr %max_nch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_nch, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %channels7 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %14 = ptrtoint ptr %channels7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels7, align 4
  tail call void @kvfree(ptr noundef %15) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rx_res_destroy(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11
  %tir.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11, i32 1
  tail call void @mlx5e_tir_destroy(ptr noundef %tir.i) #10
  tail call void @mlx5e_rqt_destroy(ptr noundef %ptp.i) #10
  tail call fastcc void @mlx5e_rx_res_channels_destroy(ptr noundef %res)
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 %i.016.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i = tail call i32 @mlx5e_rss_cleanup(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %__mlx5e_rx_res_rss_destroy.exit.thread.i, label %if.then3.i

__mlx5e_rx_res_rss_destroy.exit.thread.i:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_free(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @mlx5e_rss_refcnt_read(ptr noundef nonnull %1) #10
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !76) #10
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 151, i32 noundef %12, i32 noundef %i.016.i, i32 noundef %call4.i, i32 noundef %call.i.i) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %__mlx5e_rx_res_rss_destroy.exit.thread.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %mlx5e_rx_res_rss_destroy_all.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mlx5e_rx_res_rss_destroy_all.exit:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rx_res_free(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %res) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_rx_res_get_tirn_direct(ptr nocapture noundef readonly %res, i32 noundef %ix) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  %tirn.i = getelementptr %struct.anon.166, ptr %1, i32 %ix, i32 1, i32 1
  %2 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tirn.i, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_get_tirn_xsk(ptr nocapture noundef readonly %res, i32 noundef %ix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !88

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 496, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %channels = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %tirn.i = getelementptr %struct.anon.166, ptr %3, i32 %ix, i32 3, i32 1
  %4 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tirn.i, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_get_tirn_rss(ptr nocapture noundef readonly %res, i32 noundef %tt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss1 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6
  %0 = ptrtoint ptr %rss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss1, align 4
  %call = tail call i32 @mlx5e_rss_get_tirn(ptr noundef %1, i32 noundef %tt, i1 noundef zeroext false) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_get_tirn(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr nocapture noundef readonly %res, i32 noundef %tt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss1 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6
  %0 = ptrtoint ptr %rss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss1, align 4
  %call = tail call i32 @mlx5e_rss_get_tirn(ptr noundef %1, i32 noundef %tt, i1 noundef zeroext true) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_get_tirn_ptp(ptr nocapture noundef readonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !88

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 517, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tirn.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11, i32 1, i32 1
  %2 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tirn.i, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rx_res_channels_activate(ptr noundef %res, ptr noundef %chs) local_unnamed_addr #0 align 64 {
entry:
  %rqn = alloca i32, align 4
  %rqn96 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_channels_get_num(ptr noundef %chs) #10
  %num = getelementptr inbounds %struct.mlx5e_channels, ptr %chs, i32 0, i32 2
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp189.not = icmp eq i32 %1, 0
  br i1 %cmp189.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ix.0190 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 8, i32 %ix.0190
  tail call void @mlx5e_channels_get_regular_rqn(ptr noundef %chs, i32 noundef %ix.0190, ptr noundef %arrayidx) #10
  %inc = add nuw i32 %ix.0190, 1
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %3, %for.body.for.end_crit_edge ]
  %rss_nch = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 9
  %4 = ptrtoint ptr %rss_nch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.lcssa, ptr %rss_nch, align 4
  %rss_active.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 7
  %5 = ptrtoint ptr %rss_active.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %rss_active.i, align 4
  %rss_rqns.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.end
  %i.08.i = phi i32 [ 0, %for.end ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 %i.08.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %rss_nch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rss_nch, align 4
  tail call void @mlx5e_rss_enable(ptr noundef nonnull %7, ptr noundef %rss_rqns.i, i32 noundef %9) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.cond2.preheader, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond2.preheader:                              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3191.not = icmp eq i32 %call, 0
  br i1 %cmp3191.not, label %for.cond2.preheader.for.cond39.preheader_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.cond39.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond39.preheader

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %channels = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %features = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  %drop_rqn = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 3
  br label %for.body4

for.cond39.preheader:                             ; preds = %cleanup.for.cond39.preheader_crit_edge, %for.cond2.preheader.for.cond39.preheader_crit_edge
  %max_nch = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 2
  %10 = ptrtoint ptr %max_nch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_nch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %11)
  %cmp40194 = icmp ult i32 %call, %11
  br i1 %cmp40194, label %for.body41.lr.ph, label %for.cond39.preheader.for.end91_crit_edge

for.cond39.preheader.for.end91_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.body41.lr.ph:                                 ; preds = %for.cond39.preheader
  %channels42 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %drop_rqn45 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 3
  %features63 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  br label %for.body41

for.body4:                                        ; preds = %cleanup.for.body4_crit_edge, %for.body4.lr.ph
  %ix.1192 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc37, %cleanup.for.body4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rqn) #10
  %12 = ptrtoint ptr %rqn to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %rqn, align 4, !annotation !89
  call void @mlx5e_channels_get_regular_rqn(ptr noundef %chs, i32 noundef %ix.1192, ptr noundef nonnull %rqn) #10
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels, align 4
  %arrayidx5 = getelementptr %struct.anon.166, ptr %14, i32 %ix.1192
  %15 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rqn, align 4
  %call6 = call i32 @mlx5e_rqt_redirect_direct(ptr noundef %arrayidx5, i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.body4.if.end_crit_edge, label %do.end

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %res, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 8
  %27 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %channels, align 4
  %rqtn.i = getelementptr %struct.anon.166, ptr %28, i32 %ix.1192, i32 0, i32 1
  %29 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rqtn.i, align 4
  %31 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rqn, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 547, i32 noundef %26, i32 noundef %30, i32 noundef %32, i32 noundef %ix.1192, i32 noundef %call6) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body4.if.end_crit_edge
  %33 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %features, align 4
  %and = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = call zeroext i1 @mlx5e_channels_get_xsk_rqn(ptr noundef %chs, i32 noundef %ix.1192, ptr noundef nonnull %rqn) #10
  br i1 %call15, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %drop_rqn, align 4
  %37 = ptrtoint ptr %rqn to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rqn, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %38 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channels, align 4
  %xsk_rqt = getelementptr %struct.anon.166, ptr %39, i32 %ix.1192, i32 2
  %40 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rqn, align 4
  %call20 = call i32 @mlx5e_rqt_redirect_direct(ptr noundef %xsk_rqt, i32 noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %do.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %res, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %46 = call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i181 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i181 to ptr
  %task29 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task29, align 8
  %pid30 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid30, align 8
  %52 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channels, align 4
  %rqtn.i182 = getelementptr %struct.anon.166, ptr %53, i32 %ix.1192, i32 2, i32 1
  %54 = ptrtoint ptr %rqtn.i182 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rqtn.i182, align 4
  %56 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rqn, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 558, i32 noundef %51, i32 noundef %55, i32 noundef %57, i32 noundef %ix.1192, i32 noundef %call20) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rqn) #10
  %inc37 = add nuw i32 %ix.1192, 1
  %exitcond.not = icmp eq i32 %inc37, %call
  br i1 %exitcond.not, label %cleanup.for.cond39.preheader_crit_edge, label %cleanup.for.body4_crit_edge

cleanup.for.body4_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

cleanup.for.cond39.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond39.preheader

for.body41:                                       ; preds = %for.inc89.for.body41_crit_edge, %for.body41.lr.ph
  %ix.2195 = phi i32 [ %call, %for.body41.lr.ph ], [ %inc90, %for.inc89.for.body41_crit_edge ]
  %58 = ptrtoint ptr %channels42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channels42, align 4
  %arrayidx43 = getelementptr %struct.anon.166, ptr %59, i32 %ix.2195
  %60 = ptrtoint ptr %drop_rqn45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %drop_rqn45, align 4
  %call46 = call i32 @mlx5e_rqt_redirect_direct(ptr noundef %arrayidx43, i32 noundef %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.body41.if.end62_crit_edge, label %do.end51

for.body41.if.end62_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

do.end51:                                         ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %res, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %66 = call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i183 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i183 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task55, align 8
  %pid56 = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 68
  %70 = ptrtoint ptr %pid56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pid56, align 8
  %72 = ptrtoint ptr %channels42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %channels42, align 4
  %rqtn.i184 = getelementptr %struct.anon.166, ptr %73, i32 %ix.2195, i32 0, i32 1
  %74 = ptrtoint ptr %rqtn.i184 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rqtn.i184, align 4
  %76 = ptrtoint ptr %drop_rqn45 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %drop_rqn45, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 565, i32 noundef %71, i32 noundef %75, i32 noundef %77, i32 noundef %ix.2195, i32 noundef %call46) #14
  br label %if.end62

if.end62:                                         ; preds = %do.end51, %for.body41.if.end62_crit_edge
  %78 = ptrtoint ptr %features63 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %features63, align 4
  %and64 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.for.inc89_crit_edge, label %if.end67

if.end62.for.inc89_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc89

if.end67:                                         ; preds = %if.end62
  %80 = ptrtoint ptr %channels42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %channels42, align 4
  %xsk_rqt70 = getelementptr %struct.anon.166, ptr %81, i32 %ix.2195, i32 2
  %82 = ptrtoint ptr %drop_rqn45 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %drop_rqn45, align 4
  %call72 = call i32 @mlx5e_rqt_redirect_direct(ptr noundef %xsk_rqt70, i32 noundef %83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end67.for.inc89_crit_edge, label %do.end77

if.end67.for.inc89_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc89

do.end77:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %res, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %88 = call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i185 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i185 to ptr
  %task81 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task81 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task81, align 8
  %pid82 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 68
  %92 = ptrtoint ptr %pid82 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pid82, align 8
  %94 = ptrtoint ptr %channels42 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %channels42, align 4
  %rqtn.i186 = getelementptr %struct.anon.166, ptr %95, i32 %ix.2195, i32 2, i32 1
  %96 = ptrtoint ptr %rqtn.i186 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rqtn.i186, align 4
  %98 = ptrtoint ptr %drop_rqn45 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %drop_rqn45, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef 574, i32 noundef %93, i32 noundef %97, i32 noundef %99, i32 noundef %ix.2195, i32 noundef %call72) #14
  br label %for.inc89

for.inc89:                                        ; preds = %do.end77, %if.end67.for.inc89_crit_edge, %if.end62.for.inc89_crit_edge
  %inc90 = add nuw i32 %ix.2195, 1
  %100 = ptrtoint ptr %max_nch to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_nch, align 4
  %cmp40 = icmp ult i32 %inc90, %101
  br i1 %cmp40, label %for.inc89.for.body41_crit_edge, label %for.inc89.for.end91_crit_edge

for.inc89.for.end91_crit_edge:                    ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end91

for.inc89.for.body41_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41

for.end91:                                        ; preds = %for.inc89.for.end91_crit_edge, %for.cond39.preheader.for.end91_crit_edge
  %features92 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  %102 = ptrtoint ptr %features92 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %features92, align 4
  %and93 = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %for.end91.if.end116_crit_edge, label %if.then95

for.end91.if.end116_crit_edge:                    ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then95:                                        ; preds = %for.end91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rqn96) #10
  %104 = ptrtoint ptr %rqn96 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %rqn96, align 4, !annotation !89
  %call97 = call zeroext i1 @mlx5e_channels_get_ptp_rqn(ptr noundef %chs, ptr noundef nonnull %rqn96) #10
  br i1 %call97, label %if.then95.if.end100_crit_edge, label %if.then98

if.then95.if.end100_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then98:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  %drop_rqn99 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 3
  %105 = ptrtoint ptr %drop_rqn99 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %drop_rqn99, align 4
  %107 = ptrtoint ptr %rqn96 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %rqn96, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.then95.if.end100_crit_edge
  %ptp = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11
  %108 = ptrtoint ptr %rqn96 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rqn96, align 4
  %call101 = call i32 @mlx5e_rqt_redirect_direct(ptr noundef %ptp, i32 noundef %109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end100.if.end115_crit_edge, label %do.end106

if.end100.if.end115_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %res, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %114 = call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i187 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i187 to ptr
  %task110 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task110, align 8
  %pid111 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 68
  %118 = ptrtoint ptr %pid111 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pid111, align 8
  %rqtn.i188 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11, i32 0, i32 1
  %120 = ptrtoint ptr %rqtn.i188 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rqtn.i188, align 4
  %122 = ptrtoint ptr %rqn96 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rqn96, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %113, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 587, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %call101) #14
  br label %if.end115

if.end115:                                        ; preds = %do.end106, %if.end100.if.end115_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rqn96) #10
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %for.end91.if.end116_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_channels_get_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_channels_get_regular_rqn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rqt_redirect_direct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_channels_get_xsk_rqn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_channels_get_ptp_rqn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rx_res_channels_deactivate(ptr noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_active.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 7
  %0 = ptrtoint ptr %rss_active.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rss_active.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 0
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.cleanup.i_crit_edge, label %if.end.i

entry.cleanup.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %2) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %entry.cleanup.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %4, null
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %4) #10
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %6, null
  br i1 %tobool.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %if.end.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.2.i

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %6) #10
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end.2.i, %cleanup.1.i.cleanup.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %8, null
  br i1 %tobool.not.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge, label %if.end.3.i

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.3.i

if.end.3.i:                                       ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %8) #10
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.end.3.i, %cleanup.2.i.cleanup.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 4
  %9 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %10, null
  br i1 %tobool.not.4.i, label %cleanup.3.i.cleanup.4.i_crit_edge, label %if.end.4.i

cleanup.3.i.cleanup.4.i_crit_edge:                ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.4.i

if.end.4.i:                                       ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %10) #10
  br label %cleanup.4.i

cleanup.4.i:                                      ; preds = %if.end.4.i, %cleanup.3.i.cleanup.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 5
  %11 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %12, null
  br i1 %tobool.not.5.i, label %cleanup.4.i.cleanup.5.i_crit_edge, label %if.end.5.i

cleanup.4.i.cleanup.5.i_crit_edge:                ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.5.i

if.end.5.i:                                       ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %12) #10
  br label %cleanup.5.i

cleanup.5.i:                                      ; preds = %if.end.5.i, %cleanup.4.i.cleanup.5.i_crit_edge
  %arrayidx.6.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 6
  %13 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %14, null
  br i1 %tobool.not.6.i, label %cleanup.5.i.cleanup.6.i_crit_edge, label %if.end.6.i

cleanup.5.i.cleanup.6.i_crit_edge:                ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.6.i

if.end.6.i:                                       ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %14) #10
  br label %cleanup.6.i

cleanup.6.i:                                      ; preds = %if.end.6.i, %cleanup.5.i.cleanup.6.i_crit_edge
  %arrayidx.7.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 7
  %15 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %16, null
  br i1 %tobool.not.7.i, label %cleanup.6.i.cleanup.7.i_crit_edge, label %if.end.7.i

cleanup.6.i.cleanup.7.i_crit_edge:                ; preds = %cleanup.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.7.i

if.end.7.i:                                       ; preds = %cleanup.6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %16) #10
  br label %cleanup.7.i

cleanup.7.i:                                      ; preds = %if.end.7.i, %cleanup.6.i.cleanup.7.i_crit_edge
  %arrayidx.8.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 8
  %17 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.8.i, align 4
  %tobool.not.8.i = icmp eq ptr %18, null
  br i1 %tobool.not.8.i, label %cleanup.7.i.cleanup.8.i_crit_edge, label %if.end.8.i

cleanup.7.i.cleanup.8.i_crit_edge:                ; preds = %cleanup.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.8.i

if.end.8.i:                                       ; preds = %cleanup.7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %18) #10
  br label %cleanup.8.i

cleanup.8.i:                                      ; preds = %if.end.8.i, %cleanup.7.i.cleanup.8.i_crit_edge
  %arrayidx.9.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 9
  %19 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.9.i, align 4
  %tobool.not.9.i = icmp eq ptr %20, null
  br i1 %tobool.not.9.i, label %cleanup.8.i.cleanup.9.i_crit_edge, label %if.end.9.i

cleanup.8.i.cleanup.9.i_crit_edge:                ; preds = %cleanup.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.9.i

if.end.9.i:                                       ; preds = %cleanup.8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %20) #10
  br label %cleanup.9.i

cleanup.9.i:                                      ; preds = %if.end.9.i, %cleanup.8.i.cleanup.9.i_crit_edge
  %arrayidx.10.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 10
  %21 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.10.i, align 4
  %tobool.not.10.i = icmp eq ptr %22, null
  br i1 %tobool.not.10.i, label %cleanup.9.i.cleanup.10.i_crit_edge, label %if.end.10.i

cleanup.9.i.cleanup.10.i_crit_edge:               ; preds = %cleanup.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.10.i

if.end.10.i:                                      ; preds = %cleanup.9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %22) #10
  br label %cleanup.10.i

cleanup.10.i:                                     ; preds = %if.end.10.i, %cleanup.9.i.cleanup.10.i_crit_edge
  %arrayidx.11.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 11
  %23 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.11.i, align 4
  %tobool.not.11.i = icmp eq ptr %24, null
  br i1 %tobool.not.11.i, label %cleanup.10.i.cleanup.11.i_crit_edge, label %if.end.11.i

cleanup.10.i.cleanup.11.i_crit_edge:              ; preds = %cleanup.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.11.i

if.end.11.i:                                      ; preds = %cleanup.10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %24) #10
  br label %cleanup.11.i

cleanup.11.i:                                     ; preds = %if.end.11.i, %cleanup.10.i.cleanup.11.i_crit_edge
  %arrayidx.12.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 12
  %25 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.12.i, align 4
  %tobool.not.12.i = icmp eq ptr %26, null
  br i1 %tobool.not.12.i, label %cleanup.11.i.cleanup.12.i_crit_edge, label %if.end.12.i

cleanup.11.i.cleanup.12.i_crit_edge:              ; preds = %cleanup.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.12.i

if.end.12.i:                                      ; preds = %cleanup.11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %26) #10
  br label %cleanup.12.i

cleanup.12.i:                                     ; preds = %if.end.12.i, %cleanup.11.i.cleanup.12.i_crit_edge
  %arrayidx.13.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 13
  %27 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.13.i, align 4
  %tobool.not.13.i = icmp eq ptr %28, null
  br i1 %tobool.not.13.i, label %cleanup.12.i.cleanup.13.i_crit_edge, label %if.end.13.i

cleanup.12.i.cleanup.13.i_crit_edge:              ; preds = %cleanup.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.13.i

if.end.13.i:                                      ; preds = %cleanup.12.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %28) #10
  br label %cleanup.13.i

cleanup.13.i:                                     ; preds = %if.end.13.i, %cleanup.12.i.cleanup.13.i_crit_edge
  %arrayidx.14.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 14
  %29 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.14.i, align 4
  %tobool.not.14.i = icmp eq ptr %30, null
  br i1 %tobool.not.14.i, label %cleanup.13.i.cleanup.14.i_crit_edge, label %if.end.14.i

cleanup.13.i.cleanup.14.i_crit_edge:              ; preds = %cleanup.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.14.i

if.end.14.i:                                      ; preds = %cleanup.13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %30) #10
  br label %cleanup.14.i

cleanup.14.i:                                     ; preds = %if.end.14.i, %cleanup.13.i.cleanup.14.i_crit_edge
  %arrayidx.15.i = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 15
  %31 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.15.i, align 4
  %tobool.not.15.i = icmp eq ptr %32, null
  br i1 %tobool.not.15.i, label %cleanup.14.i.mlx5e_rx_res_rss_disable.exit_crit_edge, label %if.end.15.i

cleanup.14.i.mlx5e_rx_res_rss_disable.exit_crit_edge: ; preds = %cleanup.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5e_rx_res_rss_disable.exit

if.end.15.i:                                      ; preds = %cleanup.14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5e_rss_disable(ptr noundef nonnull %32) #10
  br label %mlx5e_rx_res_rss_disable.exit

mlx5e_rx_res_rss_disable.exit:                    ; preds = %if.end.15.i, %cleanup.14.i.mlx5e_rx_res_rss_disable.exit_crit_edge
  %max_nch = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 2
  %33 = ptrtoint ptr %max_nch to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_nch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp86.not = icmp eq i32 %34, 0
  br i1 %cmp86.not, label %mlx5e_rx_res_rss_disable.exit.for.end_crit_edge, label %for.body.lr.ph

mlx5e_rx_res_rss_disable.exit.for.end_crit_edge:  ; preds = %mlx5e_rx_res_rss_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %mlx5e_rx_res_rss_disable.exit
  %channels = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %drop_rqn = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 3
  %features = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ix.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.anon.166, ptr %36, i32 %ix.087
  %37 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drop_rqn, align 4
  %call = tail call i32 @mlx5e_rqt_redirect_direct(ptr noundef %arrayidx, i32 noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %res, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid, align 8
  %49 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %channels, align 4
  %rqtn.i = getelementptr %struct.anon.166, ptr %50, i32 %ix.087, i32 0, i32 1
  %51 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rqtn.i, align 4
  %53 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %drop_rqn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18, i32 noundef 603, i32 noundef %48, i32 noundef %52, i32 noundef %54, i32 noundef %ix.087, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %55 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %features, align 4
  %and = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %57 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %channels, align 4
  %xsk_rqt = getelementptr %struct.anon.166, ptr %58, i32 %ix.087, i32 2
  %59 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %drop_rqn, align 4
  %call13 = tail call i32 @mlx5e_rqt_redirect_direct(ptr noundef %xsk_rqt, i32 noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end9.for.inc_crit_edge, label %do.end18

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %res, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %65 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i82 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i82 to ptr
  %task22 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task22, align 8
  %pid23 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 68
  %69 = ptrtoint ptr %pid23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pid23, align 8
  %71 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %channels, align 4
  %rqtn.i83 = getelementptr %struct.anon.166, ptr %72, i32 %ix.087, i32 2, i32 1
  %73 = ptrtoint ptr %rqtn.i83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rqtn.i83, align 4
  %75 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %drop_rqn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, i32 noundef 612, i32 noundef %70, i32 noundef %74, i32 noundef %76, i32 noundef %ix.087, i32 noundef %call13) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end18, %if.end9.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %ix.087, 1
  %77 = ptrtoint ptr %max_nch to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_nch, align 4
  %cmp = icmp ult i32 %inc, %78
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mlx5e_rx_res_rss_disable.exit.for.end_crit_edge
  %features30 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  %79 = ptrtoint ptr %features30 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %features30, align 4
  %and31 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %for.end.if.end51_crit_edge, label %if.then33

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then33:                                        ; preds = %for.end
  %ptp = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11
  %drop_rqn34 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 3
  %81 = ptrtoint ptr %drop_rqn34 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %drop_rqn34, align 4
  %call35 = tail call i32 @mlx5e_rqt_redirect_direct(ptr noundef %ptp, i32 noundef %82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.if.end51_crit_edge, label %do.end40

if.then33.if.end51_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %res, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %87 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i84 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i84 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task44, align 8
  %pid45 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 68
  %91 = ptrtoint ptr %pid45 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pid45, align 8
  %rqtn.i85 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 11, i32 0, i32 1
  %93 = ptrtoint ptr %rqtn.i85 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rqtn.i85, align 4
  %95 = ptrtoint ptr %drop_rqn34 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %drop_rqn34, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.18, i32 noundef 620, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %call35) #14
  br label %if.end51

if.end51:                                         ; preds = %do.end40, %if.then33.if.end51_crit_edge, %for.end.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_xsk_activate(ptr nocapture noundef readonly %res, ptr noundef %chs, i32 noundef %ix) local_unnamed_addr #0 align 64 {
entry:
  %rqn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rqn) #10
  %0 = ptrtoint ptr %rqn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rqn, align 4, !annotation !89
  %call = call zeroext i1 @mlx5e_channels_get_xsk_rqn(ptr noundef %chs, i32 noundef %ix, ptr noundef nonnull %rqn) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %channels = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %1 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channels, align 4
  %xsk_rqt = getelementptr %struct.anon.166, ptr %2, i32 %ix, i32 2
  %3 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rqn, align 4
  %call1 = call i32 @mlx5e_rqt_redirect_direct(ptr noundef %xsk_rqt, i32 noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %channels, align 4
  %rqtn.i = getelementptr %struct.anon.166, ptr %16, i32 %ix, i32 2, i32 1
  %17 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rqtn.i, align 4
  %19 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rqn, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 637, i32 noundef %14, i32 noundef %18, i32 noundef %20, i32 noundef %ix, i32 noundef %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rqn) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_xsk_deactivate(ptr nocapture noundef readonly %res, i32 noundef %ix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 4
  %xsk_rqt = getelementptr %struct.anon.166, ptr %1, i32 %ix, i32 2
  %drop_rqn = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 3
  %2 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drop_rqn, align 4
  %call = tail call i32 @mlx5e_rqt_redirect_direct(ptr noundef %xsk_rqt, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels, align 4
  %rqtn.i = getelementptr %struct.anon.166, ptr %15, i32 %ix, i32 2, i32 1
  %16 = ptrtoint ptr %rqtn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rqtn.i, align 4
  %18 = ptrtoint ptr %drop_rqn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drop_rqn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26, i32 noundef 649, i32 noundef %13, i32 noundef %17, i32 noundef %19, i32 noundef %ix, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_packet_merge_set_param(ptr noundef %res, ptr noundef %pkt_merge_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext true) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.end:                                           ; preds = %entry
  %pkt_merge_param_sem = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 5
  tail call void @down_write(ptr noundef %pkt_merge_param_sem) #10
  %pkt_merge_param1 = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %pkt_merge_param1, ptr %pkt_merge_param, i32 12)
  tail call void @mlx5e_tir_builder_build_packet_merge(ptr noundef nonnull %call, ptr noundef %pkt_merge_param) #10
  br label %for.body

for.cond11.preheader:                             ; preds = %cleanup
  %max_nch = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 2
  %1 = ptrtoint ptr %max_nch to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_nch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1264.not = icmp eq i32 %2, 0
  br i1 %cmp1264.not, label %for.cond11.preheader.for.end29_crit_edge, label %for.body13.lr.ph

for.cond11.preheader.for.end29_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

for.body13.lr.ph:                                 ; preds = %for.cond11.preheader
  %channels = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  br label %for.body13

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %ix.063 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.for.body_crit_edge ]
  %final_err.062 = phi i32 [ 0, %if.end ], [ %final_err.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6, i32 %ix.063
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @mlx5e_rss_packet_merge_set_param(ptr noundef nonnull %4, ptr noundef %pkt_merge_param) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final_err.062)
  %tobool9.not = icmp eq i32 %final_err.062, 0
  %spec.select = select i1 %tobool9.not, i32 %call6, i32 %final_err.062
  %final_err.1 = select i1 %tobool7.not, i32 %final_err.062, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %for.body.cleanup_crit_edge
  %final_err.2 = phi i32 [ %final_err.1, %if.end5 ], [ %final_err.062, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %ix.063, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond11.preheader, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body13:                                       ; preds = %for.inc27.for.body13_crit_edge, %for.body13.lr.ph
  %ix.166 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc28, %for.inc27.for.body13_crit_edge ]
  %final_err.365 = phi i32 [ %final_err.2, %for.body13.lr.ph ], [ %final_err.4, %for.inc27.for.body13_crit_edge ]
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channels, align 4
  %direct_tir = getelementptr %struct.anon.166, ptr %6, i32 %ix.166, i32 1
  %call15 = tail call i32 @mlx5e_tir_modify(ptr noundef %direct_tir, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.body13.for.inc27_crit_edge, label %do.end

for.body13.for.inc27_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27

do.end:                                           ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channels, align 4
  %tirn.i = getelementptr %struct.anon.166, ptr %18, i32 %ix.166, i32 1, i32 1
  %19 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tirn.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 686, i32 noundef %16, i32 noundef %20, i32 noundef %ix.166, i32 noundef %call15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %final_err.365)
  %tobool23.not = icmp eq i32 %final_err.365, 0
  %spec.select61 = select i1 %tobool23.not, i32 %call15, i32 %final_err.365
  br label %for.inc27

for.inc27:                                        ; preds = %do.end, %for.body13.for.inc27_crit_edge
  %final_err.4 = phi i32 [ %final_err.365, %for.body13.for.inc27_crit_edge ], [ %spec.select61, %do.end ]
  %inc28 = add nuw i32 %ix.166, 1
  %21 = ptrtoint ptr %max_nch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_nch, align 4
  %cmp12 = icmp ult i32 %inc28, %22
  br i1 %cmp12, label %for.inc27.for.body13_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

for.inc27.for.body13_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %for.cond11.preheader.for.end29_crit_edge
  %final_err.3.lcssa = phi i32 [ %final_err.2, %for.cond11.preheader.for.end29_crit_edge ], [ %final_err.4, %for.inc27.for.end29_crit_edge ]
  tail call void @up_write(ptr noundef %pkt_merge_param_sem) #10
  tail call void @mlx5e_tir_builder_free(ptr noundef nonnull %call) #10
  br label %cleanup31

cleanup31:                                        ; preds = %for.end29, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ %final_err.3.lcssa, %for.end29 ], [ -12, %entry.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_build_packet_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_packet_merge_set_param(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tir_modify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rx_res_get_current_hash(ptr noalias sret(%struct.mlx5e_rss_params_hash) align 1 %agg.result, ptr nocapture noundef readonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 6
  %0 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss, align 4
  tail call void @mlx5e_rss_get_hash(ptr sret(%struct.mlx5e_rss_params_hash) align 1 %agg.result, ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rss_get_hash(ptr sret(%struct.mlx5e_rss_params_hash) align 1, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rx_res_tls_tir_create(ptr noundef %res, i32 noundef %rxq, ptr noundef %tir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %call = tail call ptr @mlx5e_tir_builder_alloc(i1 noundef zeroext false) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %channels.i = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 10
  %2 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels.i, align 4
  %rqtn.i.i = getelementptr %struct.anon.166, ptr %3, i32 %rxq, i32 0, i32 1
  %4 = ptrtoint ptr %rqtn.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rqtn.i.i, align 4
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  %tdn = getelementptr inbounds %struct.mlx5_core_dev, ptr %7, i32 0, i32 20, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %tdn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tdn, align 4
  tail call void @mlx5e_tir_builder_build_rqt(ptr noundef nonnull %call, i32 noundef %9, i32 noundef %5, i1 noundef zeroext %tobool) #10
  tail call void @mlx5e_tir_builder_build_direct(ptr noundef nonnull %call) #10
  tail call void @mlx5e_tir_builder_build_tls(ptr noundef nonnull %call) #10
  %pkt_merge_param_sem = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 5
  tail call void @down_read(ptr noundef %pkt_merge_param_sem) #10
  %pkt_merge_param = getelementptr inbounds %struct.mlx5e_rx_res, ptr %res, i32 0, i32 4
  tail call void @mlx5e_tir_builder_build_packet_merge(ptr noundef nonnull %call, ptr noundef %pkt_merge_param) #10
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res, align 4
  %call5 = tail call i32 @mlx5e_tir_init(ptr noundef %tir, ptr noundef nonnull %call, ptr noundef %11, i1 noundef zeroext false) #10
  tail call void @up_read(ptr noundef %pkt_merge_param_sem) #10
  tail call void @mlx5e_tir_builder_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_build_rqt(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_build_direct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_build_tls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tir_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_init(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rqt_init_direct(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_builder_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rqt_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_refcnt_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rss_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 189, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx5e_rx_res_init.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 453, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 545, i32 4}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5e_rx_res_channels_activate._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @mlx5e_rx_res_channels_activate._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 556, i32 4}
!15 = !{ptr @mlx5e_rx_res_channels_activate._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5e_rx_res_channels_activate._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 563, i32 4}
!19 = !{ptr @mlx5e_rx_res_channels_activate._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlx5e_rx_res_channels_activate._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 572, i32 4}
!23 = !{ptr @mlx5e_rx_res_channels_activate._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5e_rx_res_channels_activate._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 585, i32 4}
!27 = !{ptr @mlx5e_rx_res_channels_activate._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mlx5e_rx_res_channels_activate._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 601, i32 4}
!31 = !{ptr @mlx5e_rx_res_channels_deactivate._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mlx5e_rx_res_channels_deactivate._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mlx5e_rx_res_channels_deactivate._entry.19, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 610, i32 4}
!35 = !{ptr @mlx5e_rx_res_channels_deactivate._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 618, i32 4}
!38 = !{ptr @mlx5e_rx_res_channels_deactivate._entry.21, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlx5e_rx_res_channels_deactivate._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 635, i32 3}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mlx5e_rx_res_xsk_activate._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlx5e_rx_res_xsk_activate._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 647, i32 3}
!47 = !{ptr @mlx5e_rx_res_xsk_deactivate._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlx5e_rx_res_xsk_deactivate._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 685, i32 4}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlx5e_rx_res_packet_merge_set_param._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mlx5e_rx_res_packet_merge_set_param._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 300, i32 4}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mlx5e_rx_res_channels_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mlx5e_rx_res_channels_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 315, i32 4}
!61 = !{ptr @mlx5e_rx_res_channels_init._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mlx5e_rx_res_channels_init._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 330, i32 4}
!65 = !{ptr @mlx5e_rx_res_channels_init._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mlx5e_rx_res_channels_init._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 345, i32 4}
!69 = !{ptr @mlx5e_rx_res_channels_init._entry.37, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mlx5e_rx_res_channels_init._entry_ptr.39, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rx_res.c", i32 149, i32 4}
!73 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mlx5e_rx_res_rss_destroy_all._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mlx5e_rx_res_rss_destroy_all._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i8 0, i8 2}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{!"auto-init"}
