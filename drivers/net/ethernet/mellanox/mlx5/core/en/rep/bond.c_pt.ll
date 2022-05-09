; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rep_priv = type { ptr, %struct.mlx5e_neigh_update_table, ptr, ptr, ptr, %struct.list_head, %struct.mlx5_rep_uplink_priv, %struct.rtnl_link_stats64 }
%struct.mlx5e_neigh_update_table = type { %struct.rhashtable, %struct.list_head, %struct.mutex, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_rep_uplink_priv = type { %struct.rhashtable, %struct.list_head, %struct.mlx5_tun_entropy, %struct.mutex, %struct.list_head, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_tun_entropy = type { ptr, i32, i32, i8, %struct.mutex }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_rep_bond = type { %struct.notifier_block, %struct.netdev_net_notifier, %struct.list_head }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_rep_bond_metadata = type { %struct.list_head, ptr, ptr, i32, %struct.list_head, i32 }
%struct.mlx5e_rep_bond_slave_entry = type { %struct.list_head, ptr }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.165, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.171, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.172, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.169, i32 }
%union.anon.169 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.170, ptr }
%struct.anon.170 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.171 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.172 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.143 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changelowerstate_info = type { %struct.netdev_notifier_info, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.team_port = type { ptr, %struct.hlist_node, %struct.list_head, ptr, i32, i8, %struct.anon.225, %struct.anon.226, i8, i8, %struct.anon.227, ptr, i32, i16, %struct.list_head, %struct.callback_head, [0 x i32] }
%struct.anon.225 = type { i8, i32, i8 }
%struct.anon.226 = type { i8, i8 }
%struct.anon.227 = type { [32 x i8], i32 }
%struct.callback_head = type { ptr, ptr }
%struct.slave = type { ptr, ptr, i32, i32, i32, [16 x i32], i8, i8, i8, i8, i32, i32, i32, i16, [32 x i8], ptr, %struct.tlb_slave_info, ptr, %struct.delayed_work, %struct.kobject, %struct.rtnl_link_stats64 }
%struct.tlb_slave_info = type { i32, i32 }

@mlx5e_rep_bond_enslave.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5e_rep_bond_enslave.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5e_rep_bond_enslave\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"create rep_bond_metadata(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5e_rep_bond_enslave.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.5, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"enslave rep vport(%d) lag_dev(%s) metadata(0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5e_rep_bond_unslave.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5e_rep_bond_unslave.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5e_rep_bond_unslave\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unslave rep vport(%d) lag_dev(%s) metadata(0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"register bonding netevent notifier, err(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5e_rep_bond_metadata_release.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5e_rep_bond_metadata_release\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"destroy rep_bond_metadata(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5e_rep_changelowerstate_event.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5e_rep_changelowerstate_event\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"lag_dev(%s)'s slave vport(%d) is txable(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"configure slave vport(%d) egress fwd, err(%d)\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"configure active slave vport(%d) rx_rule, err(%d)\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@team_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_team.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bond_is_active_slave_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/bonding.h\00", [42 x i8] zeroinitializer }, align 32
@mlx5e_rep_changeupper_event.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str, ptr @.str.22, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5e_rep_changeupper_event\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sslave vport(%d) lag(%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 27]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 89, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 109, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 130, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 176, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 330, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 71, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 215, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 234, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 244, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 695, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"../include/linux/if_team.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 75, i32 9 }
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 723, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"../include/net/bonding.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 444, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [57 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 259, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_bond_enslave(ptr noundef %esw, ptr noundef %netdev, ptr noundef %lag_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b148 = load i1, ptr @mlx5e_rep_bond_enslave.__already_done, align 1
  br i1 %.b148, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !62

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mlx5e_rep_bond_enslave.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 89) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = tail call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %esw, i8 noundef zeroext 0) #8
  %bond.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call37, i32 0, i32 6, i32 11
  %0 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond.i, align 4
  %metadata_list.i = getelementptr inbounds %struct.mlx5e_rep_bond, ptr %1, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29
  %cur.0.in.i = phi ptr [ %metadata_list.i, %if.end29 ], [ %cur.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %cur.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cur.0.i = load ptr, ptr %cur.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cur.0.i, %metadata_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then40_crit_edge, label %for.body.i

for.cond.i.if.then40_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

for.body.i:                                       ; preds = %for.cond.i
  %lag_dev3.i = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %cur.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %lag_dev3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lag_dev3.i, align 4
  %cmp4.i = icmp eq ptr %4, %lag_dev
  br i1 %cmp4.i, label %mlx5e_lookup_rep_bond_metadata.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

mlx5e_lookup_rep_bond_metadata.exit:              ; preds = %for.body.i
  %tobool39.not = icmp eq ptr %cur.0.i, null
  br i1 %tobool39.not, label %mlx5e_lookup_rep_bond_metadata.exit.if.then40_crit_edge, label %mlx5e_lookup_rep_bond_metadata.exit.if.end72_crit_edge

mlx5e_lookup_rep_bond_metadata.exit.if.end72_crit_edge: ; preds = %mlx5e_lookup_rep_bond_metadata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

mlx5e_lookup_rep_bond_metadata.exit.if.then40_crit_edge: ; preds = %mlx5e_lookup_rep_bond_metadata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %mlx5e_lookup_rep_bond_metadata.exit.if.then40_crit_edge, %for.cond.i.if.then40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 32) #11
  %tobool42.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool42.not, label %if.then40.cleanup_crit_edge, label %if.end44

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.then40
  %lag_dev45 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %lag_dev45 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lag_dev, ptr %lag_dev45, align 4
  %esw46 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %esw46 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %esw, ptr %esw46, align 8
  %slaves_list = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %slaves_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %slaves_list, ptr %slaves_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %slaves_list, ptr %prev.i, align 8
  %call47 = tail call i32 @mlx5_esw_match_metadata_alloc(ptr noundef %esw) #8
  %metadata_reg_c_0 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %metadata_reg_c_0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call47, ptr %metadata_reg_c_0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool49.not = icmp eq i32 %call47, 0
  br i1 %tobool49.not, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end44
  %11 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bond.i, align 4
  %metadata_list = getelementptr inbounds %struct.mlx5e_rep_bond, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %metadata_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %metadata_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %metadata_list, ptr noundef %14) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.list_add.exit_crit_edge

if.end51.list_add.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %metadata_list, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %metadata_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i, ptr %metadata_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end51.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_rep_bond_enslave.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_rep_bond_enslave, %if.then65)) #8
          to label %if.end72 [label %if.then65], !srcloc !63

if.then65:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %metadata_reg_c_0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %metadata_reg_c_0, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_rep_bond_enslave.__UNIQUE_ID_ddebug700, ptr noundef %lag_dev, ptr noundef nonnull @.str.4, i32 noundef %20) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then65, %list_add.exit, %mlx5e_lookup_rep_bond_metadata.exit.if.end72_crit_edge
  %mdata.0 = phi ptr [ %cur.0.i, %mlx5e_lookup_rep_bond_metadata.exit.if.end72_crit_edge ], [ %call7.i.i, %if.then65 ], [ %call7.i.i, %list_add.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i152 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 12) #11
  %tobool74.not = icmp eq ptr %call7.i.i152, null
  br i1 %tobool74.not, label %if.end72.entry_alloc_err_crit_edge, label %if.end76

if.end72.entry_alloc_err_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %entry_alloc_err

if.end76:                                         ; preds = %if.end72
  %netdev77 = getelementptr inbounds %struct.mlx5e_rep_bond_slave_entry, ptr %call7.i.i152, i32 0, i32 1
  %22 = ptrtoint ptr %netdev77 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %netdev, ptr %netdev77, align 8
  %ppriv = getelementptr i8, ptr %netdev, i32 30240
  %23 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ppriv, align 32
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vport, align 4
  %metadata_reg_c_079 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata.0, i32 0, i32 3
  %29 = ptrtoint ptr %metadata_reg_c_079 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %metadata_reg_c_079, align 4
  %call80 = tail call i32 @mlx5_esw_acl_ingress_vport_bond_update(ptr noundef %esw, i16 noundef zeroext %28, i32 noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %ingress_err

if.end83:                                         ; preds = %if.end76
  %slaves = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata.0, i32 0, i32 5
  %31 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slaves, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %slaves, align 4
  %slaves_list85 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata.0, i32 0, i32 4
  %prev.i154 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata.0, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i154, align 4
  %call.i.i155 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i152, ptr noundef %34, ptr noundef %slaves_list85) #8
  br i1 %call.i.i155, label %if.end.i.i157, label %if.end83.list_add_tail.exit_crit_edge

if.end83.list_add_tail.exit_crit_edge:            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i157:                                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i152, ptr %prev.i154, align 4
  %36 = ptrtoint ptr %call7.i.i152 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %slaves_list85, ptr %call7.i.i152, align 8
  %prev3.i.i156 = getelementptr inbounds %struct.list_head, ptr %call7.i.i152, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i156 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i156, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i152, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i157, %if.end83.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_rep_bond_enslave.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_rep_bond_enslave, %if.then99)) #8
          to label %cleanup [label %if.then99], !srcloc !63

if.then99:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %24, align 8
  %vport101 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %vport101 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vport101, align 4
  %conv = zext i16 %42 to i32
  %43 = ptrtoint ptr %metadata_reg_c_079 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %metadata_reg_c_079, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_rep_bond_enslave.__UNIQUE_ID_ddebug701, ptr noundef %netdev, ptr noundef nonnull @.str.5, i32 noundef %conv, ptr noundef %lag_dev, i32 noundef %44) #8
  br label %cleanup

ingress_err:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i152) #8
  br label %entry_alloc_err

entry_alloc_err:                                  ; preds = %ingress_err, %if.end72.entry_alloc_err_crit_edge
  %err.0 = phi i32 [ %call80, %ingress_err ], [ -12, %if.end72.entry_alloc_err_crit_edge ]
  %slaves108 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata.0, i32 0, i32 5
  %45 = ptrtoint ptr %slaves108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slaves108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool109.not = icmp eq i32 %46, 0
  br i1 %tobool109.not, label %if.then110, label %entry_alloc_err.cleanup_crit_edge

entry_alloc_err.cleanup_crit_edge:                ; preds = %entry_alloc_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then110:                                       ; preds = %entry_alloc_err
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mlx5e_rep_bond_metadata_release(ptr noundef nonnull %mdata.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %entry_alloc_err.cleanup_crit_edge, %if.then99, %list_add_tail.exit, %if.then50, %if.then40.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then50 ], [ -12, %if.then40.cleanup_crit_edge ], [ 0, %if.then99 ], [ %err.0, %if.then110 ], [ %err.0, %entry_alloc_err.cleanup_crit_edge ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_uplink_priv(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_match_metadata_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_acl_ingress_vport_bond_update(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_rep_bond_metadata_release(ptr noundef %mdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_rep_bond_metadata_release.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_rep_bond_metadata_release, %if.then)) #8
          to label %do.end4 [label %if.then], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lag_dev = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata, i32 0, i32 2
  %0 = ptrtoint ptr %lag_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lag_dev, align 4
  %metadata_reg_c_0 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata, i32 0, i32 3
  %2 = ptrtoint ptr %metadata_reg_c_0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %metadata_reg_c_0, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_rep_bond_metadata_release.__UNIQUE_ID_ddebug699, ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %3) #8
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mdata) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end4.list_del.exit_crit_edge

do.end4.list_del.exit_crit_edge:                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mdata, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %mdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdata, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end4.list_del.exit_crit_edge
  %10 = ptrtoint ptr %mdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %mdata, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mdata, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %esw = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata, i32 0, i32 1
  %12 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %esw, align 4
  %metadata_reg_c_05 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata, i32 0, i32 3
  %14 = ptrtoint ptr %metadata_reg_c_05 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %metadata_reg_c_05, align 4
  tail call void @mlx5_esw_match_metadata_free(ptr noundef %13, i32 noundef %15) #8
  %slaves_list = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %mdata, i32 0, i32 4
  %16 = ptrtoint ptr %slaves_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %slaves_list, align 4
  %cmp.i.not = icmp eq ptr %17, %slaves_list
  br i1 %cmp.i.not, label %list_del.exit.if.end30_crit_edge, label %do.end24, !prof !62

list_del.exit.if.end30_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end24:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %list_del.exit.if.end30_crit_edge
  tail call void @kfree(ptr noundef %mdata) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_bond_unslave(ptr noundef %esw, ptr noundef %netdev, ptr noundef %lag_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b95 = load i1, ptr @mlx5e_rep_bond_unslave.__already_done, align 1
  br i1 %.b95, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !62

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mlx5e_rep_bond_unslave.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 153) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = tail call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %esw, i8 noundef zeroext 0) #8
  %bond.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call37, i32 0, i32 6, i32 11
  %0 = ptrtoint ptr %bond.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond.i, align 4
  %metadata_list.i = getelementptr inbounds %struct.mlx5e_rep_bond, ptr %1, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29
  %cur.0.in.i = phi ptr [ %metadata_list.i, %if.end29 ], [ %cur.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %cur.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cur.0.i = load ptr, ptr %cur.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %cur.0.i, %metadata_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %lag_dev3.i = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %cur.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %lag_dev3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lag_dev3.i, align 4
  %cmp4.i = icmp eq ptr %4, %lag_dev
  br i1 %cmp4.i, label %mlx5e_lookup_rep_bond_metadata.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

mlx5e_lookup_rep_bond_metadata.exit:              ; preds = %for.body.i
  %tobool39.not = icmp eq ptr %cur.0.i, null
  br i1 %tobool39.not, label %mlx5e_lookup_rep_bond_metadata.exit.cleanup_crit_edge, label %if.end41

mlx5e_lookup_rep_bond_metadata.exit.cleanup_crit_edge: ; preds = %mlx5e_lookup_rep_bond_metadata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %mlx5e_lookup_rep_bond_metadata.exit
  %slaves_list.i = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %cur.0.i, i32 0, i32 4
  br label %for.cond.i99

for.cond.i99:                                     ; preds = %for.body.i100.for.cond.i99_crit_edge, %if.end41
  %cur.0.in.i96 = phi ptr [ %slaves_list.i, %if.end41 ], [ %cur.0.i97, %for.body.i100.for.cond.i99_crit_edge ]
  %5 = ptrtoint ptr %cur.0.in.i96 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cur.0.i97 = load ptr, ptr %cur.0.in.i96, align 4
  %cmp.not.i98 = icmp eq ptr %cur.0.i97, %slaves_list.i
  br i1 %cmp.not.i98, label %for.cond.i99.cleanup_crit_edge, label %for.body.i100

for.cond.i99.cleanup_crit_edge:                   ; preds = %for.cond.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i100:                                    ; preds = %for.cond.i99
  %netdev2.i = getelementptr inbounds %struct.mlx5e_rep_bond_slave_entry, ptr %cur.0.i97, i32 0, i32 1
  %6 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev2.i, align 4
  %cmp3.i = icmp eq ptr %7, %netdev
  br i1 %cmp3.i, label %mlx5e_lookup_rep_bond_slave_entry.exit, label %for.body.i100.for.cond.i99_crit_edge

for.body.i100.for.cond.i99_crit_edge:             ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i99

mlx5e_lookup_rep_bond_slave_entry.exit:           ; preds = %for.body.i100
  %tobool43.not = icmp eq ptr %cur.0.i97, null
  br i1 %tobool43.not, label %mlx5e_lookup_rep_bond_slave_entry.exit.cleanup_crit_edge, label %if.end45

mlx5e_lookup_rep_bond_slave_entry.exit.cleanup_crit_edge: ; preds = %mlx5e_lookup_rep_bond_slave_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %mlx5e_lookup_rep_bond_slave_entry.exit
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ppriv = getelementptr i8, ptr %netdev, i32 30240
  %8 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppriv, align 32
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vport, align 4
  %call47 = tail call i32 @mlx5_esw_acl_ingress_vport_bond_update(ptr noundef %esw, i16 noundef zeroext %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 8
  %vport49 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %vport49 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vport49, align 4
  %call50 = tail call i32 @mlx5_esw_acl_egress_vport_unbond(ptr noundef %esw, i16 noundef zeroext %17) #8
  %call51 = tail call i32 @mlx5e_rep_bond_update(ptr noundef %add.ptr.i, i1 noundef zeroext false) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %cur.0.i97) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end45.list_del.exit_crit_edge

if.end45.list_del.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cur.0.i97, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %cur.0.i97 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.0.i97, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end45.list_del.exit_crit_edge
  %24 = ptrtoint ptr %cur.0.i97 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %cur.0.i97, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cur.0.i97, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_rep_bond_unslave.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_rep_bond_unslave, %if.then64)) #8
          to label %do.end71 [label %if.then64], !srcloc !63

if.then64:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %9, align 8
  %vport66 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %vport66 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vport66, align 4
  %conv = zext i16 %29 to i32
  %metadata_reg_c_0 = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %cur.0.i, i32 0, i32 3
  %30 = ptrtoint ptr %metadata_reg_c_0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %metadata_reg_c_0, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_rep_bond_unslave.__UNIQUE_ID_ddebug702, ptr noundef %netdev, ptr noundef nonnull @.str.7, i32 noundef %conv, ptr noundef %lag_dev, i32 noundef %31) #8
  br label %do.end71

do.end71:                                         ; preds = %if.then64, %list_del.exit
  %slaves = getelementptr inbounds %struct.mlx5e_rep_bond_metadata, ptr %cur.0.i, i32 0, i32 5
  %32 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slaves, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then73, label %do.end71.if.end74_crit_edge

do.end71.if.end74_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then73:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mlx5e_rep_bond_metadata_release(ptr noundef nonnull %cur.0.i)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %do.end71.if.end74_crit_edge
  tail call void @kfree(ptr noundef nonnull %cur.0.i97) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %mlx5e_lookup_rep_bond_slave_entry.exit.cleanup_crit_edge, %for.cond.i99.cleanup_crit_edge, %mlx5e_lookup_rep_bond_metadata.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_acl_egress_vport_unbond(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_bond_update(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_bond_init(ptr nocapture noundef %rpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev2 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 2
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 8
  %mdev = getelementptr i8, ptr %1, i32 11328
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %land.lhs.true.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.i:                                  ; preds = %entry
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %call.i = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef nonnull %5) #8
  br i1 %call.i, label %mlx5_esw_acl_egress_fwd2vport_supported.exit, label %land.lhs.true1.i.out_crit_edge

land.lhs.true1.i.out_crit_edge:                   ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

mlx5_esw_acl_egress_fwd2vport_supported.exit:     ; preds = %land.lhs.true1.i
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %9, i32 0, i32 8, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.i.not = icmp eq i32 %14, 0
  br i1 %tobool2.i.not, label %mlx5_esw_acl_egress_fwd2vport_supported.exit.out_crit_edge, label %if.end

mlx5_esw_acl_egress_fwd2vport_supported.exit.out_crit_edge: ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 32, i32 noundef 3520, i32 noundef -1) #12
  %bond = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 11
  %15 = ptrtoint ptr %bond to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %bond, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end
  %metadata_list = getelementptr inbounds %struct.mlx5e_rep_bond, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %metadata_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %metadata_list, ptr %metadata_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_bond, ptr %call.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %metadata_list, ptr %prev.i, align 4
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mlx5e_rep_esw_bond_netevent, ptr %call.i.i, align 4
  %nn = getelementptr inbounds %struct.mlx5e_rep_bond, ptr %call.i.i, i32 0, i32 1
  %call14 = tail call i32 @register_netdevice_notifier_dev_net(ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef %nn) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end8.out_crit_edge, label %if.then16

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %call14) #13
  %19 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bond, align 4
  tail call void @kvfree(ptr noundef %20) #8
  %21 = ptrtoint ptr %bond to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bond, align 4
  br label %out

out:                                              ; preds = %if.then16, %if.end8.out_crit_edge, %if.end.out_crit_edge, %mlx5_esw_acl_egress_fwd2vport_supported.exit.out_crit_edge, %land.lhs.true1.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then16 ], [ 0, %if.end8.out_crit_edge ], [ 0, %mlx5_esw_acl_egress_fwd2vport_supported.exit.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ 0, %land.lhs.true1.i.out_crit_edge ], [ 0, %land.lhs.true.i.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_esw_bond_netevent(ptr noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.netif_is_lag_port.exit.i_crit_edge, label %netif_is_bond_slave.exit.i.i

entry.netif_is_lag_port.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_is_lag_port.exit.i

netif_is_bond_slave.exit.i.i:                     ; preds = %entry
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i.i.i, align 16
  %and1.i.i.i = and i64 %5, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i)
  %tobool2.i.not.i.i = icmp eq i64 %and1.i.i.i, 0
  br i1 %tobool2.i.not.i.i, label %netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge, label %netif_is_bond_slave.exit.i.i.mlx5e_rep_is_lag_netdev.exit_crit_edge

netif_is_bond_slave.exit.i.i.mlx5e_rep_is_lag_netdev.exit_crit_edge: ; preds = %netif_is_bond_slave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_rep_is_lag_netdev.exit

netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge: ; preds = %netif_is_bond_slave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_is_lag_port.exit.i

netif_is_lag_port.exit.i:                         ; preds = %netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge, %entry.netif_is_lag_port.exit.i_crit_edge
  %priv_flags.i3.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i3.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i3.i.i, align 16
  %and.i4.i.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i4.i.i, 0
  br i1 %tobool.i.i.not.i, label %netif_is_lag_port.exit.i.cleanup_crit_edge, label %netif_is_lag_port.exit.i.mlx5e_rep_is_lag_netdev.exit_crit_edge

netif_is_lag_port.exit.i.mlx5e_rep_is_lag_netdev.exit_crit_edge: ; preds = %netif_is_lag_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_rep_is_lag_netdev.exit

netif_is_lag_port.exit.i.cleanup_crit_edge:       ; preds = %netif_is_lag_port.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlx5e_rep_is_lag_netdev.exit:                     ; preds = %netif_is_lag_port.exit.i.mlx5e_rep_is_lag_netdev.exit_crit_edge, %netif_is_bond_slave.exit.i.i.mlx5e_rep_is_lag_netdev.exit_crit_edge
  %call1.i = tail call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef %1) #8
  br i1 %call1.i, label %if.end, label %mlx5e_rep_is_lag_netdev.exit.cleanup_crit_edge

mlx5e_rep_is_lag_netdev.exit.cleanup_crit_edge:   ; preds = %mlx5e_rep_is_lag_netdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mlx5e_rep_is_lag_netdev.exit
  %mdev = getelementptr i8, ptr %1, i32 11328
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %9, i32 0, i32 17, i32 28
  %10 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eswitch, align 4
  %call4 = tail call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %11, i8 noundef zeroext 0) #8
  %bond5 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call4, i32 0, i32 6, i32 11
  %12 = ptrtoint ptr %bond5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bond5, align 4
  %cmp.not = icmp eq ptr %13, %nb
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %14 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end7.cleanup_crit_edge [
    i32 27, label %sw.bb
    i32 21, label %sw.bb8
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mlx5e_rep_changelowerstate_event(ptr noundef %1, ptr noundef %ptr)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end7
  %ppriv.i = getelementptr i8, ptr %1, i32 30240
  %15 = ptrtoint ptr %ppriv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppriv.i, align 32
  %upper_dev.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %17 = ptrtoint ptr %upper_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %upper_dev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_rep_changeupper_event.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_rep_esw_bond_netevent, %if.then.i)) #8
          to label %do.end7.i [label %if.then.i], !srcloc !63

if.then.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %linking.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %19 = ptrtoint ptr %linking.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %linking.i, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  %cond.i = select i1 %tobool5.not.i, ptr @.str.24, ptr @.str.23
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 8
  %vport.i = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vport.i, align 4
  %conv.i = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_rep_changeupper_event.__UNIQUE_ID_ddebug704, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond.i, i32 noundef %conv.i, ptr noundef %18) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %sw.bb8
  %linking8.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %25 = ptrtoint ptr %linking8.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %linking8.i, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not.i = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev, align 64
  %eswitch15.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %28, i32 0, i32 17, i32 28
  %29 = ptrtoint ptr %eswitch15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %eswitch15.i, align 4
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 @mlx5e_rep_bond_enslave(ptr noundef %30, ptr noundef %1, ptr noundef %18) #8
  br label %cleanup

if.else.i:                                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mlx5e_rep_bond_unslave(ptr noundef %30, ptr noundef %1, ptr noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then10.i, %sw.bb, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mlx5e_rep_is_lag_netdev.exit.cleanup_crit_edge, %netif_is_lag_port.exit.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier_dev_net(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_bond_cleanup(ptr nocapture noundef readonly %rpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 2
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %mdev = getelementptr i8, ptr %1, i32 11328
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %call.i = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef nonnull %5) #8
  br i1 %call.i, label %mlx5_esw_acl_egress_fwd2vport_supported.exit, label %land.lhs.true1.i.cleanup_crit_edge

land.lhs.true1.i.cleanup_crit_edge:               ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlx5_esw_acl_egress_fwd2vport_supported.exit:     ; preds = %land.lhs.true1.i
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %9, i32 0, i32 8, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.i.not = icmp eq i32 %14, 0
  br i1 %tobool2.i.not, label %mlx5_esw_acl_egress_fwd2vport_supported.exit.cleanup_crit_edge, label %lor.lhs.false

mlx5_esw_acl_egress_fwd2vport_supported.exit.cleanup_crit_edge: ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %mlx5_esw_acl_egress_fwd2vport_supported.exit
  %bond = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 11
  %15 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bond, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 8
  %nn = getelementptr inbounds %struct.mlx5e_rep_bond, ptr %16, i32 0, i32 1
  %call8 = tail call i32 @unregister_netdevice_notifier_dev_net(ptr noundef %18, ptr noundef nonnull %16, ptr noundef %nn) #8
  %19 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bond, align 4
  tail call void @kvfree(ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %mlx5_esw_acl_egress_fwd2vport_supported.exit.cleanup_crit_edge, %land.lhs.true1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier_dev_net(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_match_metadata_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_rep_changelowerstate_event(ptr noundef %netdev, ptr nocapture noundef readonly %ptr) unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #8
  %lower_state_info = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %lower_state_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lower_state_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 1
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %ppriv = getelementptr i8, ptr %netdev, i32 30240
  %4 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppriv, align 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vport, align 4
  %call1 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %netdev) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_rep_changelowerstate_event.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_rep_changelowerstate_event, %if.then10)) #8
          to label %do.end15 [label %if.then10], !srcloc !63

if.then10:                                        ; preds = %do.body5
  %conv = zext i16 %9 to i32
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %12 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i.i.i5.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i5.i to ptr
  %preempt_count.i.i.i.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i6.i, align 4
  %add.i.i.i.i7.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i7.i, ptr %preempt_count.i.i.i.i.i6.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i8.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then10
  br i1 %call.i.i8.i, label %if.then.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.i.rcu_read_lock.exit.i.i_crit_edge
  %rx_handler_data.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 95
  %16 = ptrtoint ptr %rx_handler_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %rx_handler_data.i.i.i, align 4
  %call.i5.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i, label %rcu_read_lock.exit.i.i.team_port_get_rcu.exit.i.i_crit_edge

rcu_read_lock.exit.i.i.team_port_get_rcu.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %team_port_get_rcu.exit.i.i

land.lhs.true.i7.i.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i7.i.i.team_port_get_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i7.i.i.team_port_get_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %team_port_get_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i7.i.i
  %.b9.i.i.i = load i1, ptr @team_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i.i, label %land.lhs.true4.i.i.i.team_port_get_rcu.exit.i.i_crit_edge, label %if.then.i8.i.i

land.lhs.true4.i.i.i.team_port_get_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %team_port_get_rcu.exit.i.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @team_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 75, ptr noundef nonnull @.str.18) #8
  br label %team_port_get_rcu.exit.i.i

team_port_get_rcu.exit.i.i:                       ; preds = %if.then.i8.i.i, %land.lhs.true4.i.i.i.team_port_get_rcu.exit.i.i_crit_edge, %land.lhs.true.i7.i.i.team_port_get_rcu.exit.i.i_crit_edge, %rcu_read_lock.exit.i.i.team_port_get_rcu.exit.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %team_port_get_rcu.exit.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

team_port_get_rcu.exit.i.i.cond.end.i.i_crit_edge: ; preds = %team_port_get_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %team_port_get_rcu.exit.i.i
  %linkup.i.i.i = getelementptr inbounds %struct.team_port, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %linkup.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %linkup.i.i.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i9.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i9.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge, label %land.rhs.i.i.i

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

land.rhs.i.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index.i.i.i.i = getelementptr inbounds %struct.team_port, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.i.i.i = icmp ne i32 %21, -1
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %land.rhs.i.i.i, %cond.true.i.i.cond.end.i.i_crit_edge, %team_port_get_rcu.exit.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i1 [ false, %team_port_get_rcu.exit.i.i.cond.end.i.i_crit_edge ], [ false, %cond.true.i.i.cond.end.i.i_crit_edge ], [ %cmp.i.i.i.i, %land.rhs.i.i.i ]
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i10.i.i, label %cond.end.i.i.team_port_dev_txable.exit.i_crit_edge, label %land.lhs.true.i13.i.i

cond.end.i.i.team_port_dev_txable.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %team_port_dev_txable.exit.i

land.lhs.true.i13.i.i:                            ; preds = %cond.end.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.team_port_dev_txable.exit.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.team_port_dev_txable.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %team_port_dev_txable.exit.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.team_port_dev_txable.exit.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.team_port_dev_txable.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %team_port_dev_txable.exit.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %team_port_dev_txable.exit.i

team_port_dev_txable.exit.i:                      ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.team_port_dev_txable.exit.i_crit_edge, %land.lhs.true.i13.i.i.team_port_dev_txable.exit.i_crit_edge, %cond.end.i.i.team_port_dev_txable.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  br label %net_lag_port_dev_txable.exit

if.else.i:                                        ; preds = %if.then10
  br i1 %call.i.i8.i, label %if.else.i.rcu_read_lock.exit.i16.i_crit_edge, label %land.lhs.true.i.i11.i

if.else.i.rcu_read_lock.exit.i16.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i16.i

land.lhs.true.i.i11.i:                            ; preds = %if.else.i
  %call1.i.i9.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i9.i)
  %tobool.not.i.i10.i = icmp eq i32 %call1.i.i9.i, 0
  br i1 %tobool.not.i.i10.i, label %land.lhs.true.i.i11.i.rcu_read_lock.exit.i16.i_crit_edge, label %land.lhs.true2.i.i13.i

land.lhs.true.i.i11.i.rcu_read_lock.exit.i16.i_crit_edge: ; preds = %land.lhs.true.i.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i16.i

land.lhs.true2.i.i13.i:                           ; preds = %land.lhs.true.i.i11.i
  %.b4.i.i12.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i12.i, label %land.lhs.true2.i.i13.i.rcu_read_lock.exit.i16.i_crit_edge, label %if.then.i.i14.i

land.lhs.true2.i.i13.i.rcu_read_lock.exit.i16.i_crit_edge: ; preds = %land.lhs.true2.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i16.i

if.then.i.i14.i:                                  ; preds = %land.lhs.true2.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock.exit.i16.i

rcu_read_lock.exit.i16.i:                         ; preds = %if.then.i.i14.i, %land.lhs.true2.i.i13.i.rcu_read_lock.exit.i16.i_crit_edge, %land.lhs.true.i.i11.i.rcu_read_lock.exit.i16.i_crit_edge, %if.else.i.rcu_read_lock.exit.i16.i_crit_edge
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 95
  %22 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i15.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i16.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i16.i.do.end7.i.i_crit_edge:   ; preds = %rcu_read_lock.exit.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i16.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @bond_is_active_slave_dev.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @bond_is_active_slave_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 444, ptr noundef nonnull @.str.18) #8
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i16.i.do.end7.i.i_crit_edge
  %backup.i.i.i.i = getelementptr inbounds %struct.slave, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %backup.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i.i.i = load i8, ptr %backup.i.i.i.i, align 2
  %call.i13.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i13.i.i, label %do.end7.i.i.bond_is_active_slave_dev.exit.i_crit_edge, label %land.lhs.true.i16.i.i

do.end7.i.i.bond_is_active_slave_dev.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bond_is_active_slave_dev.exit.i

land.lhs.true.i16.i.i:                            ; preds = %do.end7.i.i
  %call1.i14.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %call1.i14.i.i, 0
  br i1 %tobool.not.i15.i.i, label %land.lhs.true.i16.i.i.bond_is_active_slave_dev.exit.i_crit_edge, label %land.lhs.true2.i18.i.i

land.lhs.true.i16.i.i.bond_is_active_slave_dev.exit.i_crit_edge: ; preds = %land.lhs.true.i16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bond_is_active_slave_dev.exit.i

land.lhs.true2.i18.i.i:                           ; preds = %land.lhs.true.i16.i.i
  %.b4.i17.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i.i, label %land.lhs.true2.i18.i.i.bond_is_active_slave_dev.exit.i_crit_edge, label %if.then.i19.i.i

land.lhs.true2.i18.i.i.bond_is_active_slave_dev.exit.i_crit_edge: ; preds = %land.lhs.true2.i18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bond_is_active_slave_dev.exit.i

if.then.i19.i.i:                                  ; preds = %land.lhs.true2.i18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.19) #8
  br label %bond_is_active_slave_dev.exit.i

bond_is_active_slave_dev.exit.i:                  ; preds = %if.then.i19.i.i, %land.lhs.true2.i18.i.i.bond_is_active_slave_dev.exit.i_crit_edge, %land.lhs.true.i16.i.i.bond_is_active_slave_dev.exit.i_crit_edge, %do.end7.i.i.bond_is_active_slave_dev.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i12.i17.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  br label %net_lag_port_dev_txable.exit

net_lag_port_dev_txable.exit:                     ; preds = %bond_is_active_slave_dev.exit.i, %team_port_dev_txable.exit.i
  %retval.0.i73 = phi i1 [ %cond.i.i, %team_port_dev_txable.exit.i ], [ %tobool.not.i12.i17.i, %bond_is_active_slave_dev.exit.i ]
  %25 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i.i20.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i20.i.i to ptr
  %preempt_count.i.i.i.i21.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i21.i.i, align 4
  %sub.i.i.i.i18.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i.i18.i, ptr %preempt_count.i.i.i.i21.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %conv12 = zext i1 %retval.0.i73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_rep_changelowerstate_event.__UNIQUE_ID_ddebug703, ptr noundef %netdev, ptr noundef nonnull @.str.12, ptr noundef nonnull %call1, i32 noundef %conv, i32 noundef %conv12) #8
  br label %do.end15

do.end15:                                         ; preds = %net_lag_port_dev_txable.exit, %do.body5
  %lower = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lower, align 8
  %31 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %iter, align 4
  %call16 = call ptr @netdev_lower_get_next(ptr noundef nonnull %call1, ptr noundef nonnull %iter) #8
  %tobool17.not77 = icmp eq ptr %call16, null
  br i1 %tobool17.not77, label %do.end15.for.end_crit_edge, label %do.end15.for.body_crit_edge

do.end15.for.body_crit_edge:                      ; preds = %do.end15
  br label %for.body

do.end15.for.end_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end15.for.body_crit_edge
  %dev.078 = phi ptr [ %call34, %for.inc.for.body_crit_edge ], [ %call16, %do.end15.for.body_crit_edge ]
  %ppriv19 = getelementptr i8, ptr %dev.078, i32 30240
  %32 = ptrtoint ptr %ppriv19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ppriv19, align 32
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %vport21 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %vport21 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vport21, align 4
  %conv22 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %9)
  %cmp.not = icmp eq i16 %37, %9
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %if.then25

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then25:                                        ; preds = %for.body
  %add.ptr.i74 = getelementptr i8, ptr %dev.078, i32 2304
  %call26 = call i32 @mlx5e_rep_bond_update(ptr noundef %add.ptr.i74, i1 noundef zeroext true) #8
  %mdev = getelementptr i8, ptr %dev.078, i32 11328
  %38 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %39, i32 0, i32 17, i32 28
  %40 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eswitch, align 4
  %call28 = call i32 @mlx5_esw_acl_egress_vport_bond(ptr noundef %41, i16 noundef zeroext %9, i16 noundef zeroext %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then25.for.inc_crit_edge, label %if.then30

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %dev.078, ptr noundef nonnull @.str.13, i32 noundef %conv22, i32 noundef %call28) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.then25.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call34 = call ptr @netdev_lower_get_next(ptr noundef nonnull %call1, ptr noundef nonnull %iter) #8
  %tobool17.not = icmp eq ptr %call34, null
  br i1 %tobool17.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end15.for.end_crit_edge
  %call36 = call i32 @mlx5e_rep_bond_update(ptr noundef %add.ptr.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.end.cleanup_crit_edge, label %if.then38

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv39 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.14, i32 noundef %conv39, i32 noundef %call36) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_acl_egress_vport_bond(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !12, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 89, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 109, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlx5e_rep_bond_enslave.__UNIQUE_ID_ddebug700, !5, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 130, i32 2}
!11 = !{ptr @mlx5e_rep_bond_enslave.__UNIQUE_ID_ddebug701, !10, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 153, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 176, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx5e_rep_bond_unslave.__UNIQUE_ID_ddebug702, !15, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 330, i32 22}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 71, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5e_rep_bond_metadata_release.__UNIQUE_ID_ddebug699, !21, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 215, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mlx5e_rep_changelowerstate_event.__UNIQUE_ID_ddebug703, !25, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 234, i32 10}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 244, i32 23}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/if_team.h", i32 75, i32 9}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/net/bonding.h", i32 444, i32 10}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bond.c", i32 259, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mlx5e_rep_changeupper_event.__UNIQUE_ID_ddebug704, !47, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!50 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2149047465, i64 2149047470, i64 2149047483, i64 2149047527, i64 2149047561, i64 2149047582}
!64 = !{i8 0, i8 2}
!65 = !{i64 2149596491}
