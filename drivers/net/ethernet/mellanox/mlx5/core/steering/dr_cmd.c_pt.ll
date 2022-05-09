; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_cmd.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.168, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.146] }
%struct.anon.146 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.147 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.147 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.168 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.mlx5dr_cmd_query_flow_table_details = type { i8, i8, i64, i64 }
%struct.mlx5dr_cmd_create_flow_table_attr = type { i32, i64, i64, i8, i8, i8, i8, i8 }
%struct.mlx5dr_cmd_gid_attr = type { [16 x i8], [6 x i8], i32 }
%struct.mlx5dr_cmd_fte_info = type { i32, i32, %struct.mlx5_flow_context, ptr, %struct.mlx5_flow_act, ptr, i8 }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.177, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.177 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5dr_cmd_flow_destination_hw_info = type { i32, %union.anon.201 }
%union.anon.201 = type { %struct.anon.202 }
%struct.anon.202 = type { i16, i16, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5dr_cmd_ft_info = type { i32, i16, i32 }
%struct.mlx5_pkt_reformat = type { i32, i32, %union.anon.145 }
%union.anon.145 = type { %struct.mlx5_fs_dr_action }
%struct.mlx5_fs_dr_action = type { ptr }
%struct.mlx5_modify_hdr = type { i32, %union.anon.176 }
%union.anon.176 = type { %struct.mlx5_fs_dr_action }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5dr_cmd_set_extended_dest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): FW does not support extended destination\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5dr_cmd_set_extended_dest\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_cmd.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5dr_cmd_set_extended_dest._entry_ptr = internal global ptr @mlx5dr_cmd_set_extended_dest._entry, section ".printk_index", align 4
@mlx5dr_cmd_set_extended_dest._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): FW does not support more than %d encaps\00", [40 x i8] zeroinitializer }, align 32
@mlx5dr_cmd_set_extended_dest._entry_ptr.7 = internal global ptr @mlx5dr_cmd_set_extended_dest._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 256]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 6, i64 8, i64 256, i64 257]
@__sancov_gen_cov_switch_values.10 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 620, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [61 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_cmd.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 624, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @mlx5dr_cmd_set_extended_dest._entry, ptr @mlx5dr_cmd_set_extended_dest._entry.5, ptr @mlx5dr_cmd_set_extended_dest._entry_ptr, ptr @mlx5dr_cmd_set_extended_dest._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_cmd_set_extended_dest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_cmd_set_extended_dest._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_query_esw_vport_context(ptr noundef %mdev, i1 noundef zeroext %other_vport, i16 noundef zeroext %vport_number, ptr nocapture noundef writeonly %icm_address_rx, ptr nocapture noundef writeonly %icm_address_tx) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [68 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 272)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #8
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 122814464, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %shl16 = select i1 %other_vport, i32 -2147483648, i32 0
  %conv24 = zext i16 %vport_number to i32
  %or17 = or i32 %shl16, %conv24
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or17, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 272) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp eq i32 %call, 0
  br i1 %tobool40.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42 = getelementptr inbounds i64, ptr %out, i32 32
  %5 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr42, align 8
  %7 = ptrtoint ptr %icm_address_rx to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %icm_address_rx, align 8
  %add.ptr44 = getelementptr inbounds i64, ptr %out, i32 33
  %8 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr44, align 8
  %10 = ptrtoint ptr %icm_address_tx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %icm_address_tx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out) #8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_query_gvmi(ptr noundef %mdev, i1 noundef zeroext %other_vport, i16 noundef zeroext %vport_number, ptr nocapture noundef writeonly %gvmi) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #8
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4112) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in, align 4
  %and = and i32 %3, 65535
  %or = or i32 %and, 16777216
  store i32 %or, ptr %in, align 4
  %add.ptr14 = getelementptr inbounds i32, ptr %in, i32 2
  %4 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr14, align 4
  %and15 = and i32 %5, 2147418112
  %shl17 = select i1 %other_vport, i32 -2147483648, i32 0
  %conv25 = zext i16 %vport_number to i32
  %or18 = or i32 %shl17, %conv25
  %or34 = or i32 %or18, %and15
  store i32 %or34, ptr %add.ptr14, align 4
  %add.ptr45 = getelementptr inbounds i32, ptr %in, i32 1
  %6 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr45, align 4
  %and46 = and i32 %7, -65536
  %or49 = or i32 %and46, 1
  store i32 %or49, ptr %add.ptr45, align 4
  %call55 = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %call7.i.i, i32 noundef 4112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end58:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr59 = getelementptr i32, ptr %call7.i.i, i32 5
  %8 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr59, align 4
  %conv61 = trunc i32 %9 to i16
  %10 = ptrtoint ptr %gvmi to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv61, ptr %gvmi, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end58, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end58 ], [ %call55, %do.body.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5dr_cmd_query_esw_caps(ptr nocapture noundef readonly %mdev, ptr nocapture noundef %caps) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i64, ptr %1, i32 96
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %caps, align 8
  %5 = load ptr, ptr %arrayidx, align 8
  %add.ptr7 = getelementptr i64, ptr %5, i32 97
  %6 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr7, align 8
  %drop_icm_address_tx = getelementptr inbounds %struct.mlx5dr_esw_caps, ptr %caps, i32 0, i32 1
  %8 = ptrtoint ptr %drop_icm_address_tx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %drop_icm_address_tx, align 8
  %9 = load ptr, ptr %arrayidx, align 8
  %add.ptr13 = getelementptr i64, ptr %9, i32 98
  %10 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr13, align 8
  %uplink_icm_address_rx = getelementptr inbounds %struct.mlx5dr_esw_caps, ptr %caps, i32 0, i32 2
  %12 = ptrtoint ptr %uplink_icm_address_rx to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %uplink_icm_address_rx, align 8
  %13 = load ptr, ptr %arrayidx, align 8
  %add.ptr19 = getelementptr i64, ptr %13, i32 99
  %14 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr19, align 8
  %uplink_icm_address_tx = getelementptr inbounds %struct.mlx5dr_esw_caps, ptr %caps, i32 0, i32 3
  %16 = ptrtoint ptr %uplink_icm_address_tx to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %uplink_icm_address_tx, align 8
  %17 = load ptr, ptr %arrayidx, align 8
  %add.ptr25 = getelementptr i32, ptr %17, i32 16
  %18 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr25, align 4
  %20 = trunc i32 %19 to i8
  %sw_owner_v2 = getelementptr inbounds %struct.mlx5dr_esw_caps, ptr %caps, i32 0, i32 4
  %21 = ptrtoint ptr %sw_owner_v2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %sw_owner_v2, align 8
  %22 = shl i8 %20, 5
  %bf.shl = and i8 %22, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %sw_owner_v2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl)
  %tobool.not = icmp eq i8 %bf.shl, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 8
  %add.ptr34 = getelementptr i32, ptr %24, i32 16
  %25 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr34, align 4
  %sh.diff = lshr i32 %26, 7
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl40 = and i8 %tr.sh.diff, -128
  %bf.clear41 = and i8 %bf.set, 127
  %bf.set42 = or i8 %bf.shl40, %bf.clear41
  %27 = ptrtoint ptr %sw_owner_v2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set42, ptr %sw_owner_v2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_query_device(ptr noundef %mdev, ptr noundef %caps) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [68 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps1, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %prio_tag_required = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 31
  %4 = trunc i32 %3 to i8
  %5 = lshr i8 %4, 7
  %6 = ptrtoint ptr %prio_tag_required to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %prio_tag_required, align 8
  %7 = load ptr, ptr %caps1, align 8
  %add.ptr7 = getelementptr i32, ptr %7, i32 13
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr7, align 4
  %eswitch_manager = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 24
  %10 = lshr i32 %9, 24
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = ptrtoint ptr %eswitch_manager to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %eswitch_manager, align 1
  %14 = load ptr, ptr %caps1, align 8
  %add.ptr17 = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr17, align 4
  %conv = trunc i32 %16 to i16
  %17 = ptrtoint ptr %caps to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %caps, align 8
  %18 = load ptr, ptr %caps1, align 8
  %add.ptr25 = getelementptr i32, ptr %18, i32 42
  %19 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr25, align 4
  %flex_protocols = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 8
  %21 = ptrtoint ptr %flex_protocols to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flex_protocols, align 8
  %22 = load ptr, ptr %caps1, align 8
  %add.ptr33 = getelementptr i32, ptr %22, i32 34
  %23 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr33, align 4
  %shr34 = lshr i32 %24, 24
  %25 = trunc i32 %shr34 to i8
  %conv36 = and i8 %25, 15
  %sw_format_ver = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 23
  %26 = ptrtoint ptr %sw_format_ver to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %sw_format_ver, align 4
  %27 = load ptr, ptr %caps1, align 8
  %add.ptr42 = getelementptr i32, ptr %27, i32 16
  %28 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr42, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool45.not = icmp eq i32 %30, 0
  br i1 %tobool45.not, label %entry.if.end80_crit_edge, label %if.then

entry.if.end80_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %out.i) #8
  %31 = call ptr @memset(ptr %out.i, i32 0, i32 272)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #8
  %32 = getelementptr inbounds i8, ptr %in.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 12)
  %34 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 122945536, ptr %in.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 272) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool40.not.i, label %if.end, label %dr_cmd_query_nic_vport_roce_en.exit

dr_cmd_query_nic_vport_roce_en.exit:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i = getelementptr inbounds i32, ptr %out.i, i32 4
  %35 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr42.i, align 4
  %37 = trunc i32 %36 to i8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i) #8
  %roce_caps = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 32
  %38 = ptrtoint ptr %roce_caps to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %roce_caps, align 1
  %39 = shl i8 %37, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %39
  store i8 %bf.set, ptr %roce_caps, align 1
  %arrayidx52 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 4
  %40 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx52, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %sh.diff443 = lshr i32 %43, 20
  %tr.sh.diff444 = trunc i32 %sh.diff443 to i8
  %bf.shl62 = and i8 %tr.sh.diff444, 64
  %bf.clear63 = and i8 %bf.set, -65
  %bf.set64 = or i8 %bf.shl62, %bf.clear63
  store i8 %bf.set64, ptr %roce_caps, align 1
  %44 = load ptr, ptr %arrayidx52, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %sh.diff445 = lshr i32 %46, 20
  %tr.sh.diff446 = trunc i32 %sh.diff445 to i8
  %bf.shl77 = and i8 %tr.sh.diff446, 32
  %bf.clear78 = and i8 %bf.set64, -33
  %bf.set79 = or i8 %bf.shl77, %bf.clear78
  store i8 %bf.set79, ptr %roce_caps, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.end, %entry.if.end80_crit_edge
  %47 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %caps1, align 8
  %add.ptr86 = getelementptr i32, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr86, align 4
  %isolate_vl_tc = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 33
  %51 = ptrtoint ptr %isolate_vl_tc to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load90 = load i8, ptr %isolate_vl_tc, align 2
  %sh.diff = lshr i32 %50, 6
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl92 = and i8 %tr.sh.diff, 64
  %bf.clear93 = and i8 %bf.load90, -65
  %bf.set94 = or i8 %bf.shl92, %bf.clear93
  store i8 %bf.set94, ptr %isolate_vl_tc, align 2
  %arrayidx97 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 7
  %52 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx97, align 4
  %add.ptr100 = getelementptr i32, ptr %53, i32 26
  %54 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr100, align 4
  %shr101 = lshr i32 %55, 30
  %56 = trunc i32 %shr101 to i8
  %conv103 = and i8 %56, 1
  %flex_parser_ok_bits_supp = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 20
  %57 = ptrtoint ptr %flex_parser_ok_bits_supp to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv103, ptr %flex_parser_ok_bits_supp, align 1
  %58 = ptrtoint ptr %flex_protocols to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flex_protocols, align 8
  %and105 = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end80.if.end126_crit_edge, label %if.then107

if.end80.if.end126_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then107:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %caps1, align 8
  %add.ptr113 = getelementptr i32, ptr %61, i32 54
  %62 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr113, align 4
  %shr114 = lshr i32 %63, 16
  %64 = trunc i32 %shr114 to i8
  %conv116 = and i8 %64, 15
  %flex_parser_id_icmp_dw0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 9
  %65 = ptrtoint ptr %flex_parser_id_icmp_dw0 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv116, ptr %flex_parser_id_icmp_dw0, align 4
  %66 = load ptr, ptr %caps1, align 8
  %add.ptr122 = getelementptr i32, ptr %66, i32 54
  %67 = ptrtoint ptr %add.ptr122 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr122, align 4
  %shr123 = lshr i32 %68, 20
  %69 = trunc i32 %shr123 to i8
  %conv125 = and i8 %69, 15
  %flex_parser_id_icmp_dw1 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 10
  %70 = ptrtoint ptr %flex_parser_id_icmp_dw1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv125, ptr %flex_parser_id_icmp_dw1, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then107, %if.end80.if.end126_crit_edge
  %and128 = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end149_crit_edge, label %if.then130

if.end126.if.end149_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %caps1, align 8
  %add.ptr136 = getelementptr i32, ptr %72, i32 54
  %73 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr136, align 4
  %shr137 = lshr i32 %74, 8
  %75 = trunc i32 %shr137 to i8
  %conv139 = and i8 %75, 15
  %flex_parser_id_icmpv6_dw0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 11
  %76 = ptrtoint ptr %flex_parser_id_icmpv6_dw0 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv139, ptr %flex_parser_id_icmpv6_dw0, align 2
  %77 = load ptr, ptr %caps1, align 8
  %add.ptr145 = getelementptr i32, ptr %77, i32 54
  %78 = ptrtoint ptr %add.ptr145 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr145, align 4
  %shr146 = lshr i32 %79, 12
  %80 = trunc i32 %shr146 to i8
  %conv148 = and i8 %80, 15
  %flex_parser_id_icmpv6_dw1 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 12
  %81 = ptrtoint ptr %flex_parser_id_icmpv6_dw1 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv148, ptr %flex_parser_id_icmpv6_dw1, align 1
  br label %if.end149

if.end149:                                        ; preds = %if.then130, %if.end126.if.end149_crit_edge
  %and151 = and i32 %59, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end149.if.end163_crit_edge, label %if.then153

if.end149.if.end163_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then153:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %caps1, align 8
  %add.ptr159 = getelementptr i32, ptr %83, i32 54
  %84 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr159, align 4
  %shr160 = lshr i32 %85, 24
  %86 = trunc i32 %shr160 to i8
  %conv162 = and i8 %86, 15
  %flex_parser_id_geneve_tlv_option_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 13
  %87 = ptrtoint ptr %flex_parser_id_geneve_tlv_option_0 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv162, ptr %flex_parser_id_geneve_tlv_option_0, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then153, %if.end149.if.end163_crit_edge
  %and165 = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end163.if.end177_crit_edge, label %if.then167

if.end163.if.end177_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %caps1, align 8
  %add.ptr173 = getelementptr i32, ptr %89, i32 54
  %90 = ptrtoint ptr %add.ptr173 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr173, align 4
  %92 = trunc i32 %91 to i8
  %93 = lshr i8 %92, 4
  %flex_parser_id_mpls_over_gre = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 14
  %94 = ptrtoint ptr %flex_parser_id_mpls_over_gre to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %flex_parser_id_mpls_over_gre, align 1
  br label %if.end177

if.end177:                                        ; preds = %if.then167, %if.end163.if.end177_crit_edge
  %and179 = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end177.if.end191_crit_edge, label %if.then181

if.end177.if.end191_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.then181:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %caps1, align 8
  %add.ptr187 = getelementptr i32, ptr %96, i32 54
  %97 = ptrtoint ptr %add.ptr187 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr187, align 4
  %99 = trunc i32 %98 to i8
  %conv190 = and i8 %99, 15
  %flex_parser_id_mpls_over_udp = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 15
  %100 = ptrtoint ptr %flex_parser_id_mpls_over_udp to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv190, ptr %flex_parser_id_mpls_over_udp, align 2
  br label %if.end191

if.end191:                                        ; preds = %if.then181, %if.end177.if.end191_crit_edge
  %and193 = and i32 %59, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end191.if.end205_crit_edge, label %if.then195

if.end191.if.end205_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %caps1, align 8
  %add.ptr201 = getelementptr i32, ptr %102, i32 47
  %103 = ptrtoint ptr %add.ptr201 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr201, align 4
  %shr202 = lshr i32 %104, 20
  %105 = trunc i32 %shr202 to i8
  %conv204 = and i8 %105, 15
  %flex_parser_id_gtpu_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 16
  %106 = ptrtoint ptr %flex_parser_id_gtpu_dw_0 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv204, ptr %flex_parser_id_gtpu_dw_0, align 1
  br label %if.end205

if.end205:                                        ; preds = %if.then195, %if.end191.if.end205_crit_edge
  %and207 = and i32 %59, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %if.end205.if.end219_crit_edge, label %if.then209

if.end205.if.end219_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end219

if.then209:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %caps1, align 8
  %add.ptr215 = getelementptr i32, ptr %108, i32 48
  %109 = ptrtoint ptr %add.ptr215 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr215, align 4
  %111 = trunc i32 %110 to i8
  %112 = lshr i8 %111, 4
  %flex_parser_id_gtpu_teid = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 17
  %113 = ptrtoint ptr %flex_parser_id_gtpu_teid to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %flex_parser_id_gtpu_teid, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then209, %if.end205.if.end219_crit_edge
  %and221 = and i32 %59, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.end219.if.end233_crit_edge, label %if.then223

if.end219.if.end233_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end233

if.then223:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %caps1, align 8
  %add.ptr229 = getelementptr i32, ptr %115, i32 56
  %116 = ptrtoint ptr %add.ptr229 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr229, align 4
  %shr230 = lshr i32 %117, 28
  %conv232 = trunc i32 %shr230 to i8
  %flex_parser_id_gtpu_dw_2 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 18
  %118 = ptrtoint ptr %flex_parser_id_gtpu_dw_2 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv232, ptr %flex_parser_id_gtpu_dw_2, align 1
  br label %if.end233

if.end233:                                        ; preds = %if.then223, %if.end219.if.end233_crit_edge
  %and235 = and i32 %59, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  br i1 %tobool236.not, label %if.end233.if.end247_crit_edge, label %if.then237

if.end233.if.end247_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

if.then237:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %caps1, align 8
  %add.ptr243 = getelementptr i32, ptr %120, i32 56
  %121 = ptrtoint ptr %add.ptr243 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr243, align 4
  %shr244 = lshr i32 %122, 24
  %123 = trunc i32 %shr244 to i8
  %conv246 = and i8 %123, 15
  %flex_parser_id_gtpu_first_ext_dw_0 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 19
  %124 = ptrtoint ptr %flex_parser_id_gtpu_first_ext_dw_0 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv246, ptr %flex_parser_id_gtpu_first_ext_dw_0, align 2
  br label %if.end247

if.end247:                                        ; preds = %if.then237, %if.end233.if.end247_crit_edge
  %125 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx97, align 4
  %add.ptr253 = getelementptr i64, ptr %126, i32 128
  %127 = ptrtoint ptr %add.ptr253 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %add.ptr253, align 8
  %nic_rx_drop_address = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 1
  %129 = ptrtoint ptr %nic_rx_drop_address to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %nic_rx_drop_address, align 8
  %130 = load ptr, ptr %arrayidx97, align 4
  %add.ptr259 = getelementptr i64, ptr %130, i32 129
  %131 = ptrtoint ptr %add.ptr259 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %add.ptr259, align 8
  %nic_tx_drop_address = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 2
  %133 = ptrtoint ptr %nic_tx_drop_address to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %nic_tx_drop_address, align 8
  %134 = load ptr, ptr %arrayidx97, align 4
  %add.ptr265 = getelementptr i64, ptr %134, i32 130
  %135 = ptrtoint ptr %add.ptr265 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %add.ptr265, align 8
  %nic_tx_allow_address = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 3
  %137 = ptrtoint ptr %nic_tx_allow_address to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %nic_tx_allow_address, align 8
  %138 = load ptr, ptr %arrayidx97, align 4
  %add.ptr271 = getelementptr i32, ptr %138, i32 16
  %139 = ptrtoint ptr %add.ptr271 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr271, align 4
  %141 = trunc i32 %140 to i8
  %rx_sw_owner_v2 = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 28
  %142 = ptrtoint ptr %rx_sw_owner_v2 to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load275 = load i8, ptr %rx_sw_owner_v2, align 1
  %143 = shl i8 %141, 6
  %bf.shl277 = and i8 %143, -128
  %bf.clear278 = and i8 %bf.load275, 127
  %bf.set279 = or i8 %bf.shl277, %bf.clear278
  store i8 %bf.set279, ptr %rx_sw_owner_v2, align 1
  %144 = load ptr, ptr %arrayidx97, align 4
  %add.ptr285 = getelementptr i32, ptr %144, i32 64
  %145 = ptrtoint ptr %add.ptr285 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr285, align 4
  %147 = trunc i32 %146 to i8
  %148 = shl i8 %147, 5
  %bf.shl291 = and i8 %148, 64
  %bf.clear292 = and i8 %bf.set279, -65
  %bf.set293 = or i8 %bf.shl291, %bf.clear292
  store i8 %bf.set293, ptr %rx_sw_owner_v2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %143)
  %tobool296.not = icmp sgt i8 %143, -1
  br i1 %tobool296.not, label %if.then297, label %if.end247.if.end308_crit_edge

if.end247.if.end308_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308

if.then297:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx97, align 4
  %add.ptr303 = getelementptr i32, ptr %150, i32 16
  %151 = ptrtoint ptr %add.ptr303 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr303, align 4
  %rx_sw_owner = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 25
  %153 = lshr i32 %152, 14
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = ptrtoint ptr %rx_sw_owner to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %rx_sw_owner, align 2
  br label %if.end308

if.end308:                                        ; preds = %if.then297, %if.end247.if.end308_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl291)
  %tobool313.not = icmp eq i8 %bf.shl291, 0
  br i1 %tobool313.not, label %if.then314, label %if.end308.if.end325_crit_edge

if.end308.if.end325_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end325

if.then314:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx97, align 4
  %add.ptr320 = getelementptr i32, ptr %158, i32 64
  %159 = ptrtoint ptr %add.ptr320 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %add.ptr320, align 4
  %tx_sw_owner = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 26
  %161 = lshr i32 %160, 14
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = ptrtoint ptr %tx_sw_owner to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %tx_sw_owner, align 1
  br label %if.end325

if.end325:                                        ; preds = %if.then314, %if.end308.if.end325_crit_edge
  %165 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx97, align 4
  %add.ptr331 = getelementptr i32, ptr %166, i32 17
  %167 = ptrtoint ptr %add.ptr331 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr331, align 4
  %conv334 = trunc i32 %168 to i8
  %max_ft_level = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 21
  %169 = ptrtoint ptr %max_ft_level to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv334, ptr %max_ft_level, align 8
  %arrayidx337 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 15
  %170 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx337, align 4
  %add.ptr340 = getelementptr i32, ptr %171, i32 8
  %172 = ptrtoint ptr %add.ptr340 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr340, align 4
  %and342 = and i32 %173, 255
  %log_icm_size = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 6
  %174 = ptrtoint ptr %log_icm_size to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %and342, ptr %log_icm_size, align 8
  %175 = load ptr, ptr %arrayidx337, align 4
  %add.ptr348 = getelementptr i64, ptr %175, i32 5
  %176 = ptrtoint ptr %add.ptr348 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %add.ptr348, align 8
  %hdr_modify_icm_addr = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 7
  %178 = ptrtoint ptr %hdr_modify_icm_addr to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %177, ptr %hdr_modify_icm_addr, align 8
  %arrayidx351 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 4
  %179 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx351, align 8
  %add.ptr354 = getelementptr i32, ptr %180, i32 6
  %181 = ptrtoint ptr %add.ptr354 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %add.ptr354, align 4
  %conv357 = trunc i32 %182 to i16
  %roce_min_src_udp = getelementptr inbounds %struct.mlx5dr_cmd_caps, ptr %caps, i32 0, i32 22
  %183 = ptrtoint ptr %roce_min_src_udp to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv357, ptr %roce_min_src_udp, align 2
  %embedded_cpu.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 5
  %184 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %embedded_cpu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i = icmp eq i8 %185, 0
  br i1 %tobool.not.i, label %if.end325.mlx5_core_is_ecpf_esw_manager.exit.thread_crit_edge, label %mlx5_core_is_ecpf_esw_manager.exit

if.end325.mlx5_core_is_ecpf_esw_manager.exit.thread_crit_edge: ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_core_is_ecpf_esw_manager.exit.thread

mlx5_core_is_ecpf_esw_manager.exit:               ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %caps1, align 8
  %add.ptr.i = getelementptr i32, ptr %187, i32 13
  %188 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr.i, align 4
  %190 = lshr i32 %189, 17
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, -128
  br label %mlx5_core_is_ecpf_esw_manager.exit.thread

mlx5_core_is_ecpf_esw_manager.exit.thread:        ; preds = %mlx5_core_is_ecpf_esw_manager.exit, %if.end325.mlx5_core_is_ecpf_esw_manager.exit.thread_crit_edge
  %193 = phi i8 [ 0, %if.end325.mlx5_core_is_ecpf_esw_manager.exit.thread_crit_edge ], [ %192, %mlx5_core_is_ecpf_esw_manager.exit ]
  %bf.clear363 = and i8 %bf.set94, 127
  %bf.set364 = or i8 %193, %bf.clear363
  %194 = ptrtoint ptr %isolate_vl_tc to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %bf.set364, ptr %isolate_vl_tc, align 2
  br label %cleanup

cleanup:                                          ; preds = %mlx5_core_is_ecpf_esw_manager.exit.thread, %dr_cmd_query_nic_vport_roce_en.exit
  %retval.0 = phi i32 [ 0, %mlx5_core_is_ecpf_esw_manager.exit.thread ], [ %call.i, %dr_cmd_query_nic_vport_roce_en.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_query_flow_table(ptr noundef %dev, i32 noundef %type, i32 noundef %table_id, ptr nocapture noundef writeonly %output) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [16 x i32], align 4
  %in = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #8
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 60)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 154271744, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 4
  %shl16 = shl i32 %type, 24
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl16, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 5
  %and30 = and i32 %table_id, 16777215
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and30, ptr %add.ptr28, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %out, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %shr = lshr i32 %7, 24
  %conv = trunc i32 %shr to i8
  %8 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %output, align 8
  %add.ptr43 = getelementptr inbounds i32, ptr %out, i32 6
  %9 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr43, align 4
  %shr44 = lshr i32 %10, 16
  %conv46 = trunc i32 %shr44 to i8
  %level = getelementptr inbounds %struct.mlx5dr_cmd_query_flow_table_details, ptr %output, i32 0, i32 1
  %11 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv46, ptr %level, align 1
  %add.ptr48 = getelementptr inbounds i64, ptr %out, i32 6
  %12 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr48, align 8
  %sw_owner_icm_root_1 = getelementptr inbounds %struct.mlx5dr_cmd_query_flow_table_details, ptr %output, i32 0, i32 2
  %14 = ptrtoint ptr %sw_owner_icm_root_1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sw_owner_icm_root_1, align 8
  %add.ptr50 = getelementptr inbounds i64, ptr %out, i32 7
  %15 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr50, align 8
  %sw_owner_icm_root_0 = getelementptr inbounds %struct.mlx5dr_cmd_query_flow_table_details, ptr %output, i32 0, i32 3
  %17 = ptrtoint ptr %sw_owner_icm_root_0 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %sw_owner_icm_root_0, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_query_flow_sampler(ptr noundef %dev, i32 noundef %sampler_id, ptr nocapture noundef writeonly %rx_icm_addr, ptr nocapture noundef writeonly %tx_icm_addr) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [19 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #8
  %1 = getelementptr inbounds i8, ptr %in, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 167903232, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 1
  %4 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sampler_id, ptr %add.ptr28, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr41 = getelementptr inbounds i8, ptr %out, i32 40
  %6 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr41, align 8
  %8 = ptrtoint ptr %rx_icm_addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rx_icm_addr, align 8
  %add.ptr42 = getelementptr inbounds i8, ptr %out, i32 48
  %9 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr42, align 8
  %11 = ptrtoint ptr %tx_icm_addr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %tx_icm_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %out) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_sync_steering(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 184549376, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #8
  %3 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %_out, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_set_fte_modify_and_vport(ptr noundef %mdev, i32 noundef %table_type, i32 noundef %table_id, i32 noundef %group_id, i32 noundef %modify_header_id, i16 noundef zeroext %vport) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 840, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i.i, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 154533888
  store i32 %or, ptr %call.i.i, align 4
  %add.ptr11 = getelementptr i32, ptr %call.i.i, i32 4
  %3 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr11, align 4
  %and12 = and i32 %4, 16777215
  %shl14 = shl i32 %table_type, 24
  %or15 = or i32 %and12, %shl14
  store i32 %or15, ptr %add.ptr11, align 4
  %add.ptr24 = getelementptr i32, ptr %call.i.i, i32 5
  %5 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr24, align 4
  %and25 = and i32 %6, -16777216
  %and26 = and i32 %table_id, 16777215
  %or28 = or i32 %and25, %and26
  store i32 %or28, ptr %add.ptr24, align 4
  %add.ptr38 = getelementptr i8, ptr %call.i.i, i32 68
  %7 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %group_id, ptr %add.ptr38, align 4
  %add.ptr51 = getelementptr i8, ptr %call.i.i, i32 92
  %8 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %modify_header_id, ptr %add.ptr51, align 4
  %add.ptr64 = getelementptr i8, ptr %call.i.i, i32 80
  %9 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr64, align 4
  %and65 = and i32 %10, -16777216
  %or68 = or i32 %and65, 1
  store i32 %or68, ptr %add.ptr64, align 4
  %add.ptr77 = getelementptr i8, ptr %call.i.i, i32 76
  %11 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr77, align 4
  %and78 = and i32 %12, -65536
  %or81 = or i32 %and78, 68
  store i32 %or81, ptr %add.ptr77, align 4
  %add.ptr85 = getelementptr i8, ptr %call.i.i, i32 832
  %conv = zext i16 %vport to i32
  %13 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %add.ptr85, align 4
  %call112 = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %call.i.i, i32 noundef 840, ptr noundef nonnull %out, i32 noundef 16) #8
  call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call112, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_del_flow_table_entry(ptr noundef %mdev, i32 noundef %table_type, i32 noundef %table_id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 154664960, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 4
  %shl16 = shl i32 %table_type, 24
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl16, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 5
  %and30 = and i32 %table_id, 16777215
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and30, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #8
  %5 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_alloc_modify_header(ptr noundef %mdev, i32 noundef %table_type, i8 noundef zeroext %num_of_actions, ptr nocapture noundef readonly %actions, ptr nocapture noundef writeonly %modify_header_id) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %conv = zext i8 %num_of_actions to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 16
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i.i, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 155189248
  store i32 %or, ptr %call.i.i, align 4
  %add.ptr11 = getelementptr i32, ptr %call.i.i, i32 3
  %3 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr11, align 4
  %and12 = and i32 %4, 16776960
  %shl14 = shl i32 %table_type, 24
  %or15 = or i32 %and12, %shl14
  %or29 = or i32 %or15, %conv
  store i32 %or29, ptr %add.ptr11, align 4
  %add.ptr33 = getelementptr i8, ptr %call.i.i, i32 16
  %5 = call ptr @memcpy(ptr %add.ptr33, ptr %actions, i32 %mul)
  %call36 = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %call.i.i, i32 noundef %add, ptr noundef nonnull %out, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.body.out43_crit_edge

do.body.out43_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out43

if.end39:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr41 = getelementptr inbounds i32, ptr %out, i32 2
  %6 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr41, align 4
  %8 = ptrtoint ptr %modify_header_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %modify_header_id, align 4
  br label %out43

out43:                                            ; preds = %if.end39, %do.body.out43_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %out43 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_dealloc_modify_header(ptr noundef %mdev, i32 noundef %modify_header_id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 155254784, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %modify_header_id, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #8
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_create_empty_flow_group(ptr noundef %mdev, i32 noundef %table_type, i32 noundef %table_id, ptr nocapture noundef writeonly %group_id) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i.i, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 154337280
  store i32 %or, ptr %call.i.i, align 4
  %add.ptr11 = getelementptr i32, ptr %call.i.i, i32 4
  %3 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr11, align 4
  %and12 = and i32 %4, 16777215
  %shl14 = shl i32 %table_type, 24
  %or15 = or i32 %and12, %shl14
  store i32 %or15, ptr %add.ptr11, align 4
  %add.ptr24 = getelementptr i32, ptr %call.i.i, i32 5
  %5 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr24, align 4
  %and25 = and i32 %6, -16777216
  %and26 = and i32 %table_id, 16777215
  %or28 = or i32 %and25, %and26
  store i32 %or28, ptr %add.ptr24, align 4
  %call32 = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %call.i.i, i32 noundef 1024, ptr noundef nonnull %out, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %do.body.out39_crit_edge

do.body.out39_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out39

if.end35:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr37 = getelementptr inbounds i32, ptr %out, i32 2
  %7 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr37, align 4
  %and38 = and i32 %8, 16777215
  %9 = ptrtoint ptr %group_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and38, ptr %group_id, align 4
  br label %out39

out39:                                            ; preds = %if.end35, %do.body.out39_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %out39 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_destroy_flow_group(ptr noundef %mdev, i32 noundef %table_type, i32 noundef %table_id, i32 noundef %group_id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 154402816, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 4
  %shl16 = shl i32 %table_type, 24
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl16, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 5
  %and30 = and i32 %table_id, 16777215
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and30, ptr %add.ptr28, align 4
  %add.ptr43 = getelementptr inbounds i32, ptr %in, i32 6
  %5 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %group_id, ptr %add.ptr43, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #8
  %6 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_create_flow_table(ptr noundef %mdev, ptr nocapture noundef readonly %attr, ptr noundef writeonly %fdb_rx_icm_addr, ptr nocapture noundef writeonly %table_id) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #8
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 60)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 154140672, ptr %in, align 4
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr, align 8
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 4
  %shl16 = shl i32 %5, 24
  %6 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl16, ptr %add.ptr13, align 4
  %add.ptr23 = getelementptr inbounds i8, ptr %in, i32 24
  %term_tbl = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 5
  %7 = ptrtoint ptr %term_tbl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %term_tbl, align 2, !range !22
  %9 = zext i8 %8 to i32
  %shl32 = shl nuw nsw i32 %9, 28
  %sw_owner = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 4
  %10 = ptrtoint ptr %sw_owner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sw_owner, align 1, !range !22
  %12 = zext i8 %11 to i32
  %shl47 = shl nuw nsw i32 %12, 29
  %or48 = or i32 %shl47, %shl32
  %level = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 3
  %13 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %level, align 8
  %conv54 = zext i8 %14 to i32
  %shl61 = shl nuw nsw i32 %conv54, 16
  %or62 = or i32 %or48, %shl61
  %15 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or62, ptr %add.ptr23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool67.not = icmp eq i8 %11, 0
  br i1 %tobool67.not, label %entry.do.body137_crit_edge, label %if.then

entry.do.body137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body137

if.then:                                          ; preds = %entry
  %16 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then.do.body137_crit_edge [
    i32 0, label %do.end78
    i32 1, label %do.end95
    i32 4, label %do.end113
  ]

if.then.do.body137_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body137

do.end78:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %icm_addr_rx = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 1
  br label %do.body137.sink.split

do.end95:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %icm_addr_tx = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 2
  br label %do.body137.sink.split

do.end113:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %icm_addr_rx114 = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 1
  %17 = ptrtoint ptr %icm_addr_rx114 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %icm_addr_rx114, align 8
  %add.ptr115 = getelementptr inbounds i8, ptr %in, i32 56
  %19 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %add.ptr115, align 8
  %icm_addr_tx128 = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 2
  br label %do.body137.sink.split

do.body137.sink.split:                            ; preds = %do.end113, %do.end95, %do.end78
  %icm_addr_tx.sink = phi ptr [ %icm_addr_tx, %do.end95 ], [ %icm_addr_tx128, %do.end113 ], [ %icm_addr_rx, %do.end78 ]
  %.sink236 = phi i32 [ 56, %do.end95 ], [ 48, %do.end113 ], [ 56, %do.end78 ]
  %20 = ptrtoint ptr %icm_addr_tx.sink to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %icm_addr_tx.sink, align 8
  %add.ptr96 = getelementptr inbounds i8, ptr %in, i32 %.sink236
  %22 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %add.ptr96, align 8
  br label %do.body137

do.body137:                                       ; preds = %do.body137.sink.split, %if.then.do.body137_crit_edge, %entry.do.body137_crit_edge
  %decap_en = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 6
  %23 = ptrtoint ptr %decap_en to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %decap_en, align 1, !range !22
  %25 = zext i8 %24 to i32
  %26 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr23, align 4
  %and146 = and i32 %27, 1073741823
  %shl148 = shl nuw nsw i32 %25, 30
  %or149 = or i32 %and146, %shl148
  %reformat_en = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %attr, i32 0, i32 7
  %28 = ptrtoint ptr %reformat_en to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reformat_en, align 4, !range !22
  %30 = zext i8 %29 to i32
  %shl165 = shl nuw i32 %30, 31
  %or166 = or i32 %shl165, %or149
  store i32 %or166, ptr %add.ptr23, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %out, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool173.not = icmp eq i32 %call, 0
  br i1 %tobool173.not, label %if.end175, label %do.body137.cleanup_crit_edge

do.body137.cleanup_crit_edge:                     ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end175:                                        ; preds = %do.body137
  %add.ptr177 = getelementptr inbounds i32, ptr %out, i32 2
  %31 = ptrtoint ptr %add.ptr177 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr177, align 4
  %and178 = and i32 %32, 16777215
  %33 = ptrtoint ptr %table_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and178, ptr %table_id, align 4
  %34 = ptrtoint ptr %sw_owner to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sw_owner, align 1, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool180.not = icmp eq i8 %35, 0
  br i1 %tobool180.not, label %land.lhs.true, label %if.end175.cleanup_crit_edge

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end175
  %36 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp182 = icmp ne i32 %37, 4
  %tobool185.not = icmp eq ptr %fdb_rx_icm_addr, null
  %or.cond = or i1 %tobool185.not, %cmp182
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.then186

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then186:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr188 = getelementptr inbounds i32, ptr %out, i32 3
  %38 = ptrtoint ptr %add.ptr188 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr188, align 4
  %conv191 = zext i32 %39 to i64
  %shr194 = lshr i32 %32, 24
  %conv196 = zext i32 %shr194 to i64
  %shl197 = shl nuw nsw i64 %conv196, 32
  %or198 = or i64 %shl197, %conv191
  %40 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out, align 4
  %conv203 = zext i32 %41 to i64
  %shl204 = shl i64 %conv203, 40
  %or205 = or i64 %shl204, %or198
  %42 = ptrtoint ptr %fdb_rx_icm_addr to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %or205, ptr %fdb_rx_icm_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then186, %land.lhs.true.cleanup_crit_edge, %if.end175.cleanup_crit_edge, %do.body137.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_destroy_flow_table(ptr noundef %mdev, i32 noundef %table_id, i32 noundef %table_type) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 154206208, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 4
  %shl16 = shl i32 %table_type, 24
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl16, ptr %add.ptr13, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 5
  %and30 = and i32 %table_id, 16777215
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and30, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #8
  %5 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_create_reformat_ctx(ptr noundef %mdev, i32 noundef %rt, i8 noundef zeroext %reformat_param_0, i8 noundef zeroext %reformat_param_1, i32 noundef %reformat_size, ptr noundef readonly %reformat_data, ptr nocapture noundef writeonly %reformat_id) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %add1 = add i32 %reformat_size, 37
  %and = and i32 %add1, -4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %and, i32 noundef 3520, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i.i, align 4
  %and3 = and i32 %2, 65535
  %or = or i32 %and3, 154992640
  store i32 %or, ptr %call.i.i, align 4
  %add.ptr8 = getelementptr i8, ptr %call.i.i, i32 28
  %3 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr8, align 4
  %and16 = and i32 %4, 15793152
  %shl18 = shl i32 %rt, 24
  %or19 = or i32 %and16, %shl18
  %5 = and i8 %reformat_param_0, 15
  %and30 = zext i8 %5 to i32
  %shl31 = shl nuw nsw i32 %and30, 16
  %or32 = or i32 %or19, %shl31
  %conv38 = zext i8 %reformat_param_1 to i32
  %add.ptr42 = getelementptr i8, ptr %call.i.i, i32 32
  %6 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr42, align 4
  %and43 = and i32 %7, 16777215
  %shl45 = shl nuw i32 %conv38, 24
  %or46 = or i32 %and43, %shl45
  store i32 %or46, ptr %add.ptr42, align 4
  %and57 = and i32 %reformat_size, 1023
  %or59 = or i32 %or32, %and57
  store i32 %or59, ptr %add.ptr8, align 4
  %tobool63.not = icmp eq ptr %reformat_data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reformat_size)
  %tobool64.not = icmp eq i32 %reformat_size, 0
  %or.cond = or i1 %tobool64.not, %tobool63.not
  br i1 %or.cond, label %do.body.if.end66_crit_edge, label %if.then65

do.body.if.end66_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr9 = getelementptr i8, ptr %call.i.i, i32 34
  %8 = call ptr @memcpy(ptr %add.ptr9, ptr %reformat_data, i32 %reformat_size)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %do.body.if.end66_crit_edge
  %call67 = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %call.i.i, i32 noundef %and, ptr noundef nonnull %out, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr72 = getelementptr inbounds i32, ptr %out, i32 2
  %9 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr72, align 4
  %11 = ptrtoint ptr %reformat_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %reformat_id, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end66.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end70 ], [ -12, %entry.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_cmd_destroy_reformat_ctx(ptr noundef %mdev, i32 noundef %reformat_id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 155058176, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %reformat_id, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #8
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_query_gid(ptr noundef %mdev, i8 noundef zeroext %vhca_port_num, i16 noundef zeroext %index, ptr nocapture noundef writeonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [12 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #8
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 123731968, ptr %in, align 4
  %conv = zext i16 %index to i32
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %shl16 = shl nuw i32 %conv, 16
  %4 = and i8 %vhca_port_num, 15
  %and31 = zext i8 %4 to i32
  %or33 = or i32 %shl16, %and31
  %5 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or33, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr41 = getelementptr inbounds i8, ptr %out, i32 16
  %6 = call ptr @memcpy(ptr %attr, ptr %add.ptr41, i32 16)
  %mac = getelementptr inbounds %struct.mlx5dr_cmd_gid_attr, ptr %attr, i32 0, i32 1
  %add.ptr44 = getelementptr inbounds i8, ptr %out, i32 34
  %7 = call ptr @memcpy(ptr %mac, ptr %add.ptr44, i32 6)
  %add.ptr46 = getelementptr inbounds i32, ptr %out, i32 10
  %8 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr46, align 4
  %and47 = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and47)
  %cmp = icmp eq i32 %and47, 2
  %roce_ver = getelementptr inbounds %struct.mlx5dr_cmd_gid_attr, ptr %attr, i32 0, i32 2
  %. = select i1 %cmp, i32 2, i32 0
  %10 = ptrtoint ptr %roce_ver to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %., ptr %roce_ver, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %out) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_cmd_set_fte(ptr noundef %dev, i32 noundef %opmod, i32 noundef %modify_mask, ptr nocapture noundef readonly %ft, i32 noundef %group_id, ptr noundef readonly %fte) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 9
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i32, ptr %2, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %4, 24
  %and.i = and i32 %shr.i, 31
  %action.i = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4
  %5 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %action.i, align 4
  %and2.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %7 = ptrtoint ptr %fte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp72.not.i = icmp eq i32 %8, 0
  br i1 %cmp72.not.i, label %for.cond.preheader.i.if.end35.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end35.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dest_arr.i = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 5
  %9 = ptrtoint ptr %dest_arr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dest_arr.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.075.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc22.i, %for.inc.i.for.body.i_crit_edge ]
  %num_encap.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_encap.2.i, %for.inc.i.for.body.i_crit_edge ]
  %num_fwd_destinations.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_fwd_destinations.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %10, i32 %i.075.i
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %12, label %for.body.i.if.end20.i_crit_edge [
    i32 256, label %for.body.i.for.inc.i_crit_edge
    i32 0, label %for.body.i.land.lhs.true.i_crit_edge
    i32 8, label %for.body.i.land.lhs.true.i_crit_edge938
  ]

for.body.i.land.lhs.true.i_crit_edge938:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.body.i.land.lhs.true.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.body.i.if.end20.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %for.body.i.land.lhs.true.i_crit_edge, %for.body.i.land.lhs.true.i_crit_edge938
  %flags.i = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %10, i32 %i.075.i, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags.i, align 4
  %16 = lshr i8 %15, 1
  %.lobit.i = and i8 %16, 1
  %17 = zext i8 %.lobit.i to i32
  %spec.select.i = add i32 %num_encap.074.i, %17
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true.i, %for.body.i.if.end20.i_crit_edge
  %num_encap.1.i = phi i32 [ %num_encap.074.i, %for.body.i.if.end20.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %inc21.i = add i32 %num_fwd_destinations.073.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end20.i, %for.body.i.for.inc.i_crit_edge
  %num_fwd_destinations.1.i = phi i32 [ %num_fwd_destinations.073.i, %for.body.i.for.inc.i_crit_edge ], [ %inc21.i, %if.end20.i ]
  %num_encap.2.i = phi i32 [ %num_encap.074.i, %for.body.i.for.inc.i_crit_edge ], [ %num_encap.1.i, %if.end20.i ]
  %inc22.i = add nuw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc22.i, %8
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_fwd_destinations.1.i)
  %cmp23.i = icmp sgt i32 %num_fwd_destinations.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_encap.2.i)
  %cmp26.i = icmp sgt i32 %num_encap.2.i, 0
  %or.cond.i = select i1 %cmp23.i, i1 %cmp26.i, i1 false
  br i1 %or.cond.i, label %if.end29.i, label %for.end.i.if.end35.i_crit_edge

for.end.i.if.end35.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end29.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool33.not.i, label %do.end.i, label %if.end29.i.if.end35.i_crit_edge

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

do.end.i:                                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !12) #8
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 620, i32 noundef %25) #13
  br label %cleanup737

if.end35.i:                                       ; preds = %if.end29.i.if.end35.i_crit_edge, %for.end.i.if.end35.i_crit_edge, %for.cond.preheader.i.if.end35.i_crit_edge
  %num_encap.0.lcssa84.i917 = phi i32 [ %num_encap.2.i, %if.end29.i.if.end35.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end35.i_crit_edge ], [ %num_encap.2.i, %for.end.i.if.end35.i_crit_edge ]
  %extended_dest.0916 = phi i8 [ 1, %if.end29.i.if.end35.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end35.i_crit_edge ], [ 0, %for.end.i.if.end35.i_crit_edge ]
  %shl.i = shl nuw i32 1, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %num_encap.0.lcssa84.i917, i32 %shl.i)
  %cmp36.i = icmp sgt i32 %num_encap.0.lcssa84.i917, %shl.i
  br i1 %cmp36.i, label %do.end41.i, label %if.end35.i.if.end_crit_edge

if.end35.i.if.end_crit_edge:                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end41.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i71.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i71.i to ptr
  %task44.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task44.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task44.i, align 8
  %pid45.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid45.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid45.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 625, i32 noundef %33, i32 noundef %shl.i) #13
  br label %cleanup737

if.end:                                           ; preds = %if.end35.i.if.end_crit_edge, %entry.if.end_crit_edge
  %extended_dest.1.ph = phi i8 [ %extended_dest.0916, %if.end35.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extended_dest.1.ph)
  %tobool1.not = icmp eq i8 %extended_dest.1.ph, 0
  %. = select i1 %tobool1.not, i32 8, i32 16
  %34 = ptrtoint ptr %fte to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fte, align 4
  %mul = mul i32 %., %35
  %add = add i32 %mul, 832
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3520, i32 noundef -1) #12
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup737_crit_edge, label %do.body

if.end.cleanup737_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup737

do.body:                                          ; preds = %if.end
  %36 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i.i, align 4
  %and = and i32 %37, 65535
  %or = or i32 %and, 154533888
  store i32 %or, ptr %call.i.i, align 4
  %add.ptr18 = getelementptr i32, ptr %call.i.i, i32 1
  %38 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr18, align 4
  %and19 = and i32 %39, -65536
  %and20 = and i32 %opmod, 65535
  %or22 = or i32 %and19, %and20
  store i32 %or22, ptr %add.ptr18, align 4
  %add.ptr31 = getelementptr i32, ptr %call.i.i, i32 6
  %40 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr31, align 4
  %and32 = and i32 %41, 2147483392
  %and33 = and i32 %modify_mask, 255
  %or35 = or i32 %and32, %and33
  %type = getelementptr inbounds %struct.mlx5dr_cmd_ft_info, ptr %ft, i32 0, i32 2
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  %add.ptr44 = getelementptr i32, ptr %call.i.i, i32 4
  %44 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr44, align 4
  %and45 = and i32 %45, 16777215
  %shl47 = shl i32 %43, 24
  %or48 = or i32 %and45, %shl47
  store i32 %or48, ptr %add.ptr44, align 4
  %46 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ft, align 4
  %add.ptr57 = getelementptr i32, ptr %call.i.i, i32 5
  %48 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr57, align 4
  %and58 = and i32 %49, -16777216
  %and59 = and i32 %47, 16777215
  %or61 = or i32 %and58, %and59
  store i32 %or61, ptr %add.ptr57, align 4
  %index = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 1
  %50 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index, align 4
  %add.ptr70 = getelementptr i32, ptr %call.i.i, i32 8
  %52 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %add.ptr70, align 4
  %ignore_flow_level = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 6
  %53 = ptrtoint ptr %ignore_flow_level to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ignore_flow_level, align 4, !range !22
  %55 = zext i8 %54 to i32
  %shl87 = shl nuw i32 %55, 31
  %or88 = or i32 %shl87, %or35
  store i32 %or88, ptr %add.ptr31, align 4
  %vport = getelementptr inbounds %struct.mlx5dr_cmd_ft_info, ptr %ft, i32 0, i32 1
  %56 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool92.not = icmp eq i16 %57, 0
  br i1 %tobool92.not, label %do.body.if.end122_crit_edge, label %do.body94

do.body.if.end122_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

do.body94:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv97 = zext i16 %57 to i32
  %add.ptr101 = getelementptr i32, ptr %call.i.i, i32 2
  %58 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr101, align 4
  %and102 = and i32 %59, 2147418112
  %or105 = or i32 %and102, %conv97
  %or118 = or i32 %or105, -2147483648
  store i32 %or118, ptr %add.ptr101, align 4
  br label %if.end122

if.end122:                                        ; preds = %do.body94, %do.body.if.end122_crit_edge
  %add.ptr123 = getelementptr i8, ptr %call.i.i, i32 64
  %add.ptr129 = getelementptr i8, ptr %call.i.i, i32 68
  %60 = ptrtoint ptr %add.ptr129 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %group_id, ptr %add.ptr129, align 4
  %flow_tag = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %flow_tag to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flow_tag, align 4
  %add.ptr142 = getelementptr i8, ptr %call.i.i, i32 72
  %63 = ptrtoint ptr %add.ptr142 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr142, align 4
  %and143 = and i32 %64, -16777216
  %and144 = and i32 %62, 16777215
  %or146 = or i32 %and143, %and144
  store i32 %or146, ptr %add.ptr142, align 4
  %flow_source = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %flow_source to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flow_source, align 4
  %add.ptr156 = getelementptr i8, ptr %call.i.i, i32 80
  %67 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr156, align 4
  %and157 = and i32 %68, 1342177279
  %and158 = shl i32 %66, 28
  %shl159 = and i32 %and158, 805306368
  %or160 = or i32 %and157, %shl159
  %69 = zext i8 %extended_dest.1.ph to i32
  %shl174 = shl nuw i32 %69, 31
  %or175 = or i32 %or160, %shl174
  store i32 %or175, ptr %add.ptr156, align 4
  %70 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %action.i, align 4
  %add.ptr205 = getelementptr i8, ptr %call.i.i, i32 76
  %72 = ptrtoint ptr %add.ptr205 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr205, align 4
  %and206 = and i32 %73, -65536
  br i1 %tobool1.not, label %do.body198, label %if.then180

if.then180:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %and191 = and i32 %71, 65519
  %or193 = or i32 %and206, %and191
  %74 = ptrtoint ptr %add.ptr205 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or193, ptr %add.ptr205, align 4
  br label %if.end232

do.body198:                                       ; preds = %if.end122
  %and207 = and i32 %71, 65535
  %or209 = or i32 %and206, %and207
  %75 = ptrtoint ptr %add.ptr205 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or209, ptr %add.ptr205, align 4
  %pkt_reformat = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pkt_reformat, align 4
  %tobool214.not = icmp eq ptr %77, null
  br i1 %tobool214.not, label %do.body198.if.end232_crit_edge, label %do.body216

do.body198.if.end232_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232

do.body216:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #10
  %78 = getelementptr inbounds %struct.mlx5_pkt_reformat, ptr %77, i32 0, i32 2
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %add.ptr223 = getelementptr i8, ptr %call.i.i, i32 88
  %81 = ptrtoint ptr %add.ptr223 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %add.ptr223, align 4
  br label %if.end232

if.end232:                                        ; preds = %do.body216, %do.body198.if.end232_crit_edge, %if.then180
  %modify_hdr = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %modify_hdr, align 4
  %tobool234.not = icmp eq ptr %83, null
  br i1 %tobool234.not, label %if.end232.if.end251_crit_edge, label %do.body236

if.end232.if.end251_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

do.body236:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  %84 = getelementptr inbounds %struct.mlx5_modify_hdr, ptr %83, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add.ptr243 = getelementptr i8, ptr %call.i.i, i32 92
  %87 = ptrtoint ptr %add.ptr243 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr243, align 4
  br label %if.end251

if.end251:                                        ; preds = %do.body236, %if.end232.if.end251_crit_edge
  %vlan256 = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4, i32 5
  %88 = ptrtoint ptr %vlan256 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vlan256, align 4
  %conv257 = zext i16 %89 to i32
  %90 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr123, align 4
  %and262 = and i32 %91, 4096
  %shl264 = shl nuw i32 %conv257, 16
  %or265 = or i32 %and262, %shl264
  %vid = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4, i32 5, i32 0, i32 1
  %92 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vid, align 2
  %94 = and i16 %93, 4095
  %and280 = zext i16 %94 to i32
  %or282 = or i32 %or265, %and280
  %prio = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4, i32 5, i32 0, i32 2
  %95 = ptrtoint ptr %prio to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %prio, align 4
  %97 = and i8 %96, 7
  %and297 = zext i8 %97 to i32
  %shl298 = shl nuw nsw i32 %and297, 13
  %or299 = or i32 %shl298, %or282
  store i32 %or299, ptr %add.ptr123, align 4
  %add.ptr303 = getelementptr i8, ptr %call.i.i, i32 96
  %arrayidx308 = getelementptr %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4, i32 5, i32 1
  %98 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx308, align 2
  %conv310 = zext i16 %99 to i32
  %100 = ptrtoint ptr %add.ptr303 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr303, align 4
  %and315 = and i32 %101, 4096
  %shl317 = shl nuw i32 %conv310, 16
  %or318 = or i32 %and315, %shl317
  %vid327 = getelementptr %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4, i32 5, i32 1, i32 1
  %102 = ptrtoint ptr %vid327 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %vid327, align 2
  %104 = and i16 %103, 4095
  %and334 = zext i16 %104 to i32
  %or336 = or i32 %or318, %and334
  %prio345 = getelementptr %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 4, i32 5, i32 1, i32 2
  %105 = ptrtoint ptr %prio345 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %prio345, align 2
  %107 = and i8 %106, 7
  %and352 = zext i8 %107 to i32
  %shl353 = shl nuw nsw i32 %and352, 13
  %or354 = or i32 %shl353, %or336
  store i32 %or354, ptr %add.ptr303, align 4
  %add.ptr358 = getelementptr i8, ptr %call.i.i, i32 128
  %val = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 3
  %108 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %val, align 4
  %110 = call ptr @memcpy(ptr %add.ptr358, ptr %109, i32 448)
  %add.ptr359 = getelementptr i8, ptr %call.i.i, i32 832
  %111 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %action.i, align 4
  %and362 = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and362)
  %tobool363.not = icmp eq i32 %and362, 0
  br i1 %tobool363.not, label %if.end251.if.end532_crit_edge, label %for.cond.preheader

if.end251.if.end532_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end532

for.cond.preheader:                               ; preds = %if.end251
  %113 = ptrtoint ptr %fte to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %fte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp924.not = icmp eq i32 %114, 0
  br i1 %cmp924.not, label %for.cond.preheader.do.body519_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body519_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body519

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dest_arr = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %in_dests.0930 = phi ptr [ %add.ptr359, %for.body.lr.ph ], [ %in_dests.1, %cleanup.for.body_crit_edge ]
  %i.0926 = phi i32 [ 0, %for.body.lr.ph ], [ %inc518, %cleanup.for.body_crit_edge ]
  %list_size.0925 = phi i32 [ 0, %for.body.lr.ph ], [ %list_size.1, %cleanup.for.body_crit_edge ]
  %115 = ptrtoint ptr %dest_arr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dest_arr, align 4
  %arrayidx369 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %116, i32 %i.0926
  %117 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx369, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %118, label %sw.default [
    i32 256, label %for.body.cleanup_crit_edge
    i32 257, label %sw.bb
    i32 1, label %sw.bb377
    i32 6, label %sw.bb485
    i32 0, label %if.then383
    i32 8, label %if.else406
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %120 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %116, i32 %i.0926, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  br label %do.body490

sw.bb377:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %123 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %116, i32 %i.0926, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  br label %do.body490

if.then383:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %126 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %116, i32 %i.0926, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %126, align 4
  %conv386 = zext i16 %128 to i32
  %flags = getelementptr inbounds %struct.anon.202, ptr %126, i32 0, i32 3
  %129 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %flags, align 4
  %add.ptr398 = getelementptr i32, ptr %in_dests.0930, i32 1
  %131 = ptrtoint ptr %add.ptr398 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %add.ptr398, align 4
  %and399 = and i32 %132, 2147483647
  %and400 = zext i8 %130 to i32
  %shl401 = shl i32 %and400, 31
  %or402 = or i32 %and399, %shl401
  store i32 %or402, ptr %add.ptr398, align 4
  br label %do.body421

if.else406:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr412 = getelementptr i32, ptr %in_dests.0930, i32 1
  %133 = ptrtoint ptr %add.ptr412 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr412, align 4
  %or416 = or i32 %134, -2147483648
  store i32 %or416, ptr %add.ptr412, align 4
  br label %do.body421

do.body421:                                       ; preds = %if.else406, %if.then383
  %id367.0 = phi i32 [ %conv386, %if.then383 ], [ 0, %if.else406 ]
  %135 = ptrtoint ptr %dest_arr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dest_arr, align 4
  %vhca_id = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %136, i32 %i.0926, i32 1, i32 0, i32 1
  %137 = ptrtoint ptr %vhca_id to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %vhca_id, align 2
  %conv425 = zext i16 %138 to i32
  %add.ptr429 = getelementptr i32, ptr %in_dests.0930, i32 1
  %139 = ptrtoint ptr %add.ptr429 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %add.ptr429, align 4
  %and430 = and i32 %140, -65536
  %or433 = or i32 %and430, %conv425
  store i32 %or433, ptr %add.ptr429, align 4
  br i1 %tobool1.not, label %do.body421.do.body490_crit_edge, label %land.lhs.true

do.body421.do.body490_crit_edge:                  ; preds = %do.body421
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body490

land.lhs.true:                                    ; preds = %do.body421
  %141 = ptrtoint ptr %dest_arr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dest_arr, align 4
  %flags441 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %142, i32 %i.0926, i32 1, i32 0, i32 3
  %143 = ptrtoint ptr %flags441 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %flags441, align 4
  %145 = and i8 %144, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool444.not = icmp eq i8 %145, 0
  br i1 %tobool444.not, label %land.lhs.true.do.body490_crit_edge, label %do.body446

land.lhs.true.do.body490_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body490

do.body446:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or465 = or i32 %or433, 1073741824
  %146 = ptrtoint ptr %add.ptr429 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or465, ptr %add.ptr429, align 4
  %147 = ptrtoint ptr %dest_arr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dest_arr, align 4
  %reformat_id = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %148, i32 %i.0926, i32 1, i32 0, i32 2
  %149 = ptrtoint ptr %reformat_id to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %reformat_id, align 4
  %add.ptr476 = getelementptr i32, ptr %in_dests.0930, i32 2
  %151 = ptrtoint ptr %add.ptr476 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %add.ptr476, align 4
  br label %do.body490

sw.bb485:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %152 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %116, i32 %i.0926, i32 1
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  br label %do.body490

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %155 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %116, i32 %i.0926, i32 1
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  br label %do.body490

do.body490:                                       ; preds = %sw.default, %sw.bb485, %do.body446, %land.lhs.true.do.body490_crit_edge, %do.body421.do.body490_crit_edge, %sw.bb377, %sw.bb
  %id367.1 = phi i32 [ %157, %sw.default ], [ %154, %sw.bb485 ], [ %id367.0, %do.body446 ], [ %id367.0, %land.lhs.true.do.body490_crit_edge ], [ %id367.0, %do.body421.do.body490_crit_edge ], [ %125, %sw.bb377 ], [ %122, %sw.bb ]
  %type368.0 = phi i32 [ %118, %sw.default ], [ 6, %sw.bb485 ], [ %118, %do.body446 ], [ %118, %land.lhs.true.do.body490_crit_edge ], [ %118, %do.body421.do.body490_crit_edge ], [ 1, %sw.bb377 ], [ 1, %sw.bb ]
  %shl498 = shl i32 %type368.0, 24
  %and510 = and i32 %id367.1, 16777215
  %or512 = or i32 %shl498, %and510
  %158 = ptrtoint ptr %in_dests.0930 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or512, ptr %in_dests.0930, align 4
  %add.ptr516 = getelementptr i8, ptr %in_dests.0930, i32 %.
  %inc = add i32 %list_size.0925, 1
  br label %cleanup

cleanup:                                          ; preds = %do.body490, %for.body.cleanup_crit_edge
  %list_size.1 = phi i32 [ %inc, %do.body490 ], [ %list_size.0925, %for.body.cleanup_crit_edge ]
  %in_dests.1 = phi ptr [ %add.ptr516, %do.body490 ], [ %in_dests.0930, %for.body.cleanup_crit_edge ]
  %inc518 = add nuw i32 %i.0926, 1
  %159 = ptrtoint ptr %fte to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %fte, align 4
  %cmp = icmp ult i32 %inc518, %160
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.do.body519_crit_edge

cleanup.do.body519_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body519

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body519:                                       ; preds = %cleanup.do.body519_crit_edge, %for.cond.preheader.do.body519_crit_edge
  %list_size.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body519_crit_edge ], [ %list_size.1, %cleanup.do.body519_crit_edge ]
  %in_dests.0.lcssa = phi ptr [ %add.ptr359, %for.cond.preheader.do.body519_crit_edge ], [ %in_dests.1, %cleanup.do.body519_crit_edge ]
  %161 = ptrtoint ptr %add.ptr156 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr156, align 4
  %and525 = and i32 %162, -16777216
  %and526 = and i32 %list_size.0.lcssa, 16777215
  %or528 = or i32 %and525, %and526
  store i32 %or528, ptr %add.ptr156, align 4
  br label %if.end532

if.end532:                                        ; preds = %do.body519, %if.end251.if.end532_crit_edge
  %in_dests.2 = phi ptr [ %in_dests.0.lcssa, %do.body519 ], [ %add.ptr359, %if.end251.if.end532_crit_edge ]
  %163 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %action.i, align 4
  %and535 = and i32 %164, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and535)
  %tobool536.not = icmp eq i32 %and535, 0
  br i1 %tobool536.not, label %if.end532.if.end734_crit_edge, label %if.then537

if.end532.if.end734_crit_edge:                    ; preds = %if.end532
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end734

if.then537:                                       ; preds = %if.end532
  %165 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %type, align 4
  %167 = zext i32 %166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %166, label %if.then537.cond.end677_crit_edge [
    i32 0, label %cond.true
    i32 1, label %cond.true547
    i32 2, label %cond.true560
    i32 3, label %cond.true573
    i32 4, label %cond.true586
    i32 5, label %cond.true599
    i32 6, label %cond.true612
    i32 7, label %cond.true625
    i32 8, label %cond.true638
    i32 9, label %cond.true651
  ]

if.then537.cond.end677_crit_edge:                 ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end677

cond.true:                                        ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx541 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %168 = ptrtoint ptr %arrayidx541 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx541, align 4
  %add.ptr542 = getelementptr i32, ptr %169, i32 20
  br label %cond.end677.sink.split

cond.true547:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx550 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %170 = ptrtoint ptr %arrayidx550 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx550, align 4
  %add.ptr553 = getelementptr i32, ptr %171, i32 68
  br label %cond.end677.sink.split

cond.true560:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx563 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %172 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx563, align 8
  %add.ptr566 = getelementptr i32, ptr %173, i32 52
  br label %cond.end677.sink.split

cond.true573:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx576 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %174 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx576, align 8
  %add.ptr579 = getelementptr i32, ptr %175, i32 36
  br label %cond.end677.sink.split

cond.true586:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx589 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %176 = ptrtoint ptr %arrayidx589 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx589, align 8
  %add.ptr592 = getelementptr i32, ptr %177, i32 20
  br label %cond.end677.sink.split

cond.true599:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx602 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %178 = ptrtoint ptr %arrayidx602 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx602, align 4
  %add.ptr605 = getelementptr i32, ptr %179, i32 52
  br label %cond.end677.sink.split

cond.true612:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx615 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %180 = ptrtoint ptr %arrayidx615 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx615, align 4
  %add.ptr618 = getelementptr i32, ptr %181, i32 100
  br label %cond.end677.sink.split

cond.true625:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx628 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %182 = ptrtoint ptr %arrayidx628 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx628, align 4
  %add.ptr631 = getelementptr i32, ptr %183, i32 36
  br label %cond.end677.sink.split

cond.true638:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx641 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %184 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx641, align 4
  %add.ptr644 = getelementptr i32, ptr %185, i32 84
  br label %cond.end677.sink.split

cond.true651:                                     ; preds = %if.then537
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx654 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 37
  %186 = ptrtoint ptr %arrayidx654 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx654, align 4
  %add.ptr657 = getelementptr i32, ptr %187, i32 20
  br label %cond.end677.sink.split

cond.end677.sink.split:                           ; preds = %cond.true651, %cond.true638, %cond.true625, %cond.true612, %cond.true599, %cond.true586, %cond.true573, %cond.true560, %cond.true547, %cond.true
  %add.ptr553.sink = phi ptr [ %add.ptr553, %cond.true547 ], [ %add.ptr579, %cond.true573 ], [ %add.ptr605, %cond.true599 ], [ %add.ptr631, %cond.true625 ], [ %add.ptr657, %cond.true651 ], [ %add.ptr644, %cond.true638 ], [ %add.ptr618, %cond.true612 ], [ %add.ptr592, %cond.true586 ], [ %add.ptr566, %cond.true560 ], [ %add.ptr542, %cond.true ]
  %188 = ptrtoint ptr %add.ptr553.sink to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr553.sink, align 4
  %shr554 = lshr i32 %189, 8
  %and555 = and i32 %shr554, 255
  br label %cond.end677

cond.end677:                                      ; preds = %cond.end677.sink.split, %if.then537.cond.end677_crit_edge
  %cond678 = phi i32 [ 0, %if.then537.cond.end677_crit_edge ], [ %and555, %cond.end677.sink.split ]
  %shl679 = shl nuw i32 1, %cond678
  %190 = ptrtoint ptr %fte to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %fte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp683932.not = icmp eq i32 %191, 0
  br i1 %cmp683932.not, label %cond.end677.for.end712_crit_edge, label %for.body685.lr.ph

cond.end677.for.end712_crit_edge:                 ; preds = %cond.end677
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end712

for.body685.lr.ph:                                ; preds = %cond.end677
  %dest_arr686 = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte, i32 0, i32 5
  br label %for.body685

for.body685:                                      ; preds = %for.inc710.for.body685_crit_edge, %for.body685.lr.ph
  %list_size680.0936 = phi i32 [ 0, %for.body685.lr.ph ], [ %list_size680.1, %for.inc710.for.body685_crit_edge ]
  %in_dests.3935 = phi ptr [ %in_dests.2, %for.body685.lr.ph ], [ %in_dests.4, %for.inc710.for.body685_crit_edge ]
  %i.1933 = phi i32 [ 0, %for.body685.lr.ph ], [ %inc711, %for.inc710.for.body685_crit_edge ]
  %192 = ptrtoint ptr %dest_arr686 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dest_arr686, align 4
  %arrayidx687 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %193, i32 %i.1933
  %194 = ptrtoint ptr %arrayidx687 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx687, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %195)
  %cmp689.not = icmp eq i32 %195, 256
  br i1 %cmp689.not, label %do.body693, label %for.body685.for.inc710_crit_edge

for.body685.for.inc710_crit_edge:                 ; preds = %for.body685
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc710

do.body693:                                       ; preds = %for.body685
  call void @__sanitizer_cov_trace_pc() #10
  %196 = getelementptr %struct.mlx5dr_cmd_flow_destination_hw_info, ptr %193, i32 %i.1933, i32 1
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %196, align 4
  %199 = ptrtoint ptr %in_dests.3935 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %in_dests.3935, align 4
  %add.ptr708 = getelementptr i8, ptr %in_dests.3935, i32 %.
  %inc709 = add i32 %list_size680.0936, 1
  br label %for.inc710

for.inc710:                                       ; preds = %do.body693, %for.body685.for.inc710_crit_edge
  %in_dests.4 = phi ptr [ %in_dests.3935, %for.body685.for.inc710_crit_edge ], [ %add.ptr708, %do.body693 ]
  %list_size680.1 = phi i32 [ %list_size680.0936, %for.body685.for.inc710_crit_edge ], [ %inc709, %do.body693 ]
  %inc711 = add nuw i32 %i.1933, 1
  %200 = ptrtoint ptr %fte to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %fte, align 4
  %cmp683 = icmp ult i32 %inc711, %201
  br i1 %cmp683, label %for.inc710.for.body685_crit_edge, label %for.inc710.for.end712_crit_edge

for.inc710.for.end712_crit_edge:                  ; preds = %for.inc710
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end712

for.inc710.for.body685_crit_edge:                 ; preds = %for.inc710
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body685

for.end712:                                       ; preds = %for.inc710.for.end712_crit_edge, %cond.end677.for.end712_crit_edge
  %list_size680.0.lcssa = phi i32 [ 0, %cond.end677.for.end712_crit_edge ], [ %list_size680.1, %for.inc710.for.end712_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %list_size680.0.lcssa, i32 %shl679)
  %cmp713 = icmp sgt i32 %list_size680.0.lcssa, %shl679
  br i1 %cmp713, label %for.end712.err_out_crit_edge, label %cleanup730.thread

for.end712.err_out_crit_edge:                     ; preds = %for.end712
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

cleanup730.thread:                                ; preds = %for.end712
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr722 = getelementptr i8, ptr %call.i.i, i32 84
  %202 = ptrtoint ptr %add.ptr722 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr722, align 4
  %and723 = and i32 %203, -16777216
  %and724 = and i32 %list_size680.0.lcssa, 16777215
  %or726 = or i32 %and723, %and724
  store i32 %or726, ptr %add.ptr722, align 4
  br label %if.end734

if.end734:                                        ; preds = %cleanup730.thread, %if.end532.if.end734_crit_edge
  %call736 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef %add, ptr noundef nonnull %out, i32 noundef 16) #8
  br label %err_out

err_out:                                          ; preds = %if.end734, %for.end712.err_out_crit_edge
  %err.1 = phi i32 [ %call736, %if.end734 ], [ -22, %for.end712.err_out_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #8
  br label %cleanup737

cleanup737:                                       ; preds = %err_out, %if.end.cleanup737_crit_edge, %do.end41.i, %do.end.i
  %retval.0 = phi i32 [ %err.1, %err_out ], [ -12, %if.end.cleanup737_crit_edge ], [ -95, %do.end.i ], [ -95, %do.end41.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_cmd.c", i32 620, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5dr_cmd_set_extended_dest._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5dr_cmd_set_extended_dest._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_cmd.c", i32 624, i32 3}
!10 = !{ptr @mlx5dr_cmd_set_extended_dest._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5dr_cmd_set_extended_dest._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i8 0, i8 2}
