; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lag/port_sel.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lag/port_sel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ttc_params = type { ptr, %struct.mlx5_flow_table_attr, [11 x %struct.mlx5_flow_destination], [1 x i32], i8, [1 x i32], [6 x %struct.mlx5_flow_destination] }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.161 }
%struct.anon.161 = type { i32, i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { i16, i16, ptr, i8 }
%struct.mlx5_lag = type { i8, i32, i8, [2 x i8], %struct.kref, [2 x %struct.lag_func], %struct.lag_tracker, ptr, %struct.delayed_work, %struct.notifier_block, %struct.lag_mp, %struct.mlx5_lag_port_sel }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lag_func = type { ptr, ptr }
%struct.lag_tracker = type { i32, [2 x %struct.netdev_lag_lower_state_info], i8, i32 }
%struct.netdev_lag_lower_state_info = type { i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lag_mp = type { %struct.notifier_block, ptr, ptr }
%struct.mlx5_lag_port_sel = type { [1 x i32], i8, %struct.mlx5_lag_ttc, %struct.mlx5_lag_ttc }
%struct.mlx5_lag_ttc = type { ptr, [11 x ptr] }
%struct.mlx5_lag_definer = type { ptr, ptr, ptr, [2 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.164, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.164 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
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

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_lag_create_port_sel_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Failed to get port selection namespace\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5_lag_create_port_sel_table\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lag/port_sel.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_lag_create_port_sel_table._entry_ptr = internal global ptr @mlx5_lag_create_port_sel_table._entry, section ".printk_index", align 4
@mlx5_lag_create_port_sel_table._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Failed to create port selection table\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_lag_create_port_sel_table._entry_ptr.7 = internal global ptr @mlx5_lag_create_port_sel_table._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 8, i64 9]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 53, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lag/port_sel.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 59, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @mlx5_lag_create_port_sel_table._entry, ptr @mlx5_lag_create_port_sel_table._entry.5, ptr @mlx5_lag_create_port_sel_table._entry_ptr, ptr @mlx5_lag_create_port_sel_table._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_lag_create_port_sel_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_lag_create_port_sel_table._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_lag_port_sel_create(ptr noundef %ldev, i32 noundef %hash_type, i8 noundef zeroext %port1, i8 noundef zeroext %port2) local_unnamed_addr #0 align 64 {
entry:
  %ttc_params.i33 = alloca %struct.ttc_params, align 4
  %ttc_params.i = alloca %struct.ttc_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_sel1 = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11
  %tunnel.i = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tunnel.i, align 4
  %1 = zext i32 %hash_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %hash_type, label %entry.set_tt_map.exit_crit_edge [
    i32 5, label %sw.bb.i
    i32 2, label %entry.sw.bb2.i_crit_edge
    i32 4, label %sw.bb15.i
    i32 3, label %entry.sw.epilog.sink.split.i_crit_edge
  ]

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.set_tt_map.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_tt_map.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tunnel.i, align 4
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %entry.sw.bb2.i_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %port_sel1) #7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %port_sel1) #7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %port_sel1) #7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %port_sel1) #7
  br label %sw.epilog.sink.split.i

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %tunnel.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb15.i, %sw.bb2.i, %entry.sw.epilog.sink.split.i_crit_edge
  tail call void @_set_bit(i32 noundef 8, ptr noundef %port_sel1) #7
  tail call void @_set_bit(i32 noundef 9, ptr noundef %port_sel1) #7
  br label %set_tt_map.exit

set_tt_map.exit:                                  ; preds = %sw.epilog.sink.split.i, %entry.set_tt_map.exit_crit_edge
  tail call void @_set_bit(i32 noundef 10, ptr noundef %port_sel1) #7
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.i)
  %cmp41.i = icmp slt i32 %call.i, 11
  br i1 %cmp41.i, label %set_tt_map.exit.for.body.i_crit_edge, label %set_tt_map.exit.if.end_crit_edge

set_tt_map.exit.if.end_crit_edge:                 ; preds = %set_tt_map.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

set_tt_map.exit.for.body.i_crit_edge:             ; preds = %set_tt_map.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %set_tt_map.exit.for.body.i_crit_edge
  %tt.042.i = phi i32 [ %call16.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %set_tt_map.exit.for.body.i_crit_edge ]
  %call2.i = tail call fastcc ptr @mlx5_lag_create_definer(ptr noundef %ldev, i32 noundef %hash_type, i32 noundef %tt.042.i, i1 noundef zeroext false, i8 noundef zeroext %port1, i8 noundef zeroext %port2) #7
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.i.mlx5_lag_create_definers.exit_crit_edge, label %if.end.i

for.body.i.mlx5_lag_create_definers.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_lag_create_definers.exit

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 2, i32 1, i32 %tt.042.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2.i, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tunnel.i, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end6.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call fastcc ptr @mlx5_lag_create_definer(ptr noundef %ldev, i32 noundef %hash_type, i32 noundef %tt.042.i, i1 noundef zeroext true, i8 noundef zeroext %port1, i8 noundef zeroext %port2) #7
  %cmp.i40.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40.i, label %if.end6.i.mlx5_lag_create_definers.exit_crit_edge, label %if.end11.i

if.end6.i.mlx5_lag_create_definers.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_lag_create_definers.exit

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx13.i = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 3, i32 1, i32 %tt.042.i
  %7 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %arrayidx13.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %if.end.i.for.inc.i_crit_edge
  %add.i = add nsw i32 %tt.042.i, 1
  %call16.i = tail call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef %add.i) #7
  %cmp.i = icmp slt i32 %call16.i, 11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mlx5_lag_create_definers.exit:                    ; preds = %if.end6.i.mlx5_lag_create_definers.exit_crit_edge, %for.body.i.mlx5_lag_create_definers.exit_crit_edge
  %err.0.in.i = phi ptr [ %call2.i, %for.body.i.mlx5_lag_create_definers.exit_crit_edge ], [ %call7.i, %if.end6.i.mlx5_lag_create_definers.exit_crit_edge ]
  %err.0.i = ptrtoint ptr %err.0.in.i to i32
  tail call fastcc void @mlx5_lag_destroy_definers(ptr noundef %ldev) #7
  %tobool.not = icmp eq ptr %err.0.in.i, null
  br i1 %tobool.not, label %mlx5_lag_create_definers.exit.if.end_crit_edge, label %mlx5_lag_create_definers.exit.cleanup_crit_edge

mlx5_lag_create_definers.exit.cleanup_crit_edge:  ; preds = %mlx5_lag_create_definers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5_lag_create_definers.exit.if.end_crit_edge:   ; preds = %mlx5_lag_create_definers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %mlx5_lag_create_definers.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %set_tt_map.exit.if.end_crit_edge
  %8 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tunnel.i, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %pf.i = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 5
  %10 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pf.i, align 4
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %ttc_params.i) #7
  %12 = getelementptr inbounds i8, ptr %ttc_params.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 312)
  %call.i.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %11, i32 noundef 18) #7
  %14 = ptrtoint ptr %ttc_params.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %ttc_params.i, align 4
  %level.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %level.i.i, align 4
  %call4.i.i = tail call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call4.i.i)
  %cmp40.i.i = icmp slt i32 %call4.i.i, 11
  br i1 %cmp40.i.i, label %if.then3.for.body.i.i_crit_edge, label %if.then3.do.body.i.i_crit_edge

if.then3.do.body.i.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.then3.for.body.i.i_crit_edge:                  ; preds = %if.then3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then3.for.body.i.i_crit_edge
  %tt.041.i.i = phi i32 [ %call11.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call4.i.i, %if.then3.for.body.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 %tt.041.i.i
  %16 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 3, i32 1, i32 %tt.041.i.i
  %17 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx6.i.i, align 4
  %ft.i.i = getelementptr inbounds %struct.mlx5_lag_definer, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ft.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ft.i.i, align 4
  %21 = getelementptr %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 %tt.041.i.i, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %21, align 4
  %add.i.i = add nsw i32 %tt.041.i.i, 1
  %call11.i.i = tail call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef %add.i.i) #7
  %cmp.i.i31 = icmp slt i32 %call11.i.i, 11
  br i1 %cmp.i.i31, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.do.body.i.i_crit_edge

for.body.i.i.do.body.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.body.i.i.do.body.i.i_crit_edge, %if.then3.do.body.i.i_crit_edge
  %call14.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call14.i.i)
  %cmp1642.i.i = icmp slt i32 %call14.i.i, 11
  br i1 %cmp1642.i.i, label %for.body17.lr.ph.i.i, label %do.body.i.i.mlx5_lag_create_inner_ttc_table.exit_crit_edge

do.body.i.i.mlx5_lag_create_inner_ttc_table.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_lag_create_inner_ttc_table.exit

for.body17.lr.ph.i.i:                             ; preds = %do.body.i.i
  %ignore_dests.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 3
  br label %for.body17.i.i

for.body17.i.i:                                   ; preds = %for.body17.i.i.for.body17.i.i_crit_edge, %for.body17.lr.ph.i.i
  %idx.043.i.i = phi i32 [ %call14.i.i, %for.body17.lr.ph.i.i ], [ %call23.i.i, %for.body17.i.i.for.body17.i.i_crit_edge ]
  call void @_set_bit(i32 noundef %idx.043.i.i, ptr noundef %ignore_dests.i.i) #7
  %add22.i.i = add nsw i32 %idx.043.i.i, 1
  %call23.i.i = call i32 @_find_next_zero_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef %add22.i.i) #7
  %cmp16.i.i = icmp slt i32 %call23.i.i, 11
  br i1 %cmp16.i.i, label %for.body17.i.i.for.body17.i.i_crit_edge, label %for.body17.i.i.mlx5_lag_create_inner_ttc_table.exit_crit_edge

for.body17.i.i.mlx5_lag_create_inner_ttc_table.exit_crit_edge: ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_lag_create_inner_ttc_table.exit

for.body17.i.i.for.body17.i.i_crit_edge:          ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17.i.i

mlx5_lag_create_inner_ttc_table.exit:             ; preds = %for.body17.i.i.mlx5_lag_create_inner_ttc_table.exit_crit_edge, %do.body.i.i.mlx5_lag_create_inner_ttc_table.exit_crit_edge
  %call.i32 = call ptr @mlx5_create_ttc_table(ptr noundef %11, ptr noundef nonnull %ttc_params.i) #7
  %inner.i = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 3
  %23 = ptrtoint ptr %inner.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i32, ptr %inner.i, align 4
  %cmp.i15.i.not = icmp ugt ptr %call.i32, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %ttc_params.i) #7
  br i1 %cmp.i15.i.not, label %mlx5_lag_create_inner_ttc_table.exit.destroy_definers_crit_edge, label %mlx5_lag_create_inner_ttc_table.exit.if.end8_crit_edge

mlx5_lag_create_inner_ttc_table.exit.if.end8_crit_edge: ; preds = %mlx5_lag_create_inner_ttc_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

mlx5_lag_create_inner_ttc_table.exit.destroy_definers_crit_edge: ; preds = %mlx5_lag_create_inner_ttc_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_definers

if.end8:                                          ; preds = %mlx5_lag_create_inner_ttc_table.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %pf.i34 = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 5
  %24 = ptrtoint ptr %pf.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pf.i34, align 4
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %ttc_params.i33) #7
  %26 = getelementptr inbounds i8, ptr %ttc_params.i33, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 312)
  %call.i.i36 = call ptr @mlx5_get_flow_namespace(ptr noundef %25, i32 noundef 18) #7
  %28 = ptrtoint ptr %ttc_params.i33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i36, ptr %ttc_params.i33, align 4
  %level.i.i37 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %level.i.i37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %level.i.i37, align 4
  %call4.i.i38 = call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call4.i.i38)
  %cmp65.i.i = icmp slt i32 %call4.i.i38, 11
  br i1 %cmp65.i.i, label %if.end8.for.body.i.i45_crit_edge, label %if.end8.do.body.i.i47_crit_edge

if.end8.do.body.i.i47_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i47

if.end8.for.body.i.i45_crit_edge:                 ; preds = %if.end8
  br label %for.body.i.i45

for.body.i.i45:                                   ; preds = %for.body.i.i45.for.body.i.i45_crit_edge, %if.end8.for.body.i.i45_crit_edge
  %tt.066.i.i = phi i32 [ %call11.i.i43, %for.body.i.i45.for.body.i.i45_crit_edge ], [ %call4.i.i38, %if.end8.for.body.i.i45_crit_edge ]
  %arrayidx5.i.i39 = getelementptr %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 2, i32 %tt.066.i.i
  %30 = ptrtoint ptr %arrayidx5.i.i39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx5.i.i39, align 4
  %arrayidx6.i.i40 = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 2, i32 1, i32 %tt.066.i.i
  %31 = ptrtoint ptr %arrayidx6.i.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx6.i.i40, align 4
  %ft.i.i41 = getelementptr inbounds %struct.mlx5_lag_definer, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ft.i.i41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ft.i.i41, align 4
  %35 = getelementptr %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 2, i32 %tt.066.i.i, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %35, align 4
  %add.i.i42 = add nsw i32 %tt.066.i.i, 1
  %call11.i.i43 = call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef %add.i.i42) #7
  %cmp.i.i44 = icmp slt i32 %call11.i.i43, 11
  br i1 %cmp.i.i44, label %for.body.i.i45.for.body.i.i45_crit_edge, label %for.body.i.i45.do.body.i.i47_crit_edge

for.body.i.i45.do.body.i.i47_crit_edge:           ; preds = %for.body.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i47

for.body.i.i45.for.body.i.i45_crit_edge:          ; preds = %for.body.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i45

do.body.i.i47:                                    ; preds = %for.body.i.i45.do.body.i.i47_crit_edge, %if.end8.do.body.i.i47_crit_edge
  %call14.i.i46 = call i32 @_find_next_zero_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call14.i.i46)
  %cmp1667.i.i = icmp slt i32 %call14.i.i46, 11
  br i1 %cmp1667.i.i, label %for.body17.lr.ph.i.i49, label %do.body.i.i47.for.end24.i.i_crit_edge

do.body.i.i47.for.end24.i.i_crit_edge:            ; preds = %do.body.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24.i.i

for.body17.lr.ph.i.i49:                           ; preds = %do.body.i.i47
  %ignore_dests.i.i48 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 3
  br label %for.body17.i.i53

for.body17.i.i53:                                 ; preds = %for.body17.i.i53.for.body17.i.i53_crit_edge, %for.body17.lr.ph.i.i49
  %idx.068.i.i = phi i32 [ %call14.i.i46, %for.body17.lr.ph.i.i49 ], [ %call23.i.i51, %for.body17.i.i53.for.body17.i.i53_crit_edge ]
  call void @_set_bit(i32 noundef %idx.068.i.i, ptr noundef %ignore_dests.i.i48) #7
  %add22.i.i50 = add nsw i32 %idx.068.i.i, 1
  %call23.i.i51 = call i32 @_find_next_zero_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef %add22.i.i50) #7
  %cmp16.i.i52 = icmp slt i32 %call23.i.i51, 11
  br i1 %cmp16.i.i52, label %for.body17.i.i53.for.body17.i.i53_crit_edge, label %for.body17.i.i53.for.end24.i.i_crit_edge

for.body17.i.i53.for.end24.i.i_crit_edge:         ; preds = %for.body17.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24.i.i

for.body17.i.i53.for.body17.i.i53_crit_edge:      ; preds = %for.body17.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17.i.i53

for.end24.i.i:                                    ; preds = %for.body17.i.i53.for.end24.i.i_crit_edge, %do.body.i.i47.for.end24.i.i_crit_edge
  %37 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tunnel.i, align 4, !range !22
  %inner_ttc.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 4
  %39 = ptrtoint ptr %inner_ttc.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %inner_ttc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool26.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool26.not.i.i, label %for.end24.i.i.mlx5_lag_create_ttc_table.exit_crit_edge, label %for.cond27.preheader.i.i

for.end24.i.i.mlx5_lag_create_ttc_table.exit_crit_edge: ; preds = %for.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_lag_create_ttc_table.exit

for.cond27.preheader.i.i:                         ; preds = %for.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inner.i.i = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 3
  %arrayidx30.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 0
  %40 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %arrayidx30.i.i, align 4
  %41 = ptrtoint ptr %inner.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %inner.i.i, align 4
  %call32.i.i = call ptr @mlx5_get_ttc_flow_table(ptr noundef %42) #7
  %43 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call32.i.i, ptr %43, align 4
  %arrayidx30.1.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %arrayidx30.1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %arrayidx30.1.i.i, align 4
  %46 = ptrtoint ptr %inner.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %inner.i.i, align 4
  %call32.1.i.i = call ptr @mlx5_get_ttc_flow_table(ptr noundef %47) #7
  %48 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 1, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call32.1.i.i, ptr %48, align 4
  %arrayidx30.2.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %arrayidx30.2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %arrayidx30.2.i.i, align 4
  %51 = ptrtoint ptr %inner.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %inner.i.i, align 4
  %call32.2.i.i = call ptr @mlx5_get_ttc_flow_table(ptr noundef %52) #7
  %53 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 2, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call32.2.i.i, ptr %53, align 4
  %arrayidx30.3.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 3
  %55 = ptrtoint ptr %arrayidx30.3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %arrayidx30.3.i.i, align 4
  %56 = ptrtoint ptr %inner.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %inner.i.i, align 4
  %call32.3.i.i = call ptr @mlx5_get_ttc_flow_table(ptr noundef %57) #7
  %58 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 3, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call32.3.i.i, ptr %58, align 4
  %arrayidx30.4.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 4
  %60 = ptrtoint ptr %arrayidx30.4.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %arrayidx30.4.i.i, align 4
  %61 = ptrtoint ptr %inner.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %inner.i.i, align 4
  %call32.4.i.i = call ptr @mlx5_get_ttc_flow_table(ptr noundef %62) #7
  %63 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 4, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call32.4.i.i, ptr %63, align 4
  %arrayidx30.5.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 5
  %65 = ptrtoint ptr %arrayidx30.5.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %arrayidx30.5.i.i, align 4
  %66 = ptrtoint ptr %inner.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %inner.i.i, align 4
  %call32.5.i.i = call ptr @mlx5_get_ttc_flow_table(ptr noundef %67) #7
  %68 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i33, i32 0, i32 6, i32 5, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call32.5.i.i, ptr %68, align 4
  br label %mlx5_lag_create_ttc_table.exit

mlx5_lag_create_ttc_table.exit:                   ; preds = %for.cond27.preheader.i.i, %for.end24.i.i.mlx5_lag_create_ttc_table.exit_crit_edge
  %call.i54 = call ptr @mlx5_create_ttc_table(ptr noundef %25, ptr noundef nonnull %ttc_params.i33) #7
  %outer.i = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 2
  %70 = ptrtoint ptr %outer.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i54, ptr %outer.i, align 4
  %cmp.i15.i55.not = icmp ugt ptr %call.i54, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %ttc_params.i33) #7
  br i1 %cmp.i15.i55.not, label %destroy_inner, label %mlx5_lag_create_ttc_table.exit.cleanup_crit_edge

mlx5_lag_create_ttc_table.exit.cleanup_crit_edge: ; preds = %mlx5_lag_create_ttc_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

destroy_inner:                                    ; preds = %mlx5_lag_create_ttc_table.exit
  %71 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tunnel.i, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool14.not = icmp eq i8 %72, 0
  br i1 %tobool14.not, label %destroy_inner.destroy_definers_crit_edge, label %if.then15

destroy_inner.destroy_definers_crit_edge:         ; preds = %destroy_inner
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_definers

if.then15:                                        ; preds = %destroy_inner
  call void @__sanitizer_cov_trace_pc() #9
  %inner = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 3
  %73 = ptrtoint ptr %inner to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %inner, align 4
  call void @mlx5_destroy_ttc_table(ptr noundef %74) #7
  br label %destroy_definers

destroy_definers:                                 ; preds = %if.then15, %destroy_inner.destroy_definers_crit_edge, %mlx5_lag_create_inner_ttc_table.exit.destroy_definers_crit_edge
  %err.0.in = phi ptr [ %call.i32, %mlx5_lag_create_inner_ttc_table.exit.destroy_definers_crit_edge ], [ %call.i54, %if.then15 ], [ %call.i54, %destroy_inner.destroy_definers_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  call fastcc void @mlx5_lag_destroy_definers(ptr noundef %ldev)
  br label %cleanup

cleanup:                                          ; preds = %destroy_definers, %mlx5_lag_create_ttc_table.exit.cleanup_crit_edge, %mlx5_lag_create_definers.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %destroy_definers ], [ %err.0.i, %mlx5_lag_create_definers.exit.cleanup_crit_edge ], [ 0, %mlx5_lag_create_ttc_table.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_ttc_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_lag_destroy_definers(ptr noundef %ldev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_sel1 = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11
  %call = tail call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call)
  %cmp35 = icmp slt i32 %call, 11
  br i1 %cmp35, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pf.i = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tt.036 = phi i32 [ %call, %for.body.lr.ph ], [ %call15, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 2, i32 1, i32 %tt.036
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf.i, align 4
  %arrayidx2.i = getelementptr %struct.mlx5_lag_definer, ptr %1, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %5) #7
  %arrayidx2.1.i = getelementptr %struct.mlx5_lag_definer, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.1.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %7) #7
  %fg.i = getelementptr inbounds %struct.mlx5_lag_definer, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %fg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fg.i, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %9) #7
  %ft.i = getelementptr inbounds %struct.mlx5_lag_definer, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ft.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ft.i, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %11) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @mlx5_destroy_match_definer(ptr noundef %3, ptr noundef %13) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %arrayidx6 = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 3, i32 1, i32 %tt.036
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.end.for.inc_crit_edge, label %if.then8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf.i, align 4
  %arrayidx2.i30 = getelementptr %struct.mlx5_lag_definer, ptr %15, i32 0, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx2.i30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2.i30, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %19) #7
  %arrayidx2.1.i31 = getelementptr %struct.mlx5_lag_definer, ptr %15, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %arrayidx2.1.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2.1.i31, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %21) #7
  %fg.i32 = getelementptr inbounds %struct.mlx5_lag_definer, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %fg.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fg.i32, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %23) #7
  %ft.i33 = getelementptr inbounds %struct.mlx5_lag_definer, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %ft.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ft.i33, align 4
  %call.i34 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %25) #7
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %15, align 4
  tail call void @mlx5_destroy_match_definer(ptr noundef %17, ptr noundef %27) #7
  tail call void @kfree(ptr noundef nonnull %15) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end.for.inc_crit_edge
  %add = add nsw i32 %tt.036, 1
  %call15 = tail call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef %add) #7
  %cmp = icmp slt i32 %call15, 11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_lag_port_sel_modify(ptr noundef %ldev, i8 noundef zeroext %port1, i8 noundef zeroext %port2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %definers = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 2, i32 1
  %call = tail call fastcc i32 @mlx5_lag_modify_definers_destinations(ptr noundef %ldev, ptr noundef %definers, i8 noundef zeroext %port1, i8 noundef zeroext %port2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tunnel = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tunnel, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %definers5 = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 3, i32 1
  %call7 = tail call fastcc i32 @mlx5_lag_modify_definers_destinations(ptr noundef %ldev, ptr noundef %definers5, i8 noundef zeroext %port1, i8 noundef zeroext %port2)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_lag_modify_definers_destinations(ptr noundef %ldev, ptr nocapture noundef readonly %definers, i8 noundef zeroext %port1, i8 noundef zeroext %port2) unnamed_addr #0 align 64 {
entry:
  %dest = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port_sel1 = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #7
  %0 = getelementptr inbounds i8, ptr %dest, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %dest, align 4
  %flags = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %flags, align 4
  %call = tail call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef 0) #7
  %conv23 = zext i8 %port2 to i32
  %sub29 = add nsw i32 %conv23, -1
  %arrayidx30 = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 5, i32 %sub29
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call)
  %cmp70 = icmp slt i32 %call, 11
  br i1 %cmp70, label %for.body.lr.ph, label %entry.cleanup51_crit_edge

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

for.body.lr.ph:                                   ; preds = %entry
  %v2p_map = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 3
  %conv8 = zext i8 %port1 to i32
  %sub = add nsw i32 %conv8, -1
  %arrayidx12 = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 5, i32 %sub
  %vhca_id = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1, i32 0, i32 1
  %arrayidx21 = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tt.071 = phi i32 [ %call, %for.body.lr.ph ], [ %call50, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %definers, i32 %tt.071
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %v2p_map to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %v2p_map, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %port1)
  %cmp9.not = icmp eq i8 %7, %port1
  br i1 %cmp9.not, label %for.body.if.end19_crit_edge, label %if.then

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %for.body
  %rules4 = getelementptr inbounds %struct.mlx5_lag_definer, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %conv15 = trunc i32 %13 to i16
  %14 = ptrtoint ptr %vhca_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv15, ptr %vhca_id, align 2
  %15 = ptrtoint ptr %rules4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rules4, align 4
  %call17 = call i32 @mlx5_modify_rule_destination(ptr noundef %16, ptr noundef nonnull %dest, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then.if.end19_crit_edge, label %if.then.cleanup51_crit_edge

if.then.cleanup51_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %port2)
  %cmp24.not = icmp eq i8 %18, %port2
  br i1 %cmp24.not, label %if.end19.for.inc_crit_edge, label %if.then26

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then26:                                        ; preds = %if.end19
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx30, align 4
  %caps32 = getelementptr inbounds %struct.mlx5_core_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %caps32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %caps32, align 8
  %add.ptr37 = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr37, align 4
  %conv40 = trunc i32 %24 to i16
  %25 = ptrtoint ptr %vhca_id to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv40, ptr %vhca_id, align 2
  %arrayidx42 = getelementptr %struct.mlx5_lag_definer, ptr %5, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx42, align 4
  %call43 = call i32 @mlx5_modify_rule_destination(ptr noundef %27, ptr noundef nonnull %dest, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then26.for.inc_crit_edge, label %if.then26.cleanup51_crit_edge

if.then26.cleanup51_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then26.for.inc_crit_edge, %if.end19.for.inc_crit_edge
  %add = add nsw i32 %tt.071, 1
  %call50 = call i32 @_find_next_bit_be(ptr noundef %port_sel1, i32 noundef 11, i32 noundef %add) #7
  %cmp = icmp slt i32 %call50, 11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup51_crit_edge

for.inc.cleanup51_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup51:                                        ; preds = %for.inc.cleanup51_crit_edge, %if.then26.cleanup51_crit_edge, %if.then.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup51_crit_edge ], [ %call43, %if.then26.cleanup51_crit_edge ], [ %call17, %if.then.cleanup51_crit_edge ], [ 0, %for.inc.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_lag_port_sel_destroy(ptr noundef %ldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %outer = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %outer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outer, align 4
  tail call void @mlx5_destroy_ttc_table(ptr noundef %1) #7
  %tunnel = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %tunnel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tunnel, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inner = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %inner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inner, align 4
  tail call void @mlx5_destroy_ttc_table(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %port_sel1 = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 11
  tail call fastcc void @mlx5_lag_destroy_definers(ptr noundef %ldev)
  %6 = call ptr @memset(ptr %port_sel1, i32 0, i32 104)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_lag_create_definer(ptr nocapture noundef readonly %ldev, i32 noundef %hash, i32 noundef %tt, i1 noundef zeroext %tunnel, i8 noundef zeroext %port1, i8 noundef zeroext %port2) unnamed_addr #0 align 64 {
entry:
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.mlx5_lag, ptr %ldev, i32 0, i32 5
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 64, i32 noundef 3520, i32 noundef -1) #11
  %tobool4.not = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not, label %if.end.free_lag_definer_crit_edge, label %if.end6

if.end.free_lag_definer_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_lag_definer

if.end6:                                          ; preds = %if.end
  br i1 %tunnel, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end6
  %3 = zext i32 %tt to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %tt, label %sw.default.i.i [
    i32 2, label %if.then.i.sw.bb.i.i_crit_edge
    i32 0, label %if.then.i.sw.bb.i.i_crit_edge51
    i32 8, label %sw.bb35.i.i
    i32 1, label %if.then.i.sw.bb106.i.i_crit_edge
    i32 3, label %if.then.i.sw.bb106.i.i_crit_edge52
    i32 9, label %sw.bb129.i.i
  ]

if.then.i.sw.bb106.i.i_crit_edge52:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106.i.i

if.then.i.sw.bb106.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106.i.i

if.then.i.sw.bb.i.i_crit_edge51:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.then.i.sw.bb.i.i_crit_edge, %if.then.i.sw.bb.i.i_crit_edge51
  %add.ptr.i.i = getelementptr i32, ptr %call.i.i, i32 10
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %add.ptr.i.i, align 4
  %add.ptr19.i.i = getelementptr i32, ptr %call.i.i, i32 8
  %5 = ptrtoint ptr %add.ptr19.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %add.ptr19.i.i, align 4
  %add.ptr29.i.i = getelementptr i32, ptr %call.i.i, i32 9
  %6 = ptrtoint ptr %add.ptr29.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %add.ptr29.i.i, align 4
  br label %mlx5_lag_set_definer.exit

sw.bb35.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr40.i.i = getelementptr i32, ptr %call.i.i, i32 11
  %7 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr40.i.i, align 4
  %or42.i.i = or i32 %8, 3145728
  store i32 %or42.i.i, ptr %add.ptr40.i.i, align 4
  %add.ptr50.i.i = getelementptr i32, ptr %call.i.i, i32 13
  %9 = ptrtoint ptr %add.ptr50.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %add.ptr50.i.i, align 4
  %add.ptr60.i.i = getelementptr i32, ptr %call.i.i, i32 15
  %add.ptr70.i.i = getelementptr i32, ptr %call.i.i, i32 14
  %10 = ptrtoint ptr %add.ptr70.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %add.ptr70.i.i, align 4
  %11 = ptrtoint ptr %add.ptr60.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %add.ptr60.i.i, align 4
  %add.ptr90.i.i = getelementptr i32, ptr %call.i.i, i32 8
  %12 = ptrtoint ptr %add.ptr90.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %add.ptr90.i.i, align 4
  %add.ptr100.i.i = getelementptr i32, ptr %call.i.i, i32 9
  %13 = ptrtoint ptr %add.ptr100.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %add.ptr100.i.i, align 4
  br label %mlx5_lag_set_definer.exit

sw.bb106.i.i:                                     ; preds = %if.then.i.sw.bb106.i.i_crit_edge, %if.then.i.sw.bb106.i.i_crit_edge52
  %add.ptr127.i.i = getelementptr i8, ptr %call.i.i, i32 24
  %14 = call ptr @memset(ptr %add.ptr127.i.i, i32 255, i32 36)
  br label %mlx5_lag_set_definer.exit

sw.bb129.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr130.i.i = getelementptr i8, ptr %call.i.i, i32 20
  %15 = call ptr @memset(ptr %add.ptr130.i.i, i32 255, i32 44)
  br label %mlx5_lag_set_definer.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr176.i.i = getelementptr i32, ptr %call.i.i, i32 11
  %16 = ptrtoint ptr %add.ptr176.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr176.i.i, align 4
  %or178.i.i = or i32 %17, 3145728
  store i32 %or178.i.i, ptr %add.ptr176.i.i, align 4
  %add.ptr186.i.i = getelementptr i32, ptr %call.i.i, i32 13
  %18 = ptrtoint ptr %add.ptr186.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %add.ptr186.i.i, align 4
  %add.ptr196.i.i = getelementptr i32, ptr %call.i.i, i32 15
  %add.ptr206.i.i = getelementptr i32, ptr %call.i.i, i32 14
  %19 = ptrtoint ptr %add.ptr206.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %add.ptr206.i.i, align 4
  %20 = ptrtoint ptr %add.ptr196.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %add.ptr196.i.i, align 4
  br label %mlx5_lag_set_definer.exit

if.end.i:                                         ; preds = %if.end6
  %21 = zext i32 %tt to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %tt, label %sw.default.i [
    i32 2, label %if.end.i.sw.bb.i_crit_edge
    i32 0, label %if.end.i.sw.bb.i_crit_edge53
    i32 8, label %sw.bb35.i
    i32 1, label %if.end.i.sw.bb106.i_crit_edge
    i32 3, label %if.end.i.sw.bb106.i_crit_edge54
    i32 9, label %sw.bb129.i
  ]

if.end.i.sw.bb106.i_crit_edge54:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106.i

if.end.i.sw.bb106.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106.i

if.end.i.sw.bb.i_crit_edge53:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge53
  %add.ptr.i = getelementptr i32, ptr %call.i.i, i32 10
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %add.ptr.i, align 4
  %add.ptr19.i = getelementptr i32, ptr %call.i.i, i32 8
  %23 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %add.ptr19.i, align 4
  %add.ptr29.i = getelementptr i32, ptr %call.i.i, i32 9
  %24 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %add.ptr29.i, align 4
  br label %mlx5_lag_set_definer.exit

sw.bb35.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr40.i = getelementptr i32, ptr %call.i.i, i32 11
  %25 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr40.i, align 4
  %or42.i = or i32 %26, 3145728
  store i32 %or42.i, ptr %add.ptr40.i, align 4
  %add.ptr50.i = getelementptr i32, ptr %call.i.i, i32 13
  %27 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %add.ptr50.i, align 4
  %add.ptr60.i = getelementptr i32, ptr %call.i.i, i32 15
  %add.ptr70.i = getelementptr i32, ptr %call.i.i, i32 14
  %28 = ptrtoint ptr %add.ptr70.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %add.ptr70.i, align 4
  %29 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %add.ptr60.i, align 4
  %add.ptr90.i = getelementptr i32, ptr %call.i.i, i32 8
  %30 = ptrtoint ptr %add.ptr90.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %add.ptr90.i, align 4
  %add.ptr100.i = getelementptr i32, ptr %call.i.i, i32 9
  %31 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %add.ptr100.i, align 4
  br label %mlx5_lag_set_definer.exit

sw.bb106.i:                                       ; preds = %if.end.i.sw.bb106.i_crit_edge, %if.end.i.sw.bb106.i_crit_edge54
  %add.ptr127.i = getelementptr i8, ptr %call.i.i, i32 24
  %32 = call ptr @memset(ptr %add.ptr127.i, i32 255, i32 36)
  br label %mlx5_lag_set_definer.exit

sw.bb129.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr130.i = getelementptr i8, ptr %call.i.i, i32 20
  %33 = call ptr @memset(ptr %add.ptr130.i, i32 255, i32 44)
  br label %mlx5_lag_set_definer.exit

sw.default.i:                                     ; preds = %if.end.i
  %add.ptr176.i = getelementptr i32, ptr %call.i.i, i32 14
  %34 = ptrtoint ptr %add.ptr176.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %add.ptr176.i, align 4
  %add.ptr186.i = getelementptr i32, ptr %call.i.i, i32 15
  %35 = ptrtoint ptr %add.ptr186.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr186.i, align 4
  %or188.i = or i32 %36, -65536
  store i32 %or188.i, ptr %add.ptr186.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %hash)
  %cmp.i = icmp eq i32 %hash, 6
  br i1 %cmp.i, label %do.end196.i, label %do.end207.i

do.end196.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr197.i = getelementptr i32, ptr %call.i.i, i32 12
  %37 = ptrtoint ptr %add.ptr197.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr197.i, align 4
  %or199.i = or i32 %38, 4095
  store i32 %or199.i, ptr %add.ptr197.i, align 4
  br label %mlx5_lag_set_definer.exit

do.end207.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr208.i = getelementptr i32, ptr %call.i.i, i32 11
  %add.ptr218.i = getelementptr i32, ptr %call.i.i, i32 10
  %39 = ptrtoint ptr %add.ptr218.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %add.ptr218.i, align 4
  %40 = ptrtoint ptr %add.ptr208.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %add.ptr208.i, align 4
  br label %mlx5_lag_set_definer.exit

mlx5_lag_set_definer.exit:                        ; preds = %do.end207.i, %do.end196.i, %sw.bb129.i, %sw.bb106.i, %sw.bb35.i, %sw.bb.i, %sw.default.i.i, %sw.bb129.i.i, %sw.bb106.i.i, %sw.bb35.i.i, %sw.bb.i.i
  %retval.0.i = phi i16 [ 0, %do.end196.i ], [ 0, %do.end207.i ], [ 30, %sw.bb129.i ], [ 29, %sw.bb106.i ], [ 22, %sw.bb35.i ], [ 22, %sw.bb.i ], [ 23, %sw.default.i.i ], [ 32, %sw.bb129.i.i ], [ 31, %sw.bb106.i.i ], [ 23, %sw.bb35.i.i ], [ 23, %sw.bb.i.i ]
  %call9 = tail call ptr @mlx5_create_match_definer(ptr noundef %1, i32 noundef 18, i16 noundef zeroext %retval.0.i, ptr noundef nonnull %call.i.i) #7
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9, ptr %call7.i.i, align 8
  %cmp.i40 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then12, label %if.end15

if.then12:                                        ; preds = %mlx5_lag_set_definer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %call9 to i32
  br label %free_mask

if.end15:                                         ; preds = %mlx5_lag_set_definer.exit
  %43 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pf, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %45 = call ptr @memset(ptr %ft_attr.i, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #7
  %46 = call ptr @memset(ptr %dest.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #7
  %47 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 32)
  %49 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %flow_act.i, align 4
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %50 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %max_fte.i, align 4
  %level.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 2
  %51 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %level.i, align 4
  %call.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %44, i32 noundef 18) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %mlx5_lag_create_port_sel_table.exit.thread47, label %if.end.i41

mlx5_lag_create_port_sel_table.exit.thread47:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %44, align 8
  %54 = tail call i32 @llvm.read_register.i32(metadata !12) #7
  %and.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 53, i32 noundef %59) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  br label %destroy_match_definer

if.end.i41:                                       ; preds = %if.end15
  %call3.i = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call.i, ptr noundef nonnull %ft_attr.i) #7
  %ft.i = getelementptr inbounds %struct.mlx5_lag_definer, ptr %call7.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %ft.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call3.i, ptr %ft.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end9.i, label %if.end16.i

do.end9.i:                                        ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %44, align 8
  %63 = call i32 @llvm.read_register.i32(metadata !12) #7
  %and.i89.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i89.i to ptr
  %task12.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task12.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task12.i, align 8
  %pid13.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid13.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid13.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef %68) #12
  %69 = ptrtoint ptr %ft.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ft.i, align 4
  br label %mlx5_lag_create_port_sel_table.exit

if.end16.i:                                       ; preds = %if.end.i41
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call7.i.i, align 8
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %mlx5_create_hash_flow_group.exit.thread.i, label %mlx5_create_hash_flow_group.exit.i

mlx5_create_hash_flow_group.exit.thread.i:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %fg94.i = getelementptr inbounds %struct.mlx5_lag_definer, ptr %call7.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %fg94.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 -12 to ptr), ptr %fg94.i, align 8
  br label %destroy_ft.i

mlx5_create_hash_flow_group.exit.i:               ; preds = %if.end16.i
  %call2.i.i = call i32 @mlx5_get_match_definer_id(ptr noundef %72) #7
  %add.ptr.i.i42 = getelementptr i32, ptr %call.i.i.i.i, i32 10
  %74 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i.i42, align 4
  %and.i90.i = and i32 %75, -65536
  %and4.i.i = and i32 %call2.i.i, 65535
  %or.i.i = or i32 %and.i90.i, %and4.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i42, align 4
  %add.ptr13.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 7
  %76 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %add.ptr13.i.i, align 4
  %add.ptr26.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 9
  %77 = ptrtoint ptr %add.ptr26.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %add.ptr26.i.i, align 4
  %add.ptr39.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 4
  %78 = ptrtoint ptr %add.ptr39.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr39.i.i, align 4
  %and40.i.i = and i32 %79, -983041
  %or43.i.i = or i32 %and40.i.i, 65536
  store i32 %or43.i.i, ptr %add.ptr39.i.i, align 4
  %call47.i.i = call ptr @mlx5_create_flow_group(ptr noundef %call3.i, ptr noundef nonnull %call.i.i.i.i) #7
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #7
  %fg.i = getelementptr inbounds %struct.mlx5_lag_definer, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %fg.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call47.i.i, ptr %fg.i, align 8
  %cmp.i91.i = icmp ugt ptr %call47.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91.i, label %mlx5_create_hash_flow_group.exit.i.destroy_ft.i_crit_edge, label %if.end24.i

mlx5_create_hash_flow_group.exit.i.destroy_ft.i_crit_edge: ; preds = %mlx5_create_hash_flow_group.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_ft.i

if.end24.i:                                       ; preds = %mlx5_create_hash_flow_group.exit.i
  %81 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 8, ptr %dest.i, align 4
  %flags.i = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1, i32 0, i32 3
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %flags.i, align 4
  %84 = or i8 %83, 1
  store i8 %84, ptr %flags.i, align 4
  %flags26.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i, i32 0, i32 4
  %85 = ptrtoint ptr %flags26.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags26.i, align 4
  %or27.i = or i32 %86, 1
  store i32 %or27.i, ptr %flags26.i, align 4
  %vhca_id.i = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1, i32 0, i32 1
  %conv35.i = zext i8 %port1 to i32
  %sub.i = add nsw i32 %conv35.i, -1
  %arrayidx36.i = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 5, i32 %sub.i
  %87 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx36.i, align 4
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %caps.i, align 8
  %add.ptr.i43 = getelementptr i32, ptr %90, i32 1
  %91 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i43, align 4
  %conv39.i = trunc i32 %92 to i16
  %93 = ptrtoint ptr %vhca_id.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv39.i, ptr %vhca_id.i, align 2
  %94 = ptrtoint ptr %ft.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ft.i, align 4
  %call41.i = call ptr @mlx5_add_flow_rules(ptr noundef %95, ptr noundef null, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #7
  %arrayidx42.i = getelementptr %struct.mlx5_lag_definer, ptr %call7.i.i, i32 0, i32 3, i32 0
  %96 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call41.i, ptr %arrayidx42.i, align 4
  %cmp.i92.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92.i, label %if.end24.i.destroy_fg.i_crit_edge, label %for.inc.i

if.end24.i.destroy_fg.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_fg.i

while.body.preheader.i:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx42.i, align 4
  call void @mlx5_del_flow_rules(ptr noundef %98) #7
  br label %destroy_fg.i

for.inc.i:                                        ; preds = %if.end24.i
  %conv35.1.i = zext i8 %port2 to i32
  %sub.1.i = add nsw i32 %conv35.1.i, -1
  %arrayidx36.1.i = getelementptr %struct.mlx5_lag, ptr %ldev, i32 0, i32 5, i32 %sub.1.i
  %99 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx36.1.i, align 4
  %caps.1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %100, i32 0, i32 8
  %101 = ptrtoint ptr %caps.1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %caps.1.i, align 8
  %add.ptr.1.i = getelementptr i32, ptr %102, i32 1
  %103 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.1.i, align 4
  %conv39.1.i = trunc i32 %104 to i16
  %105 = ptrtoint ptr %vhca_id.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv39.1.i, ptr %vhca_id.i, align 2
  %106 = ptrtoint ptr %ft.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ft.i, align 4
  %call41.1.i = call ptr @mlx5_add_flow_rules(ptr noundef %107, ptr noundef null, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #7
  %arrayidx42.1.i = getelementptr %struct.mlx5_lag_definer, ptr %call7.i.i, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call41.1.i, ptr %arrayidx42.1.i, align 8
  %cmp.i92.1.i = icmp ugt ptr %call41.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92.1.i, label %while.body.preheader.i, label %mlx5_lag_create_port_sel_table.exit.thread

mlx5_lag_create_port_sel_table.exit.thread:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  br label %if.end19

destroy_fg.i:                                     ; preds = %while.body.preheader.i, %if.end24.i.destroy_fg.i_crit_edge
  %call41.lcssa110.i = phi ptr [ %call41.1.i, %while.body.preheader.i ], [ %call41.i, %if.end24.i.destroy_fg.i_crit_edge ]
  %109 = ptrtoint ptr %fg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fg.i, align 8
  call void @mlx5_destroy_flow_group(ptr noundef %110) #7
  br label %destroy_ft.i

destroy_ft.i:                                     ; preds = %destroy_fg.i, %mlx5_create_hash_flow_group.exit.i.destroy_ft.i_crit_edge, %mlx5_create_hash_flow_group.exit.thread.i
  %err.2.in.i = phi ptr [ %call41.lcssa110.i, %destroy_fg.i ], [ inttoptr (i32 -12 to ptr), %mlx5_create_hash_flow_group.exit.thread.i ], [ %call47.i.i, %mlx5_create_hash_flow_group.exit.i.destroy_ft.i_crit_edge ]
  %111 = ptrtoint ptr %ft.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ft.i, align 4
  %call56.i = call i32 @mlx5_destroy_flow_table(ptr noundef %112) #7
  br label %mlx5_lag_create_port_sel_table.exit

mlx5_lag_create_port_sel_table.exit:              ; preds = %destroy_ft.i, %do.end9.i
  %retval.0.i44.in = phi ptr [ %70, %do.end9.i ], [ %err.2.in.i, %destroy_ft.i ]
  %retval.0.i44 = ptrtoint ptr %retval.0.i44.in to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #7
  %tobool17.not = icmp eq ptr %retval.0.i44.in, null
  br i1 %tobool17.not, label %mlx5_lag_create_port_sel_table.exit.if.end19_crit_edge, label %mlx5_lag_create_port_sel_table.exit.destroy_match_definer_crit_edge

mlx5_lag_create_port_sel_table.exit.destroy_match_definer_crit_edge: ; preds = %mlx5_lag_create_port_sel_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %destroy_match_definer

mlx5_lag_create_port_sel_table.exit.if.end19_crit_edge: ; preds = %mlx5_lag_create_port_sel_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %mlx5_lag_create_port_sel_table.exit.if.end19_crit_edge, %mlx5_lag_create_port_sel_table.exit.thread
  call void @kvfree(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

destroy_match_definer:                            ; preds = %mlx5_lag_create_port_sel_table.exit.destroy_match_definer_crit_edge, %mlx5_lag_create_port_sel_table.exit.thread47
  %retval.0.i4450 = phi i32 [ -95, %mlx5_lag_create_port_sel_table.exit.thread47 ], [ %retval.0.i44, %mlx5_lag_create_port_sel_table.exit.destroy_match_definer_crit_edge ]
  %113 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call7.i.i, align 8
  call void @mlx5_destroy_match_definer(ptr noundef %1, ptr noundef %114) #7
  br label %free_mask

free_mask:                                        ; preds = %destroy_match_definer, %if.then12
  %err.0 = phi i32 [ %42, %if.then12 ], [ %retval.0.i4450, %destroy_match_definer ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #7
  br label %free_lag_definer

free_lag_definer:                                 ; preds = %free_mask, %if.end.free_lag_definer_crit_edge
  %err.1 = phi i32 [ %err.0, %free_mask ], [ -12, %if.end.free_lag_definer_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %115 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_lag_definer, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %115, %free_lag_definer ], [ %call7.i.i, %if.end19 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_match_definer(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_match_definer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_get_match_definer_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_ttc_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_ttc_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_rule_destination(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lag/port_sel.c", i32 53, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_lag_create_port_sel_table._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_lag_create_port_sel_table._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lag/port_sel.c", i32 59, i32 3}
!10 = !{ptr @mlx5_lag_create_port_sel_table._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_lag_create_port_sel_table._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
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
