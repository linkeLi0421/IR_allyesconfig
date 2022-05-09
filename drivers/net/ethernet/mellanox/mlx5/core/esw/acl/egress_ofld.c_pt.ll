; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.171, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.172, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx5_eswitch_fdb = type { %union.anon.169, i32 }
%union.anon.169 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.170, ptr }
%struct.anon.170 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.171 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.ida = type { %struct.xarray }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.172 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.165, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.anon.165 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
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
%struct.mlx5_flow_destination = type { i32, %union.anon.184 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.186, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.186 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }

@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@esw_acl_egress_ofld_setup.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"esw_acl_egress_ofld_setup\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): vport[%d] configure egress rules\0A\00", [46 x i8] zeroinitializer }, align 32
@esw_acl_egress_ofld_groups_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 138, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"E-Switch: Failed to create vport[%d] egress fwd2vport flow group, err(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"esw_acl_egress_ofld_groups_create\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@esw_acl_egress_ofld_groups_create._entry_ptr = internal global ptr @esw_acl_egress_ofld_groups_create._entry, section ".printk_index", align 4
@esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"esw_acl_egress_ofld_rules_create\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): vport[%d] configure prio tag egress rules\0A\00", [37 x i8] zeroinitializer }, align 32
@esw_acl_egress_ofld_fwd2vport_create.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"esw_acl_egress_ofld_fwd2vport_create\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:(pid %d): vport(%d) configure egress acl rule fwd2vport(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@esw_acl_egress_ofld_fwd2vport_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 49, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"E-Switch: vport(%d) failed to add fwd2vport acl rule err(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@esw_acl_egress_ofld_fwd2vport_create._entry_ptr = internal global ptr @esw_acl_egress_ofld_fwd2vport_create._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 202, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 136, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 68, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 34, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [65 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 47, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @esw_acl_egress_ofld_fwd2vport_create._entry, ptr @esw_acl_egress_ofld_fwd2vport_create._entry_ptr, ptr @esw_acl_egress_ofld_groups_create._entry, ptr @esw_acl_egress_ofld_groups_create._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_egress_ofld_groups_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_acl_egress_ofld_fwd2vport_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @esw_acl_egress_ofld_setup(ptr noundef %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.land.lhs.true_crit_edge, label %land.lhs.true.i

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %entry
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %call.i = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef nonnull %esw) #6
  br i1 %call.i, label %mlx5_esw_acl_egress_fwd2vport_supported.exit, label %land.lhs.true1.i.land.lhs.true_crit_edge

land.lhs.true1.i.land.lhs.true_crit_edge:         ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

mlx5_esw_acl_egress_fwd2vport_supported.exit:     ; preds = %land.lhs.true1.i
  %2 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %esw, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.i.not = icmp eq i32 %8, 0
  br i1 %tobool2.i.not, label %mlx5_esw_acl_egress_fwd2vport_supported.exit.land.lhs.true_crit_edge, label %mlx5_esw_acl_egress_fwd2vport_supported.exit.if.end_crit_edge

mlx5_esw_acl_egress_fwd2vport_supported.exit.if.end_crit_edge: ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

mlx5_esw_acl_egress_fwd2vport_supported.exit.land.lhs.true_crit_edge: ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit.land.lhs.true_crit_edge, %land.lhs.true1.i.land.lhs.true_crit_edge, %land.lhs.true.i.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %9 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %esw, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %mlx5_esw_acl_egress_fwd2vport_supported.exit.if.end_crit_edge
  %vport1 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %16 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vport1, align 8
  %call.i81 = tail call zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %17) #6
  br i1 %call.i81, label %if.end.if.end4_crit_edge, label %esw_acl_egress_needed.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

esw_acl_egress_needed.exit:                       ; preds = %if.end
  %call1.i = tail call zeroext i1 @mlx5_esw_is_sf_vport(ptr noundef %esw, i16 noundef zeroext %17) #6
  br i1 %call1.i, label %esw_acl_egress_needed.exit.if.end4_crit_edge, label %esw_acl_egress_needed.exit.cleanup_crit_edge

esw_acl_egress_needed.exit.cleanup_crit_edge:     ; preds = %esw_acl_egress_needed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

esw_acl_egress_needed.exit.if.end4_crit_edge:     ; preds = %esw_acl_egress_needed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %esw_acl_egress_needed.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  tail call void @esw_acl_egress_vlan_destroy(ptr noundef %vport) #6
  %fwd_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fwd_rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end4.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge, label %if.end.i.i

if.end4.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %19) #6
  %20 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fwd_rule.i.i, align 4
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i

esw_acl_egress_ofld_fwd2vport_destroy.exit.i:     ; preds = %if.end.i.i, %if.end4.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge
  %bounce_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %bounce_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bounce_rule.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %22, null
  br i1 %tobool.not.i3.i, label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge, label %if.end.i4.i

esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge: ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_rules_destroy.exit

if.end.i4.i:                                      ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %22) #6
  %23 = ptrtoint ptr %bounce_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %bounce_rule.i.i, align 4
  br label %esw_acl_egress_ofld_rules_destroy.exit

esw_acl_egress_ofld_rules_destroy.exit:           ; preds = %if.end.i4.i, %esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge
  br i1 %tobool.not.i, label %esw_acl_egress_ofld_rules_destroy.exit.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge, label %land.lhs.true.i85

esw_acl_egress_ofld_rules_destroy.exit.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge: ; preds = %esw_acl_egress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread

land.lhs.true.i85:                                ; preds = %esw_acl_egress_ofld_rules_destroy.exit
  %mode.i83 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %24 = ptrtoint ptr %mode.i83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode.i83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i84 = icmp eq i32 %25, 2
  br i1 %cmp.i84, label %land.lhs.true1.i87, label %land.lhs.true.i85.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge

land.lhs.true.i85.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread

land.lhs.true1.i87:                               ; preds = %land.lhs.true.i85
  %call.i86 = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef nonnull %esw) #6
  br i1 %call.i86, label %mlx5_esw_acl_egress_fwd2vport_supported.exit91, label %land.lhs.true1.i87.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge

land.lhs.true1.i87.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge: ; preds = %land.lhs.true1.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread

mlx5_esw_acl_egress_fwd2vport_supported.exit91:   ; preds = %land.lhs.true1.i87
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %esw, align 8
  %arrayidx.i88 = getelementptr %struct.mlx5_core_dev, ptr %27, i32 0, i32 8, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i88, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = lshr i32 %31, 4
  %.lobit117 = and i32 %32, 1
  br label %mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread

mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread: ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit91, %land.lhs.true1.i87.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge, %land.lhs.true.i85.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge, %esw_acl_egress_ofld_rules_destroy.exit.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge
  %33 = phi i32 [ 0, %land.lhs.true1.i87.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge ], [ 0, %land.lhs.true.i85.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge ], [ 0, %esw_acl_egress_ofld_rules_destroy.exit.mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread_crit_edge ], [ %.lobit117, %mlx5_esw_acl_egress_fwd2vport_supported.exit91 ]
  %34 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %esw, align 8
  %caps9 = getelementptr inbounds %struct.mlx5_core_dev, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %caps9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %caps9, align 8
  %add.ptr14 = getelementptr i32, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr14, align 4
  %40 = lshr i32 %39, 7
  %.lobit = and i32 %40, 1
  %table_size.1 = add nuw nsw i32 %.lobit, %33
  %call21 = tail call ptr @esw_acl_table_create(ptr noundef %esw, ptr noundef %vport, i32 noundef 9, i32 noundef %table_size.1) #6
  %egress = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7
  %41 = ptrtoint ptr %egress to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call21, ptr %egress, align 8
  %cmp.i92 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then25, label %if.end31

if.then25:                                        ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %call21 to i32
  %43 = ptrtoint ptr %egress to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %egress, align 8
  br label %cleanup

if.end31:                                         ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit91.thread
  %44 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  %50 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i93 = icmp eq i32 %50, 0
  br i1 %tobool.not.i93, label %if.end31.if.end3.i_crit_edge, label %if.then.i

if.end31.if.end3.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end31
  %call.i94 = tail call i32 @esw_acl_egress_vlan_grp_create(ptr noundef %esw, ptr noundef %vport) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool1.not.i = icmp eq i32 %call.i94, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.group_err_crit_edge

if.then.i.group_err_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %group_err

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end31.if.end3.i_crit_edge
  %flow_index.0.i = phi i32 [ 0, %if.end31.if.end3.i_crit_edge ], [ 1, %if.then.i.if.end3.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end3.i.do.body_crit_edge, label %land.lhs.true.i.i

if.end3.i.do.body_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %mode.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %51 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i.i = icmp eq i32 %52, 2
  br i1 %cmp.i.i, label %land.lhs.true1.i.i, label %land.lhs.true.i.i.do.body_crit_edge

land.lhs.true.i.i.do.body_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true1.i.i:                               ; preds = %land.lhs.true.i.i
  %call.i.i = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef nonnull %esw) #6
  br i1 %call.i.i, label %mlx5_esw_acl_egress_fwd2vport_supported.exit.i, label %land.lhs.true1.i.i.do.body_crit_edge

land.lhs.true1.i.i.do.body_crit_edge:             ; preds = %land.lhs.true1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

mlx5_esw_acl_egress_fwd2vport_supported.exit.i:   ; preds = %land.lhs.true1.i.i
  %53 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %esw, align 8
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %54, i32 0, i32 8, i32 0, i32 8
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %59 = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool2.i.not.i = icmp eq i32 %59, 0
  br i1 %tobool2.i.not.i, label %mlx5_esw_acl_egress_fwd2vport_supported.exit.i.do.body_crit_edge, label %if.end6.i

mlx5_esw_acl_egress_fwd2vport_supported.exit.i.do.body_crit_edge: ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end6.i:                                        ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit.i
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #9
  %tobool8.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool8.not.i, label %if.end6.i.group_err.sink.split_crit_edge, label %do.body.i

if.end6.i.group_err.sink.split_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %group_err.sink.split

do.body.i:                                        ; preds = %if.end6.i
  %add.ptr12.i = getelementptr i32, ptr %call.i.i.i, i32 7
  %60 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %flow_index.0.i, ptr %add.ptr12.i, align 4
  %add.ptr23.i = getelementptr i32, ptr %call.i.i.i, i32 9
  %61 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %flow_index.0.i, ptr %add.ptr23.i, align 4
  %62 = ptrtoint ptr %egress to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %egress, align 8
  %call31.i = tail call ptr @mlx5_create_flow_group(ptr noundef %63, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i68.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68.i, label %esw_acl_egress_ofld_groups_create.exit, label %if.end40.i

if.end40.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call31.i, ptr %64, align 4
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %do.body

esw_acl_egress_ofld_groups_create.exit:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %call31.i to i32
  %67 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %esw, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %71 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vport1, align 8
  %conv.i = zext i16 %72 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %66) #10
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %group_err.sink.split

do.body:                                          ; preds = %if.end40.i, %mlx5_esw_acl_egress_fwd2vport_supported.exit.i.do.body_crit_edge, %land.lhs.true1.i.i.do.body_crit_edge, %land.lhs.true.i.i.do.body_crit_edge, %if.end3.i.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %73 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and36 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body.do.end51_crit_edge, label %do.body39

do.body.do.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

do.body39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_egress_ofld_setup.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_egress_ofld_setup, %if.then44)) #6
          to label %do.end51 [label %if.then44], !srcloc !35

if.then44:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %esw, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %78 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  %82 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pid, align 8
  %84 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vport1, align 8
  %conv = zext i16 %85 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_egress_ofld_setup.__UNIQUE_ID_ddebug681, ptr noundef %77, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 202, i32 noundef %83, i32 noundef %conv) #6
  br label %do.end51

do.end51:                                         ; preds = %if.then44, %do.body39, %do.body.do.end51_crit_edge
  %86 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %esw, align 8
  %caps.i97 = getelementptr inbounds %struct.mlx5_core_dev, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %caps.i97 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %caps.i97, align 8
  %add.ptr.i98 = getelementptr i32, ptr %89, i32 4
  %90 = ptrtoint ptr %add.ptr.i98 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i98, align 4
  %92 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i99 = icmp eq i32 %92, 0
  br i1 %tobool.not.i99, label %do.end51.cleanup_crit_edge, label %do.body.i100

do.end51.cleanup_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i100:                                     ; preds = %do.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %93 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and1.i = and i32 %93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i100.do.end14.i_crit_edge, label %do.body4.i

do.body.i100.do.end14.i_crit_edge:                ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.body4.i:                                       ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_egress_ofld_setup, %if.then8.i)) #6
          to label %do.end14.i [label %if.then8.i], !srcloc !35

if.then8.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %esw, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %98 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 68
  %102 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pid.i, align 8
  %104 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vport1, align 8
  %conv.i101 = zext i16 %105 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, ptr noundef %97, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 69, i32 noundef %103, i32 noundef %conv.i101) #6
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then8.i, %do.body4.i, %do.body.i100.do.end14.i_crit_edge
  %call16.i = tail call i32 @esw_egress_acl_vlan_create(ptr noundef %esw, ptr noundef %vport, ptr noundef null, i16 noundef zeroext 0, i32 noundef 129) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %do.end14.i.cleanup_crit_edge, label %rules_err

do.end14.i.cleanup_crit_edge:                     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rules_err:                                        ; preds = %do.end14.i
  %106 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %tobool.not.i.i103 = icmp eq ptr %108, null
  %cmp.i.i104 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i103, %cmp.i.i104
  br i1 %spec.select.i.i, label %rules_err.if.end.i_crit_edge, label %if.then.i105

rules_err.if.end.i_crit_edge:                     ; preds = %rules_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i105:                                     ; preds = %rules_err
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %108) #6
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %106, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i105, %rules_err.if.end.i_crit_edge
  %bounce_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 3
  %110 = ptrtoint ptr %bounce_grp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bounce_grp.i, align 4
  %tobool.not.i19.i = icmp eq ptr %111, null
  %cmp.i20.i = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  %spec.select.i21.i = or i1 %tobool.not.i19.i, %cmp.i20.i
  br i1 %spec.select.i21.i, label %if.end.i.group_err.sink.split_crit_edge, label %if.then7.i

if.end.i.group_err.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %group_err.sink.split

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %111) #6
  %112 = ptrtoint ptr %bounce_grp.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %bounce_grp.i, align 4
  br label %group_err.sink.split

group_err.sink.split:                             ; preds = %if.then7.i, %if.end.i.group_err.sink.split_crit_edge, %esw_acl_egress_ofld_groups_create.exit, %if.end6.i.group_err.sink.split_crit_edge
  %err.0.ph = phi i32 [ %66, %esw_acl_egress_ofld_groups_create.exit ], [ -12, %if.end6.i.group_err.sink.split_crit_edge ], [ %call16.i, %if.end.i.group_err.sink.split_crit_edge ], [ %call16.i, %if.then7.i ]
  tail call void @esw_acl_egress_vlan_grp_destroy(ptr noundef %vport) #6
  br label %group_err

group_err:                                        ; preds = %group_err.sink.split, %if.then.i.group_err_crit_edge
  %err.0 = phi i32 [ %call.i94, %if.then.i.group_err_crit_edge ], [ %err.0.ph, %group_err.sink.split ]
  tail call void @esw_acl_egress_table_destroy(ptr noundef %vport) #6
  br label %cleanup

cleanup:                                          ; preds = %group_err, %do.end14.i.cleanup_crit_edge, %do.end51.cleanup_crit_edge, %if.then25, %esw_acl_egress_needed.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %42, %if.then25 ], [ %err.0, %group_err ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %esw_acl_egress_needed.exit.cleanup_crit_edge ], [ 0, %do.end51.cleanup_crit_edge ], [ 0, %do.end14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esw_acl_table_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_acl_egress_ofld_rules_create(ptr noundef %esw, ptr noundef %vport, ptr noundef %fwd_dest) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.body

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %7 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and1 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.do.end14_crit_edge, label %do.body4

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_egress_ofld_rules_create, %if.then8)) #6
          to label %do.end14 [label %if.then8], !srcloc !35

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %esw, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  %vport11 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %18 = ptrtoint ptr %vport11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vport11, align 8
  %conv = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 69, i32 noundef %17, i32 noundef %conv) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %do.body4, %do.body.do.end14_crit_edge
  %tobool15.not = icmp eq ptr %fwd_dest, null
  %or = select i1 %tobool15.not, i32 129, i32 132
  %call16 = tail call i32 @esw_egress_acl_vlan_create(ptr noundef %esw, ptr noundef %vport, ptr noundef %fwd_dest, i16 noundef zeroext 0, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end14.if.end20_crit_edge, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14.if.end20_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end20:                                         ; preds = %do.end14.if.end20_crit_edge, %entry.if.end20_crit_edge
  %tobool21.not = icmp eq ptr %fwd_dest, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  %call23 = tail call fastcc i32 @esw_acl_egress_ofld_fwd2vport_create(ptr noundef %esw, ptr noundef %vport, ptr noundef nonnull %fwd_dest)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %fwd_err

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fwd_err:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @esw_acl_egress_vlan_destroy(ptr noundef %vport) #6
  br label %cleanup

cleanup:                                          ; preds = %fwd_err, %if.then22.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then22.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ %call16, %do.end14.cleanup_crit_edge ], [ %call23, %fwd_err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_egress_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esw_acl_egress_ofld_cleanup(ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @esw_acl_egress_vlan_destroy(ptr noundef %vport) #6
  %fwd_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwd_rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge, label %if.end.i.i

entry.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fwd_rule.i.i, align 4
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i

esw_acl_egress_ofld_fwd2vport_destroy.exit.i:     ; preds = %if.end.i.i, %entry.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge
  %bounce_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 2
  %3 = ptrtoint ptr %bounce_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bounce_rule.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %4, null
  br i1 %tobool.not.i3.i, label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge, label %if.end.i4.i

esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge: ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_rules_destroy.exit

if.end.i4.i:                                      ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %4) #6
  %5 = ptrtoint ptr %bounce_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bounce_rule.i.i, align 4
  br label %esw_acl_egress_ofld_rules_destroy.exit

esw_acl_egress_ofld_rules_destroy.exit:           ; preds = %if.end.i4.i, %esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge
  %6 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i.i3 = icmp eq ptr %8, null
  %cmp.i.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i3, %cmp.i.i
  br i1 %spec.select.i.i, label %esw_acl_egress_ofld_rules_destroy.exit.if.end.i_crit_edge, label %if.then.i

esw_acl_egress_ofld_rules_destroy.exit.if.end.i_crit_edge: ; preds = %esw_acl_egress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %esw_acl_egress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %8) #6
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %6, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %esw_acl_egress_ofld_rules_destroy.exit.if.end.i_crit_edge
  %bounce_grp.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 3
  %10 = ptrtoint ptr %bounce_grp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bounce_grp.i, align 4
  %tobool.not.i19.i = icmp eq ptr %11, null
  %cmp.i20.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i21.i = or i1 %tobool.not.i19.i, %cmp.i20.i
  br i1 %spec.select.i21.i, label %if.end.i.esw_acl_egress_ofld_groups_destroy.exit_crit_edge, label %if.then7.i

if.end.i.esw_acl_egress_ofld_groups_destroy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_groups_destroy.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %11) #6
  %12 = ptrtoint ptr %bounce_grp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bounce_grp.i, align 4
  br label %esw_acl_egress_ofld_groups_destroy.exit

esw_acl_egress_ofld_groups_destroy.exit:          ; preds = %if.then7.i, %if.end.i.esw_acl_egress_ofld_groups_destroy.exit_crit_edge
  tail call void @esw_acl_egress_vlan_grp_destroy(ptr noundef %vport) #6
  tail call void @esw_acl_egress_table_destroy(ptr noundef %vport) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_acl_egress_vport_bond(ptr noundef %esw, i16 noundef zeroext %active_vport_num, i16 noundef zeroext %passive_vport_num) local_unnamed_addr #0 align 64 {
entry:
  %fwd_dest = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %passive_vport_num) #6
  %call1 = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %active_vport_num) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fwd_dest) #6
  %0 = call ptr @memset(ptr %fwd_dest, i32 0, i32 16)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i23 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @esw_acl_egress_vlan_destroy(ptr noundef %call1) #6
  %fwd_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %call1, i32 0, i32 7, i32 3, i32 0, i32 1
  %3 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwd_rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end7.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge, label %if.end.i.i

if.end7.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %4) #6
  %5 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fwd_rule.i.i, align 4
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i

esw_acl_egress_ofld_fwd2vport_destroy.exit.i:     ; preds = %if.end.i.i, %if.end7.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge
  %bounce_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %call1, i32 0, i32 7, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %bounce_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bounce_rule.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %7, null
  br i1 %tobool.not.i3.i, label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge, label %if.end.i4.i

esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge: ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_rules_destroy.exit

if.end.i4.i:                                      ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %7) #6
  %8 = ptrtoint ptr %bounce_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bounce_rule.i.i, align 4
  br label %esw_acl_egress_ofld_rules_destroy.exit

esw_acl_egress_ofld_rules_destroy.exit:           ; preds = %if.end.i4.i, %esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge
  %9 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %15 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %esw_acl_egress_ofld_rules_destroy.exit.esw_acl_egress_ofld_rules_create.exit_crit_edge, label %do.body.i

esw_acl_egress_ofld_rules_destroy.exit.esw_acl_egress_ofld_rules_create.exit_crit_edge: ; preds = %esw_acl_egress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_rules_create.exit

do.body.i:                                        ; preds = %esw_acl_egress_ofld_rules_destroy.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %16 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and1.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end14.i_crit_edge, label %do.body4.i

do.body.i.do.end14.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_acl_egress_vport_bond, %if.then8.i)) #6
          to label %do.end14.i [label %if.then8.i], !srcloc !35

if.then8.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %esw, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid.i, align 8
  %vport11.i = getelementptr inbounds %struct.mlx5_vport, ptr %call1, i32 0, i32 12
  %27 = ptrtoint ptr %vport11.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vport11.i, align 8
  %conv.i = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 69, i32 noundef %26, i32 noundef %conv.i) #6
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then8.i, %do.body4.i, %do.body.i.do.end14.i_crit_edge
  %call16.i = tail call i32 @esw_egress_acl_vlan_create(ptr noundef %esw, ptr noundef %call1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 129) #6
  br label %esw_acl_egress_ofld_rules_create.exit

esw_acl_egress_ofld_rules_create.exit:            ; preds = %do.end14.i, %esw_acl_egress_ofld_rules_destroy.exit.esw_acl_egress_ofld_rules_create.exit_crit_edge
  tail call void @esw_acl_egress_vlan_destroy(ptr noundef %call) #6
  %fwd_rule.i.i24 = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 7, i32 3, i32 0, i32 1
  %29 = ptrtoint ptr %fwd_rule.i.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fwd_rule.i.i24, align 4
  %tobool.not.i.i25 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i25, label %esw_acl_egress_ofld_rules_create.exit.esw_acl_egress_ofld_fwd2vport_destroy.exit.i29_crit_edge, label %if.end.i.i26

esw_acl_egress_ofld_rules_create.exit.esw_acl_egress_ofld_fwd2vport_destroy.exit.i29_crit_edge: ; preds = %esw_acl_egress_ofld_rules_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i29

if.end.i.i26:                                     ; preds = %esw_acl_egress_ofld_rules_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %30) #6
  %31 = ptrtoint ptr %fwd_rule.i.i24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %fwd_rule.i.i24, align 4
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i29

esw_acl_egress_ofld_fwd2vport_destroy.exit.i29:   ; preds = %if.end.i.i26, %esw_acl_egress_ofld_rules_create.exit.esw_acl_egress_ofld_fwd2vport_destroy.exit.i29_crit_edge
  %bounce_rule.i.i27 = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 7, i32 3, i32 0, i32 2
  %32 = ptrtoint ptr %bounce_rule.i.i27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bounce_rule.i.i27, align 4
  %tobool.not.i3.i28 = icmp eq ptr %33, null
  br i1 %tobool.not.i3.i28, label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i29.esw_acl_egress_ofld_rules_destroy.exit31_crit_edge, label %if.end.i4.i30

esw_acl_egress_ofld_fwd2vport_destroy.exit.i29.esw_acl_egress_ofld_rules_destroy.exit31_crit_edge: ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_rules_destroy.exit31

if.end.i4.i30:                                    ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %33) #6
  %34 = ptrtoint ptr %bounce_rule.i.i27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %bounce_rule.i.i27, align 4
  br label %esw_acl_egress_ofld_rules_destroy.exit31

esw_acl_egress_ofld_rules_destroy.exit31:         ; preds = %if.end.i4.i30, %esw_acl_egress_ofld_fwd2vport_destroy.exit.i29.esw_acl_egress_ofld_rules_destroy.exit31_crit_edge
  %35 = ptrtoint ptr %fwd_dest to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %fwd_dest, align 4
  %36 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %fwd_dest, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %active_vport_num, ptr %36, align 4
  %38 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %esw, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %41, i32 1
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr, align 4
  %conv = trunc i32 %43 to i16
  %vhca_id = getelementptr inbounds %struct.mlx5_flow_destination, ptr %fwd_dest, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %vhca_id to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv, ptr %vhca_id, align 2
  %flags = getelementptr inbounds %struct.mlx5_flow_destination, ptr %fwd_dest, i32 0, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %flags, align 4
  %call9 = call fastcc i32 @esw_acl_egress_ofld_rules_create(ptr noundef %esw, ptr noundef %call, ptr noundef nonnull %fwd_dest)
  br label %cleanup

cleanup:                                          ; preds = %esw_acl_egress_ofld_rules_destroy.exit31, %if.then5, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %2, %if.then5 ], [ %call9, %esw_acl_egress_ofld_rules_destroy.exit31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fwd_dest) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_acl_egress_vport_unbond(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @esw_acl_egress_vlan_destroy(ptr noundef %call) #6
  %fwd_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 7, i32 3, i32 0, i32 1
  %1 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fwd_rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge, label %if.end.i.i

if.end.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %2) #6
  %3 = ptrtoint ptr %fwd_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwd_rule.i.i, align 4
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i

esw_acl_egress_ofld_fwd2vport_destroy.exit.i:     ; preds = %if.end.i.i, %if.end.esw_acl_egress_ofld_fwd2vport_destroy.exit.i_crit_edge
  %bounce_rule.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 7, i32 3, i32 0, i32 2
  %4 = ptrtoint ptr %bounce_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bounce_rule.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i, label %esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge, label %if.end.i4.i

esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge: ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_rules_destroy.exit

if.end.i4.i:                                      ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %5) #6
  %6 = ptrtoint ptr %bounce_rule.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bounce_rule.i.i, align 4
  br label %esw_acl_egress_ofld_rules_destroy.exit

esw_acl_egress_ofld_rules_destroy.exit:           ; preds = %if.end.i4.i, %esw_acl_egress_ofld_fwd2vport_destroy.exit.i.esw_acl_egress_ofld_rules_destroy.exit_crit_edge
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %esw_acl_egress_ofld_rules_destroy.exit.if.end20.i_crit_edge, label %do.body.i

esw_acl_egress_ofld_rules_destroy.exit.if.end20.i_crit_edge: ; preds = %esw_acl_egress_ofld_rules_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

do.body.i:                                        ; preds = %esw_acl_egress_ofld_rules_destroy.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %14 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and1.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end14.i_crit_edge, label %do.body4.i

do.body.i.do.end14.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_acl_egress_vport_unbond, %if.then8.i)) #6
          to label %do.end14.i [label %if.then8.i], !srcloc !35

if.then8.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %esw, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid.i, align 8
  %vport11.i = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 12
  %25 = ptrtoint ptr %vport11.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vport11.i, align 8
  %conv.i = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, ptr noundef %18, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 69, i32 noundef %24, i32 noundef %conv.i) #6
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then8.i, %do.body4.i, %do.body.i.do.end14.i_crit_edge
  %call16.i = tail call i32 @esw_egress_acl_vlan_create(ptr noundef %esw, ptr noundef %call, ptr noundef null, i16 noundef zeroext 0, i32 noundef 129) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %do.end14.i.if.end20.i_crit_edge, label %do.end14.i.cleanup_crit_edge

do.end14.i.cleanup_crit_edge:                     ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14.i.if.end20.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end14.i.if.end20.i_crit_edge, %esw_acl_egress_ofld_rules_destroy.exit.if.end20.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %do.end14.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end20.i ], [ %call16.i, %do.end14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_esw_is_sf_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_egress_vlan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_acl_egress_vlan_grp_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_acl_egress_vlan_grp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_egress_acl_vlan_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_acl_egress_ofld_fwd2vport_create(ptr nocapture noundef readonly %esw, ptr nocapture noundef %vport, ptr noundef %fwd_dest) unnamed_addr #0 align 64 {
entry:
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #6
  %0 = getelementptr inbounds i8, ptr %flow_act, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %2 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body1

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_acl_egress_ofld_fwd2vport_create.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_acl_egress_ofld_fwd2vport_create, %if.then5)) #6
          to label %do.end11 [label %if.then5], !srcloc !35

if.then5:                                         ; preds = %do.body1
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
  %vport7 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %13 = ptrtoint ptr %vport7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vport7, align 8
  %conv = zext i16 %14 to i32
  %15 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %fwd_dest, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  %conv8 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_acl_egress_ofld_fwd2vport_create.__UNIQUE_ID_ddebug677, ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 35, i32 noundef %12, i32 noundef %conv, i32 noundef %conv8) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then5, %do.body1, %entry.do.end11_crit_edge
  %fwd_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %fwd_rule.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fwd_rule.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.end11.esw_acl_egress_ofld_fwd2vport_destroy.exit_crit_edge, label %if.end.i

do.end11.esw_acl_egress_ofld_fwd2vport_destroy.exit_crit_edge: ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit

if.end.i:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %19) #6
  %20 = ptrtoint ptr %fwd_rule.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fwd_rule.i, align 4
  br label %esw_acl_egress_ofld_fwd2vport_destroy.exit

esw_acl_egress_ofld_fwd2vport_destroy.exit:       ; preds = %if.end.i, %do.end11.esw_acl_egress_ofld_fwd2vport_destroy.exit_crit_edge
  %21 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %flow_act, align 4
  %egress = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 7
  %22 = ptrtoint ptr %egress to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %egress, align 8
  %call12 = call ptr @mlx5_add_flow_rules(ptr noundef %23, ptr noundef null, ptr noundef nonnull %flow_act, ptr noundef %fwd_dest, i32 noundef 1) #6
  %24 = ptrtoint ptr %fwd_rule.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call12, ptr %fwd_rule.i, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %esw_acl_egress_ofld_fwd2vport_destroy.exit.if.end30_crit_edge

esw_acl_egress_ofld_fwd2vport_destroy.exit.if.end30_crit_edge: ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then17:                                        ; preds = %esw_acl_egress_ofld_fwd2vport_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call12 to i32
  %26 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %esw, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %vport26 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %30 = ptrtoint ptr %vport26 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vport26, align 8
  %conv27 = zext i16 %31 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.12, i32 noundef %conv27, i32 noundef %25) #10
  %32 = ptrtoint ptr %fwd_rule.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %fwd_rule.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then17, %esw_acl_egress_ofld_fwd2vport_destroy.exit.if.end30_crit_edge
  %err.0 = phi i32 [ %25, %if.then17 ], [ 0, %esw_acl_egress_ofld_fwd2vport_destroy.exit.if.end30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

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
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c", i32 202, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @esw_acl_egress_ofld_setup.__UNIQUE_ID_ddebug681, !1, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c", i32 136, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @esw_acl_egress_ofld_groups_create._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @esw_acl_egress_ofld_groups_create._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c", i32 68, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @esw_acl_egress_ofld_rules_create.__UNIQUE_ID_ddebug678, !14, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c", i32 34, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @esw_acl_egress_ofld_fwd2vport_create.__UNIQUE_ID_ddebug677, !18, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/acl/egress_ofld.c", i32 47, i32 3}
!23 = !{ptr @esw_acl_egress_ofld_fwd2vport_create._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @esw_acl_egress_ofld_fwd2vport_create._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
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
!35 = !{i64 2148708024, i64 2148708029, i64 2148708042, i64 2148708086, i64 2148708120, i64 2148708141}
