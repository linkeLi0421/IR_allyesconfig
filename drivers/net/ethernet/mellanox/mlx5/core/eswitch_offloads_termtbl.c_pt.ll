; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.175, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.177, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx5_eswitch_fdb = type { %union.anon.173, i32 }
%union.anon.173 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.174, ptr }
%struct.anon.174 = type { [256 x %struct.hlist_head], %struct.mutex }
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
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.175 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.ida = type { %struct.xarray }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.177 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5_termtbl_handle = type { %struct.hlist_node, ptr, %struct.mlx5_flow_act, %struct.mlx5_flow_destination, ptr, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.182, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.182 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_destination = type { i32, %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i16, i16, ptr, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.143] }
%struct.anon.143 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.169 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.206 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.206 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.207], ptr, ptr }
%struct.anon.207 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.210 }
%struct.anon.210 = type { i32, i32 }

@mlx5_eswitch_add_termtbl_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"E-Switch: Failed to get termination table, err %pe\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_eswitch_add_termtbl_rule\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_eswitch_add_termtbl_rule._entry_ptr = internal global ptr @mlx5_eswitch_add_termtbl_rule._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_eswitch_termtbl_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"E-Switch: Failed to get FDB flow namespace\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5_eswitch_termtbl_create\00", [36 x i8] zeroinitializer }, align 32
@mlx5_eswitch_termtbl_create._entry_ptr = internal global ptr @mlx5_eswitch_termtbl_create._entry, section ".printk_index", align 4
@mlx5_eswitch_termtbl_create._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"E-Switch: Failed to create termination table, err %pe\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_eswitch_termtbl_create._entry_ptr.9 = internal global ptr @mlx5_eswitch_termtbl_create._entry.7, section ".printk_index", align 4
@mlx5_eswitch_termtbl_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"E-Switch: Failed to create termination table rule, err %pe\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx5_eswitch_termtbl_create._entry_ptr.12 = internal global ptr @mlx5_eswitch_termtbl_create._entry.10, section ".printk_index", align 4
@mlx5_eswitch_termtbl_create._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"E-Switch: Failed to destroy termination table, err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_eswitch_termtbl_create._entry_ptr.15 = internal global ptr @mlx5_eswitch_termtbl_create._entry.13, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 276, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 72, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 88, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 96, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [70 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 104, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @mlx5_eswitch_add_termtbl_rule._entry, ptr @mlx5_eswitch_add_termtbl_rule._entry_ptr, ptr @mlx5_eswitch_termtbl_create._entry, ptr @mlx5_eswitch_termtbl_create._entry.10, ptr @mlx5_eswitch_termtbl_create._entry.13, ptr @mlx5_eswitch_termtbl_create._entry.7, ptr @mlx5_eswitch_termtbl_create._entry_ptr, ptr @mlx5_eswitch_termtbl_create._entry_ptr.12, ptr @mlx5_eswitch_termtbl_create._entry_ptr.15, ptr @mlx5_eswitch_termtbl_create._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_add_termtbl_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_termtbl_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_termtbl_create._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_termtbl_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_termtbl_create._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eswitch_termtbl_put(ptr noundef %esw, ptr noundef %tt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %termtbl_mutex = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 15
  tail call void @mutex_lock_nested(ptr noundef %termtbl_mutex, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt, i32 0, i32 5
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %tt, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i.i, label %if.then.if.end_crit_edge, label %if.then.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  %4 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tt, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %8 = ptrtoint ptr %tt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tt, align 4
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__hlist_del.exit.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %termtbl_mutex) #8
  %10 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rule = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt, i32 0, i32 4
  %12 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rule, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %13) #8
  %termtbl = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt, i32 0, i32 1
  %14 = ptrtoint ptr %termtbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %termtbl, align 4
  %call = tail call i32 @mlx5_destroy_flow_table(ptr noundef %15) #8
  tail call void @kfree(ptr noundef %tt) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_eswitch_termtbl_required(ptr nocapture noundef readonly %esw, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %flow_act, ptr nocapture noundef readonly %spec) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %6)
  %.not = icmp eq i32 %6, 1152
  br i1 %.not, label %lor.lhs.false12, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12:                                  ; preds = %entry
  %flags = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 15
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and.i = and i32 %8, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false13, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false12
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %mlx5_eswitch_offload_is_uplink_port.exit, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false13
  %flow_source.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %flow_source.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flow_source.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %if.then.i.if.end_crit_edge, label %if.then.i.land.lhs.true_crit_edge

if.then.i.land.lhs.true_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mlx5_eswitch_offload_is_uplink_port.exit:         ; preds = %lor.lhs.false13
  %add.ptr2.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 17
  %14 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr2.i, align 4
  %add.ptr6.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 17
  %16 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr6.i, align 4
  %conv11.i = and i32 %15, 65535
  %and12.i = and i32 %conv11.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and12.i)
  %cmp13.i = icmp eq i32 %and12.i, 65535
  br i1 %cmp13.i, label %mlx5_eswitch_offload_is_uplink_port.exit.if.end_crit_edge, label %mlx5_eswitch_offload_is_uplink_port.exit.land.lhs.true_crit_edge

mlx5_eswitch_offload_is_uplink_port.exit.land.lhs.true_crit_edge: ; preds = %mlx5_eswitch_offload_is_uplink_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

mlx5_eswitch_offload_is_uplink_port.exit.if.end_crit_edge: ; preds = %mlx5_eswitch_offload_is_uplink_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %mlx5_eswitch_offload_is_uplink_port.exit.land.lhs.true_crit_edge, %if.then.i.land.lhs.true_crit_edge
  %int_port = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 2
  %18 = ptrtoint ptr %int_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %int_port, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %mlx5_eswitch_offload_is_uplink_port.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %20 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flow_act, align 4
  %and16 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %split_count = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 3
  %22 = ptrtoint ptr %split_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %split_count, align 4
  %out_count = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 4
  %24 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp44 = icmp slt i32 %23, %25
  br i1 %cmp44, label %for.body.lr.ph, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end19
  %dest_int_port = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3
  %26 = ptrtoint ptr %dest_int_port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dest_int_port, align 4
  %tobool20.not = icmp eq ptr %27, null
  %dests = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ %23, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool20.not, label %land.lhs.true21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true21:                                  ; preds = %for.body
  %rep = getelementptr [32 x %struct.anon.207], ptr %dests, i32 0, i32 %i.045, i32 1
  %28 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rep, align 4
  %tobool23.not = icmp eq ptr %29, null
  br i1 %tobool23.not, label %land.lhs.true21.for.inc_crit_edge, label %land.lhs.true24

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp28 = icmp eq i16 %31, -1
  br i1 %cmp28, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.for.inc_crit_edge

land.lhs.true24.for.inc_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true24.for.inc_crit_edge, %land.lhs.true21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %lor.lhs.false12.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ false, %if.end19.cleanup_crit_edge ], [ true, %land.lhs.true24.cleanup_crit_edge ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_eswitch_add_termtbl_rule(ptr noundef %esw, ptr noundef %fdb, ptr noundef %spec, ptr nocapture noundef %attr, ptr noundef %flow_act, ptr noundef %dest, i32 noundef %num_dest) local_unnamed_addr #0 align 64 {
entry:
  %ft_attr.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  %term_tbl_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %term_tbl_act) #8
  %0 = call ptr @memset(ptr %term_tbl_act, i32 0, i32 36)
  %1 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flow_act, align 4
  %and.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.mlx5_eswitch_termtbl_actions_move.exit_crit_edge, label %if.then.i

entry.mlx5_eswitch_termtbl_actions_move.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_eswitch_termtbl_actions_move.exit

if.then.i:                                        ; preds = %entry
  %and2.i = and i32 %2, -257
  %3 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and2.i, ptr %flow_act, align 4
  %4 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %term_tbl_act, align 4
  %or.i = or i32 %5, 256
  store i32 %or.i, ptr %term_tbl_act, align 4
  %vlan.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5
  %vlan4.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %vlan.i, ptr %vlan4.i, i32 6)
  %7 = call ptr @memset(ptr %vlan4.i, i32 0, i32 6)
  %and9.i = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then.i.mlx5_eswitch_termtbl_actions_move.exit_crit_edge, label %if.then11.i

if.then.i.mlx5_eswitch_termtbl_actions_move.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_eswitch_termtbl_actions_move.exit

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %and13.i = and i32 %2, -2305
  %8 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and13.i, ptr %flow_act, align 4
  %or15.i = or i32 %5, 2304
  %9 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or15.i, ptr %term_tbl_act, align 4
  %arrayidx17.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5, i32 1
  %arrayidx19.i = getelementptr %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 5, i32 1
  %10 = call ptr @memcpy(ptr %arrayidx17.i, ptr %arrayidx19.i, i32 6)
  %11 = call ptr @memset(ptr %arrayidx19.i, i32 0, i32 6)
  br label %mlx5_eswitch_termtbl_actions_move.exit

mlx5_eswitch_termtbl_actions_move.exit:           ; preds = %if.then11.i, %if.then.i.mlx5_eswitch_termtbl_actions_move.exit_crit_edge, %entry.mlx5_eswitch_termtbl_actions_move.exit_crit_edge
  %12 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %term_tbl_act, align 4
  %or = or i32 %13, 4
  store i32 %or, ptr %term_tbl_act, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_dest)
  %cmp153 = icmp sgt i32 %num_dest, 0
  br i1 %cmp153, label %for.body.lr.ph, label %mlx5_eswitch_termtbl_actions_move.exit.revert_changes_crit_edge

mlx5_eswitch_termtbl_actions_move.exit.revert_changes_crit_edge: ; preds = %mlx5_eswitch_termtbl_actions_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert_changes

for.body.lr.ph:                                   ; preds = %mlx5_eswitch_termtbl_actions_move.exit
  %pkt_reformat8 = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 2
  %termtbl_mutex.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 15
  %vlan.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %vlan.i.i, i32 11
  %arrayidx34.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5, i32 1, i32 2
  %arrayidx39.i.i.i = getelementptr inbounds i8, ptr %vlan.i.i, i32 9
  %arrayidx44.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5, i32 1, i32 1
  %arrayidx48.i.i.i = getelementptr inbounds i8, ptr %vlan.i.i, i32 7
  %arrayidx53.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5, i32 1
  %arrayidx58.i.i.i = getelementptr inbounds i8, ptr %vlan.i.i, i32 5
  %arrayidx63.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5, i32 0, i32 2
  %arrayidx67.i.i.i = getelementptr inbounds i8, ptr %vlan.i.i, i32 3
  %arrayidx72.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5, i32 0, i32 1
  %arrayidx77.i.i.i = getelementptr inbounds i8, ptr %vlan.i.i, i32 1
  %14 = getelementptr inbounds i8, ptr %ft_attr.i.i, i32 16
  %flags.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i, i32 0, i32 3
  %max_fte.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i, i32 0, i32 1
  %level.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i, i32 0, i32 2
  %autogroup.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %for.inc.for.body_crit_edge ]
  %num_vport_dests.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %num_vport_dests.1.ph, %for.inc.for.body_crit_edge ]
  %term_table_created.0.off0154 = phi i1 [ false, %for.body.lr.ph ], [ %term_table_created.1.off0.ph, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5_flow_destination, ptr %dest, i32 %i.0156
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.not = icmp eq i32 %16, 0
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx2 = getelementptr %struct.mlx5_esw_flow_attr, ptr %attr, i32 0, i32 11, i32 %num_vport_dests.0155
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %19 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %term_tbl_act, align 4
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or5 = or i32 %20, 16
  %21 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or5, ptr %term_tbl_act, align 4
  %pkt_reformat = getelementptr %struct.mlx5_esw_flow_attr, ptr %attr, i32 0, i32 11, i32 %num_vport_dests.0155, i32 2
  %22 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pkt_reformat, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and10 = and i32 %20, -17
  %24 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and10, ptr %term_tbl_act, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then3
  %storemerge = phi ptr [ %23, %if.then3 ], [ null, %if.else ]
  %25 = ptrtoint ptr %pkt_reformat8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %storemerge, ptr %pkt_reformat8, align 4
  call void @mutex_lock_nested(ptr noundef %termtbl_mutex.i, i32 noundef 0) #8
  %26 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %term_tbl_act, align 4
  %add.i.i.i.i = add i32 %27, -559038733
  %xor3.i.i.i.i = xor i32 %add.i.i.i.i, -1874655147
  %sub5.i.i.i.i = add i32 %xor3.i.i.i.i, -407022722
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, -559038733
  %or.i1.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #8
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i1.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, -1874655147
  %or.i2.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #8
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i2.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i3.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #8
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i3.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i4.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #8
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i4.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i5.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #8
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i5.i.i.i.i
  %add1.i.i.i = add i32 %sub20.i.i.i.i, -559038725
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %29 to i32
  %shl.i.i.i = shl nuw i32 %conv.i.i.i, 24
  %30 = ptrtoint ptr %arrayidx34.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx34.i.i.i, align 2
  %conv35.i.i.i = zext i8 %31 to i32
  %shl36.i.i.i = shl nuw nsw i32 %conv35.i.i.i, 16
  %32 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx39.i.i.i, align 1
  %conv40.i.i.i = zext i8 %33 to i32
  %shl41.i.i.i = shl nuw nsw i32 %conv40.i.i.i, 8
  %34 = ptrtoint ptr %arrayidx44.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx44.i.i.i, align 4
  %conv45.i.i.i = zext i8 %35 to i32
  %add32.i.i.i = or i32 %shl36.i.i.i, %shl.i.i.i
  %add37.i.i.i = or i32 %add32.i.i.i, %shl41.i.i.i
  %add42.i.i.i = or i32 %add37.i.i.i, %conv45.i.i.i
  %add46.i.i.i = add i32 %add1.i.i.i, %add42.i.i.i
  %36 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx48.i.i.i, align 1
  %conv49.i.i.i = zext i8 %37 to i32
  %shl50.i.i.i = shl nuw i32 %conv49.i.i.i, 24
  %38 = ptrtoint ptr %arrayidx53.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx53.i.i.i, align 2
  %conv54.i.i.i = zext i8 %39 to i32
  %shl55.i.i.i = shl nuw nsw i32 %conv54.i.i.i, 16
  %40 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx58.i.i.i, align 1
  %conv59.i.i.i = zext i8 %41 to i32
  %shl60.i.i.i = shl nuw nsw i32 %conv59.i.i.i, 8
  %42 = ptrtoint ptr %arrayidx63.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx63.i.i.i, align 4
  %conv64.i.i.i = zext i8 %43 to i32
  %add51.i.i.i = or i32 %shl55.i.i.i, %shl50.i.i.i
  %add56.i.i.i = or i32 %add51.i.i.i, %shl60.i.i.i
  %add61.i.i.i = or i32 %add56.i.i.i, %conv64.i.i.i
  %add65.i.i.i = add i32 %add1.i.i.i, %add61.i.i.i
  %44 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx67.i.i.i, align 1
  %conv68.i.i.i = zext i8 %45 to i32
  %shl69.i.i.i = shl nuw i32 %conv68.i.i.i, 24
  %46 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx72.i.i.i, align 2
  %conv73.i.i.i = zext i8 %47 to i32
  %shl74.i.i.i = shl nuw nsw i32 %conv73.i.i.i, 16
  %48 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx77.i.i.i, align 1
  %conv78.i.i.i = zext i8 %49 to i32
  %shl79.i.i.i = shl nuw nsw i32 %conv78.i.i.i, 8
  %50 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %vlan.i.i, align 4
  %conv83.i.i.i = zext i8 %51 to i32
  %add70.i.i.i = or i32 %shl74.i.i.i, %shl69.i.i.i
  %add75.i.i.i = or i32 %add70.i.i.i, %shl79.i.i.i
  %add80.i.i.i = or i32 %add75.i.i.i, %conv83.i.i.i
  %add84.i.i.i = add i32 %add80.i.i.i, %add1.i.i.i
  %xor85.i.i.i = xor i32 %add46.i.i.i, %add65.i.i.i
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add65.i.i.i, i32 %add65.i.i.i, i32 14) #8
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i.i.i.i
  %xor88.i.i.i = xor i32 %sub87.i.i.i, %add84.i.i.i
  %or.i201.i.i.i = call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #8
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i201.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add65.i.i.i
  %or.i202.i.i.i = call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #8
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i202.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i203.i.i.i = call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #8
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i203.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i204.i.i.i = call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #8
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i204.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i205.i.i.i = call i32 @llvm.fshl.i32(i32 %sub99.i.i.i, i32 %sub99.i.i.i, i32 14) #8
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i205.i.i.i
  %xor103.i.i.i = xor i32 %sub102.i.i.i, %sub96.i.i.i
  %or.i206.i.i.i = call i32 @llvm.fshl.i32(i32 %sub102.i.i.i, i32 %sub102.i.i.i, i32 24) #8
  %sub105.i.i.i = sub i32 %xor103.i.i.i, %or.i206.i.i.i
  %52 = getelementptr %struct.mlx5_flow_destination, ptr %dest, i32 %i.0156, i32 1
  %add1.i14.i.i = add i32 %sub105.i.i.i, -559038735
  %arrayidx77.i15.i.i = getelementptr i8, ptr %52, i32 1
  %53 = ptrtoint ptr %arrayidx77.i15.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx77.i15.i.i, align 1
  %conv78.i16.i.i = zext i8 %54 to i32
  %shl79.i17.i.i = shl nuw nsw i32 %conv78.i16.i.i, 8
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %52, align 1
  %conv83.i19.i.i = zext i8 %56 to i32
  %add80.i18.i.i = or i32 %shl79.i17.i.i, %conv83.i19.i.i
  %add84.i20.i.i = add i32 %add1.i14.i.i, %add80.i18.i.i
  %or.i.i22.i.i = call i32 @llvm.fshl.i32(i32 %add1.i14.i.i, i32 %add1.i14.i.i, i32 14) #8
  %sub87.i23.i.i = sub i32 0, %or.i.i22.i.i
  %xor88.i24.i.i = xor i32 %add84.i20.i.i, %sub87.i23.i.i
  %or.i201.i25.i.i = call i32 @llvm.fshl.i32(i32 %sub87.i23.i.i, i32 %sub87.i23.i.i, i32 11) #8
  %sub90.i26.i.i = sub i32 %xor88.i24.i.i, %or.i201.i25.i.i
  %xor91.i27.i.i = xor i32 %sub90.i26.i.i, %add1.i14.i.i
  %or.i202.i28.i.i = call i32 @llvm.fshl.i32(i32 %sub90.i26.i.i, i32 %sub90.i26.i.i, i32 25) #8
  %sub93.i29.i.i = sub i32 %xor91.i27.i.i, %or.i202.i28.i.i
  %xor94.i30.i.i = xor i32 %sub93.i29.i.i, %sub87.i23.i.i
  %or.i203.i31.i.i = call i32 @llvm.fshl.i32(i32 %sub93.i29.i.i, i32 %sub93.i29.i.i, i32 16) #8
  %sub96.i32.i.i = sub i32 %xor94.i30.i.i, %or.i203.i31.i.i
  %xor97.i33.i.i = xor i32 %sub96.i32.i.i, %sub90.i26.i.i
  %or.i204.i34.i.i = call i32 @llvm.fshl.i32(i32 %sub96.i32.i.i, i32 %sub96.i32.i.i, i32 4) #8
  %sub99.i35.i.i = sub i32 %xor97.i33.i.i, %or.i204.i34.i.i
  %xor100.i36.i.i = xor i32 %sub99.i35.i.i, %sub93.i29.i.i
  %or.i205.i37.i.i = call i32 @llvm.fshl.i32(i32 %sub99.i35.i.i, i32 %sub99.i35.i.i, i32 14) #8
  %sub102.i38.i.i = sub i32 %xor100.i36.i.i, %or.i205.i37.i.i
  %xor103.i39.i.i = xor i32 %sub102.i38.i.i, %sub96.i32.i.i
  %or.i206.i40.i.i = call i32 @llvm.fshl.i32(i32 %sub102.i38.i.i, i32 %sub102.i38.i.i, i32 24) #8
  %sub105.i41.i.i = sub i32 %xor103.i39.i.i, %or.i206.i40.i.i
  %vhca_id.i.i = getelementptr %struct.mlx5_flow_destination, ptr %dest, i32 %i.0156, i32 1, i32 0, i32 1
  %add1.i42.i.i = add i32 %sub105.i41.i.i, -559038735
  %arrayidx77.i43.i.i = getelementptr i8, ptr %vhca_id.i.i, i32 1
  %57 = ptrtoint ptr %arrayidx77.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx77.i43.i.i, align 1
  %conv78.i44.i.i = zext i8 %58 to i32
  %shl79.i45.i.i = shl nuw nsw i32 %conv78.i44.i.i, 8
  %59 = ptrtoint ptr %vhca_id.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vhca_id.i.i, align 1
  %conv83.i47.i.i = zext i8 %60 to i32
  %add80.i46.i.i = or i32 %shl79.i45.i.i, %conv83.i47.i.i
  %add84.i48.i.i = add i32 %add1.i42.i.i, %add80.i46.i.i
  %or.i.i50.i.i = call i32 @llvm.fshl.i32(i32 %add1.i42.i.i, i32 %add1.i42.i.i, i32 14) #8
  %sub87.i51.i.i = sub i32 0, %or.i.i50.i.i
  %xor88.i52.i.i = xor i32 %add84.i48.i.i, %sub87.i51.i.i
  %or.i201.i53.i.i = call i32 @llvm.fshl.i32(i32 %sub87.i51.i.i, i32 %sub87.i51.i.i, i32 11) #8
  %sub90.i54.i.i = sub i32 %xor88.i52.i.i, %or.i201.i53.i.i
  %xor91.i55.i.i = xor i32 %sub90.i54.i.i, %add1.i42.i.i
  %or.i202.i56.i.i = call i32 @llvm.fshl.i32(i32 %sub90.i54.i.i, i32 %sub90.i54.i.i, i32 25) #8
  %sub93.i57.i.i = sub i32 %xor91.i55.i.i, %or.i202.i56.i.i
  %xor94.i58.i.i = xor i32 %sub93.i57.i.i, %sub87.i51.i.i
  %or.i203.i59.i.i = call i32 @llvm.fshl.i32(i32 %sub93.i57.i.i, i32 %sub93.i57.i.i, i32 16) #8
  %sub96.i60.i.i = sub i32 %xor94.i58.i.i, %or.i203.i59.i.i
  %xor97.i61.i.i = xor i32 %sub96.i60.i.i, %sub90.i54.i.i
  %or.i204.i62.i.i = call i32 @llvm.fshl.i32(i32 %sub96.i60.i.i, i32 %sub96.i60.i.i, i32 4) #8
  %sub99.i63.i.i = sub i32 %xor97.i61.i.i, %or.i204.i62.i.i
  %xor100.i64.i.i = xor i32 %sub99.i63.i.i, %sub93.i57.i.i
  %or.i205.i65.i.i = call i32 @llvm.fshl.i32(i32 %sub99.i63.i.i, i32 %sub99.i63.i.i, i32 14) #8
  %sub102.i66.i.i = sub i32 %xor100.i64.i.i, %or.i205.i65.i.i
  %xor103.i67.i.i = xor i32 %sub102.i66.i.i, %sub96.i60.i.i
  %or.i206.i68.i.i = call i32 @llvm.fshl.i32(i32 %sub102.i66.i.i, i32 %sub102.i66.i.i, i32 24) #8
  %sub105.i69.i.i = sub i32 %xor103.i67.i.i, %or.i206.i68.i.i
  %pkt_reformat.i.i = getelementptr %struct.mlx5_flow_destination, ptr %dest, i32 %i.0156, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %pkt_reformat.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pkt_reformat.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %if.end12.mlx5_eswitch_termtbl_hash.exit.i_crit_edge, label %if.then.i.i

if.end12.mlx5_eswitch_termtbl_hash.exit.i_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_eswitch_termtbl_hash.exit.i

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %add1.i70.i.i = add i32 %sub105.i69.i.i, -559038725
  %arrayidx.i71.i.i = getelementptr i8, ptr %62, i32 11
  %63 = ptrtoint ptr %arrayidx.i71.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i71.i.i, align 1
  %conv.i72.i.i = zext i8 %64 to i32
  %shl.i73.i.i = shl nuw i32 %conv.i72.i.i, 24
  %add32.i74.i.i = add i32 %shl.i73.i.i, %add1.i70.i.i
  %arrayidx34.i75.i.i = getelementptr i8, ptr %62, i32 10
  %65 = ptrtoint ptr %arrayidx34.i75.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx34.i75.i.i, align 1
  %conv35.i76.i.i = zext i8 %66 to i32
  %shl36.i77.i.i = shl nuw nsw i32 %conv35.i76.i.i, 16
  %add37.i78.i.i = add i32 %add32.i74.i.i, %shl36.i77.i.i
  %arrayidx39.i79.i.i = getelementptr i8, ptr %62, i32 9
  %67 = ptrtoint ptr %arrayidx39.i79.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx39.i79.i.i, align 1
  %conv40.i80.i.i = zext i8 %68 to i32
  %shl41.i81.i.i = shl nuw nsw i32 %conv40.i80.i.i, 8
  %add42.i82.i.i = add i32 %add37.i78.i.i, %shl41.i81.i.i
  %arrayidx44.i83.i.i = getelementptr i8, ptr %62, i32 8
  %69 = ptrtoint ptr %arrayidx44.i83.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx44.i83.i.i, align 1
  %conv45.i84.i.i = zext i8 %70 to i32
  %add46.i85.i.i = add i32 %add42.i82.i.i, %conv45.i84.i.i
  %arrayidx48.i86.i.i = getelementptr i8, ptr %62, i32 7
  %71 = ptrtoint ptr %arrayidx48.i86.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx48.i86.i.i, align 1
  %conv49.i87.i.i = zext i8 %72 to i32
  %shl50.i88.i.i = shl nuw i32 %conv49.i87.i.i, 24
  %add51.i89.i.i = add i32 %shl50.i88.i.i, %add1.i70.i.i
  %arrayidx53.i90.i.i = getelementptr i8, ptr %62, i32 6
  %73 = ptrtoint ptr %arrayidx53.i90.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx53.i90.i.i, align 1
  %conv54.i91.i.i = zext i8 %74 to i32
  %shl55.i92.i.i = shl nuw nsw i32 %conv54.i91.i.i, 16
  %add56.i93.i.i = add i32 %add51.i89.i.i, %shl55.i92.i.i
  %arrayidx58.i94.i.i = getelementptr i8, ptr %62, i32 5
  %75 = ptrtoint ptr %arrayidx58.i94.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx58.i94.i.i, align 1
  %conv59.i95.i.i = zext i8 %76 to i32
  %shl60.i96.i.i = shl nuw nsw i32 %conv59.i95.i.i, 8
  %add61.i97.i.i = add i32 %add56.i93.i.i, %shl60.i96.i.i
  %arrayidx63.i98.i.i = getelementptr i8, ptr %62, i32 4
  %77 = ptrtoint ptr %arrayidx63.i98.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx63.i98.i.i, align 1
  %conv64.i99.i.i = zext i8 %78 to i32
  %add65.i100.i.i = add i32 %add61.i97.i.i, %conv64.i99.i.i
  %arrayidx67.i101.i.i = getelementptr i8, ptr %62, i32 3
  %79 = ptrtoint ptr %arrayidx67.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx67.i101.i.i, align 1
  %conv68.i102.i.i = zext i8 %80 to i32
  %shl69.i103.i.i = shl nuw i32 %conv68.i102.i.i, 24
  %add70.i104.i.i = add i32 %shl69.i103.i.i, %add1.i70.i.i
  %arrayidx72.i105.i.i = getelementptr i8, ptr %62, i32 2
  %81 = ptrtoint ptr %arrayidx72.i105.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx72.i105.i.i, align 1
  %conv73.i106.i.i = zext i8 %82 to i32
  %shl74.i107.i.i = shl nuw nsw i32 %conv73.i106.i.i, 16
  %add75.i108.i.i = add i32 %add70.i104.i.i, %shl74.i107.i.i
  %arrayidx77.i109.i.i = getelementptr i8, ptr %62, i32 1
  %83 = ptrtoint ptr %arrayidx77.i109.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx77.i109.i.i, align 1
  %conv78.i110.i.i = zext i8 %84 to i32
  %shl79.i111.i.i = shl nuw nsw i32 %conv78.i110.i.i, 8
  %add80.i112.i.i = add i32 %add75.i108.i.i, %shl79.i111.i.i
  %85 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %62, align 1
  %conv83.i113.i.i = zext i8 %86 to i32
  %add84.i114.i.i = add i32 %add80.i112.i.i, %conv83.i113.i.i
  %xor85.i115.i.i = xor i32 %add65.i100.i.i, %add46.i85.i.i
  %or.i.i116.i.i = call i32 @llvm.fshl.i32(i32 %add65.i100.i.i, i32 %add65.i100.i.i, i32 14) #8
  %sub87.i117.i.i = sub i32 %xor85.i115.i.i, %or.i.i116.i.i
  %xor88.i118.i.i = xor i32 %add84.i114.i.i, %sub87.i117.i.i
  %or.i201.i119.i.i = call i32 @llvm.fshl.i32(i32 %sub87.i117.i.i, i32 %sub87.i117.i.i, i32 11) #8
  %sub90.i120.i.i = sub i32 %xor88.i118.i.i, %or.i201.i119.i.i
  %xor91.i121.i.i = xor i32 %sub90.i120.i.i, %add65.i100.i.i
  %or.i202.i122.i.i = call i32 @llvm.fshl.i32(i32 %sub90.i120.i.i, i32 %sub90.i120.i.i, i32 25) #8
  %sub93.i123.i.i = sub i32 %xor91.i121.i.i, %or.i202.i122.i.i
  %xor94.i124.i.i = xor i32 %sub93.i123.i.i, %sub87.i117.i.i
  %or.i203.i125.i.i = call i32 @llvm.fshl.i32(i32 %sub93.i123.i.i, i32 %sub93.i123.i.i, i32 16) #8
  %sub96.i126.i.i = sub i32 %xor94.i124.i.i, %or.i203.i125.i.i
  %xor97.i127.i.i = xor i32 %sub96.i126.i.i, %sub90.i120.i.i
  %or.i204.i128.i.i = call i32 @llvm.fshl.i32(i32 %sub96.i126.i.i, i32 %sub96.i126.i.i, i32 4) #8
  %sub99.i129.i.i = sub i32 %xor97.i127.i.i, %or.i204.i128.i.i
  %xor100.i130.i.i = xor i32 %sub99.i129.i.i, %sub93.i123.i.i
  %or.i205.i131.i.i = call i32 @llvm.fshl.i32(i32 %sub99.i129.i.i, i32 %sub99.i129.i.i, i32 14) #8
  %sub102.i132.i.i = sub i32 %xor100.i130.i.i, %or.i205.i131.i.i
  %xor103.i133.i.i = xor i32 %sub102.i132.i.i, %sub96.i126.i.i
  %or.i206.i134.i.i = call i32 @llvm.fshl.i32(i32 %sub102.i132.i.i, i32 %sub102.i132.i.i, i32 24) #8
  %sub105.i135.i.i = sub i32 %xor103.i133.i.i, %or.i206.i134.i.i
  br label %mlx5_eswitch_termtbl_hash.exit.i

mlx5_eswitch_termtbl_hash.exit.i:                 ; preds = %if.then.i.i, %if.end12.mlx5_eswitch_termtbl_hash.exit.i_crit_edge
  %hash.0.i.i = phi i32 [ %sub105.i135.i.i, %if.then.i.i ], [ %sub105.i69.i.i, %if.end12.mlx5_eswitch_termtbl_hash.exit.i_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 14, i32 %shr.i.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %tt.024.i = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not25.i = icmp eq ptr %tt.024.i, null
  br i1 %tobool4.not25.i, label %mlx5_eswitch_termtbl_hash.exit.i.if.end21.critedge.i_crit_edge, label %mlx5_eswitch_termtbl_hash.exit.i.for.body.i_crit_edge

mlx5_eswitch_termtbl_hash.exit.i.for.body.i_crit_edge: ; preds = %mlx5_eswitch_termtbl_hash.exit.i
  br label %for.body.i

mlx5_eswitch_termtbl_hash.exit.i.if.end21.critedge.i_crit_edge: ; preds = %mlx5_eswitch_termtbl_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.critedge.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mlx5_eswitch_termtbl_hash.exit.i.for.body.i_crit_edge
  %tt.026.i = phi ptr [ %tt.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tt.024.i, %mlx5_eswitch_termtbl_hash.exit.i.for.body.i_crit_edge ]
  %flow_act5.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt.026.i, i32 0, i32 2
  %88 = ptrtoint ptr %flow_act5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flow_act5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %27)
  %cmp.not.i.i = icmp eq i32 %89, %27
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %90 = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt.026.i, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %90, align 4
  %93 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %52, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %94)
  %cmp4.not.i.i = icmp eq i16 %92, %94
  br i1 %cmp4.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false.i.i
  %vhca_id.i2.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt.026.i, i32 0, i32 3, i32 1, i32 0, i32 1
  %95 = ptrtoint ptr %vhca_id.i2.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vhca_id.i2.i, align 2
  %97 = ptrtoint ptr %vhca_id.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %vhca_id.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %98)
  %cmp10.not.i.i = icmp eq i16 %96, %98
  br i1 %cmp10.not.i.i, label %lor.end.i.i, label %lor.lhs.false6.i.i.for.inc.i_crit_edge

lor.lhs.false6.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.end.i.i:                                      ; preds = %lor.lhs.false6.i.i
  %vlan.i3.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt.026.i, i32 0, i32 2, i32 5
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(12) %vlan.i3.i, ptr noundef dereferenceable(12) %vlan.i.i, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i4.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i4.i, label %if.end.i.i, label %lor.end.i.i.for.inc.i_crit_edge

lor.end.i.i.for.inc.i_crit_edge:                  ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i:                                       ; preds = %lor.end.i.i
  %pkt_reformat.i5.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt.026.i, i32 0, i32 3, i32 1, i32 0, i32 2
  %99 = ptrtoint ptr %pkt_reformat.i5.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pkt_reformat.i5.i, align 4
  %tobool14.not.i.i = icmp eq ptr %100, null
  %brmerge.i = select i1 %tobool14.not.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %brmerge.i, label %if.end.i.i.tt_add_ref.i_crit_edge, label %mlx5_eswitch_termtbl_cmp.exit.i

if.end.i.i.tt_add_ref.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tt_add_ref.i

mlx5_eswitch_termtbl_cmp.exit.i:                  ; preds = %if.end.i.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %100, ptr noundef nonnull dereferenceable(12) %62, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %mlx5_eswitch_termtbl_cmp.exit.i.tt_add_ref.i_crit_edge, label %mlx5_eswitch_termtbl_cmp.exit.i.for.inc.i_crit_edge

mlx5_eswitch_termtbl_cmp.exit.i.for.inc.i_crit_edge: ; preds = %mlx5_eswitch_termtbl_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

mlx5_eswitch_termtbl_cmp.exit.i.tt_add_ref.i_crit_edge: ; preds = %mlx5_eswitch_termtbl_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tt_add_ref.i

for.inc.i:                                        ; preds = %mlx5_eswitch_termtbl_cmp.exit.i.for.inc.i_crit_edge, %lor.end.i.i.for.inc.i_crit_edge, %lor.lhs.false6.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %101 = ptrtoint ptr %tt.026.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %tt.0.i = load ptr, ptr %tt.026.i, align 4
  %tobool4.not.i = icmp eq ptr %tt.0.i, null
  br i1 %tobool4.not.i, label %for.inc.i.if.end21.critedge.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end21.critedge.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.critedge.i

if.end21.critedge.i:                              ; preds = %for.inc.i.if.end21.critedge.i_crit_edge, %mlx5_eswitch_termtbl_hash.exit.i.if.end21.critedge.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3520, i32 noundef 72) #12
  %tobool23.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool23.not.i, label %if.end21.critedge.i.tt_create_err.i_crit_edge, label %if.end25.i

if.end21.critedge.i.tt_create_err.i_crit_edge:    ; preds = %if.end21.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tt_create_err.i

if.end25.i:                                       ; preds = %if.end21.critedge.i
  %dest26.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %call7.i.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %dest26.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %dest26.i, align 8
  %104 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %52, align 4
  %106 = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %105, ptr %106, align 4
  %108 = ptrtoint ptr %vhca_id.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %vhca_id.i.i, align 2
  %vhca_id30.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 0, i32 1
  %110 = ptrtoint ptr %vhca_id30.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %vhca_id30.i, align 2
  %flags.i = getelementptr %struct.mlx5_flow_destination, ptr %dest, i32 %i.0156, i32 1, i32 0, i32 3
  %111 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %flags.i, align 4
  %flags32.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 0, i32 3
  %113 = ptrtoint ptr %flags32.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %flags32.i, align 4
  %flow_act33.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %call7.i.i.i, i32 0, i32 2
  %114 = call ptr @memcpy(ptr %flow_act33.i, ptr %term_tbl_act, i32 36)
  %115 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %esw, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i.i) #8
  %117 = call ptr @memset(ptr %14, i32 0, i32 12)
  %call.i.i = call ptr @mlx5_get_flow_namespace(ptr noundef %116, i32 noundef 8) #8
  %tobool.not.i6.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i6.i, label %mlx5_eswitch_termtbl_create.exit.thread20.i, label %if.end.i7.i

mlx5_eswitch_termtbl_create.exit.thread20.i:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %116, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.5) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i) #8
  br label %tt_create_err.i

if.end.i7.i:                                      ; preds = %if.end25.i
  %120 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 13, ptr %flags.i.i, align 4
  %121 = ptrtoint ptr %ft_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %ft_attr.i.i, align 4
  %122 = ptrtoint ptr %max_fte.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %max_fte.i.i, align 4
  %123 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %level.i.i, align 4
  %124 = ptrtoint ptr %autogroup.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %autogroup.i.i, align 4
  %call1.i.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call.i.i, ptr noundef nonnull %ft_attr.i.i) #8
  %termtbl.i.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %call7.i.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %termtbl.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call1.i.i, ptr %termtbl.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then4.i.i, label %if.end12.i.i

if.then4.i.i:                                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %116, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.8, ptr noundef nonnull %call1.i.i) #13
  br label %mlx5_eswitch_termtbl_create.exit.i

if.end12.i.i:                                     ; preds = %if.end.i7.i
  %call14.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %call1.i.i, ptr noundef null, ptr noundef nonnull %term_tbl_act, ptr noundef %dest26.i, i32 noundef 1) #8
  %rule.i.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %call7.i.i.i, i32 0, i32 4
  %128 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call14.i.i, ptr %rule.i.i, align 8
  %cmp.i55.i.i = icmp ugt ptr %call14.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55.i.i, label %if.then17.i.i, label %mlx5_eswitch_termtbl_create.exit.thread.i

mlx5_eswitch_termtbl_create.exit.thread.i:        ; preds = %if.end12.i.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i) #8
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i, align 4
  %131 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %130, ptr %call7.i.i.i, align 8
  %tobool.not.i11.i = icmp eq ptr %130, null
  br i1 %tobool.not.i11.i, label %mlx5_eswitch_termtbl_create.exit.thread.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

mlx5_eswitch_termtbl_create.exit.thread.i.hlist_add_head.exit.i_crit_edge: ; preds = %mlx5_eswitch_termtbl_create.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit.i

if.then17.i.i:                                    ; preds = %if.end12.i.i
  %132 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %116, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %133, ptr noundef nonnull @.str.11, ptr noundef nonnull %call14.i.i) #13
  %134 = ptrtoint ptr %termtbl.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %termtbl.i.i, align 8
  %call27.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %135) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then17.i.i.mlx5_eswitch_termtbl_create.exit.i_crit_edge, label %do.end32.i.i

if.then17.i.i.mlx5_eswitch_termtbl_create.exit.i_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_eswitch_termtbl_create.exit.i

do.end32.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %116, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %137, ptr noundef nonnull @.str.14, i32 noundef %call27.i.i) #13
  br label %mlx5_eswitch_termtbl_create.exit.i

mlx5_eswitch_termtbl_create.exit.i:               ; preds = %do.end32.i.i, %if.then17.i.i.mlx5_eswitch_termtbl_create.exit.i_crit_edge, %if.then4.i.i
  %retval.0.i8.in.i = phi ptr [ %call1.i.i, %if.then4.i.i ], [ %call14.i.i, %do.end32.i.i ], [ %call14.i.i, %if.then17.i.i.mlx5_eswitch_termtbl_create.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i) #8
  br label %tt_create_err.i

do.body12.i.i:                                    ; preds = %mlx5_eswitch_termtbl_create.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %130, i32 0, i32 1
  %138 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %mlx5_eswitch_termtbl_create.exit.thread.i.hlist_add_head.exit.i_crit_edge
  %139 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  br label %tt_add_ref.i

tt_add_ref.i:                                     ; preds = %hlist_add_head.exit.i, %mlx5_eswitch_termtbl_cmp.exit.i.tt_add_ref.i_crit_edge, %if.end.i.i.tt_add_ref.i_crit_edge
  %tt.1.i = phi ptr [ %call7.i.i.i, %hlist_add_head.exit.i ], [ %tt.026.i, %if.end.i.i.tt_add_ref.i_crit_edge ], [ %tt.026.i, %mlx5_eswitch_termtbl_cmp.exit.i.tt_add_ref.i_crit_edge ]
  %ref_count.i = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %tt.1.i, i32 0, i32 5
  %141 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ref_count.i, align 4
  %inc.i = add i32 %142, 1
  store i32 %inc.i, ptr %ref_count.i, align 4
  br label %mlx5_eswitch_termtbl_get_create.exit

tt_create_err.i:                                  ; preds = %mlx5_eswitch_termtbl_create.exit.i, %mlx5_eswitch_termtbl_create.exit.thread20.i, %if.end21.critedge.i.tt_create_err.i_crit_edge
  %err.0.i = phi ptr [ %retval.0.i8.in.i, %mlx5_eswitch_termtbl_create.exit.i ], [ inttoptr (i32 -12 to ptr), %if.end21.critedge.i.tt_create_err.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %mlx5_eswitch_termtbl_create.exit.thread20.i ]
  call void @kfree(ptr noundef %call7.i.i.i) #8
  br label %mlx5_eswitch_termtbl_get_create.exit

mlx5_eswitch_termtbl_get_create.exit:             ; preds = %tt_create_err.i, %tt_add_ref.i
  %retval.0.i = phi ptr [ %tt.1.i, %tt_add_ref.i ], [ %err.0.i, %tt_create_err.i ]
  call void @mutex_unlock(ptr noundef %termtbl_mutex.i) #8
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end16

if.end16:                                         ; preds = %mlx5_eswitch_termtbl_get_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  %termtbl = getelementptr %struct.mlx5_esw_flow_attr, ptr %attr, i32 0, i32 11, i32 %num_vport_dests.0155, i32 4
  %143 = ptrtoint ptr %termtbl to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %retval.0.i, ptr %termtbl, align 4
  %inc = add i32 %num_vport_dests.0155, 1
  %144 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %arrayidx, align 4
  %termtbl21 = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %retval.0.i, i32 0, i32 1
  %145 = ptrtoint ptr %termtbl21 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %termtbl21, align 4
  %147 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %52, align 4
  br label %for.inc

cleanup:                                          ; preds = %mlx5_eswitch_termtbl_get_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %esw, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str, ptr noundef nonnull %retval.0.i) #13
  br label %revert_changes

for.inc:                                          ; preds = %if.end16, %for.body.for.inc_crit_edge
  %term_table_created.1.off0.ph = phi i1 [ %term_table_created.0.off0154, %for.body.for.inc_crit_edge ], [ true, %if.end16 ]
  %num_vport_dests.1.ph = phi i32 [ %num_vport_dests.0155, %for.body.for.inc_crit_edge ], [ %inc, %if.end16 ]
  %inc23 = add nuw nsw i32 %i.0156, 1
  %exitcond.not = icmp eq i32 %inc23, %num_dest
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %term_table_created.1.off0.ph, label %if.end26, label %for.end.revert_changes_crit_edge

for.end.revert_changes_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert_changes

if.end26:                                         ; preds = %for.end
  %152 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flow_act, align 4
  %and28 = and i32 %153, -17
  store i32 %and28, ptr %flow_act, align 4
  %pkt_reformat29 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 2
  %154 = ptrtoint ptr %pkt_reformat29 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %pkt_reformat29, align 4
  %flags30 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 4
  %155 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags30, align 4
  %or31 = or i32 %156, 2
  store i32 %or31, ptr %flags30, align 4
  %call32 = call ptr @mlx5_add_flow_rules(ptr noundef %fdb, ptr noundef %spec, ptr noundef %flow_act, ptr noundef %dest, i32 noundef %num_dest) #8
  %cmp.i127 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.end26.revert_changes_crit_edge, label %if.end26.cleanup67_crit_edge

if.end26.cleanup67_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end26.revert_changes_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %revert_changes

revert_changes:                                   ; preds = %if.end26.revert_changes_crit_edge, %for.end.revert_changes_crit_edge, %cleanup, %mlx5_eswitch_termtbl_actions_move.exit.revert_changes_crit_edge
  %num_vport_dests.0151 = phi i32 [ %num_vport_dests.0155, %cleanup ], [ %num_vport_dests.1.ph, %if.end26.revert_changes_crit_edge ], [ %num_vport_dests.1.ph, %for.end.revert_changes_crit_edge ], [ 0, %mlx5_eswitch_termtbl_actions_move.exit.revert_changes_crit_edge ]
  %157 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %term_tbl_act, align 4
  %and.i128 = and i32 %158, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %revert_changes.mlx5_eswitch_termtbl_actions_move.exit142_crit_edge, label %if.then.i136

revert_changes.mlx5_eswitch_termtbl_actions_move.exit142_crit_edge: ; preds = %revert_changes
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_eswitch_termtbl_actions_move.exit142

if.then.i136:                                     ; preds = %revert_changes
  %and2.i130 = and i32 %158, -257
  %159 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %and2.i130, ptr %term_tbl_act, align 4
  %160 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flow_act, align 4
  %or.i131 = or i32 %161, 256
  store i32 %or.i131, ptr %flow_act, align 4
  %vlan.i132 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 5
  %vlan4.i133 = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5
  %162 = call ptr @memcpy(ptr %vlan.i132, ptr %vlan4.i133, i32 6)
  %163 = call ptr @memset(ptr %vlan4.i133, i32 0, i32 6)
  %and9.i134 = and i32 %158, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i134)
  %tobool10.not.i135 = icmp eq i32 %and9.i134, 0
  br i1 %tobool10.not.i135, label %if.then.i136.mlx5_eswitch_termtbl_actions_move.exit142_crit_edge, label %if.then11.i141

if.then.i136.mlx5_eswitch_termtbl_actions_move.exit142_crit_edge: ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_eswitch_termtbl_actions_move.exit142

if.then11.i141:                                   ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #10
  %and13.i137 = and i32 %158, -2305
  %164 = ptrtoint ptr %term_tbl_act to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %and13.i137, ptr %term_tbl_act, align 4
  %or15.i138 = or i32 %161, 2304
  %165 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or15.i138, ptr %flow_act, align 4
  %arrayidx17.i139 = getelementptr %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 5, i32 1
  %arrayidx19.i140 = getelementptr inbounds %struct.mlx5_flow_act, ptr %term_tbl_act, i32 0, i32 5, i32 1
  %166 = call ptr @memcpy(ptr %arrayidx17.i139, ptr %arrayidx19.i140, i32 6)
  %167 = call ptr @memset(ptr %arrayidx19.i140, i32 0, i32 6)
  br label %mlx5_eswitch_termtbl_actions_move.exit142

mlx5_eswitch_termtbl_actions_move.exit142:        ; preds = %if.then11.i141, %if.then.i136.mlx5_eswitch_termtbl_actions_move.exit142_crit_edge, %revert_changes.mlx5_eswitch_termtbl_actions_move.exit142_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vport_dests.0151)
  %cmp37165 = icmp sgt i32 %num_vport_dests.0151, 0
  br i1 %cmp37165, label %mlx5_eswitch_termtbl_actions_move.exit142.for.body38_crit_edge, label %mlx5_eswitch_termtbl_actions_move.exit142.for.end65_crit_edge

mlx5_eswitch_termtbl_actions_move.exit142.for.end65_crit_edge: ; preds = %mlx5_eswitch_termtbl_actions_move.exit142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

mlx5_eswitch_termtbl_actions_move.exit142.for.body38_crit_edge: ; preds = %mlx5_eswitch_termtbl_actions_move.exit142
  br label %for.body38

for.body38:                                       ; preds = %for.end62.for.body38_crit_edge, %mlx5_eswitch_termtbl_actions_move.exit142.for.body38_crit_edge
  %curr_dest.0166 = phi i32 [ %inc64, %for.end62.for.body38_crit_edge ], [ 0, %mlx5_eswitch_termtbl_actions_move.exit142.for.body38_crit_edge ]
  %termtbl42 = getelementptr %struct.mlx5_esw_flow_attr, ptr %attr, i32 0, i32 11, i32 %curr_dest.0166, i32 4
  %168 = ptrtoint ptr %termtbl42 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %termtbl42, align 4
  br i1 %cmp153, label %for.body45.lr.ph, label %for.body38.for.end62_crit_edge

for.body38.for.end62_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end62

for.body45.lr.ph:                                 ; preds = %for.body38
  %termtbl47 = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %termtbl47 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %termtbl47, align 4
  br label %for.body45

for.body45:                                       ; preds = %for.inc60.for.body45_crit_edge, %for.body45.lr.ph
  %i.1164 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc61, %for.inc60.for.body45_crit_edge ]
  %172 = getelementptr %struct.mlx5_flow_destination, ptr %dest, i32 %i.1164, i32 1
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %cmp48.not = icmp eq ptr %174, %171
  br i1 %cmp48.not, label %if.end50, label %for.inc60

if.end50:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46 = getelementptr %struct.mlx5_flow_destination, ptr %dest, i32 %i.1164
  %175 = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %169, i32 0, i32 3, i32 1
  %176 = call ptr @memset(ptr %arrayidx46, i32 0, i32 16)
  %177 = ptrtoint ptr %175 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %175, align 4
  %179 = ptrtoint ptr %172 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %172, align 4
  %vhca_id = getelementptr inbounds %struct.mlx5_termtbl_handle, ptr %169, i32 0, i32 3, i32 1, i32 0, i32 1
  %180 = ptrtoint ptr %vhca_id to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %vhca_id, align 2
  %vhca_id59 = getelementptr inbounds %struct.anon.141, ptr %172, i32 0, i32 1
  %182 = ptrtoint ptr %vhca_id59 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %vhca_id59, align 2
  call void @mlx5_eswitch_termtbl_put(ptr noundef %esw, ptr noundef %169)
  br label %for.end62

for.inc60:                                        ; preds = %for.body45
  %inc61 = add nuw nsw i32 %i.1164, 1
  %exitcond171.not = icmp eq i32 %inc61, %num_dest
  br i1 %exitcond171.not, label %for.inc60.for.end62_crit_edge, label %for.inc60.for.body45_crit_edge

for.inc60.for.body45_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45

for.inc60.for.end62_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end62

for.end62:                                        ; preds = %for.inc60.for.end62_crit_edge, %if.end50, %for.body38.for.end62_crit_edge
  %inc64 = add nuw nsw i32 %curr_dest.0166, 1
  %exitcond172.not = icmp eq i32 %inc64, %num_vport_dests.0151
  br i1 %exitcond172.not, label %for.end62.for.end65_crit_edge, label %for.end62.for.body38_crit_edge

for.end62.for.body38_crit_edge:                   ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38

for.end62.for.end65_crit_edge:                    ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.end65:                                        ; preds = %for.end62.for.end65_crit_edge, %mlx5_eswitch_termtbl_actions_move.exit142.for.end65_crit_edge
  %call66 = call ptr @mlx5_add_flow_rules(ptr noundef %fdb, ptr noundef %spec, ptr noundef %flow_act, ptr noundef %dest, i32 noundef %num_dest) #8
  br label %cleanup67

cleanup67:                                        ; preds = %for.end65, %if.end26.cleanup67_crit_edge
  %retval.0 = phi ptr [ %call66, %for.end65 ], [ %call32, %if.end26.cleanup67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %term_tbl_act) #8
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c", i32 276, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_eswitch_add_termtbl_rule._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_eswitch_add_termtbl_rule._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c", i32 72, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5_eswitch_termtbl_create._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mlx5_eswitch_termtbl_create._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c", i32 88, i32 3}
!15 = !{ptr @mlx5_eswitch_termtbl_create._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5_eswitch_termtbl_create._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c", i32 96, i32 3}
!19 = !{ptr @mlx5_eswitch_termtbl_create._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlx5_eswitch_termtbl_create._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads_termtbl.c", i32 104, i32 3}
!23 = !{ptr @mlx5_eswitch_termtbl_create._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5_eswitch_termtbl_create._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
