; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.165, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_vport = type { ptr, [256 x %struct.hlist_head], [256 x %struct.hlist_head], ptr, ptr, %struct.work_struct, %struct.vport_ingress, %struct.vport_egress, i32, i32, %struct.mlx5_vport_info, %struct.anon.182, i16, i8, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.vport_ingress = type { ptr, ptr, %struct.anon.177, %struct.anon.178 }
%struct.anon.177 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.178 = type { ptr, ptr, ptr, ptr }
%struct.vport_egress = type { ptr, ptr, ptr, %union.anon.179 }
%union.anon.179 = type { %struct.anon.181 }
%struct.anon.181 = type { ptr, ptr, ptr, ptr }
%struct.mlx5_vport_info = type { [6 x i8], i16, i64, i32, i8, i8 }
%struct.anon.182 = type { i8, i32, i32, i32, i32, ptr }
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
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.184, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.184 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }

@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@esw_acl_ingress_ofld_setup.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"esw_acl_ingress_ofld_setup\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): vport[%d] configure ingress rules\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5_esw_acl_ingress_vport_bond_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5_esw_acl_ingress_vport_bond_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 303, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"E-Switch: vport(%d) invalid!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx5_esw_acl_ingress_vport_bond_update\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_esw_acl_ingress_vport_bond_update._entry_ptr = internal global ptr @mlx5_esw_acl_ingress_vport_bond_update._entry, section ".printk_index", align 4
@esw_acl_ingress_ofld_groups_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 189, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"E-Switch: vport[%d] ingress create untagged flow group, err(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"esw_acl_ingress_ofld_groups_create\00", [61 x i8] zeroinitializer }, align 32
@esw_acl_ingress_ofld_groups_create._entry_ptr = internal global ptr @esw_acl_ingress_ofld_groups_create._entry, section ".printk_index", align 4
@esw_acl_ingress_ofld_groups_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 209, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"E-Switch: vport[%d] ingress create drop flow group, err(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@esw_acl_ingress_ofld_groups_create._entry_ptr.12 = internal global ptr @esw_acl_ingress_ofld_groups_create._entry.10, section ".printk_index", align 4
@esw_acl_ingress_ofld_rules_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 130, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"E-Switch: vport(%d) create ingress modify metadata, err(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"esw_acl_ingress_ofld_rules_create\00", [62 x i8] zeroinitializer }, align 32
@esw_acl_ingress_ofld_rules_create._entry_ptr = internal global ptr @esw_acl_ingress_ofld_rules_create._entry, section ".printk_index", align 4
@esw_acl_ingress_ofld_rules_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 140, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"E-Switch: vport(%d) create ingress prio tag rule, err(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@esw_acl_ingress_ofld_rules_create._entry_ptr.17 = internal global ptr @esw_acl_ingress_ofld_rules_create._entry.15, section ".printk_index", align 4
@esw_acl_ingress_mod_metadata_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 89, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"E-Switch: failed to alloc modify header for vport %d ingress acl (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"esw_acl_ingress_mod_metadata_create\00", [60 x i8] zeroinitializer }, align 32
@esw_acl_ingress_mod_metadata_create._entry_ptr = internal global ptr @esw_acl_ingress_mod_metadata_create._entry, section ".printk_index", align 4
@esw_acl_ingress_mod_metadata_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 102, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"E-Switch: failed to add setting metadata rule for vport %d ingress acl, err(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@esw_acl_ingress_mod_metadata_create._entry_ptr.22 = internal global ptr @esw_acl_ingress_mod_metadata_create._entry.20, section ".printk_index", align 4
@esw_acl_ingress_prio_tag_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 54, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"E-Switch: vport[%d] configure ingress untagged allow rule, err(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"esw_acl_ingress_prio_tag_create\00", [32 x i8] zeroinitializer }, align 32
@esw_acl_ingress_prio_tag_create._entry_ptr = internal global ptr @esw_acl_ingress_prio_tag_create._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 271, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 303, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 188, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 208, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 128, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 138, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 87, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 100, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [66 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 52, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @esw_acl_ingress_mod_metadata_create._entry, ptr @esw_acl_ingress_mod_metadata_create._entry.20, ptr @esw_acl_ingress_mod_metadata_create._entry_ptr, ptr @esw_acl_ingress_mod_metadata_create._entry_ptr.22, ptr @esw_acl_ingress_ofld_groups_create._entry, ptr @esw_acl_ingress_ofld_groups_create._entry.10, ptr @esw_acl_ingress_ofld_groups_create._entry_ptr, ptr @esw_acl_ingress_ofld_groups_create._entry_ptr.12, ptr @esw_acl_ingress_ofld_rules_create._entry, ptr @esw_acl_ingress_ofld_rules_create._entry.15, ptr @esw_acl_ingress_ofld_rules_create._entry_ptr, ptr @esw_acl_ingress_ofld_rules_create._entry_ptr.17, ptr @esw_acl_ingress_prio_tag_create._entry, ptr @esw_acl_ingress_prio_tag_create._entry_ptr, ptr @mlx5_esw_acl_ingress_vport_bond_update._entry, ptr @mlx5_esw_acl_ingress_vport_bond_update._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_acl_ingress_vport_bond_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_ofld_groups_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_ofld_groups_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_ofld_rules_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_ofld_rules_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_mod_metadata_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_mod_metadata_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_ingress_prio_tag_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esw_acl_ingress_ofld_setup(ptr noundef %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef %esw) #6
  br i1 %call, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %esw_acl_ingress_prio_tag_enabled.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

esw_acl_ingress_prio_tag_enabled.exit:            ; preds = %land.lhs.true
  %vport1.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %7 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vport1.i, align 8
  %call.i = tail call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %8) #6
  br i1 %call.i, label %esw_acl_ingress_prio_tag_enabled.exit.if.end_crit_edge, label %esw_acl_ingress_prio_tag_enabled.exit.cleanup_crit_edge

esw_acl_ingress_prio_tag_enabled.exit.cleanup_crit_edge: ; preds = %esw_acl_ingress_prio_tag_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

esw_acl_ingress_prio_tag_enabled.exit.if.end_crit_edge: ; preds = %esw_acl_ingress_prio_tag_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %esw_acl_ingress_prio_tag_enabled.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @esw_acl_ingress_allow_rule_destroy(ptr noundef %vport) #6
  %call2 = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef %esw) #6
  %spec.select = zext i1 %call2 to i32
  %9 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %esw, align 8
  %caps.i66 = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps.i66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps.i66, align 8
  %add.ptr.i67 = getelementptr i32, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i67, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i68 = icmp eq i32 %15, 0
  br i1 %tobool.not.i68, label %if.end.esw_acl_ingress_prio_tag_enabled.exit72.thread_crit_edge, label %esw_acl_ingress_prio_tag_enabled.exit72

if.end.esw_acl_ingress_prio_tag_enabled.exit72.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_prio_tag_enabled.exit72.thread

esw_acl_ingress_prio_tag_enabled.exit72:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vport1.i69 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %16 = ptrtoint ptr %vport1.i69 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vport1.i69, align 8
  %call.i70 = tail call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %17) #6
  %inc7 = select i1 %call2, i32 2, i32 1
  %spec.select87 = select i1 %call.i70, i32 %inc7, i32 %spec.select
  br label %esw_acl_ingress_prio_tag_enabled.exit72.thread

esw_acl_ingress_prio_tag_enabled.exit72.thread:   ; preds = %esw_acl_ingress_prio_tag_enabled.exit72, %if.end.esw_acl_ingress_prio_tag_enabled.exit72.thread_crit_edge
  %18 = phi i32 [ %spec.select, %if.end.esw_acl_ingress_prio_tag_enabled.exit72.thread_crit_edge ], [ %spec.select87, %esw_acl_ingress_prio_tag_enabled.exit72 ]
  %call9 = tail call ptr @esw_acl_table_create(ptr noundef %esw, ptr noundef %vport, i32 noundef 10, i32 noundef %18) #6
  %ingress = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6
  %19 = ptrtoint ptr %ingress to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9, ptr %ingress, align 8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end19

if.then13:                                        ; preds = %esw_acl_ingress_prio_tag_enabled.exit72.thread
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call9 to i32
  %21 = ptrtoint ptr %ingress to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ingress, align 8
  br label %cleanup

if.end19:                                         ; preds = %esw_acl_ingress_prio_tag_enabled.exit72.thread
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i73 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i73, label %if.end19.group_err_crit_edge, label %if.end.i

if.end19.group_err_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %group_err

if.end.i:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %esw, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %28 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end55.i_crit_edge, label %esw_acl_ingress_prio_tag_enabled.exit.i

if.end.i.if.end55.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

esw_acl_ingress_prio_tag_enabled.exit.i:          ; preds = %if.end.i
  %vport1.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %29 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vport1.i.i, align 8
  %call.i.i = tail call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %30) #6
  br i1 %call.i.i, label %if.then2.i, label %esw_acl_ingress_prio_tag_enabled.exit.i.if.end55.i_crit_edge

esw_acl_ingress_prio_tag_enabled.exit.i.if.end55.i_crit_edge: ; preds = %esw_acl_ingress_prio_tag_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

if.then2.i:                                       ; preds = %esw_acl_ingress_prio_tag_enabled.exit.i
  %add.ptr4.i = getelementptr i32, ptr %call.i.i.i, i32 15
  %31 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr4.i, align 4
  %and.i = and i32 %32, -256
  %or.i = or i32 %and.i, 1
  store i32 %or.i, ptr %add.ptr4.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %call.i.i.i, i32 80
  %33 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr13.i, align 4
  %or15.i = or i32 %34, 32768
  store i32 %or15.i, ptr %add.ptr13.i, align 4
  %add.ptr24.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %35 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %add.ptr24.i, align 4
  %add.ptr37.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %36 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %add.ptr37.i, align 4
  %37 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ingress, align 8
  %call45.i = tail call ptr @mlx5_create_flow_group(ptr noundef %38, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i.i = icmp ugt ptr %call45.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then47.i, label %if.end53.i

if.then47.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call45.i to i32
  %40 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %esw, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %44 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vport1.i.i, align 8
  %conv.i = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.8, i32 noundef %conv.i, i32 noundef %39) #10
  br label %esw_acl_ingress_ofld_groups_create.exit

if.end53.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %offloads.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3
  %46 = ptrtoint ptr %offloads.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call45.i, ptr %offloads.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end53.i, %esw_acl_ingress_prio_tag_enabled.exit.i.if.end55.i_crit_edge, %if.end.i.if.end55.i_crit_edge
  %flow_index.0.i = phi i32 [ 1, %if.end53.i ], [ 0, %esw_acl_ingress_prio_tag_enabled.exit.i.if.end55.i_crit_edge ], [ 0, %if.end.i.if.end55.i_crit_edge ]
  %call56.i = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef %esw) #6
  br i1 %call56.i, label %if.then57.i, label %if.end55.i.esw_acl_ingress_ofld_groups_create.exit.thread83_crit_edge

if.end55.i.esw_acl_ingress_ofld_groups_create.exit.thread83_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_ofld_groups_create.exit.thread83

if.then57.i:                                      ; preds = %if.end55.i
  %47 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 1024)
  %add.ptr63.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %48 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %flow_index.0.i, ptr %add.ptr63.i, align 4
  %add.ptr76.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %49 = ptrtoint ptr %add.ptr76.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %flow_index.0.i, ptr %add.ptr76.i, align 4
  %50 = ptrtoint ptr %ingress to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ingress, align 8
  %call86.i = tail call ptr @mlx5_create_flow_group(ptr noundef %51, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i159.i = icmp ugt ptr %call86.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159.i, label %if.then88.i, label %if.end97.i

if.then88.i:                                      ; preds = %if.then57.i
  %52 = ptrtoint ptr %call86.i to i32
  %53 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %esw, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %vport95.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %57 = ptrtoint ptr %vport95.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vport95.i, align 8
  %conv96.i = zext i16 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.11, i32 noundef %conv96.i, i32 noundef %52) #10
  %offloads102.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3
  %59 = ptrtoint ptr %offloads102.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %offloads102.i, align 8
  %tobool.not.i160.i = icmp eq ptr %60, null
  %cmp.i161.i = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i160.i, %cmp.i161.i
  br i1 %spec.select.i.i, label %if.then88.i.esw_acl_ingress_ofld_groups_create.exit_crit_edge, label %if.then105.i

if.then88.i.esw_acl_ingress_ofld_groups_create.exit_crit_edge: ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_ofld_groups_create.exit

if.end97.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #8
  %metadata_allmatch_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 1
  %61 = ptrtoint ptr %metadata_allmatch_grp.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call86.i, ptr %metadata_allmatch_grp.i, align 4
  br label %esw_acl_ingress_ofld_groups_create.exit.thread83

if.then105.i:                                     ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %60) #6
  %62 = ptrtoint ptr %offloads102.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %offloads102.i, align 8
  br label %esw_acl_ingress_ofld_groups_create.exit

esw_acl_ingress_ofld_groups_create.exit.thread83: ; preds = %if.end97.i, %if.end55.i.esw_acl_ingress_ofld_groups_create.exit.thread83_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %63 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %esw_acl_ingress_ofld_groups_create.exit.thread83.do.end36_crit_edge, label %do.body25

esw_acl_ingress_ofld_groups_create.exit.thread83.do.end36_crit_edge: ; preds = %esw_acl_ingress_ofld_groups_create.exit.thread83
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

esw_acl_ingress_ofld_groups_create.exit:          ; preds = %if.then105.i, %if.then88.i.esw_acl_ingress_ofld_groups_create.exit_crit_edge, %if.then47.i
  %retval.0.ph.i = phi i32 [ %39, %if.then47.i ], [ %52, %if.then88.i.esw_acl_ingress_ofld_groups_create.exit_crit_edge ], [ %52, %if.then105.i ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %group_err

do.body25:                                        ; preds = %esw_acl_ingress_ofld_groups_create.exit.thread83
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_ingress_ofld_setup.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_ingress_ofld_setup, %if.then30)) #6
          to label %do.end36 [label %if.then30], !srcloc !57

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %esw, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %68 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i75 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i75 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid, align 8
  %vport32 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %74 = ptrtoint ptr %vport32 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vport32, align 8
  %conv = zext i16 %75 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_ingress_ofld_setup.__UNIQUE_ID_ddebug690, ptr noundef %67, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 272, i32 noundef %73, i32 noundef %conv) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body25, %esw_acl_ingress_ofld_groups_create.exit.thread83.do.end36_crit_edge
  %call37 = tail call fastcc i32 @esw_acl_ingress_ofld_rules_create(ptr noundef %esw, ptr noundef %vport)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.end36.cleanup_crit_edge, label %rules_err

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rules_err:                                        ; preds = %do.end36
  %offloads.i76 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3
  %metadata_allmatch_grp.i77 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 1
  %76 = ptrtoint ptr %metadata_allmatch_grp.i77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %metadata_allmatch_grp.i77, align 4
  %tobool.not.i78 = icmp eq ptr %77, null
  br i1 %tobool.not.i78, label %rules_err.if.end.i79_crit_edge, label %if.then.i

rules_err.if.end.i79_crit_edge:                   ; preds = %rules_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i79

if.then.i:                                        ; preds = %rules_err
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %77) #6
  %78 = ptrtoint ptr %metadata_allmatch_grp.i77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %metadata_allmatch_grp.i77, align 4
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.then.i, %rules_err.if.end.i79_crit_edge
  %79 = ptrtoint ptr %offloads.i76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %offloads.i76, align 8
  %tobool9.not.i = icmp eq ptr %80, null
  br i1 %tobool9.not.i, label %if.end.i79.group_err_crit_edge, label %if.then10.i

if.end.i79.group_err_crit_edge:                   ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %group_err

if.then10.i:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %80) #6
  %81 = ptrtoint ptr %offloads.i76 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %offloads.i76, align 8
  br label %group_err

group_err:                                        ; preds = %if.then10.i, %if.end.i79.group_err_crit_edge, %esw_acl_ingress_ofld_groups_create.exit, %if.end19.group_err_crit_edge
  %err.0 = phi i32 [ %retval.0.ph.i, %esw_acl_ingress_ofld_groups_create.exit ], [ %call37, %if.end.i79.group_err_crit_edge ], [ %call37, %if.then10.i ], [ -12, %if.end19.group_err_crit_edge ]
  tail call void @esw_acl_ingress_table_destroy(ptr noundef %vport) #6
  br label %cleanup

cleanup:                                          ; preds = %group_err, %do.end36.cleanup_crit_edge, %if.then13, %esw_acl_ingress_prio_tag_enabled.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then13 ], [ %err.0, %group_err ], [ 0, %esw_acl_ingress_prio_tag_enabled.exit.cleanup_crit_edge ], [ 0, %do.end36.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_ingress_allow_rule_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esw_acl_table_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_acl_ingress_ofld_rules_create(ptr noundef %esw, ptr nocapture noundef %vport) unnamed_addr #0 align 64 {
entry:
  %flow_act.i37 = alloca %struct.mlx5_flow_act, align 4
  %action.i = alloca [8 x i8], align 8
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef %esw) #6
  br i1 %call, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %action.i) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #6
  %0 = getelementptr inbounds i8, ptr %flow_act.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %vport1.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %2 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vport1.i, align 8
  %call.i = tail call i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef %esw, i16 noundef zeroext %3) #6
  %shr.i = lshr i32 %call.i, 16
  %add.ptr29.i = getelementptr inbounds i32, ptr %action.i, i32 1
  %4 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i, ptr %add.ptr29.i, align 4
  %5 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 273747984, ptr %action.i, align 8
  %6 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %esw, align 8
  %call69.i = call ptr @mlx5_modify_header_alloc(ptr noundef %7, i8 noundef zeroext 10, i8 noundef zeroext 1, ptr noundef nonnull %action.i) #6
  %modify_metadata.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 2
  %8 = ptrtoint ptr %modify_metadata.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call69.i, ptr %modify_metadata.i, align 8
  %cmp.i.i = icmp ugt ptr %call69.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call69.i to i32
  %10 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %esw, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vport1.i, align 8
  %conv.i = zext i16 %15 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %conv.i, i32 noundef %9) #10
  br label %esw_acl_ingress_mod_metadata_create.exit

if.end.i:                                         ; preds = %if.then
  %ingress.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6
  %16 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65, ptr %flow_act.i, align 4
  %modify_hdr.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i, i32 0, i32 1
  %17 = ptrtoint ptr %modify_hdr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call69.i, ptr %modify_hdr.i, align 4
  %18 = ptrtoint ptr %ingress.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ingress.i, align 8
  %call88.i = call ptr @mlx5_add_flow_rules(ptr noundef %19, ptr noundef null, ptr noundef nonnull %flow_act.i, ptr noundef null, i32 noundef 0) #6
  %modify_metadata_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 3
  %20 = ptrtoint ptr %modify_metadata_rule.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call88.i, ptr %modify_metadata_rule.i, align 4
  %cmp.i138.i = icmp ugt ptr %call88.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138.i, label %if.then95.i, label %esw_acl_ingress_mod_metadata_create.exit.thread

esw_acl_ingress_mod_metadata_create.exit.thread:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action.i) #6
  br label %if.end4

if.then95.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call88.i to i32
  %22 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %esw, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vport1.i, align 8
  %conv106.i = zext i16 %27 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.21, i32 noundef %conv106.i, i32 noundef %21) #10
  %28 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %esw, align 8
  %30 = ptrtoint ptr %modify_metadata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %modify_metadata.i, align 8
  call void @mlx5_modify_header_dealloc(ptr noundef %29, ptr noundef %31) #6
  %32 = ptrtoint ptr %modify_metadata_rule.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %modify_metadata_rule.i, align 4
  br label %esw_acl_ingress_mod_metadata_create.exit

esw_acl_ingress_mod_metadata_create.exit:         ; preds = %if.then95.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ %21, %if.then95.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action.i) #6
  %33 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %esw, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %37 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vport1.i, align 8
  %conv = zext i16 %38 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %retval.0.i) #10
  br label %cleanup

if.end4:                                          ; preds = %esw_acl_ingress_mod_metadata_create.exit.thread, %entry.if.end4_crit_edge
  %39 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %45 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %esw_acl_ingress_prio_tag_enabled.exit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

esw_acl_ingress_prio_tag_enabled.exit:            ; preds = %if.end4
  %vport1.i35 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %46 = ptrtoint ptr %vport1.i35 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vport1.i35, align 8
  %call.i36 = call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %47) #6
  br i1 %call.i36, label %if.then6, label %esw_acl_ingress_prio_tag_enabled.exit.cleanup_crit_edge

esw_acl_ingress_prio_tag_enabled.exit.cleanup_crit_edge: ; preds = %esw_acl_ingress_prio_tag_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %esw_acl_ingress_prio_tag_enabled.exit
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i37) #6
  %48 = getelementptr inbounds i8, ptr %flow_act.i37, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 32)
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #9
  %tobool.not.i38 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i38, label %esw_acl_ingress_prio_tag_create.exit.thread, label %do.end.i

esw_acl_ingress_prio_tag_create.exit.thread:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i37) #6
  br label %do.end12

do.end.i:                                         ; preds = %if.then6
  %add.ptr.i39 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i39, align 4
  %or.i = or i32 %51, 32768
  store i32 %or.i, ptr %add.ptr.i39, align 4
  %add.ptr12.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %53, -32769
  store i32 %and13.i, ptr %add.ptr12.i, align 4
  %54 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %call.i.i.i, align 4
  %55 = ptrtoint ptr %flow_act.i37 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 257, ptr %flow_act.i37, align 4
  %vlan.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i37, i32 0, i32 5
  %56 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -32512, ptr %vlan.i, align 4
  %vid.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i37, i32 0, i32 5, i32 0, i32 1
  %57 = ptrtoint ptr %vid.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %vid.i, align 2
  %prio.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i37, i32 0, i32 5, i32 0, i32 2
  %58 = ptrtoint ptr %prio.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %prio.i, align 4
  %ingress.i40 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6
  %modify_metadata_rule.i41 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 3
  %59 = ptrtoint ptr %modify_metadata_rule.i41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %modify_metadata_rule.i41, align 4
  %tobool25.not.i = icmp eq ptr %60, null
  br i1 %tobool25.not.i, label %do.end.i.if.end31.i_crit_edge, label %if.then26.i

do.end.i.if.end31.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then26.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %flow_act.i37 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 321, ptr %flow_act.i37, align 4
  %modify_metadata.i42 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 2
  %62 = ptrtoint ptr %modify_metadata.i42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %modify_metadata.i42, align 8
  %64 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %48, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %do.end.i.if.end31.i_crit_edge
  %65 = ptrtoint ptr %ingress.i40 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ingress.i40, align 8
  %call33.i = call ptr @mlx5_add_flow_rules(ptr noundef %66, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %flow_act.i37, ptr noundef null, i32 noundef 0) #6
  %allow_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 1
  %67 = ptrtoint ptr %allow_rule.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call33.i, ptr %allow_rule.i, align 4
  %cmp.i.i44 = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i44, label %esw_acl_ingress_prio_tag_create.exit, label %esw_acl_ingress_prio_tag_create.exit.thread56

esw_acl_ingress_prio_tag_create.exit.thread56:    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i37) #6
  br label %cleanup

esw_acl_ingress_prio_tag_create.exit:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %call33.i to i32
  %69 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %esw, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %73 = ptrtoint ptr %vport1.i35 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vport1.i35, align 8
  %conv.i45 = zext i16 %74 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.23, i32 noundef %conv.i45, i32 noundef %68) #10
  %75 = ptrtoint ptr %allow_rule.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %allow_rule.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i37) #6
  br label %do.end12

do.end12:                                         ; preds = %esw_acl_ingress_prio_tag_create.exit, %esw_acl_ingress_prio_tag_create.exit.thread
  %retval.0.i4655 = phi i32 [ -12, %esw_acl_ingress_prio_tag_create.exit.thread ], [ %68, %esw_acl_ingress_prio_tag_create.exit ]
  %76 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %esw, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %80 = ptrtoint ptr %vport1.i35 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vport1.i35, align 8
  %conv16 = zext i16 %81 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.16, i32 noundef %conv16, i32 noundef %retval.0.i4655) #10
  %modify_metadata_rule.i47 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 3
  %82 = ptrtoint ptr %modify_metadata_rule.i47 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %modify_metadata_rule.i47, align 4
  %tobool.not.i48 = icmp eq ptr %83, null
  br i1 %tobool.not.i48, label %do.end12.cleanup_crit_edge, label %if.end.i50

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i50:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @mlx5_del_flow_rules(ptr noundef nonnull %83) #6
  %84 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %esw, align 8
  %modify_metadata.i49 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 2
  %86 = ptrtoint ptr %modify_metadata.i49 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %modify_metadata.i49, align 8
  call void @mlx5_modify_header_dealloc(ptr noundef %85, ptr noundef %87) #6
  %88 = ptrtoint ptr %modify_metadata_rule.i47 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %modify_metadata_rule.i47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i50, %do.end12.cleanup_crit_edge, %esw_acl_ingress_prio_tag_create.exit.thread56, %esw_acl_ingress_prio_tag_enabled.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %esw_acl_ingress_mod_metadata_create.exit
  %retval.0 = phi i32 [ %retval.0.i, %esw_acl_ingress_mod_metadata_create.exit ], [ 0, %esw_acl_ingress_prio_tag_enabled.exit.cleanup_crit_edge ], [ 0, %esw_acl_ingress_prio_tag_create.exit.thread56 ], [ %retval.0.i4655, %do.end12.cleanup_crit_edge ], [ %retval.0.i4655, %if.end.i50 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_ingress_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esw_acl_ingress_ofld_cleanup(ptr nocapture noundef readonly %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @esw_acl_ingress_allow_rule_destroy(ptr noundef %vport) #6
  %modify_metadata_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 3
  %0 = ptrtoint ptr %modify_metadata_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %modify_metadata_rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.esw_acl_ingress_ofld_rules_destroy.exit_crit_edge, label %if.end.i.i

entry.esw_acl_ingress_ofld_rules_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_ofld_rules_destroy.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %esw, align 8
  %modify_metadata.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 2
  %4 = ptrtoint ptr %modify_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modify_metadata.i.i, align 8
  tail call void @mlx5_modify_header_dealloc(ptr noundef %3, ptr noundef %5) #6
  %6 = ptrtoint ptr %modify_metadata_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %modify_metadata_rule.i.i, align 4
  br label %esw_acl_ingress_ofld_rules_destroy.exit

esw_acl_ingress_ofld_rules_destroy.exit:          ; preds = %if.end.i.i, %entry.esw_acl_ingress_ofld_rules_destroy.exit_crit_edge
  %offloads.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3
  %metadata_allmatch_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 6, i32 3, i32 1
  %7 = ptrtoint ptr %metadata_allmatch_grp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %metadata_allmatch_grp.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %esw_acl_ingress_ofld_rules_destroy.exit.if.end.i_crit_edge, label %if.then.i

esw_acl_ingress_ofld_rules_destroy.exit.if.end.i_crit_edge: ; preds = %esw_acl_ingress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %esw_acl_ingress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %8) #6
  %9 = ptrtoint ptr %metadata_allmatch_grp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %metadata_allmatch_grp.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %esw_acl_ingress_ofld_rules_destroy.exit.if.end.i_crit_edge
  %10 = ptrtoint ptr %offloads.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %offloads.i, align 8
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %if.end.i.esw_acl_ingress_ofld_groups_destroy.exit_crit_edge, label %if.then10.i

if.end.i.esw_acl_ingress_ofld_groups_destroy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_ofld_groups_destroy.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %11) #6
  %12 = ptrtoint ptr %offloads.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %offloads.i, align 8
  br label %esw_acl_ingress_ofld_groups_destroy.exit

esw_acl_ingress_ofld_groups_destroy.exit:         ; preds = %if.then10.i, %if.end.i.esw_acl_ingress_ofld_groups_destroy.exit_crit_edge
  tail call void @esw_acl_ingress_table_destroy(ptr noundef %vport) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_acl_ingress_vport_bond_update(ptr noundef %esw, i16 noundef zeroext %vport_num, i32 noundef %metadata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.rhs, label %if.end42

land.rhs:                                         ; preds = %entry
  %.b67 = load i1, ptr @mlx5_esw_acl_ingress_vport_bond_update.__already_done, align 1
  br i1 %.b67, label %land.rhs.do.end40_crit_edge, label %if.then, !prof !58

land.rhs.do.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mlx5_esw_acl_ingress_vport_bond_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then, %land.rhs.do.end40_crit_edge
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %conv = zext i16 %vport_num to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %conv) #10
  %4 = ptrtoint ptr %call to i32
  br label %out

if.end42:                                         ; preds = %entry
  tail call void @esw_acl_ingress_allow_rule_destroy(ptr noundef %call) #6
  %modify_metadata_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 6, i32 3, i32 3
  %5 = ptrtoint ptr %modify_metadata_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %modify_metadata_rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end42.esw_acl_ingress_ofld_rules_destroy.exit_crit_edge, label %if.end.i.i

if.end42.esw_acl_ingress_ofld_rules_destroy.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_ingress_ofld_rules_destroy.exit

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %6) #6
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %modify_metadata.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 6, i32 3, i32 2
  %9 = ptrtoint ptr %modify_metadata.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %modify_metadata.i.i, align 8
  tail call void @mlx5_modify_header_dealloc(ptr noundef %8, ptr noundef %10) #6
  %11 = ptrtoint ptr %modify_metadata_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %modify_metadata_rule.i.i, align 4
  br label %esw_acl_ingress_ofld_rules_destroy.exit

esw_acl_ingress_ofld_rules_destroy.exit:          ; preds = %if.end.i.i, %if.end42.esw_acl_ingress_ofld_rules_destroy.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %metadata)
  %tobool43.not = icmp eq i32 %metadata, 0
  br i1 %tobool43.not, label %cond.false, label %esw_acl_ingress_ofld_rules_destroy.exit.cond.end_crit_edge

esw_acl_ingress_ofld_rules_destroy.exit.cond.end_crit_edge: ; preds = %esw_acl_ingress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %esw_acl_ingress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %default_metadata = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %default_metadata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %default_metadata, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %esw_acl_ingress_ofld_rules_destroy.exit.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.false ], [ %metadata, %esw_acl_ingress_ofld_rules_destroy.exit.cond.end_crit_edge ]
  %metadata44 = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 9
  %14 = ptrtoint ptr %metadata44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %metadata44, align 8
  %call45 = tail call fastcc i32 @esw_acl_ingress_ofld_rules_create(ptr noundef %esw, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cond.end.cleanup_crit_edge, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out:                                              ; preds = %cond.end.out_crit_edge, %do.end40
  %err.0 = phi i32 [ %4, %do.end40 ], [ %call45, %cond.end.out_crit_edge ]
  %default_metadata49 = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %default_metadata49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %default_metadata49, align 4
  %metadata50 = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 9
  %17 = ptrtoint ptr %metadata50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %metadata50, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 271, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @esw_acl_ingress_ofld_setup.__UNIQUE_ID_ddebug690, !1, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 302, i32 6}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 303, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mlx5_esw_acl_ingress_vport_bond_update._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlx5_esw_acl_ingress_vport_bond_update._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 188, i32 4}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @esw_acl_ingress_ofld_groups_create._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @esw_acl_ingress_ofld_groups_create._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 208, i32 4}
!22 = !{ptr @esw_acl_ingress_ofld_groups_create._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @esw_acl_ingress_ofld_groups_create._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 128, i32 4}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @esw_acl_ingress_ofld_rules_create._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @esw_acl_ingress_ofld_rules_create._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 138, i32 4}
!31 = !{ptr @esw_acl_ingress_ofld_rules_create._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @esw_acl_ingress_ofld_rules_create._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 87, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @esw_acl_ingress_mod_metadata_create._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @esw_acl_ingress_mod_metadata_create._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 100, i32 3}
!40 = !{ptr @esw_acl_ingress_mod_metadata_create._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @esw_acl_ingress_mod_metadata_create._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/ingress_ofld.c", i32 52, i32 3}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @esw_acl_ingress_prio_tag_create._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @esw_acl_ingress_prio_tag_create._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148710409, i64 2148710414, i64 2148710427, i64 2148710471, i64 2148710505, i64 2148710526}
!58 = !{!"branch_weights", i32 2000, i32 1}
