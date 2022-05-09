; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.183 }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.185, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.185 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_vport = type { ptr, [256 x %struct.hlist_head], [256 x %struct.hlist_head], ptr, ptr, %struct.work_struct, %struct.vport_ingress, %struct.vport_egress, i32, i32, %struct.mlx5_vport_info, %struct.anon.182, i16, i8, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vport_ingress = type { ptr, ptr, %struct.anon.177, %struct.anon.178 }
%struct.anon.177 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.178 = type { ptr, ptr, ptr, ptr }
%struct.vport_egress = type { ptr, ptr, ptr, %union.anon.179 }
%union.anon.179 = type { %struct.anon.181 }
%struct.anon.181 = type { ptr, ptr, ptr, ptr }
%struct.mlx5_vport_info = type { [6 x i8], i16, i64, i32, i8, i8 }
%struct.anon.182 = type { i8, i32, i32, i32, i32, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.165, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.165 = type { %struct.mlx5_rsvd_gids, i32 }
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

@esw_acl_egress_lgcy_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"E-Switch: vport[%d] configure egress drop rule counter err(%ld)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"esw_acl_egress_lgcy_setup\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@esw_acl_egress_lgcy_setup._entry_ptr = internal global ptr @esw_acl_egress_lgcy_setup._entry, section ".printk_index", align 4
@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@esw_acl_egress_lgcy_setup.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): vport[%d] configure egress rules, vlan(%d) qos(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@esw_acl_egress_lgcy_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"E-Switch: vport[%d] configure egress drop rule failed, err(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@esw_acl_egress_lgcy_setup._entry_ptr.9 = internal global ptr @esw_acl_egress_lgcy_setup._entry.7, section ".printk_index", align 4
@esw_acl_egress_lgcy_cleanup.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"esw_acl_egress_lgcy_cleanup\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Destroy vport[%d] E-Switch egress ACL\0A\00", [41 x i8] zeroinitializer }, align 32
@esw_acl_egress_lgcy_groups_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 43, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"E-Switch: Failed to create E-Switch vport[%d] egress drop flow group, err(%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"esw_acl_egress_lgcy_groups_create\00", [62 x i8] zeroinitializer }, align 32
@esw_acl_egress_lgcy_groups_create._entry_ptr = internal global ptr @esw_acl_egress_lgcy_groups_create._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 87, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 117, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 142, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 162, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [65 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 42, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @esw_acl_egress_lgcy_groups_create._entry, ptr @esw_acl_egress_lgcy_groups_create._entry_ptr, ptr @esw_acl_egress_lgcy_setup._entry, ptr @esw_acl_egress_lgcy_setup._entry.7, ptr @esw_acl_egress_lgcy_setup._entry_ptr, ptr @esw_acl_egress_lgcy_setup._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_egress_lgcy_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_egress_lgcy_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_egress_lgcy_groups_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esw_acl_egress_lgcy_setup(ptr noundef %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  %drop_ctr_dst = alloca %struct.mlx5_flow_destination, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drop_ctr_dst) #6
  %0 = call ptr @memset(ptr %drop_ctr_dst, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #6
  %1 = call ptr @memset(ptr %flow_act, i32 0, i32 36)
  %egress = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7
  %drop_counter1 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 2
  %2 = ptrtoint ptr %drop_counter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drop_counter1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %esw, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %5, i32 0, i32 8, i32 0, i32 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %7, i32 48
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %10 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.else.if.end15_crit_edge, label %if.then5

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then5:                                         ; preds = %if.else
  %call = tail call ptr @mlx5_fc_create(ptr noundef %5, i1 noundef zeroext false) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %esw, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %vport10 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %15 = ptrtoint ptr %vport10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vport10, align 8
  %conv = zext i16 %16 to i32
  %17 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %17) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then5.if.end_crit_edge
  %drop_counter.0 = phi ptr [ null, %do.end ], [ %call, %if.then5.if.end_crit_edge ]
  %18 = ptrtoint ptr %drop_counter1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %drop_counter.0, ptr %drop_counter1, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.else.if.end15_crit_edge, %entry.if.end15_crit_edge
  %drop_counter.1 = phi ptr [ %drop_counter.0, %if.end ], [ null, %if.else.if.end15_crit_edge ], [ %3, %entry.if.end15_crit_edge ]
  tail call void @esw_acl_egress_vlan_destroy(ptr noundef %vport) #6
  %drop_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drop_rule.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  %cmp.i.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end15.esw_acl_egress_lgcy_rules_destroy.exit_crit_edge, label %if.then.i

if.end15.esw_acl_egress_lgcy_rules_destroy.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_lgcy_rules_destroy.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %20) #6
  %21 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %drop_rule.i, align 4
  br label %esw_acl_egress_lgcy_rules_destroy.exit

esw_acl_egress_lgcy_rules_destroy.exit:           ; preds = %if.then.i, %if.end15.esw_acl_egress_lgcy_rules_destroy.exit_crit_edge
  %vlan = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vlan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool16.not = icmp eq i16 %23, 0
  br i1 %tobool16.not, label %land.lhs.true, label %esw_acl_egress_lgcy_rules_destroy.exit.if.end20_crit_edge

esw_acl_egress_lgcy_rules_destroy.exit.if.end20_crit_edge: ; preds = %esw_acl_egress_lgcy_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true:                                    ; preds = %esw_acl_egress_lgcy_rules_destroy.exit
  %qos = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 4
  %24 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %qos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not = icmp eq i8 %25, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @esw_acl_egress_lgcy_cleanup(ptr noundef %esw, ptr noundef %vport)
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %esw_acl_egress_lgcy_rules_destroy.exit.if.end20_crit_edge
  %26 = ptrtoint ptr %egress to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %egress, align 8
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %if.then23, label %if.end20.do.body42_crit_edge

if.end20.do.body42_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

if.then23:                                        ; preds = %if.end20
  %call24 = tail call ptr @esw_acl_table_create(ptr noundef %esw, ptr noundef %vport, i32 noundef 9, i32 noundef 2) #6
  %28 = ptrtoint ptr %egress to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call24, ptr %egress, align 8
  %cmp.i151 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call24 to i32
  %30 = ptrtoint ptr %egress to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %egress, align 8
  br label %out

if.end36:                                         ; preds = %if.then23
  %31 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %esw, align 8
  %call.i = tail call i32 @esw_acl_egress_vlan_grp_create(ptr noundef %esw, ptr noundef %vport) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %if.end36
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #10
  %tobool3.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i, label %esw_acl_egress_lgcy_groups_create.exit.thread160, label %do.body.i

esw_acl_egress_lgcy_groups_create.exit.thread160: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @esw_acl_egress_vlan_grp_destroy(ptr noundef %vport) #6
  br label %out

do.body.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %add.ptr.i, align 4
  %add.ptr16.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %34 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %add.ptr16.i, align 4
  %35 = ptrtoint ptr %egress to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %egress, align 8
  %call24.i = tail call ptr @mlx5_create_flow_group(ptr noundef %36, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i.i152 = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i152, label %esw_acl_egress_lgcy_groups_create.exit, label %esw_acl_egress_lgcy_groups_create.exit.thread

esw_acl_egress_lgcy_groups_create.exit.thread:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call24.i, ptr %37, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %do.body42

esw_acl_egress_lgcy_groups_create.exit:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call24.i to i32
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %32, align 8
  %vport31.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %42 = ptrtoint ptr %vport31.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vport31.i, align 8
  %conv.i = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.12, i32 noundef %conv.i, i32 noundef %39) #9
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  tail call void @esw_acl_egress_vlan_grp_destroy(ptr noundef %vport) #6
  br label %out

do.body42:                                        ; preds = %esw_acl_egress_lgcy_groups_create.exit.thread, %if.end20.do.body42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %44 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and43 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.do.end68_crit_edge, label %do.body46

do.body42.do.end68_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

do.body46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_egress_lgcy_setup.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_egress_lgcy_setup, %if.then51)) #6
          to label %do.end68 [label %if.then51], !srcloc !35

if.then51:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %esw, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %49 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 68
  %53 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid, align 8
  %vport55 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %55 = ptrtoint ptr %vport55 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vport55, align 8
  %conv56 = zext i16 %56 to i32
  %57 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vlan, align 2
  %conv59 = zext i16 %58 to i32
  %qos61 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 4
  %59 = ptrtoint ptr %qos61 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %qos61, align 4
  %conv62 = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_egress_lgcy_setup.__UNIQUE_ID_ddebug679, ptr noundef %48, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef %54, i32 noundef %conv56, i32 noundef %conv59, i32 noundef %conv62) #6
  br label %do.end68

do.end68:                                         ; preds = %if.then51, %do.body46, %do.body42.do.end68_crit_edge
  %61 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vlan, align 2
  %call71 = tail call i32 @esw_egress_acl_vlan_create(ptr noundef %esw, ptr noundef %vport, ptr noundef null, i16 noundef zeroext %62, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %do.end68.out_crit_edge

do.end68.out_crit_edge:                           ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end74:                                         ; preds = %do.end68
  %63 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %flow_act, align 4
  %tobool75.not = icmp eq ptr %drop_counter.1, null
  br i1 %tobool75.not, label %if.end74.if.end79_crit_edge, label %if.then76

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 10, ptr %flow_act, align 4
  %65 = ptrtoint ptr %drop_ctr_dst to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 256, ptr %drop_ctr_dst, align 4
  %call78 = tail call i32 @mlx5_fc_id(ptr noundef nonnull %drop_counter.1) #6
  %66 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %drop_ctr_dst, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call78, ptr %66, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end74.if.end79_crit_edge
  %dest_num.0 = phi i32 [ 1, %if.then76 ], [ 0, %if.end74.if.end79_crit_edge ]
  %dst.0 = phi ptr [ %drop_ctr_dst, %if.then76 ], [ null, %if.end74.if.end79_crit_edge ]
  %68 = ptrtoint ptr %egress to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %egress, align 8
  %call82 = call ptr @mlx5_add_flow_rules(ptr noundef %69, ptr noundef null, ptr noundef nonnull %flow_act, ptr noundef %dst.0, i32 noundef %dest_num.0) #6
  %70 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call82, ptr %drop_rule.i, align 4
  %cmp.i154 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then87, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then87:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %call82 to i32
  %72 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %esw, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %vport96 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %76 = ptrtoint ptr %vport96 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vport96, align 8
  %conv97 = zext i16 %77 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.8, i32 noundef %conv97, i32 noundef %71) #9
  %78 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %drop_rule.i, align 4
  br label %out

out:                                              ; preds = %if.then87, %do.end68.out_crit_edge, %esw_acl_egress_lgcy_groups_create.exit, %esw_acl_egress_lgcy_groups_create.exit.thread160, %if.end36.out_crit_edge, %if.then30
  %err.0 = phi i32 [ %call71, %do.end68.out_crit_edge ], [ %71, %if.then87 ], [ %29, %if.then30 ], [ %39, %esw_acl_egress_lgcy_groups_create.exit ], [ -12, %esw_acl_egress_lgcy_groups_create.exit.thread160 ], [ %call.i, %if.end36.out_crit_edge ]
  call void @esw_acl_egress_lgcy_cleanup(ptr noundef %esw, ptr noundef %vport)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end79.cleanup_crit_edge, %if.then19
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.then19 ], [ 0, %if.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %drop_ctr_dst) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fc_create(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esw_acl_egress_lgcy_cleanup(ptr nocapture noundef readonly %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %egress = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7
  %0 = ptrtoint ptr %egress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %egress, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.clean_drop_counter_crit_edge, label %do.body

entry.clean_drop_counter_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_drop_counter

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %2 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.body2

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_egress_lgcy_cleanup.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_egress_lgcy_cleanup, %if.then7)) #6
          to label %do.end12 [label %if.then7], !srcloc !35

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %esw, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !25) #6
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
  %vport9 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %13 = ptrtoint ptr %vport9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vport9, align 8
  %conv = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_egress_lgcy_cleanup.__UNIQUE_ID_ddebug680, ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 162, i32 noundef %12, i32 noundef %conv) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body2, %do.body.do.end12_crit_edge
  tail call void @esw_acl_egress_vlan_destroy(ptr noundef %vport) #6
  %drop_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drop_rule.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end12.esw_acl_egress_lgcy_rules_destroy.exit_crit_edge, label %if.then.i

do.end12.esw_acl_egress_lgcy_rules_destroy.exit_crit_edge: ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_lgcy_rules_destroy.exit

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %16) #6
  %17 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %drop_rule.i, align 4
  br label %esw_acl_egress_lgcy_rules_destroy.exit

esw_acl_egress_lgcy_rules_destroy.exit:           ; preds = %if.then.i, %do.end12.esw_acl_egress_lgcy_rules_destroy.exit_crit_edge
  %18 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i.i30 = icmp eq ptr %20, null
  %cmp.i.i31 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i32 = or i1 %tobool.not.i.i30, %cmp.i.i31
  br i1 %spec.select.i.i32, label %esw_acl_egress_lgcy_rules_destroy.exit.esw_acl_egress_lgcy_groups_destroy.exit_crit_edge, label %if.then.i33

esw_acl_egress_lgcy_rules_destroy.exit.esw_acl_egress_lgcy_groups_destroy.exit_crit_edge: ; preds = %esw_acl_egress_lgcy_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_lgcy_groups_destroy.exit

if.then.i33:                                      ; preds = %esw_acl_egress_lgcy_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %20) #6
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %18, align 4
  br label %esw_acl_egress_lgcy_groups_destroy.exit

esw_acl_egress_lgcy_groups_destroy.exit:          ; preds = %if.then.i33, %esw_acl_egress_lgcy_rules_destroy.exit.esw_acl_egress_lgcy_groups_destroy.exit_crit_edge
  tail call void @esw_acl_egress_vlan_grp_destroy(ptr noundef %vport) #6
  tail call void @esw_acl_egress_table_destroy(ptr noundef %vport) #6
  br label %clean_drop_counter

clean_drop_counter:                               ; preds = %esw_acl_egress_lgcy_groups_destroy.exit, %entry.clean_drop_counter_crit_edge
  %drop_counter = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 2
  %22 = ptrtoint ptr %drop_counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drop_counter, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %clean_drop_counter.if.end21_crit_edge, label %if.then15

clean_drop_counter.if.end21_crit_edge:            ; preds = %clean_drop_counter
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then15:                                        ; preds = %clean_drop_counter
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %esw, align 8
  tail call void @mlx5_fc_destroy(ptr noundef %25, ptr noundef nonnull %23) #6
  %26 = ptrtoint ptr %drop_counter to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %drop_counter, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %clean_drop_counter.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esw_acl_table_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_egress_acl_vlan_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fc_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_egress_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_egress_vlan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_acl_egress_vlan_grp_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_egress_vlan_grp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c", i32 87, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @esw_acl_egress_lgcy_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @esw_acl_egress_lgcy_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c", i32 117, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @esw_acl_egress_lgcy_setup.__UNIQUE_ID_ddebug679, !9, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c", i32 142, i32 3}
!14 = !{ptr @esw_acl_egress_lgcy_setup._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @esw_acl_egress_lgcy_setup._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c", i32 162, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @esw_acl_egress_lgcy_cleanup.__UNIQUE_ID_ddebug680, !17, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_lgcy.c", i32 42, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @esw_acl_egress_lgcy_groups_create._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @esw_acl_egress_lgcy_groups_create._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148705566, i64 2148705571, i64 2148705584, i64 2148705628, i64 2148705662, i64 2148705683}
