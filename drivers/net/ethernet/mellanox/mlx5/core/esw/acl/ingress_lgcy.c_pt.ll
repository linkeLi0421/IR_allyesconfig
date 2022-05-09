; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c"
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
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }

@esw_acl_ingress_lgcy_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"E-Switch: vport[%d] configure ingress drop rule counter failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"esw_acl_ingress_lgcy_setup\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_setup._entry_ptr = internal global ptr @esw_acl_ingress_lgcy_setup._entry, section ".printk_index", align 4
@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@esw_acl_ingress_lgcy_setup.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): vport[%d] configure ingress rules, vlan(%d) qos(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"E-Switch: vport[%d] configure ingress allow rule, err(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_setup._entry_ptr.9 = internal global ptr @esw_acl_ingress_lgcy_setup._entry.7, section ".printk_index", align 4
@esw_acl_ingress_lgcy_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"E-Switch: vport[%d] configure ingress drop rule, err(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_setup._entry_ptr.12 = internal global ptr @esw_acl_ingress_lgcy_setup._entry.10, section ".printk_index", align 4
@esw_acl_ingress_lgcy_cleanup.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"esw_acl_ingress_lgcy_cleanup\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Destroy vport[%d] E-Switch ingress ACL\0A\00", [40 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_groups_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"E-Switch: vport[%d] ingress create untagged spoofchk flow group, err(%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"esw_acl_ingress_lgcy_groups_create\00", [61 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_groups_create._entry_ptr = internal global ptr @esw_acl_ingress_lgcy_groups_create._entry, section ".printk_index", align 4
@esw_acl_ingress_lgcy_groups_create._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"E-Switch: vport[%d] ingress create untagged flow group, err(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_groups_create._entry_ptr.19 = internal global ptr @esw_acl_ingress_lgcy_groups_create._entry.17, section ".printk_index", align 4
@esw_acl_ingress_lgcy_groups_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"E-Switch: vport[%d] ingress create spoofchk flow group, err(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_groups_create._entry_ptr.22 = internal global ptr @esw_acl_ingress_lgcy_groups_create._entry.20, section ".printk_index", align 4
@esw_acl_ingress_lgcy_groups_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"E-Switch: vport[%d] ingress create drop flow group, err(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@esw_acl_ingress_lgcy_groups_create._entry_ptr.25 = internal global ptr @esw_acl_ingress_lgcy_groups_create._entry.23, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 168, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 196, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 228, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 250, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 271, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 45, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 61, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 78, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [66 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 91, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @esw_acl_ingress_lgcy_groups_create._entry, ptr @esw_acl_ingress_lgcy_groups_create._entry.17, ptr @esw_acl_ingress_lgcy_groups_create._entry.20, ptr @esw_acl_ingress_lgcy_groups_create._entry.23, ptr @esw_acl_ingress_lgcy_groups_create._entry_ptr, ptr @esw_acl_ingress_lgcy_groups_create._entry_ptr.19, ptr @esw_acl_ingress_lgcy_groups_create._entry_ptr.22, ptr @esw_acl_ingress_lgcy_groups_create._entry_ptr.25, ptr @esw_acl_ingress_lgcy_setup._entry, ptr @esw_acl_ingress_lgcy_setup._entry.10, ptr @esw_acl_ingress_lgcy_setup._entry.7, ptr @esw_acl_ingress_lgcy_setup._entry_ptr, ptr @esw_acl_ingress_lgcy_setup._entry_ptr.12, ptr @esw_acl_ingress_lgcy_setup._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_lgcy_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_lgcy_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_lgcy_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_lgcy_groups_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_lgcy_groups_create._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_lgcy_groups_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_lgcy_groups_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esw_acl_ingress_lgcy_setup(ptr noundef %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  %drop_ctr_dst = alloca %struct.mlx5_flow_destination, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %drop_ctr_dst) #6
  %0 = call ptr @memset(ptr %drop_ctr_dst, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #6
  %1 = call ptr @memset(ptr %flow_act, i32 0, i32 36)
  %drop_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 4
  %2 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drop_rule.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.esw_acl_ingress_lgcy_rules_destroy.exit_crit_edge, label %if.then.i

entry.esw_acl_ingress_lgcy_rules_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_lgcy_rules_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %drop_rule.i, align 8
  br label %esw_acl_ingress_lgcy_rules_destroy.exit

esw_acl_ingress_lgcy_rules_destroy.exit:          ; preds = %if.then.i, %entry.esw_acl_ingress_lgcy_rules_destroy.exit_crit_edge
  tail call void @esw_acl_ingress_allow_rule_destroy(ptr noundef %vport) #6
  %ingress = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6
  %drop_counter = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 5
  %5 = ptrtoint ptr %drop_counter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drop_counter, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %esw_acl_ingress_lgcy_rules_destroy.exit.if.end15_crit_edge

esw_acl_ingress_lgcy_rules_destroy.exit.if.end15_crit_edge: ; preds = %esw_acl_ingress_lgcy_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.else:                                          ; preds = %esw_acl_ingress_lgcy_rules_destroy.exit
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %8, i32 0, i32 8, i32 0, i32 8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %10, i32 32
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %13 = and i32 %12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.else.if.end15_crit_edge, label %if.then5

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then5:                                         ; preds = %if.else
  %call = tail call ptr @mlx5_fc_create(ptr noundef %8, i1 noundef zeroext false) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %esw, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %vport10 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %18 = ptrtoint ptr %vport10 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vport10, align 8
  %conv = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then5.if.end_crit_edge
  %counter.0 = phi ptr [ null, %do.end ], [ %call, %if.then5.if.end_crit_edge ]
  %20 = ptrtoint ptr %drop_counter to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %counter.0, ptr %drop_counter, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.else.if.end15_crit_edge, %esw_acl_ingress_lgcy_rules_destroy.exit.if.end15_crit_edge
  %counter.1 = phi ptr [ %counter.0, %if.end ], [ null, %if.else.if.end15_crit_edge ], [ %6, %esw_acl_ingress_lgcy_rules_destroy.exit.if.end15_crit_edge ]
  %info = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10
  %vlan = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool16.not = icmp eq i16 %22, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end15
  %qos = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 4
  %23 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %qos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.not = icmp eq i8 %24, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true19:                                  ; preds = %land.lhs.true
  %spoofchk = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 5
  %25 = ptrtoint ptr %spoofchk to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %spoofchk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true19.if.end23_crit_edge

land.lhs.true19.if.end23_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @esw_acl_ingress_lgcy_cleanup(ptr noundef %esw, ptr noundef %vport)
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true19.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %26 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ingress, align 8
  %tobool25.not = icmp eq ptr %27, null
  br i1 %tobool25.not, label %if.then26, label %if.end23.do.body45_crit_edge

if.end23.do.body45_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

if.then26:                                        ; preds = %if.end23
  %call27 = tail call ptr @esw_acl_table_create(ptr noundef %esw, ptr noundef %vport, i32 noundef 10, i32 noundef 4) #6
  %28 = ptrtoint ptr %ingress to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call27, ptr %ingress, align 8
  %cmp.i261 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i261, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call27 to i32
  %30 = ptrtoint ptr %ingress to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ingress, align 8
  br label %cleanup

if.end39:                                         ; preds = %if.then26
  %31 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %esw, align 8
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #10
  %tobool.not.i262 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i262, label %if.end39.out_crit_edge, label %if.end.i

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %if.end39
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 64
  %add.ptr3.i = getelementptr i32, ptr %call.i.i.i, i32 15
  %33 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr3.i, align 4
  %and.i = and i32 %34, -256
  %or.i = or i32 %and.i, 1
  store i32 %or.i, ptr %add.ptr3.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %call.i.i.i, i32 80
  %35 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr12.i, align 4
  %or14.i = or i32 %36, 32768
  store i32 %or14.i, ptr %add.ptr12.i, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %add.ptr.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %call.i.i.i, i32 68
  %38 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr32.i, align 4
  %or34.i = or i32 %39, -65536
  store i32 %or34.i, ptr %add.ptr32.i, align 4
  %add.ptr43.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %40 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %add.ptr43.i, align 4
  %add.ptr56.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %41 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %add.ptr56.i, align 4
  %42 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ingress, align 8
  %call64.i = tail call ptr @mlx5_create_flow_group(ptr noundef %43, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then66.i, label %if.end72.i

if.then66.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %call64.i to i32
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %32, align 8
  %vport71.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %47 = ptrtoint ptr %vport71.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vport71.i, align 8
  %conv.i = zext i16 %48 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.15, i32 noundef %conv.i, i32 noundef %44) #9
  br label %esw_acl_ingress_lgcy_groups_create.exit

if.end72.i:                                       ; preds = %if.end.i
  %legacy.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2
  %allow_untagged_spoofchk_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 1
  %49 = ptrtoint ptr %allow_untagged_spoofchk_grp.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call64.i, ptr %allow_untagged_spoofchk_grp.i, align 4
  %50 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %51 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %add.ptr3.i, align 4
  %52 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 32768, ptr %add.ptr12.i, align 4
  %53 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %add.ptr43.i, align 4
  %54 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %add.ptr56.i, align 4
  %55 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ingress, align 8
  %call125.i = tail call ptr @mlx5_create_flow_group(ptr noundef %56, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i378.i = icmp ugt ptr %call125.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i378.i, label %if.then127.i, label %if.end135.i

if.then127.i:                                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call125.i to i32
  %58 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %32, align 8
  %vport133.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %60 = ptrtoint ptr %vport133.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vport133.i, align 8
  %conv134.i = zext i16 %61 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.18, i32 noundef %conv134.i, i32 noundef %57) #9
  br label %untagged_err.i

if.end135.i:                                      ; preds = %if.end72.i
  %allow_untagged_only_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 2
  %62 = ptrtoint ptr %allow_untagged_only_grp.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call125.i, ptr %allow_untagged_only_grp.i, align 8
  %63 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %64 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %add.ptr3.i, align 4
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %add.ptr.i, align 4
  %66 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -65536, ptr %add.ptr32.i, align 4
  %67 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %add.ptr43.i, align 4
  %68 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %add.ptr56.i, align 4
  %69 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ingress, align 8
  %call199.i = tail call ptr @mlx5_create_flow_group(ptr noundef %70, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i379.i = icmp ugt ptr %call199.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i379.i, label %if.then201.i, label %if.end209.i

if.then201.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %call199.i to i32
  %72 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %32, align 8
  %vport207.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %74 = ptrtoint ptr %vport207.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vport207.i, align 8
  %conv208.i = zext i16 %75 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.21, i32 noundef %conv208.i, i32 noundef %71) #9
  br label %allow_spoof_err.i

if.end209.i:                                      ; preds = %if.end135.i
  %76 = ptrtoint ptr %legacy.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call199.i, ptr %legacy.i, align 8
  %77 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %78 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %add.ptr43.i, align 4
  %79 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 3, ptr %add.ptr56.i, align 4
  %80 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ingress, align 8
  %call240.i = tail call ptr @mlx5_create_flow_group(ptr noundef %81, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i380.i = icmp ugt ptr %call240.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i380.i, label %if.then242.i, label %esw_acl_ingress_lgcy_groups_create.exit.thread270

if.then242.i:                                     ; preds = %if.end209.i
  %82 = ptrtoint ptr %call240.i to i32
  %83 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %32, align 8
  %vport248.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %85 = ptrtoint ptr %vport248.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %vport248.i, align 8
  %conv249.i = zext i16 %86 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.24, i32 noundef %conv249.i, i32 noundef %82) #9
  %87 = ptrtoint ptr %legacy.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %legacy.i, align 8
  %tobool.not.i.i = icmp eq ptr %88, null
  %cmp.i381.i = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i381.i
  br i1 %spec.select.i.i, label %if.then242.i.allow_spoof_err.i_crit_edge, label %if.then257.i

if.then242.i.allow_spoof_err.i_crit_edge:         ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %allow_spoof_err.i

esw_acl_ingress_lgcy_groups_create.exit.thread270: ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %drop_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 3
  %89 = ptrtoint ptr %drop_grp.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call240.i, ptr %drop_grp.i, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %do.body45

if.then257.i:                                     ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %88) #6
  %90 = ptrtoint ptr %legacy.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %legacy.i, align 8
  br label %allow_spoof_err.i

allow_spoof_err.i:                                ; preds = %if.then257.i, %if.then242.i.allow_spoof_err.i_crit_edge, %if.then201.i
  %err.0.i = phi i32 [ %71, %if.then201.i ], [ %82, %if.then242.i.allow_spoof_err.i_crit_edge ], [ %82, %if.then257.i ]
  %91 = ptrtoint ptr %allow_untagged_only_grp.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %allow_untagged_only_grp.i, align 8
  %tobool.not.i382.i = icmp eq ptr %92, null
  %cmp.i383.i = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  %spec.select.i384.i = or i1 %tobool.not.i382.i, %cmp.i383.i
  br i1 %spec.select.i384.i, label %allow_spoof_err.i.untagged_err.i_crit_edge, label %if.then269.i

allow_spoof_err.i.untagged_err.i_crit_edge:       ; preds = %allow_spoof_err.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %untagged_err.i

if.then269.i:                                     ; preds = %allow_spoof_err.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %92) #6
  %93 = ptrtoint ptr %allow_untagged_only_grp.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %allow_untagged_only_grp.i, align 8
  br label %untagged_err.i

untagged_err.i:                                   ; preds = %if.then269.i, %allow_spoof_err.i.untagged_err.i_crit_edge, %if.then127.i
  %err.1.i = phi i32 [ %57, %if.then127.i ], [ %err.0.i, %allow_spoof_err.i.untagged_err.i_crit_edge ], [ %err.0.i, %if.then269.i ]
  %94 = ptrtoint ptr %allow_untagged_spoofchk_grp.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %allow_untagged_spoofchk_grp.i, align 4
  %tobool.not.i385.i = icmp eq ptr %95, null
  %cmp.i386.i = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  %spec.select.i387.i = or i1 %tobool.not.i385.i, %cmp.i386.i
  br i1 %spec.select.i387.i, label %untagged_err.i.esw_acl_ingress_lgcy_groups_create.exit_crit_edge, label %if.then281.i

untagged_err.i.esw_acl_ingress_lgcy_groups_create.exit_crit_edge: ; preds = %untagged_err.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_lgcy_groups_create.exit

if.then281.i:                                     ; preds = %untagged_err.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %95) #6
  %96 = ptrtoint ptr %allow_untagged_spoofchk_grp.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %allow_untagged_spoofchk_grp.i, align 4
  br label %esw_acl_ingress_lgcy_groups_create.exit

esw_acl_ingress_lgcy_groups_create.exit:          ; preds = %if.then281.i, %untagged_err.i.esw_acl_ingress_lgcy_groups_create.exit_crit_edge, %if.then66.i
  %retval.0.ph.i = phi i32 [ %44, %if.then66.i ], [ %err.1.i, %untagged_err.i.esw_acl_ingress_lgcy_groups_create.exit_crit_edge ], [ %err.1.i, %if.then281.i ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %out

do.body45:                                        ; preds = %esw_acl_ingress_lgcy_groups_create.exit.thread270, %if.end23.do.body45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %97 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and46 = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.do.end71_crit_edge, label %do.body49

do.body45.do.end71_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end71

do.body49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_ingress_lgcy_setup.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_ingress_lgcy_setup, %if.then54)) #6
          to label %do.end71 [label %if.then54], !srcloc !51

if.then54:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %esw, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %102 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i264 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i264 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 68
  %106 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pid, align 8
  %vport58 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %108 = ptrtoint ptr %vport58 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %vport58, align 8
  %conv59 = zext i16 %109 to i32
  %110 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %vlan, align 2
  %conv62 = zext i16 %111 to i32
  %qos64 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 4
  %112 = ptrtoint ptr %qos64 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %qos64, align 4
  %conv65 = zext i8 %113 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_ingress_lgcy_setup.__UNIQUE_ID_ddebug694, ptr noundef %101, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef %107, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %conv65) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then54, %do.body49, %do.body45.do.end71_crit_edge
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #10
  %tobool73.not = icmp eq ptr %call.i.i, null
  br i1 %tobool73.not, label %do.end71.out_crit_edge, label %if.end75

do.end71.out_crit_edge:                           ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end75:                                         ; preds = %do.end71
  %114 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %vlan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool79.not = icmp eq i16 %115, 0
  br i1 %tobool79.not, label %lor.lhs.false, label %if.end75.do.end88_crit_edge

if.end75.do.end88_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

lor.lhs.false:                                    ; preds = %if.end75
  %qos81 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 4
  %116 = ptrtoint ptr %qos81 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %qos81, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool83.not = icmp eq i8 %117, 0
  br i1 %tobool83.not, label %lor.lhs.false.if.end97_crit_edge, label %lor.lhs.false.do.end88_crit_edge

lor.lhs.false.do.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end88

lor.lhs.false.if.end97_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end88:                                         ; preds = %lor.lhs.false.do.end88_crit_edge, %if.end75.do.end88_crit_edge
  %add.ptr90 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %118 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %add.ptr90, align 4
  %or = or i32 %119, 32768
  store i32 %or, ptr %add.ptr90, align 4
  br label %if.end97

if.end97:                                         ; preds = %do.end88, %lor.lhs.false.if.end97_crit_edge
  %spoofchk99 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 5
  %120 = ptrtoint ptr %spoofchk99 to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load100 = load i8, ptr %spoofchk99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load100)
  %tobool102.not = icmp sgt i8 %bf.load100, -1
  br i1 %tobool102.not, label %if.end97.if.end136_crit_edge, label %do.end107

if.end97.if.end136_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

do.end107:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %match_criteria108 = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %match_criteria108 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %match_criteria108, align 4
  %add.ptr124 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 1
  %122 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr124, align 4
  %or126 = or i32 %123, -65536
  store i32 %or126, ptr %add.ptr124, align 4
  %match_value = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %info, align 4
  %126 = ptrtoint ptr %match_value to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %match_value, align 4
  %add.ptr.i265 = getelementptr %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 0, i32 4
  %127 = ptrtoint ptr %add.ptr.i265 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %add.ptr.i265, align 2
  %add.ptr1.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %add.ptr1.i, align 2
  br label %if.end136

if.end136:                                        ; preds = %do.end107, %if.end97.if.end136_crit_edge
  %130 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %call.i.i, align 4
  %131 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1, ptr %flow_act, align 4
  %132 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ingress, align 8
  %call139 = call ptr @mlx5_add_flow_rules(ptr noundef %133, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef null, i32 noundef 0) #6
  %allow_rule = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 1
  %134 = ptrtoint ptr %allow_rule to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call139, ptr %allow_rule, align 4
  %cmp.i266 = icmp ugt ptr %call139, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %if.then144, label %if.end157

if.then144:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %call139 to i32
  %136 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %esw, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 8
  %vport153 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %140 = ptrtoint ptr %vport153 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %vport153, align 8
  %conv154 = zext i16 %141 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %139, ptr noundef nonnull @.str.8, i32 noundef %conv154, i32 noundef %135) #9
  %142 = ptrtoint ptr %allow_rule to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %allow_rule, align 4
  br label %out

if.end157:                                        ; preds = %if.end136
  %143 = getelementptr inbounds i8, ptr %flow_act, i32 4
  %144 = call ptr @memset(ptr %143, i32 0, i32 32)
  %145 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 2, ptr %flow_act, align 4
  %tobool159.not = icmp eq ptr %counter.1, null
  br i1 %tobool159.not, label %if.end157.if.end164_crit_edge, label %if.then160

if.end157.if.end164_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then160:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 10, ptr %flow_act, align 4
  %147 = ptrtoint ptr %drop_ctr_dst to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 256, ptr %drop_ctr_dst, align 4
  %call163 = call i32 @mlx5_fc_id(ptr noundef nonnull %counter.1) #6
  %148 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %drop_ctr_dst, i32 0, i32 1
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %call163, ptr %148, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %if.end157.if.end164_crit_edge
  %dest_num.0 = phi i32 [ 1, %if.then160 ], [ 0, %if.end157.if.end164_crit_edge ]
  %dst.0 = phi ptr [ %drop_ctr_dst, %if.then160 ], [ null, %if.end157.if.end164_crit_edge ]
  %150 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ingress, align 8
  %call167 = call ptr @mlx5_add_flow_rules(ptr noundef %151, ptr noundef null, ptr noundef nonnull %flow_act, ptr noundef %dst.0, i32 noundef %dest_num.0) #6
  %152 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call167, ptr %drop_rule.i, align 8
  %cmp.i267 = icmp ugt ptr %call167, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %if.then174, label %if.end189

if.then174:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %call167 to i32
  %154 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %esw, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 8
  %vport184 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %158 = ptrtoint ptr %vport184 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %vport184, align 8
  %conv185 = zext i16 %159 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %157, ptr noundef nonnull @.str.11, i32 noundef %conv185, i32 noundef %153) #9
  %160 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %drop_rule.i, align 8
  br label %out

if.end189:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i.i) #6
  br label %cleanup

out:                                              ; preds = %if.then174, %if.then144, %do.end71.out_crit_edge, %esw_acl_ingress_lgcy_groups_create.exit, %if.end39.out_crit_edge
  %spec.0 = phi ptr [ %call.i.i, %if.then144 ], [ %call.i.i, %if.then174 ], [ null, %esw_acl_ingress_lgcy_groups_create.exit ], [ null, %do.end71.out_crit_edge ], [ null, %if.end39.out_crit_edge ]
  %err.0 = phi i32 [ %135, %if.then144 ], [ %153, %if.then174 ], [ %retval.0.ph.i, %esw_acl_ingress_lgcy_groups_create.exit ], [ -12, %do.end71.out_crit_edge ], [ -12, %if.end39.out_crit_edge ]
  call void @esw_acl_ingress_lgcy_cleanup(ptr noundef %esw, ptr noundef %vport)
  call void @kvfree(ptr noundef %spec.0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end189, %if.then33, %if.then22
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end189 ], [ %29, %if.then33 ], [ 0, %if.then22 ]
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
define dso_local void @esw_acl_ingress_lgcy_cleanup(ptr nocapture noundef readonly %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ingress = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6
  %0 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ingress, align 8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_ingress_lgcy_cleanup.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_ingress_lgcy_cleanup, %if.then7)) #6
          to label %do.end12 [label %if.then7], !srcloc !51

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %esw, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_ingress_lgcy_cleanup.__UNIQUE_ID_ddebug698, ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef %12, i32 noundef %conv) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body2, %do.body.do.end12_crit_edge
  %drop_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 4
  %15 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drop_rule.i, align 8
  %tobool.not.i32 = icmp eq ptr %16, null
  br i1 %tobool.not.i32, label %do.end12.esw_acl_ingress_lgcy_rules_destroy.exit_crit_edge, label %if.then.i

do.end12.esw_acl_ingress_lgcy_rules_destroy.exit_crit_edge: ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_lgcy_rules_destroy.exit

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %16) #6
  %17 = ptrtoint ptr %drop_rule.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %drop_rule.i, align 8
  br label %esw_acl_ingress_lgcy_rules_destroy.exit

esw_acl_ingress_lgcy_rules_destroy.exit:          ; preds = %if.then.i, %do.end12.esw_acl_ingress_lgcy_rules_destroy.exit_crit_edge
  tail call void @esw_acl_ingress_allow_rule_destroy(ptr noundef %vport) #6
  %legacy.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %legacy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %legacy.i, align 8
  %tobool.not.i33 = icmp eq ptr %19, null
  br i1 %tobool.not.i33, label %esw_acl_ingress_lgcy_rules_destroy.exit.if.end.i_crit_edge, label %if.then.i34

esw_acl_ingress_lgcy_rules_destroy.exit.if.end.i_crit_edge: ; preds = %esw_acl_ingress_lgcy_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i34:                                      ; preds = %esw_acl_ingress_lgcy_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %19) #6
  %20 = ptrtoint ptr %legacy.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %legacy.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i34, %esw_acl_ingress_lgcy_rules_destroy.exit.if.end.i_crit_edge
  %allow_untagged_only_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 2
  %21 = ptrtoint ptr %allow_untagged_only_grp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %allow_untagged_only_grp.i, align 8
  %tobool9.not.i = icmp eq ptr %22, null
  br i1 %tobool9.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then10.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %22) #6
  %23 = ptrtoint ptr %allow_untagged_only_grp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %allow_untagged_only_grp.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then10.i, %if.end.i.if.end17.i_crit_edge
  %allow_untagged_spoofchk_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 1
  %24 = ptrtoint ptr %allow_untagged_spoofchk_grp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %allow_untagged_spoofchk_grp.i, align 4
  %tobool20.not.i = icmp eq ptr %25, null
  br i1 %tobool20.not.i, label %if.end17.i.if.end28.i_crit_edge, label %if.then21.i

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %25) #6
  %26 = ptrtoint ptr %allow_untagged_spoofchk_grp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %allow_untagged_spoofchk_grp.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end28.i_crit_edge
  %drop_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 3
  %27 = ptrtoint ptr %drop_grp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drop_grp.i, align 4
  %tobool31.not.i = icmp eq ptr %28, null
  br i1 %tobool31.not.i, label %if.end28.i.esw_acl_ingress_lgcy_groups_destroy.exit_crit_edge, label %if.then32.i

if.end28.i.esw_acl_ingress_lgcy_groups_destroy.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_lgcy_groups_destroy.exit

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %28) #6
  %29 = ptrtoint ptr %drop_grp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %drop_grp.i, align 4
  br label %esw_acl_ingress_lgcy_groups_destroy.exit

esw_acl_ingress_lgcy_groups_destroy.exit:         ; preds = %if.then32.i, %if.end28.i.esw_acl_ingress_lgcy_groups_destroy.exit_crit_edge
  tail call void @esw_acl_ingress_table_destroy(ptr noundef %vport) #6
  br label %clean_drop_counter

clean_drop_counter:                               ; preds = %esw_acl_ingress_lgcy_groups_destroy.exit, %entry.clean_drop_counter_crit_edge
  %drop_counter = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 2, i32 5
  %30 = ptrtoint ptr %drop_counter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drop_counter, align 4
  %tobool14.not = icmp eq ptr %31, null
  br i1 %tobool14.not, label %clean_drop_counter.if.end23_crit_edge, label %if.then15

clean_drop_counter.if.end23_crit_edge:            ; preds = %clean_drop_counter
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then15:                                        ; preds = %clean_drop_counter
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %esw, align 8
  tail call void @mlx5_fc_destroy(ptr noundef %33, ptr noundef nonnull %31) #6
  %34 = ptrtoint ptr %drop_counter to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %drop_counter, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %clean_drop_counter.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esw_acl_table_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fc_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_ingress_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_ingress_allow_rule_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 168, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @esw_acl_ingress_lgcy_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @esw_acl_ingress_lgcy_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 196, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @esw_acl_ingress_lgcy_setup.__UNIQUE_ID_ddebug694, !9, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 228, i32 3}
!14 = !{ptr @esw_acl_ingress_lgcy_setup._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @esw_acl_ingress_lgcy_setup._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 250, i32 3}
!18 = !{ptr @esw_acl_ingress_lgcy_setup._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @esw_acl_ingress_lgcy_setup._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 271, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @esw_acl_ingress_lgcy_cleanup.__UNIQUE_ID_ddebug698, !21, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 45, i32 3}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @esw_acl_ingress_lgcy_groups_create._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @esw_acl_ingress_lgcy_groups_create._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 61, i32 3}
!31 = !{ptr @esw_acl_ingress_lgcy_groups_create._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @esw_acl_ingress_lgcy_groups_create._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 78, i32 3}
!35 = !{ptr @esw_acl_ingress_lgcy_groups_create._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @esw_acl_ingress_lgcy_groups_create._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_lgcy.c", i32 91, i32 3}
!39 = !{ptr @esw_acl_ingress_lgcy_groups_create._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @esw_acl_ingress_lgcy_groups_create._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148710001, i64 2148710006, i64 2148710019, i64 2148710063, i64 2148710097, i64 2148710118}
