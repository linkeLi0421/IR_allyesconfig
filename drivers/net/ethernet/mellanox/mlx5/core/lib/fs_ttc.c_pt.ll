; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_etype_proto = type { i16, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_ttc_table = type { i32, ptr, ptr, [11 x %struct.mlx5_ttc_rule], [6 x ptr] }
%struct.mlx5_ttc_rule = type { ptr, %struct.mlx5_flow_destination }
%struct.mlx5_flow_destination = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, ptr, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.130, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.153, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.130 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.131] }
%struct.anon.131 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.132 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.132 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.153 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.162, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.162 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.ttc_params = type { ptr, %struct.mlx5_flow_table_attr, [11 x %struct.mlx5_flow_destination], [1 x i32], i8, [1 x i32], [6 x %struct.mlx5_flow_destination] }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.161 }
%struct.anon.161 = type { i32, i32 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.111 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ttc_tunnel_rules = internal constant { [6 x %struct.mlx5_etype_proto], [40 x i8] } { [6 x %struct.mlx5_etype_proto] [%struct.mlx5_etype_proto { i16 2048, i8 47 }, %struct.mlx5_etype_proto { i16 -31011, i8 47 }, %struct.mlx5_etype_proto { i16 2048, i8 4 }, %struct.mlx5_etype_proto { i16 -31011, i8 4 }, %struct.mlx5_etype_proto { i16 2048, i8 41 }, %struct.mlx5_etype_proto { i16 -31011, i8 41 }], [40 x i8] zeroinitializer }, align 32
@mlx5_create_inner_ttc_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c\00", [43 x i8] zeroinitializer }, align 32
@mlx5_create_ttc_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5_ttc_get_default_dest.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TTC[%d] default dest is not setup yet\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ttc_rules = internal constant { [11 x %struct.mlx5_etype_proto], [52 x i8] } { [11 x %struct.mlx5_etype_proto] [%struct.mlx5_etype_proto { i16 2048, i8 6 }, %struct.mlx5_etype_proto { i16 -31011, i8 6 }, %struct.mlx5_etype_proto { i16 2048, i8 17 }, %struct.mlx5_etype_proto { i16 -31011, i8 17 }, %struct.mlx5_etype_proto { i16 2048, i8 51 }, %struct.mlx5_etype_proto { i16 -31011, i8 51 }, %struct.mlx5_etype_proto { i16 2048, i8 50 }, %struct.mlx5_etype_proto { i16 -31011, i8 50 }, %struct.mlx5_etype_proto { i16 2048, i8 0 }, %struct.mlx5_etype_proto { i16 -31011, i8 0 }, %struct.mlx5_etype_proto zeroinitializer], [52 x i8] zeroinitializer }, align 32
@mlx5_generate_inner_ttc_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): %s: add inner TTC rule failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_generate_inner_ttc_rule\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_generate_inner_ttc_rule._entry_ptr = internal global ptr @mlx5_generate_inner_ttc_rule._entry, section ".printk_index", align 4
@mlx5_generate_ttc_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): %s: add rule failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_generate_ttc_rule\00", [41 x i8] zeroinitializer }, align 32
@mlx5_generate_ttc_rule._entry_ptr = internal global ptr @mlx5_generate_ttc_rule._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 41, i64 47]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"ttc_tunnel_rules\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 113, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 504, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 594, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"ttc_rules\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 66, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 389, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 228, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @mlx5_generate_inner_ttc_rule._entry, ptr @mlx5_generate_inner_ttc_rule._entry_ptr, ptr @mlx5_generate_ttc_rule._entry, ptr @mlx5_generate_ttc_rule._entry_ptr, ptr @ttc_tunnel_rules, ptr @.str, ptr @.str.1, ptr @ttc_rules, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_tunnel_rules to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttc_rules to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_generate_inner_ttc_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_generate_ttc_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5_get_ttc_flow_table(ptr nocapture noundef readonly %ttc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %t = getelementptr inbounds %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 1
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5_get_proto_by_tunnel_type(i32 noundef %tt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr [6 x %struct.mlx5_etype_proto], ptr @ttc_tunnel_rules, i32 0, i32 %tt, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %proto, align 2
  ret i8 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_tunnel_inner_ft_supported(ptr nocapture noundef readonly %mdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx4.i.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx4.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %mlx5_tunnel_proto_supported_rx.exit.2.i, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

mlx5_tunnel_proto_supported_rx.exit.2.i:          ; preds = %entry
  %add.ptr7.i.2.i = getelementptr i32, ptr %1, i32 1
  %5 = ptrtoint ptr %add.ptr7.i.2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr7.i.2.i, align 4
  %7 = and i32 %6, 4718592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %.not.2.i = icmp eq i32 %7, 0
  br i1 %.not.2.i, label %mlx5_tunnel_proto_supported_rx.exit.2.i.land.end_crit_edge, label %mlx5_tunnel_proto_supported_rx.exit.2.i.land.rhs_crit_edge

mlx5_tunnel_proto_supported_rx.exit.2.i.land.rhs_crit_edge: ; preds = %mlx5_tunnel_proto_supported_rx.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

mlx5_tunnel_proto_supported_rx.exit.2.i.land.end_crit_edge: ; preds = %mlx5_tunnel_proto_supported_rx.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %mlx5_tunnel_proto_supported_rx.exit.2.i.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %9, i32 25
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool = icmp ne i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %mlx5_tunnel_proto_supported_rx.exit.2.i.land.end_crit_edge
  %13 = phi i1 [ %tobool, %land.rhs ], [ false, %mlx5_tunnel_proto_supported_rx.exit.2.i.land.end_crit_edge ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_create_inner_ttc_table(ptr nocapture noundef readonly %dev, ptr noundef %params) local_unnamed_addr #3 align 64 {
entry:
  %flow_act.i.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ft_attr = getelementptr inbounds %struct.ttc_params, ptr %params, i32 0, i32 1
  %max_fte = getelementptr inbounds %struct.ttc_params, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %max_fte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_fte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.if.end32_crit_edge, label %land.rhs

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.rhs:                                         ; preds = %if.end
  %.b78 = load i1, ptr @mlx5_create_inner_ttc_table.__already_done, align 1
  br i1 %.b78, label %land.rhs.if.end32_crit_edge, label %if.then10, !prof !34

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5_create_inner_ttc_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 9, ptr noundef null) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then10, %land.rhs.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %2 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 11, ptr %max_fte, align 4
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %params, align 4
  %call43 = tail call ptr @mlx5_create_flow_table(ptr noundef %4, ptr noundef %ft_attr) #10
  %t = getelementptr inbounds %struct.mlx5_ttc_table, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call43, ptr %t, align 4
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end50

if.then46:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #14
  %g.i = getelementptr inbounds %struct.mlx5_ttc_table, ptr %call.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i.i, ptr %g.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end50.destroy_ft_crit_edge, label %if.end.i

if.end50.destroy_ft_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_ft

if.end.i:                                         ; preds = %if.end50
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #13
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g.i, align 4
  tail call void @kfree(ptr noundef %9) #10
  %10 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %g.i, align 4
  br label %destroy_ft

if.end7.i:                                        ; preds = %if.end.i
  %add.ptr9.i = getelementptr i8, ptr %call.i.i.i, i32 208
  %11 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr9.i, align 4
  %or19.i = or i32 %12, -16769536
  store i32 %or19.i, ptr %add.ptr9.i, align 4
  %add.ptr27.i = getelementptr i32, ptr %call.i.i.i, i32 15
  %13 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr27.i, align 4
  %and28.i = and i32 %14, -256
  %or30.i = or i32 %and28.i, 4
  store i32 %or30.i, ptr %add.ptr27.i, align 4
  %add.ptr39.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %15 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr39.i, align 4
  %add.ptr52.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %16 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %add.ptr52.i, align 4
  %17 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t, align 4
  %call60.i = tail call ptr @mlx5_create_flow_group(ptr noundef %18, ptr noundef nonnull %call.i.i.i) #10
  %19 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %g.i, align 4
  %21 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call60.i, ptr %arrayidx.i, align 4
  %24 = load ptr, ptr %g.i, align 4
  %25 = load i32, ptr %call.i.i, align 4
  %arrayidx64.i = getelementptr ptr, ptr %24, i32 %25
  %26 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx64.i, align 4
  %cmp.i.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge, label %if.end67.i

if.end7.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_create_inner_ttc_table_groups.exit

if.end67.i:                                       ; preds = %if.end7.i
  %inc.i = add i32 %25, 1
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i, ptr %call.i.i, align 4
  %29 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr9.i, align 4
  %and75.i = and i32 %30, 16777215
  store i32 %and75.i, ptr %add.ptr9.i, align 4
  %31 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %add.ptr39.i, align 4
  %32 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 9, ptr %add.ptr52.i, align 4
  %33 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t, align 4
  %call111.i = tail call ptr @mlx5_create_flow_group(ptr noundef %34, ptr noundef nonnull %call.i.i.i) #10
  %35 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %g.i, align 4
  %arrayidx114.i = getelementptr ptr, ptr %36, i32 %inc.i
  %37 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call111.i, ptr %arrayidx114.i, align 4
  %38 = load ptr, ptr %g.i, align 4
  %39 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call.i.i, align 4
  %arrayidx117.i = getelementptr ptr, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx117.i, align 4
  %cmp.i236.i = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236.i, label %if.end67.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge, label %if.end120.i

if.end67.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge: ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_create_inner_ttc_table_groups.exit

if.end120.i:                                      ; preds = %if.end67.i
  %inc122.i = add i32 %40, 1
  %43 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc122.i, ptr %call.i.i, align 4
  %44 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %45 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 10, ptr %add.ptr39.i, align 4
  %46 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 10, ptr %add.ptr52.i, align 4
  %47 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %t, align 4
  %call152.i = tail call ptr @mlx5_create_flow_group(ptr noundef %48, ptr noundef nonnull %call.i.i.i) #10
  %49 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %g.i, align 4
  %arrayidx155.i = getelementptr ptr, ptr %50, i32 %inc122.i
  %51 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call152.i, ptr %arrayidx155.i, align 4
  %52 = load ptr, ptr %g.i, align 4
  %53 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call.i.i, align 4
  %arrayidx158.i = getelementptr ptr, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx158.i, align 4
  %cmp.i237.i = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237.i, label %if.end120.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge, label %mlx5_create_inner_ttc_table_groups.exit.thread85

if.end120.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge: ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_create_inner_ttc_table_groups.exit

mlx5_create_inner_ttc_table_groups.exit.thread85: ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc163.i = add i32 %54, 1
  %57 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc163.i, ptr %call.i.i, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #10
  br label %if.end54

mlx5_create_inner_ttc_table_groups.exit:          ; preds = %if.end120.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge, %if.end67.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge, %if.end7.i.mlx5_create_inner_ttc_table_groups.exit_crit_edge
  %58 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %g.i, align 4
  %60 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call.i.i, align 4
  %arrayidx167.i = getelementptr ptr, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx167.i, align 4
  %64 = ptrtoint ptr %63 to i32
  store ptr null, ptr %arrayidx167.i, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #10
  %tobool52.not = icmp eq ptr %63, null
  br i1 %tobool52.not, label %mlx5_create_inner_ttc_table_groups.exit.if.end54_crit_edge, label %mlx5_create_inner_ttc_table_groups.exit.destroy_ft_crit_edge

mlx5_create_inner_ttc_table_groups.exit.destroy_ft_crit_edge: ; preds = %mlx5_create_inner_ttc_table_groups.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_ft

mlx5_create_inner_ttc_table_groups.exit.if.end54_crit_edge: ; preds = %mlx5_create_inner_ttc_table_groups.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end54:                                         ; preds = %mlx5_create_inner_ttc_table_groups.exit.if.end54_crit_edge, %mlx5_create_inner_ttc_table_groups.exit.thread85
  %65 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %t, align 4
  %rules1.i = getelementptr inbounds %struct.mlx5_ttc_table, ptr %call.i.i, i32 0, i32 3
  %67 = getelementptr inbounds i8, ptr %flow_act.i.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end54
  %tt.038.i = phi i32 [ 0, %if.end54 ], [ %inc.i81, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i80 = getelementptr %struct.mlx5_ttc_rule, ptr %rules1.i, i32 %tt.038.i
  %arrayidx2.i = getelementptr %struct.ttc_params, ptr %params, i32 0, i32 2, i32 %tt.038.i
  %arrayidx3.i = getelementptr [11 x %struct.mlx5_etype_proto], ptr @ttc_rules, i32 0, i32 %tt.038.i
  %68 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx3.i, align 2
  %proto.i = getelementptr [11 x %struct.mlx5_etype_proto], ptr @ttc_rules, i32 0, i32 %tt.038.i, i32 1
  %70 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %proto.i, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i) #10
  %72 = call ptr @memset(ptr %67, i32 0, i32 32)
  %73 = ptrtoint ptr %flow_act.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %flow_act.i.i, align 4
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %mlx5_generate_inner_ttc_rule.exit.thread.i, label %if.end.i.i

mlx5_generate_inner_ttc_rule.exit.thread.i:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #10
  br label %mlx5_generate_inner_ttc_table_rules.exit

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %69)
  %switch.selectcmp.i.i.i = icmp eq i16 %69, -31011
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i8 6, i8 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %69)
  %switch.selectcmp8.i.i.i = icmp eq i16 %69, 2048
  %switch.select9.i.i.i = select i1 %switch.selectcmp8.i.i.i, i8 4, i8 %switch.select.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool3.not.i.i = icmp eq i16 %69, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.select9.i.i.i)
  %tobool5.not.i.i = icmp eq i8 %switch.select9.i.i.i, 0
  %or.cond.i.i = or i1 %tobool3.not.i.i, %tobool5.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.if.end28.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 4, ptr %call.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 36
  %75 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %76, 7680
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.ptr19.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 36
  %77 = ptrtoint ptr %add.ptr19.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr19.i.i, align 4
  %and20.i.i = and i32 %78, -7681
  %and21.i.i = zext i8 %switch.select9.i.i.i to i32
  %shl.i.i = shl nuw nsw i32 %and21.i.i, 9
  %or22.i.i = or i32 %and20.i.i, %shl.i.i
  store i32 %or22.i.i, ptr %add.ptr19.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then6.i.i, %if.end.i.i.if.end28.i.i_crit_edge
  %79 = add nsw i32 %tt.038.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %tobool29.not.i.i = icmp ult i32 %79, 3
  br i1 %tobool29.not.i.i, label %if.end28.i.i.if.end64.i.i_crit_edge, label %if.then30.i.i

if.end28.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64.i.i

if.then30.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 4, ptr %call.i.i.i.i, align 4
  %add.ptr38.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 36
  %81 = ptrtoint ptr %add.ptr38.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr38.i.i, align 4
  %or40.i.i = or i32 %82, -16777216
  store i32 %or40.i.i, ptr %add.ptr38.i.i, align 4
  %conv48.i.i = zext i8 %71 to i32
  %add.ptr54.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 36
  %83 = ptrtoint ptr %add.ptr54.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr54.i.i, align 4
  %and55.i.i = and i32 %84, 16777215
  %shl57.i.i = shl nuw i32 %conv48.i.i, 24
  %or58.i.i = or i32 %and55.i.i, %shl57.i.i
  store i32 %or58.i.i, ptr %add.ptr54.i.i, align 4
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.then30.i.i, %if.end28.i.i.if.end64.i.i_crit_edge
  %call65.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %66, ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %flow_act.i.i, ptr noundef %arrayidx2.i, i32 noundef 1) #10
  %cmp.i.i.i = icmp ugt ptr %call65.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %del_rules.loopexit.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end64.i.i
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #10
  %85 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call65.i.i, ptr %arrayidx.i80, align 4
  %default_dest.i = getelementptr %struct.mlx5_ttc_rule, ptr %rules1.i, i32 %tt.038.i, i32 1
  %86 = call ptr @memcpy(ptr %default_dest.i, ptr %arrayidx2.i, i32 16)
  %inc.i81 = add nuw nsw i32 %tt.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i81, 11
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

del_rules.loopexit.i:                             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 8
  %89 = call i32 @llvm.read_register.i32(metadata !24) #10
  %and.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 68
  %93 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 389, i32 noundef %94, ptr noundef nonnull @.str.3) #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #10
  br label %mlx5_generate_inner_ttc_table_rules.exit

mlx5_generate_inner_ttc_table_rules.exit:         ; preds = %del_rules.loopexit.i, %mlx5_generate_inner_ttc_rule.exit.thread.i
  %retval.0.i32.i = phi ptr [ inttoptr (i32 -12 to ptr), %mlx5_generate_inner_ttc_rule.exit.thread.i ], [ %call65.i.i, %del_rules.loopexit.i ]
  %95 = ptrtoint ptr %retval.0.i32.i to i32
  %96 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %arrayidx.i80, align 4
  call fastcc void @mlx5_cleanup_ttc_rules(ptr noundef nonnull %call.i.i) #10
  br label %destroy_ft

destroy_ft:                                       ; preds = %mlx5_generate_inner_ttc_table_rules.exit, %mlx5_create_inner_ttc_table_groups.exit.destroy_ft_crit_edge, %if.then4.i, %if.end50.destroy_ft_crit_edge
  %err.0 = phi i32 [ %64, %mlx5_create_inner_ttc_table_groups.exit.destroy_ft_crit_edge ], [ %95, %mlx5_generate_inner_ttc_table_rules.exit ], [ -12, %if.then4.i ], [ -12, %if.end50.destroy_ft_crit_edge ]
  call void @mlx5_destroy_ttc_table(ptr noundef nonnull %call.i.i)
  %97 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %destroy_ft, %for.inc.i.cleanup_crit_edge, %if.then46, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call43, %if.then46 ], [ %97, %destroy_ft ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call.i.i, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_destroy_ttc_table(ptr noundef %ttc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlx5_cleanup_ttc_rules(ptr noundef %ttc)
  %0 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ttc, align 4
  %i.018 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.018)
  %cmp19 = icmp sgt i32 %i.018, -1
  br i1 %cmp19, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %g = getelementptr inbounds %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ %i.018, %for.body.lr.ph ], [ %i.0, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %g, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.020
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %g, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %i.020
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx4, align 4
  %i.0 = add i32 %i.020, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %g5 = getelementptr inbounds %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 2
  %9 = ptrtoint ptr %g5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %g5, align 4
  tail call void @kfree(ptr noundef %10) #10
  %t = getelementptr inbounds %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 1
  %11 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t, align 4
  %call6 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %12) #10
  tail call void @kvfree(ptr noundef %ttc) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_cleanup_ttc_rules(ptr nocapture noundef %ttc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.i.1 = icmp eq ptr %4, null
  %cmp.i.1 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i.1 = or i1 %tobool.not.i.1, %cmp.i.1
  br i1 %spec.select.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.i.2 = icmp eq ptr %7, null
  %cmp.i.2 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i.2 = or i1 %tobool.not.i.2, %cmp.i.2
  br i1 %spec.select.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.i.3 = icmp eq ptr %10, null
  %cmp.i.3 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %spec.select.i.3 = or i1 %tobool.not.i.3, %cmp.i.3
  br i1 %spec.select.i.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %10) #10
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.i.4 = icmp eq ptr %13, null
  %cmp.i.4 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i.4 = or i1 %tobool.not.i.4, %cmp.i.4
  br i1 %spec.select.i.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %13) #10
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.i.5 = icmp eq ptr %16, null
  %cmp.i.5 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.5 = or i1 %tobool.not.i.5, %cmp.i.5
  br i1 %spec.select.i.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %16) #10
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.i.6 = icmp eq ptr %19, null
  %cmp.i.6 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.6 = or i1 %tobool.not.i.6, %cmp.i.6
  br i1 %spec.select.i.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %19) #10
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.i.7 = icmp eq ptr %22, null
  %cmp.i.7 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %spec.select.i.7 = or i1 %tobool.not.i.7, %cmp.i.7
  br i1 %spec.select.i.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %22) #10
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.i.8 = icmp eq ptr %25, null
  %cmp.i.8 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %spec.select.i.8 = or i1 %tobool.not.i.8, %cmp.i.8
  br i1 %spec.select.i.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8

if.then.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %25) #10
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 9
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.i.9 = icmp eq ptr %28, null
  %cmp.i.9 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %spec.select.i.9 = or i1 %tobool.not.i.9, %cmp.i.9
  br i1 %spec.select.i.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.9

if.then.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %28) #10
  %29 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx.9, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 10
  %30 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.i.10 = icmp eq ptr %31, null
  %cmp.i.10 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i.10 = or i1 %tobool.not.i.10, %cmp.i.10
  br i1 %spec.select.i.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

if.then.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %31) #10
  %32 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx.10, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then.10, %for.inc.9.for.inc.10_crit_edge
  %arrayidx10 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 4, i32 0
  %33 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx10, align 4
  %tobool.not.i35 = icmp eq ptr %34, null
  %cmp.i36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %spec.select.i37 = or i1 %tobool.not.i35, %cmp.i36
  br i1 %spec.select.i37, label %for.inc.10.for.inc18_crit_edge, label %if.then12

for.inc.10.for.inc18_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18

if.then12:                                        ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %34) #10
  %35 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx10, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %if.then12, %for.inc.10.for.inc18_crit_edge
  %arrayidx10.1 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx10.1, align 4
  %tobool.not.i35.1 = icmp eq ptr %37, null
  %cmp.i36.1 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %spec.select.i37.1 = or i1 %tobool.not.i35.1, %cmp.i36.1
  br i1 %spec.select.i37.1, label %for.inc18.for.inc18.1_crit_edge, label %if.then12.1

for.inc18.for.inc18.1_crit_edge:                  ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.1

if.then12.1:                                      ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %37) #10
  %38 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx10.1, align 4
  br label %for.inc18.1

for.inc18.1:                                      ; preds = %if.then12.1, %for.inc18.for.inc18.1_crit_edge
  %arrayidx10.2 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx10.2, align 4
  %tobool.not.i35.2 = icmp eq ptr %40, null
  %cmp.i36.2 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %spec.select.i37.2 = or i1 %tobool.not.i35.2, %cmp.i36.2
  br i1 %spec.select.i37.2, label %for.inc18.1.for.inc18.2_crit_edge, label %if.then12.2

for.inc18.1.for.inc18.2_crit_edge:                ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.2

if.then12.2:                                      ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %40) #10
  %41 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx10.2, align 4
  br label %for.inc18.2

for.inc18.2:                                      ; preds = %if.then12.2, %for.inc18.1.for.inc18.2_crit_edge
  %arrayidx10.3 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx10.3, align 4
  %tobool.not.i35.3 = icmp eq ptr %43, null
  %cmp.i36.3 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %spec.select.i37.3 = or i1 %tobool.not.i35.3, %cmp.i36.3
  br i1 %spec.select.i37.3, label %for.inc18.2.for.inc18.3_crit_edge, label %if.then12.3

for.inc18.2.for.inc18.3_crit_edge:                ; preds = %for.inc18.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.3

if.then12.3:                                      ; preds = %for.inc18.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %43) #10
  %44 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx10.3, align 4
  br label %for.inc18.3

for.inc18.3:                                      ; preds = %if.then12.3, %for.inc18.2.for.inc18.3_crit_edge
  %arrayidx10.4 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx10.4, align 4
  %tobool.not.i35.4 = icmp eq ptr %46, null
  %cmp.i36.4 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  %spec.select.i37.4 = or i1 %tobool.not.i35.4, %cmp.i36.4
  br i1 %spec.select.i37.4, label %for.inc18.3.for.inc18.4_crit_edge, label %if.then12.4

for.inc18.3.for.inc18.4_crit_edge:                ; preds = %for.inc18.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.4

if.then12.4:                                      ; preds = %for.inc18.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %46) #10
  %47 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx10.4, align 4
  br label %for.inc18.4

for.inc18.4:                                      ; preds = %if.then12.4, %for.inc18.3.for.inc18.4_crit_edge
  %arrayidx10.5 = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 4, i32 5
  %48 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx10.5, align 4
  %tobool.not.i35.5 = icmp eq ptr %49, null
  %cmp.i36.5 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  %spec.select.i37.5 = or i1 %tobool.not.i35.5, %cmp.i36.5
  br i1 %spec.select.i37.5, label %for.inc18.4.for.inc18.5_crit_edge, label %if.then12.5

for.inc18.4.for.inc18.5_crit_edge:                ; preds = %for.inc18.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18.5

if.then12.5:                                      ; preds = %for.inc18.4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %49) #10
  %50 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx10.5, align 4
  br label %for.inc18.5

for.inc18.5:                                      ; preds = %if.then12.5, %for.inc18.4.for.inc18.5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_create_ttc_table(ptr nocapture noundef readonly %dev, ptr noundef %params) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 24
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #13
  %tobool1.not = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ft_attr = getelementptr inbounds %struct.ttc_params, ptr %params, i32 0, i32 1
  %max_fte = getelementptr inbounds %struct.ttc_params, ptr %params, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %max_fte to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_fte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.if.end34_crit_edge, label %land.rhs

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.rhs:                                         ; preds = %if.end
  %.b83 = load i1, ptr @mlx5_create_ttc_table.__already_done, align 1
  br i1 %.b83, label %land.rhs.if.end34_crit_edge, label %if.then12, !prof !34

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5_create_ttc_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %land.rhs.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %7 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 17, ptr %max_fte, align 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %call45 = tail call ptr @mlx5_create_flow_table(ptr noundef %9, ptr noundef %ft_attr) #10
  %t = getelementptr inbounds %struct.mlx5_ttc_table, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call45, ptr %t, align 4
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

if.end52:                                         ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 12) #14
  %g.i = getelementptr inbounds %struct.mlx5_ttc_table, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i.i, ptr %g.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end52.destroy_ft_crit_edge, label %if.end.i

if.end52.destroy_ft_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_ft

if.end.i:                                         ; preds = %if.end52
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #13
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %g.i, align 4
  tail call void @kfree(ptr noundef %14) #10
  %15 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %g.i, align 4
  br label %destroy_ft

if.end7.i:                                        ; preds = %if.end.i
  %add.ptr9.i = getelementptr i8, ptr %call.i.i.i, i32 80
  %16 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr9.i, align 4
  %or.i = or i32 %17, -16777216
  store i32 %or.i, ptr %add.ptr9.i, align 4
  br i1 %tobool.not, label %do.end28.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %or21.i = or i32 %17, -16769536
  %18 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or21.i, ptr %add.ptr9.i, align 4
  br label %do.body36.i

do.end28.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr29.i = getelementptr i8, ptr %call.i.i.i, i32 68
  %19 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr29.i, align 4
  %or31.i = or i32 %20, 65535
  store i32 %or31.i, ptr %add.ptr29.i, align 4
  br label %do.body36.i

do.body36.i:                                      ; preds = %do.end28.i, %do.end18.i
  %add.ptr40.i = getelementptr i32, ptr %call.i.i.i, i32 15
  %21 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr40.i, align 4
  %and41.i = and i32 %22, -256
  %or43.i = or i32 %and41.i, 1
  store i32 %or43.i, ptr %add.ptr40.i, align 4
  %add.ptr52.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %23 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %add.ptr52.i, align 4
  %add.ptr65.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %24 = ptrtoint ptr %add.ptr65.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 13, ptr %add.ptr65.i, align 4
  %25 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %t, align 4
  %call73.i = tail call ptr @mlx5_create_flow_group(ptr noundef %26, ptr noundef nonnull %call.i.i.i) #10
  %27 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %g.i, align 4
  %29 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call73.i, ptr %arrayidx.i, align 4
  %32 = load ptr, ptr %g.i, align 4
  %33 = load i32, ptr %call.i.i, align 4
  %arrayidx77.i = getelementptr ptr, ptr %32, i32 %33
  %34 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx77.i, align 4
  %cmp.i.i = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body36.i.mlx5_create_ttc_table_groups.exit_crit_edge, label %if.end80.i

do.body36.i.mlx5_create_ttc_table_groups.exit_crit_edge: ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_create_ttc_table_groups.exit

if.end80.i:                                       ; preds = %do.body36.i
  %inc.i = add i32 %33, 1
  %36 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i, ptr %call.i.i, align 4
  %37 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr9.i, align 4
  %and88.i = and i32 %38, 16777215
  store i32 %and88.i, ptr %add.ptr9.i, align 4
  %39 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 14, ptr %add.ptr52.i, align 4
  %40 = ptrtoint ptr %add.ptr65.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 15, ptr %add.ptr65.i, align 4
  %41 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %t, align 4
  %call124.i = tail call ptr @mlx5_create_flow_group(ptr noundef %42, ptr noundef nonnull %call.i.i.i) #10
  %43 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %g.i, align 4
  %45 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call.i.i, align 4
  %arrayidx127.i = getelementptr ptr, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call124.i, ptr %arrayidx127.i, align 4
  %48 = load ptr, ptr %g.i, align 4
  %49 = load i32, ptr %call.i.i, align 4
  %arrayidx130.i = getelementptr ptr, ptr %48, i32 %49
  %50 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx130.i, align 4
  %cmp.i251.i = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251.i, label %if.end80.i.mlx5_create_ttc_table_groups.exit_crit_edge, label %if.end133.i

if.end80.i.mlx5_create_ttc_table_groups.exit_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_create_ttc_table_groups.exit

if.end133.i:                                      ; preds = %if.end80.i
  %inc135.i = add i32 %49, 1
  %52 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc135.i, ptr %call.i.i, align 4
  %53 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %54 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %add.ptr52.i, align 4
  %55 = ptrtoint ptr %add.ptr65.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16, ptr %add.ptr65.i, align 4
  %56 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %t, align 4
  %call165.i = tail call ptr @mlx5_create_flow_group(ptr noundef %57, ptr noundef nonnull %call.i.i.i) #10
  %58 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %g.i, align 4
  %60 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call.i.i, align 4
  %arrayidx168.i = getelementptr ptr, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call165.i, ptr %arrayidx168.i, align 4
  %63 = load ptr, ptr %g.i, align 4
  %64 = load i32, ptr %call.i.i, align 4
  %arrayidx171.i = getelementptr ptr, ptr %63, i32 %64
  %65 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx171.i, align 4
  %cmp.i252.i = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252.i, label %if.end133.i.mlx5_create_ttc_table_groups.exit_crit_edge, label %mlx5_create_ttc_table_groups.exit.thread93

if.end133.i.mlx5_create_ttc_table_groups.exit_crit_edge: ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_create_ttc_table_groups.exit

mlx5_create_ttc_table_groups.exit.thread93:       ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc176.i = add i32 %64, 1
  %67 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %inc176.i, ptr %call.i.i, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #10
  br label %if.end57

mlx5_create_ttc_table_groups.exit:                ; preds = %if.end133.i.mlx5_create_ttc_table_groups.exit_crit_edge, %if.end80.i.mlx5_create_ttc_table_groups.exit_crit_edge, %do.body36.i.mlx5_create_ttc_table_groups.exit_crit_edge
  %68 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %g.i, align 4
  %70 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call.i.i, align 4
  %arrayidx180.i = getelementptr ptr, ptr %69, i32 %71
  %72 = ptrtoint ptr %arrayidx180.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx180.i, align 4
  %74 = ptrtoint ptr %73 to i32
  store ptr null, ptr %arrayidx180.i, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #10
  %tobool55.not = icmp eq ptr %73, null
  br i1 %tobool55.not, label %mlx5_create_ttc_table_groups.exit.if.end57_crit_edge, label %mlx5_create_ttc_table_groups.exit.destroy_ft_crit_edge

mlx5_create_ttc_table_groups.exit.destroy_ft_crit_edge: ; preds = %mlx5_create_ttc_table_groups.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_ft

mlx5_create_ttc_table_groups.exit.if.end57_crit_edge: ; preds = %mlx5_create_ttc_table_groups.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %mlx5_create_ttc_table_groups.exit.if.end57_crit_edge, %mlx5_create_ttc_table_groups.exit.thread93
  %75 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %t, align 4
  %rules1.i = getelementptr inbounds %struct.mlx5_ttc_table, ptr %call.i.i, i32 0, i32 3
  %ignore_dests.i = getelementptr inbounds %struct.ttc_params, ptr %params, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end57
  %tt.0106.i = phi i32 [ 0, %if.end57 ], [ %inc.i89, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %tt.0106.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %ignore_dests.i, i32 %div3.i.i
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %arrayidx.i.i, align 4
  %79 = shl nuw i32 1, %tt.0106.i
  %80 = and i32 %78, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i85 = icmp eq i32 %80, 0
  br i1 %tobool.not.i85, label %if.end.i88, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i88:                                       ; preds = %for.body.i
  %arrayidx.i86 = getelementptr %struct.mlx5_ttc_rule, ptr %rules1.i, i32 %tt.0106.i
  %arrayidx3.i = getelementptr %struct.ttc_params, ptr %params, i32 0, i32 2, i32 %tt.0106.i
  %arrayidx4.i = getelementptr [11 x %struct.mlx5_etype_proto], ptr @ttc_rules, i32 0, i32 %tt.0106.i
  %81 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx4.i, align 2
  %proto.i = getelementptr [11 x %struct.mlx5_etype_proto], ptr @ttc_rules, i32 0, i32 %tt.0106.i, i32 1
  %83 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %proto.i, align 2
  %call6.i = tail call fastcc ptr @mlx5_generate_ttc_rule(ptr noundef %dev, ptr noundef %76, ptr noundef %arrayidx3.i, i16 noundef zeroext %82, i8 noundef zeroext %84) #10
  %85 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call6.i, ptr %arrayidx.i86, align 4
  %cmp.i.i87 = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i87, label %if.end.i88.mlx5_generate_ttc_table_rules.exit_crit_edge, label %if.end14.i

if.end.i88.mlx5_generate_ttc_table_rules.exit_crit_edge: ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_generate_ttc_table_rules.exit

if.end14.i:                                       ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #12
  %default_dest.i = getelementptr %struct.mlx5_ttc_rule, ptr %rules1.i, i32 %tt.0106.i, i32 1
  %86 = call ptr @memcpy(ptr %default_dest.i, ptr %arrayidx3.i, i32 16)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %for.body.i.for.inc.i_crit_edge
  %inc.i89 = add nuw nsw i32 %tt.0106.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i89, 11
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %inner_ttc.i = getelementptr inbounds %struct.ttc_params, ptr %params, i32 0, i32 4
  %87 = ptrtoint ptr %inner_ttc.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %inner_ttc.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool17.not.i = icmp eq i8 %88, 0
  br i1 %tobool17.not.i, label %for.end.i.cleanup_crit_edge, label %lor.lhs.false.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.end.i
  %arrayidx4.i.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx4.i.i.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %93 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %.not.i.i.i = icmp eq i32 %93, 0
  br i1 %.not.i.i.i, label %mlx5_tunnel_proto_supported_rx.exit.2.i.i.i, label %lor.lhs.false.i.mlx5_tunnel_inner_ft_supported.exit.i_crit_edge

lor.lhs.false.i.mlx5_tunnel_inner_ft_supported.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_tunnel_inner_ft_supported.exit.i

mlx5_tunnel_proto_supported_rx.exit.2.i.i.i:      ; preds = %lor.lhs.false.i
  %add.ptr7.i.2.i.i.i = getelementptr i32, ptr %90, i32 1
  %94 = ptrtoint ptr %add.ptr7.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr7.i.2.i.i.i, align 4
  %96 = and i32 %95, 4718592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %.not.2.i.i.i = icmp eq i32 %96, 0
  br i1 %.not.2.i.i.i, label %mlx5_tunnel_proto_supported_rx.exit.2.i.i.i.cleanup_crit_edge, label %mlx5_tunnel_proto_supported_rx.exit.2.i.i.i.mlx5_tunnel_inner_ft_supported.exit.i_crit_edge

mlx5_tunnel_proto_supported_rx.exit.2.i.i.i.mlx5_tunnel_inner_ft_supported.exit.i_crit_edge: ; preds = %mlx5_tunnel_proto_supported_rx.exit.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_tunnel_inner_ft_supported.exit.i

mlx5_tunnel_proto_supported_rx.exit.2.i.i.i.cleanup_crit_edge: ; preds = %mlx5_tunnel_proto_supported_rx.exit.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5_tunnel_inner_ft_supported.exit.i:            ; preds = %mlx5_tunnel_proto_supported_rx.exit.2.i.i.i.mlx5_tunnel_inner_ft_supported.exit.i_crit_edge, %lor.lhs.false.i.mlx5_tunnel_inner_ft_supported.exit.i_crit_edge
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i32, ptr %98, i32 25
  %99 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i.i, align 4
  %101 = and i32 %100, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.not.i = icmp eq i32 %101, 0
  br i1 %tobool.i.not.i, label %mlx5_tunnel_inner_ft_supported.exit.i.cleanup_crit_edge, label %if.end20.i

mlx5_tunnel_inner_ft_supported.exit.i.cleanup_crit_edge: ; preds = %mlx5_tunnel_inner_ft_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.i:                                       ; preds = %mlx5_tunnel_inner_ft_supported.exit.i
  %tunnel_rules.i = getelementptr inbounds %struct.mlx5_ttc_table, ptr %call.i.i, i32 0, i32 4
  %ignore_tunnel_dests.i = getelementptr inbounds %struct.ttc_params, ptr %params, i32 0, i32 5
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.inc49.i.for.body24.i_crit_edge, %if.end20.i
  %tt.1108.i = phi i32 [ 0, %if.end20.i ], [ %inc50.i, %for.inc49.i.for.body24.i_crit_edge ]
  %arrayidx25.i = getelementptr [6 x %struct.mlx5_etype_proto], ptr @ttc_tunnel_rules, i32 0, i32 %tt.1108.i
  %proto26.i = getelementptr [6 x %struct.mlx5_etype_proto], ptr @ttc_tunnel_rules, i32 0, i32 %tt.1108.i, i32 1
  %102 = ptrtoint ptr %proto26.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %proto26.i, align 2
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i8 %103, label %for.body24.i.for.inc49.i_crit_edge [
    i8 47, label %sw.bb.i.i
    i8 4, label %for.body24.i.sw.bb1.i.i_crit_edge
    i8 41, label %for.body24.i.sw.bb1.i.i_crit_edge107
  ]

for.body24.i.sw.bb1.i.i_crit_edge107:             ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i.i

for.body24.i.sw.bb1.i.i_crit_edge:                ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i.i

for.body24.i.for.inc49.i_crit_edge:               ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49.i

sw.bb.i.i:                                        ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx4.i.i.i.i, align 4
  br label %mlx5_tunnel_proto_supported_rx.exit.i

sw.bb1.i.i:                                       ; preds = %for.body24.i.sw.bb1.i.i_crit_edge, %for.body24.i.sw.bb1.i.i_crit_edge107
  %107 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx4.i.i.i.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %108, i32 1
  br label %mlx5_tunnel_proto_supported_rx.exit.i

mlx5_tunnel_proto_supported_rx.exit.i:            ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %add.ptr7.sink.i.i = phi ptr [ %add.ptr7.i.i, %sw.bb1.i.i ], [ %106, %sw.bb.i.i ]
  %.sink23.i.i = phi i32 [ 4718592, %sw.bb1.i.i ], [ 2, %sw.bb.i.i ]
  %109 = ptrtoint ptr %add.ptr7.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr7.sink.i.i, align 4
  %111 = and i32 %110, %.sink23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %.not.i = icmp eq i32 %111, 0
  br i1 %.not.i, label %mlx5_tunnel_proto_supported_rx.exit.i.for.inc49.i_crit_edge, label %if.end29.i

mlx5_tunnel_proto_supported_rx.exit.i.for.inc49.i_crit_edge: ; preds = %mlx5_tunnel_proto_supported_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49.i

if.end29.i:                                       ; preds = %mlx5_tunnel_proto_supported_rx.exit.i
  %div3.i94.i = lshr i32 %tt.1108.i, 5
  %arrayidx.i95.i = getelementptr i32, ptr %ignore_tunnel_dests.i, i32 %div3.i94.i
  %112 = ptrtoint ptr %arrayidx.i95.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %arrayidx.i95.i, align 4
  %114 = shl nuw i32 1, %tt.1108.i
  %115 = and i32 %113, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool32.not.i = icmp eq i32 %115, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end29.i.for.inc49.i_crit_edge

if.end29.i.for.inc49.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49.i

if.end34.i:                                       ; preds = %if.end29.i
  %arrayidx35.i = getelementptr %struct.ttc_params, ptr %params, i32 0, i32 6, i32 %tt.1108.i
  %116 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx25.i, align 2
  %call40.i = tail call fastcc ptr @mlx5_generate_ttc_rule(ptr noundef %dev, ptr noundef %76, ptr noundef %arrayidx35.i, i16 noundef zeroext %117, i8 noundef zeroext %103) #10
  %arrayidx41.i = getelementptr ptr, ptr %tunnel_rules.i, i32 %tt.1108.i
  %118 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call40.i, ptr %arrayidx41.i, align 4
  %cmp.i101.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101.i, label %mlx5_generate_ttc_table_rules.exit.loopexit, label %if.end34.i.for.inc49.i_crit_edge

if.end34.i.for.inc49.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %if.end34.i.for.inc49.i_crit_edge, %if.end29.i.for.inc49.i_crit_edge, %mlx5_tunnel_proto_supported_rx.exit.i.for.inc49.i_crit_edge, %for.body24.i.for.inc49.i_crit_edge
  %inc50.i = add nuw nsw i32 %tt.1108.i, 1
  %exitcond111.not.i = icmp eq i32 %inc50.i, 6
  br i1 %exitcond111.not.i, label %for.inc49.i.cleanup_crit_edge, label %for.inc49.i.for.body24.i_crit_edge

for.inc49.i.for.body24.i_crit_edge:               ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i

for.inc49.i.cleanup_crit_edge:                    ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlx5_generate_ttc_table_rules.exit.loopexit:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx41.i.le = getelementptr ptr, ptr %tunnel_rules.i, i32 %tt.1108.i
  br label %mlx5_generate_ttc_table_rules.exit

mlx5_generate_ttc_table_rules.exit:               ; preds = %mlx5_generate_ttc_table_rules.exit.loopexit, %if.end.i88.mlx5_generate_ttc_table_rules.exit_crit_edge
  %arrayidx.lcssa.sink.i = phi ptr [ %arrayidx41.i.le, %mlx5_generate_ttc_table_rules.exit.loopexit ], [ %arrayidx.i86, %if.end.i88.mlx5_generate_ttc_table_rules.exit_crit_edge ]
  %err.2.in.i = phi ptr [ %call40.i, %mlx5_generate_ttc_table_rules.exit.loopexit ], [ %call6.i, %if.end.i88.mlx5_generate_ttc_table_rules.exit_crit_edge ]
  %119 = ptrtoint ptr %arrayidx.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %arrayidx.lcssa.sink.i, align 4
  %err.2.i = ptrtoint ptr %err.2.in.i to i32
  tail call fastcc void @mlx5_cleanup_ttc_rules(ptr noundef %call.i.i) #10
  br label %destroy_ft

destroy_ft:                                       ; preds = %mlx5_generate_ttc_table_rules.exit, %mlx5_create_ttc_table_groups.exit.destroy_ft_crit_edge, %if.then4.i, %if.end52.destroy_ft_crit_edge
  %err.0 = phi i32 [ %74, %mlx5_create_ttc_table_groups.exit.destroy_ft_crit_edge ], [ %err.2.i, %mlx5_generate_ttc_table_rules.exit ], [ -12, %if.then4.i ], [ -12, %if.end52.destroy_ft_crit_edge ]
  tail call void @mlx5_destroy_ttc_table(ptr noundef nonnull %call.i.i)
  %120 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %destroy_ft, %for.inc49.i.cleanup_crit_edge, %mlx5_tunnel_inner_ft_supported.exit.i.cleanup_crit_edge, %mlx5_tunnel_proto_supported_rx.exit.2.i.i.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.then48, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call45, %if.then48 ], [ %120, %destroy_ft ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call.i.i, %mlx5_tunnel_inner_ft_supported.exit.i.cleanup_crit_edge ], [ %call.i.i, %for.end.i.cleanup_crit_edge ], [ %call.i.i, %mlx5_tunnel_proto_supported_rx.exit.2.i.i.i.cleanup_crit_edge ], [ %call.i.i, %for.inc49.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ttc_fwd_dest(ptr nocapture noundef readonly %ttc, i32 noundef %type, ptr noundef %new_dest) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @mlx5_modify_rule_destination(ptr noundef %1, ptr noundef %new_dest, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_rule_destination(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ttc_get_default_dest(ptr noalias nocapture writeonly sret(%struct.mlx5_flow_destination) align 4 %agg.result, ptr nocapture noundef readonly %ttc, i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %default_dest = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 %type, i32 1
  %0 = ptrtoint ptr %default_dest to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_dest, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b40 = load i1, ptr @mlx5_ttc_get_default_dest.__already_done, align 1
  br i1 %.b40, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !34

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5_ttc_get_default_dest.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %type) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %2 = call ptr @memcpy(ptr %agg.result, ptr %default_dest, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ttc_fwd_default_dest(ptr nocapture noundef readonly %ttc, i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  %dest = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #10
  %default_dest.i = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 %type, i32 1
  %0 = ptrtoint ptr %default_dest.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_dest.i, align 4, !noalias !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 2
  br i1 %cmp.not.i, label %entry.mlx5_ttc_get_default_dest.exit_crit_edge, label %land.rhs.i

entry.mlx5_ttc_get_default_dest.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_ttc_get_default_dest.exit

land.rhs.i:                                       ; preds = %entry
  %.b40.i = load i1, ptr @mlx5_ttc_get_default_dest.__already_done, align 1, !noalias !36
  br i1 %.b40.i, label %land.rhs.i.mlx5_ttc_get_default_dest.exit_crit_edge, label %if.then.i, !prof !34

land.rhs.i.mlx5_ttc_get_default_dest.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlx5_ttc_get_default_dest.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mlx5_ttc_get_default_dest.__already_done, align 1, !noalias !36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %type) #10, !noalias !36
  br label %mlx5_ttc_get_default_dest.exit

mlx5_ttc_get_default_dest.exit:                   ; preds = %if.then.i, %land.rhs.i.mlx5_ttc_get_default_dest.exit_crit_edge, %entry.mlx5_ttc_get_default_dest.exit_crit_edge
  %2 = call ptr @memcpy(ptr %dest, ptr %default_dest.i, i32 16)
  %arrayidx.i = getelementptr %struct.mlx5_ttc_table, ptr %ttc, i32 0, i32 3, i32 %type
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @mlx5_modify_rule_destination(ptr noundef %4, ptr noundef nonnull %dest, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_generate_ttc_rule(ptr nocapture noundef readonly %dev, ptr noundef %ft, ptr noundef %dest, i16 noundef zeroext %etype, i8 noundef zeroext %proto) unnamed_addr #3 align 64 {
entry:
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 24
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #10
  %4 = getelementptr inbounds i8, ptr %flow_act, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  %6 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flow_act, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %proto)
  %tobool2.not = icmp eq i8 %proto, 0
  br i1 %tobool2.not, label %if.end.if.end27_crit_edge, label %if.then3

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %call.i.i, align 4
  %add.ptr6 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr6, align 4
  %or = or i32 %9, -16777216
  store i32 %or, ptr %add.ptr6, align 4
  %conv = zext i8 %proto to i32
  %add.ptr18 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr18, align 4
  %and19 = and i32 %11, 16777215
  %shl = shl nuw i32 %conv, 24
  %or21 = or i32 %and19, %shl
  store i32 %or21, ptr %add.ptr18, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then3, %if.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %etype)
  %switch.selectcmp.i = icmp eq i16 %etype, -31011
  %switch.select.i = select i1 %switch.selectcmp.i, i8 6, i8 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %etype)
  %switch.selectcmp8.i = icmp eq i16 %etype, 2048
  %switch.select9.i = select i1 %switch.selectcmp8.i, i8 4, i8 %switch.select.i
  %12 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool29.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.select9.i)
  %tobool31.not = icmp eq i8 %switch.select9.i, 0
  %or.cond = or i1 %tobool31.not, %tobool29.not
  br i1 %or.cond, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %call.i.i, align 4
  %add.ptr40 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr40, align 4
  %or42 = or i32 %15, 7680
  store i32 %or42, ptr %add.ptr40, align 4
  %add.ptr56 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr56, align 4
  %and57 = and i32 %17, -7681
  %and58 = zext i8 %switch.select9.i to i32
  %shl59 = shl nuw nsw i32 %and58, 9
  %or60 = or i32 %and57, %shl59
  store i32 %or60, ptr %add.ptr56, align 4
  br label %if.end102

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %etype)
  %tobool66.not = icmp eq i16 %etype, 0
  br i1 %tobool66.not, label %if.else.if.end102_crit_edge, label %if.then67

if.else.if.end102_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %call.i.i, align 4
  %add.ptr75 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr75, align 4
  %or77 = or i32 %20, 65535
  store i32 %or77, ptr %add.ptr75, align 4
  %conv85 = zext i16 %etype to i32
  %add.ptr91 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %add.ptr91 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr91, align 4
  %and92 = and i32 %22, -65536
  %or95 = or i32 %and92, %conv85
  store i32 %or95, ptr %add.ptr91, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then67, %if.else.if.end102_crit_edge, %if.then32
  %call103 = call ptr @mlx5_add_flow_rules(ptr noundef %ft, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef %dest, i32 noundef 1) #10
  %cmp.i = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end111, label %if.end102.cleanup.sink.split_crit_edge

if.end102.cleanup.sink.split_crit_edge:           ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end111:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %25 = call i32 @llvm.read_register.i32(metadata !24) #10
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 228, i32 noundef %30, ptr noundef nonnull @.str.7) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end111, %if.end102.cleanup.sink.split_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call103, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c", i32 504, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c", i32 557, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c", i32 594, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ttc_tunnel_rules, !9, !"ttc_tunnel_rules", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c", i32 113, i32 32}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c", i32 389, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_generate_inner_ttc_rule._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5_generate_inner_ttc_rule._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @ttc_rules, !18, !"ttc_rules", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c", i32 66, i32 32}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/fs_ttc.c", i32 228, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlx5_generate_ttc_rule._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlx5_generate_ttc_rule._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i8 0, i8 2}
!36 = !{!37}
!37 = distinct !{!37, !38, !"mlx5_ttc_get_default_dest: %agg.result"}
!38 = distinct !{!38, !"mlx5_ttc_get_default_dest"}
