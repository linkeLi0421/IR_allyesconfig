; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_mr_table_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp_mr_vif_ops = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlxsw_sp_mr_route_info = type { i32, i16, ptr, i32, i16 }
%struct.mlxsw_sp_mr_route_params = type { %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_info, i32 }
%struct.mlxsw_sp_mr_route_key = type { i32, i32, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.mlxsw_sp_mr_table = type { %struct.list_head, i32, ptr, i32, [32 x %struct.mlxsw_sp_mr_vif], %struct.list_head, %struct.mutex, %struct.rhashtable, ptr, [0 x i8] }
%struct.mlxsw_sp_mr_vif = type { ptr, ptr, i32, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.mlxsw_sp_mr_route = type { %struct.list_head, %struct.rhash_head, %struct.mlxsw_sp_mr_route_key, i32, i16, ptr, ptr, ptr, %struct.list_head, %struct.mlxsw_sp_mr_route_vif_entry }
%struct.rhash_head = type { ptr }
%struct.mlxsw_sp_mr_route_vif_entry = type { %struct.list_head, %struct.list_head, ptr, ptr }
%struct.mr_mfc = type { %struct.rhlist_head, i16, i32, %union.anon.175, %struct.list_head, %struct.callback_head, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%union.anon.175 = type { %struct.anon.177 }
%struct.anon.177 = type { i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.mlxsw_sp_mr_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_mr = type { ptr, ptr, %struct.delayed_work, %struct.list_head, %struct.mutex, [0 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.mfc_cache = type { %struct.mr_mfc, %union.anon.183 }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type { i32, i32 }
%struct.mfc6_cache = type { %struct.mr_mfc, %union.anon.185 }
%union.anon.185 = type { %struct.anon.186 }
%struct.anon.186 = type { %struct.in6_addr, %struct.in6_addr }

@mlxsw_sp_mr_route_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 72, i16 12, i16 8, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_route_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 418, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Offloading proxy routes is not supported.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlxsw_sp_mr_route_add\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_route_add._entry_ptr = internal global ptr @mlxsw_sp_mr_route_add._entry, section ".printk_index", align 4
@mlxsw_sp_mr_table_ops_arr = internal global { [2 x %struct.mlxsw_sp_mr_table_ops], [40 x i8] } { [2 x %struct.mlxsw_sp_mr_table_ops] [%struct.mlxsw_sp_mr_table_ops { ptr @mlxsw_sp_mr_route4_validate, ptr @mlxsw_sp_mr_route4_key, ptr @mlxsw_sp_mr_route4_starg }, %struct.mlxsw_sp_mr_table_ops { ptr @mlxsw_sp_mr_route6_validate, ptr @mlxsw_sp_mr_route6_key, ptr @mlxsw_sp_mr_route6_starg }], [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_table_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&mr_table->route_list_lock\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_vif_ops_arr = internal global { [2 x %struct.mlxsw_sp_mr_vif_ops], [24 x i8] } { [2 x %struct.mlxsw_sp_mr_vif_ops] [%struct.mlxsw_sp_mr_vif_ops { ptr @mlxsw_sp_mr_vif4_is_regular }, %struct.mlxsw_sp_mr_vif_ops { ptr @mlxsw_sp_mr_vif6_is_regular }], [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mr->table_list_lock\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&mr->stats_update_dw)->work)\00", [47 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&mr->stats_update_dw)->timer\00", [33 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__mlxsw_sp_mr_route_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_mr_route4_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.25, ptr @.str, i32 789, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxsw_sp_mr_route4_validate\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_route4_validate._entry_ptr = internal global ptr @mlxsw_sp_mr_route4_validate._entry, section ".printk_index", align 4
@mlxsw_sp_mr_route6_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.26, ptr @.str, i32 836, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxsw_sp_mr_route6_validate\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_mr_route6_validate._entry_ptr = internal global ptr @mlxsw_sp_mr_route6_validate._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.27 = private unnamed_addr constant [28 x i8] c"mlxsw_sp_mr_route_ht_params\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 93, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 408, i32 7 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 417, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [26 x i8] c"mlxsw_sp_mr_table_ops_arr\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 881, i32 23 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 924, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"mlxsw_sp_mr_vif_ops_arr\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 871, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1050, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1057, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 695, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 594, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 723, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 755, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 788, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 835, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @mlxsw_sp_mr_route4_validate._entry, ptr @mlxsw_sp_mr_route4_validate._entry_ptr, ptr @mlxsw_sp_mr_route6_validate._entry, ptr @mlxsw_sp_mr_route6_validate._entry_ptr, ptr @mlxsw_sp_mr_route_add._entry, ptr @mlxsw_sp_mr_route_add._entry_ptr, ptr @mlxsw_sp_mr_route_ht_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlxsw_sp_mr_table_ops_arr, ptr @mlxsw_sp_mr_table_create.__key, ptr @.str.5, ptr @mlxsw_sp_mr_vif_ops_arr, ptr @mlxsw_sp_mr_init.__key, ptr @.str.6, ptr @mlxsw_sp_mr_init.__key.7, ptr @.str.8, ptr @mlxsw_sp_mr_init.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_route_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_route_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_table_ops_arr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_table_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_vif_ops_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_route4_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_route6_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_mr_route_add(ptr noundef %mr_table, ptr noundef %mfc, i1 noundef zeroext %replace) local_unnamed_addr #0 align 64 {
entry:
  %route_info.i = alloca %struct.mlxsw_sp_mr_route_info, align 4
  %route_params.i = alloca %struct.mlxsw_sp_mr_route_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 8
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 %3(ptr noundef %mr_table, ptr noundef %mfc) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %evif_list.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %evif_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %evif_list.i, ptr %evif_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %evif_list.i, ptr %prev.i.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %min_mtu.i, align 8
  %refcount.i.i = getelementptr inbounds %struct.mr_mfc, ptr %mfc, i32 0, i32 3, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #14, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !85

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.mr_cache_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !86

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.mr_cache_hold.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mr_cache_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %mr_cache_hold.exit.i

mr_cache_hold.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.mr_cache_hold.exit.i_crit_edge
  %mfc2.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %mfc2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mfc, ptr %mfc2.i, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %key_create.i = getelementptr inbounds %struct.mlxsw_sp_mr_table_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %key_create.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key_create.i, align 4
  %key.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 2
  tail call void %14(ptr noundef %mr_table, ptr noundef %key.i, ptr noundef %mfc) #14
  %mr_table4.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %mr_table4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mr_table, ptr %mr_table4.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mr_cache_hold.exit.i
  %i.0115.i = phi i32 [ 0, %mr_cache_hold.exit.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mr_mfc, ptr %mfc, i32 0, i32 3, i32 0, i32 7, i32 %i.0115.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp5.not.i = icmp eq i8 %17, -1
  br i1 %cmp5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  %arrayidx8.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %i.0115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 24) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %err35.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then7.i
  %mr_route1.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %call7.i.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %mr_route1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %mr_route1.i.i, align 4
  %mr_vif2.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %call7.i.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %mr_vif2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx8.i, ptr %mr_vif2.i.i, align 8
  %route_node.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %call7.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %route_node.i.i, ptr noundef %22, ptr noundef %evif_list.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_add_tail.exit.i.i_crit_edge

if.end.i.i.list_add_tail.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %route_node.i.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %route_node.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %evif_list.i, ptr %route_node.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %route_node.i.i, ptr %22, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_add_tail.exit.i.i_crit_edge
  %route_evif_list.i.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %i.0115.i, i32 3
  %prev.i9.i.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %i.0115.i, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i9.i.i, align 4
  %call.i.i10.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %28, ptr noundef %route_evif_list.i.i) #14
  br i1 %call.i.i10.i.i, label %if.end.i.i12.i.i, label %list_add_tail.exit.i.i.if.end12.i_crit_edge

list_add_tail.exit.i.i.if.end12.i_crit_edge:      ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12.i

if.end.i.i12.i.i:                                 ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i.i, ptr %prev.i9.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %route_evif_list.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i11.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i11.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i.i.i, ptr %28, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i.i12.i.i, %list_add_tail.exit.i.i.if.end12.i_crit_edge
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx8.i, align 4
  %tobool15.not.i = icmp eq ptr %34, null
  br i1 %tobool15.not.i, label %if.end12.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mtu.i, align 4
  %37 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %min_mtu.i, align 8
  %conv20.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv20.i)
  %cmp21.i = icmp ult i32 %36, %conv20.i
  br i1 %cmp21.i, label %if.then23.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv28.i = trunc i32 %36 to i16
  %39 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv28.i, ptr %min_mtu.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end12.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %mfc_parent.i = getelementptr inbounds %struct.mr_mfc, ptr %mfc, i32 0, i32 1
  %40 = ptrtoint ptr %mfc_parent.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mfc_parent.i, align 4
  %idxprom.i = zext i16 %41 to i32
  %arrayidx33.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %idxprom.i
  %ivif.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 9
  %mr_route1.i99.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 9, i32 3
  %42 = ptrtoint ptr %mr_route1.i99.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i.i, ptr %mr_route1.i99.i, align 4
  %mr_vif3.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %mr_vif3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx33.i, ptr %mr_vif3.i.i, align 8
  %route_ivif_list.i.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %idxprom.i, i32 4
  %prev.i.i100.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %idxprom.i, i32 4, i32 1
  %44 = ptrtoint ptr %prev.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i100.i, align 4
  %call.i.i.i101.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ivif.i.i, ptr noundef %45, ptr noundef %route_ivif_list.i.i) #14
  br i1 %call.i.i.i101.i, label %if.end.i.i.i103.i, label %for.end.i.mlxsw_sp_mr_route_create.exit_crit_edge

for.end.i.mlxsw_sp_mr_route_create.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_route_create.exit

if.end.i.i.i103.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %prev.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ivif.i.i, ptr %prev.i.i100.i, align 4
  %47 = ptrtoint ptr %ivif.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %route_ivif_list.i.i, ptr %ivif.i.i, align 8
  %prev3.i.i.i102.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 9, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i102.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %ivif.i.i, ptr %45, align 4
  br label %mlxsw_sp_mr_route_create.exit

err35.i:                                          ; preds = %if.then7.i
  %call.i.i.i.i.i.i106.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #14
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #14, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %err35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i107.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i107.i, label %if.end5.i.i.i.i.i.mr_cache_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.mr_cache_put.exit.i_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mr_cache_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #14
  br label %mr_cache_put.exit.i

if.then.i.i:                                      ; preds = %err35.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !89
  %rcu.i.i = getelementptr inbounds %struct.mr_mfc, ptr %mfc, i32 0, i32 5
  %free.i.i = getelementptr inbounds %struct.mr_mfc, ptr %mfc, i32 0, i32 6
  %51 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %free.i.i, align 4
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef %52) #14
  br label %mr_cache_put.exit.i

mr_cache_put.exit.i:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mr_cache_put.exit.i_crit_edge
  %53 = ptrtoint ptr %evif_list.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %evif_list.i, align 8
  %cmp45.not117.i = icmp eq ptr %54, %evif_list.i
  br i1 %cmp45.not117.i, label %mr_cache_put.exit.i.for.end54.i_crit_edge, label %mr_cache_put.exit.i.for.body47.i_crit_edge

mr_cache_put.exit.i.for.body47.i_crit_edge:       ; preds = %mr_cache_put.exit.i
  br label %for.body47.i

mr_cache_put.exit.i.for.end54.i_crit_edge:        ; preds = %mr_cache_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end54.i

for.body47.i:                                     ; preds = %mlxsw_sp_mr_route_evif_unlink.exit.i.for.body47.i_crit_edge, %mr_cache_put.exit.i.for.body47.i_crit_edge
  %.pn.in118.i = phi ptr [ %.pn.i, %mlxsw_sp_mr_route_evif_unlink.exit.i.for.body47.i_crit_edge ], [ %54, %mr_cache_put.exit.i.for.body47.i_crit_edge ]
  %rve.0.i = getelementptr i8, ptr %.pn.in118.i, i32 -8
  %55 = ptrtoint ptr %.pn.in118.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn.in118.i, align 4
  %call.i.i.i110.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in118.i) #14
  br i1 %call.i.i.i110.i, label %if.end.i.i.i111.i, label %for.body47.i.list_del.exit.i.i_crit_edge

for.body47.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i.i111.i:                                ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in118.i, i32 4
  %56 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i.i, align 4
  %58 = ptrtoint ptr %.pn.in118.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %.pn.in118.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i111.i, %for.body47.i.list_del.exit.i.i_crit_edge
  %62 = ptrtoint ptr %.pn.in118.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in118.i, align 4
  %prev.i.i112.i = getelementptr i8, ptr %.pn.in118.i, i32 4
  %63 = ptrtoint ptr %prev.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i112.i, align 4
  %call.i.i3.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rve.0.i) #14
  br i1 %call.i.i3.i.i, label %if.end.i.i6.i.i, label %list_del.exit.i.i.mlxsw_sp_mr_route_evif_unlink.exit.i_crit_edge

list_del.exit.i.i.mlxsw_sp_mr_route_evif_unlink.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_route_evif_unlink.exit.i

if.end.i.i6.i.i:                                  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i4.i.i = getelementptr i8, ptr %.pn.in118.i, i32 -4
  %64 = ptrtoint ptr %prev.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i4.i.i, align 4
  %66 = ptrtoint ptr %rve.0.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rve.0.i, align 4
  %prev1.i.i.i5.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i5.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %mlxsw_sp_mr_route_evif_unlink.exit.i

mlxsw_sp_mr_route_evif_unlink.exit.i:             ; preds = %if.end.i.i6.i.i, %list_del.exit.i.i.mlxsw_sp_mr_route_evif_unlink.exit.i_crit_edge
  %70 = ptrtoint ptr %rve.0.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %rve.0.i, align 4
  %prev.i7.i.i = getelementptr i8, ptr %.pn.in118.i, i32 -4
  %71 = ptrtoint ptr %prev.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i.i, align 4
  tail call void @kfree(ptr noundef %rve.0.i) #14
  %cmp45.not.i = icmp eq ptr %.pn.i, %evif_list.i
  br i1 %cmp45.not.i, label %mlxsw_sp_mr_route_evif_unlink.exit.i.for.end54.i_crit_edge, label %mlxsw_sp_mr_route_evif_unlink.exit.i.for.body47.i_crit_edge

mlxsw_sp_mr_route_evif_unlink.exit.i.for.body47.i_crit_edge: ; preds = %mlxsw_sp_mr_route_evif_unlink.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body47.i

mlxsw_sp_mr_route_evif_unlink.exit.i.for.end54.i_crit_edge: ; preds = %mlxsw_sp_mr_route_evif_unlink.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end54.i

for.end54.i:                                      ; preds = %mlxsw_sp_mr_route_evif_unlink.exit.i.for.end54.i_crit_edge, %mr_cache_put.exit.i.for.end54.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %if.then3

mlxsw_sp_mr_route_create.exit:                    ; preds = %if.end.i.i.i103.i, %for.end.i.mlxsw_sp_mr_route_create.exit_crit_edge
  %call34.i = tail call fastcc i32 @mlxsw_sp_mr_route_action(ptr noundef nonnull %call7.i.i.i) #14
  %route_action.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %route_action.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call34.i, ptr %route_action.i, align 4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlxsw_sp_mr_route_create.exit.if.then3_crit_edge, label %if.end5

mlxsw_sp_mr_route_create.exit.if.then3_crit_edge: ; preds = %mlxsw_sp_mr_route_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.then3:                                         ; preds = %mlxsw_sp_mr_route_create.exit.if.then3_crit_edge, %for.end54.i, %if.end.if.then3_crit_edge
  %retval.0.i164 = phi ptr [ %call7.i.i.i, %mlxsw_sp_mr_route_create.exit.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end54.i ], [ inttoptr (i32 -12 to ptr), %if.end.if.then3_crit_edge ]
  %73 = ptrtoint ptr %retval.0.i164 to i32
  br label %cleanup

if.end5:                                          ; preds = %mlxsw_sp_mr_route_create.exit
  %route_ht = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7
  %call6 = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %route_ht, ptr noundef %key.i, [7 x i32] [i32 72, i32 786440, i32 0, i32 256, i32 0, i32 0, i32 0])
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %replace, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  br i1 %tobool8.not, label %do.end, label %if.end33, !prof !85

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef null) #14
  br label %err_duplicate_route

if.end33:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %route_priv = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call6, i32 0, i32 6
  %74 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %route_priv, align 4
  %route_priv34 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 6
  %76 = ptrtoint ptr %route_priv34 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %route_priv34, align 8
  br label %if.end41

if.else:                                          ; preds = %if.end5
  br i1 %tobool8.not, label %if.else.if.end41_crit_edge, label %do.end39

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

do.end39:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %77 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mlxsw_sp, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.1) #18
  br label %err_duplicate_route

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %if.end33
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %83 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mlxsw_sp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %route_info.i) #14
  %85 = getelementptr inbounds i8, ptr %route_info.i, i32 4
  %86 = call ptr @memset(ptr %85, i32 255, i32 16)
  %mr2.i = getelementptr inbounds %struct.mlxsw_sp, ptr %84, i32 0, i32 11
  %87 = ptrtoint ptr %mr2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mr2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3264, i32 noundef 64) #17
  %tobool.not.i.i120 = icmp eq ptr %call7.i.i.i.i119, null
  br i1 %tobool.not.i.i120, label %mlxsw_sp_mr_route_write.exit.thread, label %if.end.i.i121

mlxsw_sp_mr_route_write.exit.thread:              ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %route_info.i) #14
  br label %err_duplicate_route

if.end.i.i121:                                    ; preds = %if.end41
  %90 = ptrtoint ptr %evif_list.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn9.i.i = load ptr, ptr %evif_list.i, align 8
  %cmp.not10.i.i = icmp eq ptr %.pn9.i.i, %evif_list.i
  br i1 %cmp.not10.i.i, label %if.end.i.i121.for.end.i.i_crit_edge, label %if.end.i.i121.for.body.i.i_crit_edge

if.end.i.i121.for.body.i.i_crit_edge:             ; preds = %if.end.i.i121
  br label %for.body.i.i

if.end.i.i121.for.end.i.i_crit_edge:              ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i121.for.body.i.i_crit_edge
  %.pn12.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn9.i.i, %if.end.i.i121.for.body.i.i_crit_edge ]
  %erif.011.i.i = phi i16 [ %erif.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i121.for.body.i.i_crit_edge ]
  %mr_vif.i.i = getelementptr i8, ptr %.pn12.i.i, i32 8
  %91 = ptrtoint ptr %mr_vif.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mr_vif.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %call.i.i.i = tail call zeroext i1 %96(ptr noundef %92) #14
  br i1 %call.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %92, align 4
  %tobool.not.i.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, label %mlxsw_sp_mr_vif_valid.exit.i.i

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

mlxsw_sp_mr_vif_valid.exit.i.i:                   ; preds = %land.lhs.true.i.i.i
  %rif.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %92, i32 0, i32 1
  %99 = ptrtoint ptr %rif.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rif.i.i.i, align 4
  %tobool1.i.not.i.i = icmp eq ptr %100, null
  br i1 %tobool1.i.not.i.i, label %mlxsw_sp_mr_vif_valid.exit.i.i.for.inc.i.i_crit_edge, label %if.then3.i.i

mlxsw_sp_mr_vif_valid.exit.i.i.for.inc.i.i_crit_edge: ; preds = %mlxsw_sp_mr_vif_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then3.i.i:                                     ; preds = %mlxsw_sp_mr_vif_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %mr_vif.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mr_vif.i.i, align 4
  %rif.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %rif.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rif.i.i, align 4
  %call5.i.i = tail call zeroext i16 @mlxsw_sp_rif_index(ptr noundef %104) #14
  %inc.i.i = add i16 %erif.011.i.i, 1
  %idxprom.i.i = zext i16 %erif.011.i.i to i32
  %arrayidx.i.i = getelementptr i16, ptr %call7.i.i.i.i119, i32 %idxprom.i.i
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %call5.i.i, ptr %arrayidx.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then3.i.i, %mlxsw_sp_mr_vif_valid.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %erif.1.i.i = phi i16 [ %inc.i.i, %if.then3.i.i ], [ %erif.011.i.i, %mlxsw_sp_mr_vif_valid.exit.i.i.for.inc.i.i_crit_edge ], [ %erif.011.i.i, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge ], [ %erif.011.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %106 = ptrtoint ptr %.pn12.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pn.i.i = load ptr, ptr %.pn12.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %evif_list.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i121.for.end.i.i_crit_edge
  %erif.0.lcssa.i.i = phi i16 [ 0, %if.end.i.i121.for.end.i.i_crit_edge ], [ %erif.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %107 = ptrtoint ptr %mr_vif3.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mr_vif3.i.i, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i1.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %call.i2.i.i = tail call zeroext i1 %112(ptr noundef %108) #14
  br i1 %call.i2.i.i, label %land.lhs.true.i4.i.i, label %for.end.i.i.if.end.i122_crit_edge

for.end.i.i.if.end.i122_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i122

land.lhs.true.i4.i.i:                             ; preds = %for.end.i.i
  %113 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %108, align 4
  %tobool.not.i3.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i3.i.i, label %land.lhs.true.i4.i.i.if.end.i122_crit_edge, label %mlxsw_sp_mr_vif_valid.exit8.i.i

land.lhs.true.i4.i.i.if.end.i122_crit_edge:       ; preds = %land.lhs.true.i4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i122

mlxsw_sp_mr_vif_valid.exit8.i.i:                  ; preds = %land.lhs.true.i4.i.i
  %rif.i5.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %108, i32 0, i32 1
  %115 = ptrtoint ptr %rif.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rif.i5.i.i, align 4
  %tobool1.i6.not.i.i = icmp eq ptr %116, null
  br i1 %tobool1.i6.not.i.i, label %mlxsw_sp_mr_vif_valid.exit8.i.i.if.end.i122_crit_edge, label %if.then14.i.i

mlxsw_sp_mr_vif_valid.exit8.i.i.if.end.i122_crit_edge: ; preds = %mlxsw_sp_mr_vif_valid.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i122

if.then14.i.i:                                    ; preds = %mlxsw_sp_mr_vif_valid.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %117 = ptrtoint ptr %mr_vif3.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mr_vif3.i.i, align 8
  %rif17.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %rif17.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rif17.i.i, align 4
  %call18.i.i = tail call zeroext i16 @mlxsw_sp_rif_index(ptr noundef %120) #14
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.then14.i.i, %mlxsw_sp_mr_vif_valid.exit8.i.i.if.end.i122_crit_edge, %land.lhs.true.i4.i.i.if.end.i122_crit_edge, %for.end.i.i.if.end.i122_crit_edge
  %irif_index.0.i.i = phi i16 [ %call18.i.i, %if.then14.i.i ], [ 0, %mlxsw_sp_mr_vif_valid.exit8.i.i.if.end.i122_crit_edge ], [ 0, %land.lhs.true.i4.i.i.if.end.i122_crit_edge ], [ 0, %for.end.i.i.if.end.i122_crit_edge ]
  %121 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %irif_index.0.i.i, ptr %85, align 4
  %erif_indices21.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, ptr %route_info.i, i32 0, i32 2
  %122 = ptrtoint ptr %erif_indices21.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call7.i.i.i.i119, ptr %erif_indices21.i.i, align 4
  %123 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %min_mtu.i, align 8
  %min_mtu22.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, ptr %route_info.i, i32 0, i32 4
  %125 = ptrtoint ptr %min_mtu22.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %min_mtu22.i.i, align 4
  %126 = ptrtoint ptr %route_action.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %route_action.i, align 4
  %128 = ptrtoint ptr %route_info.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %route_info.i, align 4
  %conv.i.i = zext i16 %erif.0.lcssa.i.i to i32
  %erif_num.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, ptr %route_info.i, i32 0, i32 3
  %129 = ptrtoint ptr %erif_num.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %conv.i.i, ptr %erif_num.i.i, align 4
  br i1 %replace, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i122
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %route_params.i) #14
  %130 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %88, align 4
  %route_priv_size.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %route_priv_size.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %route_priv_size.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %133, i32 noundef 3520) #19
  %route_priv.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 6
  %134 = ptrtoint ptr %route_priv.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call9.i.i.i, ptr %route_priv.i, align 8
  %tobool7.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool7.not.i, label %if.then4.i.cleanup.i_crit_edge, label %if.end9.i

if.then4.i.cleanup.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end9.i:                                        ; preds = %if.then4.i
  %135 = call ptr @memcpy(ptr %route_params.i, ptr %key.i, i32 72)
  %value.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %route_params.i, i32 0, i32 1
  %136 = call ptr @memcpy(ptr %value.i, ptr %route_info.i, i32 20)
  %137 = ptrtoint ptr %mr_table4.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mr_table4.i, align 4
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %138, i32 0, i32 8
  %139 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ops.i.i, align 4
  %is_route_starg.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table_ops, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %is_route_starg.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %is_route_starg.i.i, align 4
  %call.i.i = tail call zeroext i1 %142(ptr noundef %138, ptr noundef %call7.i.i.i) #14
  %cond.i.i = zext i1 %call.i.i to i32
  %prio.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %route_params.i, i32 0, i32 2
  %143 = ptrtoint ptr %prio.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %cond.i.i, ptr %prio.i, align 4
  %144 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %88, align 4
  %route_create.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %route_create.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %route_create.i, align 4
  %priv.i = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %88, i32 0, i32 5
  %148 = ptrtoint ptr %route_priv.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %route_priv.i, align 8
  %call14.i = call i32 %147(ptr noundef %84, ptr noundef %priv.i, ptr noundef %149, ptr noundef nonnull %route_params.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i125 = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i125, label %if.end9.i.cleanup.i_crit_edge, label %if.then16.i

if.end9.i.cleanup.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.then16.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %150 = ptrtoint ptr %route_priv.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %route_priv.i, align 8
  call void @kfree(ptr noundef %151) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then16.i, %if.end9.i.cleanup.i_crit_edge, %if.then4.i.cleanup.i_crit_edge
  %err.0.i = phi i32 [ -12, %if.then4.i.cleanup.i_crit_edge ], [ %call14.i, %if.then16.i ], [ 0, %if.end9.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %route_params.i) #14
  br label %mlxsw_sp_mr_route_write.exit

if.else.i:                                        ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #16
  %152 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %88, align 4
  %route_update.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %153, i32 0, i32 4
  %154 = ptrtoint ptr %route_update.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %route_update.i, align 4
  %route_priv20.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 6
  %156 = ptrtoint ptr %route_priv20.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %route_priv20.i, align 8
  %call21.i = call i32 %155(ptr noundef %84, ptr noundef %157, ptr noundef nonnull %route_info.i) #14
  br label %mlxsw_sp_mr_route_write.exit

mlxsw_sp_mr_route_write.exit:                     ; preds = %if.else.i, %cleanup.i
  %err.1.i = phi i32 [ %call21.i, %if.else.i ], [ %err.0.i, %cleanup.i ]
  %158 = ptrtoint ptr %erif_indices21.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %erif_indices21.i.i, align 4
  call void @kfree(ptr noundef %159) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %route_info.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool44.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool44.not, label %if.end46, label %mlxsw_sp_mr_route_write.exit.err_duplicate_route_crit_edge

mlxsw_sp_mr_route_write.exit.err_duplicate_route_crit_edge: ; preds = %mlxsw_sp_mr_route_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_duplicate_route

if.end46:                                         ; preds = %mlxsw_sp_mr_route_write.exit
  %route_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %route_list_lock, i32 noundef 0) #14
  %route_list = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 5, i32 1
  %160 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %prev.i, align 4
  %call.i.i127 = call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i.i, ptr noundef %161, ptr noundef %route_list) #14
  br i1 %call.i.i127, label %if.end.i.i128, label %if.end46.list_add_tail.exit_crit_edge

if.end46.list_add_tail.exit_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i128:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %162 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %163 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %route_list, ptr %call7.i.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %164 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %161, ptr %prev3.i.i, align 4
  %165 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %call7.i.i.i, ptr %161, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i128, %if.end46.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %route_list_lock) #14
  %ht_node = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 1
  %166 = call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i.i.i.i = and i32 %166, -16384
  %167 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i129 = add i32 %169, 1
  store volatile i32 %add.i.i.i.i.i129, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !90
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i130 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i130, label %list_add_tail.exit.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i132

list_add_tail.exit.rcu_read_lock.exit.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i132:                           ; preds = %list_add_tail.exit
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i131 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i131, label %land.lhs.true.i.i.i132.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i132.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i132
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i133

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i133:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i133, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i132.rcu_read_lock.exit.i.i_crit_edge, %list_add_tail.exit.rcu_read_lock.exit.i.i_crit_edge
  %170 = ptrtoint ptr %route_ht to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile ptr, ptr %route_ht, align 4
  %call.i.i134 = call i32 @lockdep_rht_mutex_is_held(ptr noundef %route_ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %tobool.not.i.i135 = icmp eq i32 %call.i.i134, 0
  br i1 %tobool.not.i.i135, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i136 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i136)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i136, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i137

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

if.then.i.i137:                                   ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 715, ptr noundef nonnull @.str.14) #14
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i137, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7, i32 3, i32 3
  %172 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %173 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ht_node, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 12
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %171, i32 0, i32 2
  %174 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %175, -559038665
  %176 = sub nsw i32 68, %conv.i.i.i.i
  %177 = sub nsw i32 80, %conv.i.i.i.i
  br label %while.body.i.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %do.end12.i.i
  %c.0152.i.i.i.i.i.i = phi i32 [ %xor26.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i, %do.end12.i.i ]
  %b.0151.i.i.i.i.i.i = phi i32 [ %add27.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i, %do.end12.i.i ]
  %a.0150.i.i.i.i.i.i = phi i32 [ %add23.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %add1.i.i.i.i.i.i, %do.end12.i.i ]
  %k.addr.0149.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %do.end12.i.i ]
  %length.addr.0148.i.i.i.i.i.i = phi i32 [ %sub28.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ 18, %do.end12.i.i ]
  %178 = ptrtoint ptr %k.addr.0149.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %k.addr.0149.i.i.i.i.i.i, align 4
  %add2.i.i.i.i.i.i = add i32 %179, %a.0150.i.i.i.i.i.i
  %arrayidx3.i.i.i.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i.i.i, i32 1
  %180 = ptrtoint ptr %arrayidx3.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx3.i.i.i.i.i.i, align 4
  %add4.i.i.i.i.i.i = add i32 %181, %b.0151.i.i.i.i.i.i
  %arrayidx5.i.i.i.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i.i.i, i32 2
  %182 = ptrtoint ptr %arrayidx5.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx5.i.i.i.i.i.i, align 4
  %add6.i.i.i.i.i.i = add i32 %183, %c.0152.i.i.i.i.i.i
  %sub.i.i.i.i.i.i139 = sub i32 %add2.i.i.i.i.i.i, %add6.i.i.i.i.i.i
  %or.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add6.i.i.i.i.i.i, i32 %add6.i.i.i.i.i.i, i32 4) #14
  %xor.i.i.i.i.i.i = xor i32 %sub.i.i.i.i.i.i139, %or.i.i.i.i.i.i.i
  %add7.i.i.i.i.i.i = add i32 %add6.i.i.i.i.i.i, %add4.i.i.i.i.i.i
  %sub8.i.i.i.i.i.i = sub i32 %add4.i.i.i.i.i.i, %xor.i.i.i.i.i.i
  %or.i135.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor.i.i.i.i.i.i, i32 %xor.i.i.i.i.i.i, i32 6) #14
  %xor10.i.i.i.i.i.i = xor i32 %sub8.i.i.i.i.i.i, %or.i135.i.i.i.i.i.i
  %add11.i.i.i.i.i.i = add i32 %xor.i.i.i.i.i.i, %add7.i.i.i.i.i.i
  %sub12.i.i.i.i.i.i = sub i32 %add7.i.i.i.i.i.i, %xor10.i.i.i.i.i.i
  %or.i136.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor10.i.i.i.i.i.i, i32 %xor10.i.i.i.i.i.i, i32 8) #14
  %xor14.i.i.i.i.i.i = xor i32 %sub12.i.i.i.i.i.i, %or.i136.i.i.i.i.i.i
  %add15.i.i.i.i.i.i = add i32 %xor10.i.i.i.i.i.i, %add11.i.i.i.i.i.i
  %sub16.i.i.i.i.i.i = sub i32 %add11.i.i.i.i.i.i, %xor14.i.i.i.i.i.i
  %or.i137.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor14.i.i.i.i.i.i, i32 %xor14.i.i.i.i.i.i, i32 16) #14
  %xor18.i.i.i.i.i.i = xor i32 %sub16.i.i.i.i.i.i, %or.i137.i.i.i.i.i.i
  %add19.i.i.i.i.i.i = add i32 %xor14.i.i.i.i.i.i, %add15.i.i.i.i.i.i
  %sub20.i.i.i.i.i.i = sub i32 %add15.i.i.i.i.i.i, %xor18.i.i.i.i.i.i
  %or.i138.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor18.i.i.i.i.i.i, i32 %xor18.i.i.i.i.i.i, i32 19) #14
  %xor22.i.i.i.i.i.i = xor i32 %sub20.i.i.i.i.i.i, %or.i138.i.i.i.i.i.i
  %add23.i.i.i.i.i.i = add i32 %xor18.i.i.i.i.i.i, %add19.i.i.i.i.i.i
  %sub24.i.i.i.i.i.i = sub i32 %add19.i.i.i.i.i.i, %xor22.i.i.i.i.i.i
  %or.i139.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %xor22.i.i.i.i.i.i, i32 %xor22.i.i.i.i.i.i, i32 4) #14
  %xor26.i.i.i.i.i.i = xor i32 %sub24.i.i.i.i.i.i, %or.i139.i.i.i.i.i.i
  %add27.i.i.i.i.i.i = add i32 %xor22.i.i.i.i.i.i, %add23.i.i.i.i.i.i
  %sub28.i.i.i.i.i.i = add nsw i32 %length.addr.0148.i.i.i.i.i.i, -3
  %add.ptr.i.i.i.i.i.i = getelementptr i32, ptr %k.addr.0149.i.i.i.i.i.i, i32 3
  %cmp.i.i.i.i.i.i = icmp ugt i32 %sub28.i.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, label %rht_head_hashfn.exit.i.i

while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i.i.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %while.body.i.i.i.i.i.i
  %uglygep = getelementptr i8, ptr %call7.i.i.i, i32 %176
  %uglygep167 = getelementptr i8, ptr %call7.i.i.i, i32 %177
  %arrayidx29.i.i.i.i.i.i = getelementptr i32, ptr %uglygep, i32 5
  %184 = ptrtoint ptr %arrayidx29.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx29.i.i.i.i.i.i, align 4
  %add30.i.i.i.i.i.i = add i32 %185, %xor26.i.i.i.i.i.i
  %arrayidx32.i.i.i.i.i.i = getelementptr i32, ptr %uglygep, i32 4
  %186 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx32.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i = add i32 %187, %add27.i.i.i.i.i.i
  %188 = ptrtoint ptr %uglygep167 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %uglygep167, align 4
  %add36.i.i.i.i.i.i = add i32 %189, %add23.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i = xor i32 %add30.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #14
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #14
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #14
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #14
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #14
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #14
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #14
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %190 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %171, align 128
  %sub.i.i.i.i.i140 = add i32 %191, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i140, %sub57.i.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %171, i32 0, i32 1
  %192 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i4.i.i = icmp eq i32 %193, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !86

cond.true.i6.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i5.i.i = call ptr @rht_bucket_nested_insert(ptr noundef %route_ht, ptr noundef %171, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %171, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  call fastcc void @rht_lock(ptr noundef %171, ptr noundef nonnull %cond.i8.i.i) #14
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %171, i32 0, i32 5
  %194 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %195, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !86

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i143.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %171, ptr noundef nonnull %cond.i8.i.i) #14
  %call.i10.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  %196 = call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i.i17.i.i = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %199, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call29.i.i = call ptr @rhashtable_insert_slow(ptr noundef %route_ht, ptr noundef null, ptr noundef %ht_node) #14
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %171, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 377, ptr noundef nonnull @.str.18) #14
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %200 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %cond.i8.i.i, align 4
  %202 = ptrtoint ptr %201 to i32
  %and.i.i.i.i = and i32 %202, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i141 = icmp eq i32 %and.i.i.i.i, 0
  %203 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %203, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i141, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i63.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.i.not64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.i.not64.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %204 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i142

for.body.i.i142:                                  ; preds = %do.end147.i.i.for.body.i.i142_crit_edge, %for.body.preheader.i.i
  %head.066.i.i = phi ptr [ %206, %do.end147.i.i.for.body.i.i142_crit_edge ], [ %204, %for.body.preheader.i.i ]
  %elasticity.065.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i142_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.065.i.i, -1
  %call137.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %171, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i142.do.end147.i.i_crit_edge

for.body.i.i142.do.end147.i.i_crit_edge:          ; preds = %for.body.i.i142
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i142
  %call140.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.19, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_insert_fast.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 732, ptr noundef nonnull @.str.18) #14
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i142.do.end147.i.i_crit_edge
  %205 = ptrtoint ptr %head.066.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %head.066.i.i, align 4
  %207 = ptrtoint ptr %206 to i32
  %and.i.i.i = and i32 %207, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i142_crit_edge, label %for.end.i.i143

do.end147.i.i.for.body.i.i142_crit_edge:          ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i142

for.end.i.i143:                                   ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i143.slow_path.i.i_crit_edge, label %for.end.i.i143.if.end152.i.i_crit_edge

for.end.i.i143.if.end152.i.i_crit_edge:           ; preds = %for.end.i.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152.i.i

for.end.i.i143.slow_path.i.i_crit_edge:           ; preds = %for.end.i.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i143.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7, i32 8
  %call.i.i.i25.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #14
  %208 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7, i32 2
  %210 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %211)
  %cmp.i.not.i.i = icmp ult i32 %209, %211
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !86

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i27.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #14
  %212 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %nelems.i.i.i, align 4
  %214 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %171, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %213, i32 %215)
  %cmp.i28.i.i = icmp ugt i32 %213, %215
  br i1 %cmp.i28.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7, i32 3, i32 4
  %216 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i29.i.i = icmp eq i32 %217, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %217)
  %cmp4.i.i.i = icmp ult i32 %215, %217
  %spec.select.i.i.i = select i1 %tobool.not.i29.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !85

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i30.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %171, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool.not.i31.i.i, label %land.lhs.true.i34.i.i, label %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge

if.end171.i.i.rht_ptr.exit42.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i

land.lhs.true.i34.i.i:                            ; preds = %if.end171.i.i
  %call1.i32.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i)
  %tobool2.not.i33.i.i = icmp eq i32 %call1.i32.i.i, 0
  br i1 %tobool2.not.i33.i.i, label %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, label %land.lhs.true3.i36.i.i

land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i

land.lhs.true3.i36.i.i:                           ; preds = %land.lhs.true.i34.i.i
  %.b7.i35.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i, label %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, label %if.then.i37.i.i

land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit42.i.i

if.then.i37.i.i:                                  ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 377, ptr noundef nonnull @.str.18) #14
  br label %rht_ptr.exit42.i.i

rht_ptr.exit42.i.i:                               ; preds = %if.then.i37.i.i, %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge
  %218 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cond.i8.i.i, align 4
  %220 = ptrtoint ptr %219 to i32
  %and.i.i38.i.i = and i32 %220, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i)
  %tobool.not.i.i39.i.i = icmp eq i32 %and.i.i38.i.i, 0
  %cond.i.i41.i.i = select i1 %tobool.not.i.i39.i.i, i32 %or.i.i.i.i, i32 %and.i.i38.i.i
  %221 = inttoptr i32 %cond.i.i41.i.i to ptr
  %222 = ptrtoint ptr %ht_node to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %221, ptr %ht_node, align 8
  %call.i.i.i.i144 = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #14
  %223 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #14, !srcloc !92
  call fastcc void @rht_assign_unlock(ptr noundef %171, ptr noundef nonnull %cond.i8.i.i, ptr noundef %ht_node) #14
  %call.i.i.i44.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #14
  %224 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile i32, ptr %nelems.i.i.i, align 4
  %226 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %171, align 128
  %div8.i.i.i = lshr i32 %227, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %mul.i.i.i)
  %cmp.i45.i.i = icmp ugt i32 %225, %mul.i.i.i
  br i1 %cmp.i45.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit42.i.i.out.i.i_crit_edge

rht_ptr.exit42.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit42.i.i
  %max_size.i46.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7, i32 3, i32 4
  %228 = ptrtoint ptr %max_size.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %max_size.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool.not.i47.i.i = icmp eq i32 %229, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %229)
  %cmp4.i48.i.i = icmp ult i32 %227, %229
  %spec.select.i49.i.i = select i1 %tobool.not.i47.i.i, i1 true, i1 %cmp4.i48.i.i
  br i1 %spec.select.i49.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %230 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %230, ptr noundef %run_work.i.i) #14
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit42.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.out.i.i_crit_edge ]
  %call.i52.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i52.i.i, label %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true.i55.i.i

out.i.i.rcu_read_unlock.exit62.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true.i55.i.i:                            ; preds = %out.i.i
  %call1.i53.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %call1.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true2.i57.i.i

land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true2.i57.i.i:                           ; preds = %land.lhs.true.i55.i.i
  %.b4.i56.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i, label %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %if.then.i58.i.i

land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit62.i.i

if.then.i58.i.i:                                  ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit62.i.i

rcu_read_unlock.exit62.i.i:                       ; preds = %if.then.i58.i.i, %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  %231 = call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i.i59.i.i = and i32 %231, -16384
  %232 = inttoptr i32 %and.i.i.i.i.i59.i.i to ptr
  %preempt_count.i.i.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i, align 4
  %sub.i.i.i61.i.i = add i32 %234, -1
  store volatile i32 %sub.i.i.i61.i.i, ptr %preempt_count.i.i.i.i60.i.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @rht_unlock(ptr noundef %171, ptr noundef nonnull %cond.i8.i.i) #14
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit62.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit62.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %235 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.i145 = icmp eq ptr %retval.0.i.i, null
  %cond.i = select i1 %cmp.i145, i32 0, i32 -17
  %retval.0.i146 = select i1 %cmp.i.i, i32 %235, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i146)
  %tobool50.not = icmp eq i32 %retval.0.i146, 0
  br i1 %tobool50.not, label %if.end52, label %err_rhashtable_insert

if.end52:                                         ; preds = %rhashtable_insert_fast.exit
  br i1 %replace, label %if.then54, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then54:                                        ; preds = %if.end52
  %ht_node56 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call6, i32 0, i32 1
  call fastcc void @rhashtable_remove_fast(ptr noundef %route_ht, ptr noundef %ht_node56, [7 x i32] [i32 72, i32 786440, i32 0, i32 256, i32 0, i32 0, i32 0])
  %call.i.i147 = call zeroext i1 @__list_del_entry_valid(ptr noundef %call6) #14
  br i1 %call.i.i147, label %if.end.i.i149, label %if.then54.list_del.exit_crit_edge

if.then54.list_del.exit_crit_edge:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i149:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i148 = getelementptr inbounds %struct.list_head, ptr %call6, i32 0, i32 1
  %236 = ptrtoint ptr %prev.i.i148 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %prev.i.i148, align 4
  %238 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %call6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %237, ptr %prev1.i.i.i, align 4
  %241 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile ptr %239, ptr %237, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i149, %if.then54.list_del.exit_crit_edge
  %242 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr inttoptr (i32 256 to ptr), ptr %call6, align 4
  %prev.i150 = getelementptr inbounds %struct.list_head, ptr %call6, i32 0, i32 1
  %243 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i150, align 4
  call fastcc void @mlxsw_sp_mr_route_destroy(ptr noundef %call6)
  br label %if.end59

if.end59:                                         ; preds = %list_del.exit, %if.end52.if.end59_crit_edge
  %244 = ptrtoint ptr %route_action.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %route_action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %245)
  %cmp.not.i = icmp eq i32 %245, 1
  %246 = ptrtoint ptr %mfc2.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mfc2.i, align 4
  %mfc_flags.i.i = getelementptr inbounds %struct.mr_mfc, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %mfc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %mfc_flags.i.i, align 4
  %and.i.i = and i32 %249, -3
  %masksel.i.i = select i1 %cmp.not.i, i32 0, i32 2
  %and.sink.i.i = or i32 %and.i.i, %masksel.i.i
  store i32 %and.sink.i.i, ptr %mfc_flags.i.i, align 4
  br label %cleanup

err_rhashtable_insert:                            ; preds = %rhashtable_insert_fast.exit
  call void @mutex_lock_nested(ptr noundef %route_list_lock, i32 noundef 0) #14
  %call.i.i152 = call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i.i) #14
  br i1 %call.i.i152, label %if.end.i.i155, label %err_rhashtable_insert.list_del.exit157_crit_edge

err_rhashtable_insert.list_del.exit157_crit_edge: ; preds = %err_rhashtable_insert
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit157

if.end.i.i155:                                    ; preds = %err_rhashtable_insert
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i153 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %250 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %prev.i.i153, align 4
  %252 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i154 = getelementptr inbounds %struct.list_head, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %prev1.i.i.i154 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %251, ptr %prev1.i.i.i154, align 4
  %255 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %255)
  store volatile ptr %253, ptr %251, align 4
  br label %list_del.exit157

list_del.exit157:                                 ; preds = %if.end.i.i155, %err_rhashtable_insert.list_del.exit157_crit_edge
  %256 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i, align 8
  %prev.i156 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %257 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i156, align 4
  call void @mutex_unlock(ptr noundef %route_list_lock) #14
  %258 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mlxsw_sp1.i, align 4
  %mr2.i159 = getelementptr inbounds %struct.mlxsw_sp, ptr %259, i32 0, i32 11
  %260 = ptrtoint ptr %mr2.i159 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mr2.i159, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %route_destroy.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %263, i32 0, i32 11
  %264 = ptrtoint ptr %route_destroy.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %route_destroy.i, align 4
  %priv.i160 = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %261, i32 0, i32 5
  %route_priv.i161 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %call7.i.i.i, i32 0, i32 6
  %266 = ptrtoint ptr %route_priv.i161 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %route_priv.i161, align 8
  call void %265(ptr noundef %259, ptr noundef %priv.i160, ptr noundef %267) #14
  %268 = ptrtoint ptr %route_priv.i161 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %route_priv.i161, align 8
  call void @kfree(ptr noundef %269) #14
  br label %err_duplicate_route

err_duplicate_route:                              ; preds = %list_del.exit157, %mlxsw_sp_mr_route_write.exit.err_duplicate_route_crit_edge, %mlxsw_sp_mr_route_write.exit.thread, %do.end39, %do.end
  %err.0 = phi i32 [ -2, %do.end ], [ %err.1.i, %mlxsw_sp_mr_route_write.exit.err_duplicate_route_crit_edge ], [ %retval.0.i146, %list_del.exit157 ], [ -22, %do.end39 ], [ -12, %mlxsw_sp_mr_route_write.exit.thread ]
  call fastcc void @mlxsw_sp_mr_route_destroy(ptr noundef %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %err_duplicate_route, %if.end59, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %73, %if.then3 ], [ %err.0, %err_duplicate_route ], [ 0, %if.end59 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !90
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #14
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 594, ptr noundef nonnull @.str.14) #14
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #14
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !86

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #14
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !93
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 369, ptr noundef nonnull @.str.14) #14
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !94
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.15, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_lookup.__warned.15, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 614, ptr noundef nonnull @.str.14) #14
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !86

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #14
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #14
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  %43 = call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !90
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1076, ptr noundef nonnull @.str.14) #14
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !85

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #14
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #14
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !86

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 377, ptr noundef nonnull @.str.18) #14
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1032, ptr noundef nonnull @.str.18) #14
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #14
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1004, ptr noundef nonnull @.str.18) #14
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #14
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #14, !srcloc !96
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #14
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !85

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #14
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.20, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__rhashtable_remove_fast.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1085, ptr noundef nonnull @.str.14) #14
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.16) #14
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !91
  %46 = tail call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_mr_route_destroy(ptr noundef %mr_route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ivif.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ivif.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.mlxsw_sp_mr_route_ivif_unlink.exit_crit_edge

entry.mlxsw_sp_mr_route_ivif_unlink.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_route_ivif_unlink.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %ivif.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ivif.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %mlxsw_sp_mr_route_ivif_unlink.exit

mlxsw_sp_mr_route_ivif_unlink.exit:               ; preds = %if.end.i.i.i, %entry.mlxsw_sp_mr_route_ivif_unlink.exit_crit_edge
  %6 = ptrtoint ptr %ivif.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %ivif.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 9, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %mfc = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 5
  %8 = ptrtoint ptr %mfc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mfc, align 4
  %refcount.i = getelementptr inbounds %struct.mr_mfc, ptr %9, i32 0, i32 3, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !88
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %mlxsw_sp_mr_route_ivif_unlink.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mr_cache_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !86

if.end5.i.i.i.i.mr_cache_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mr_cache_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %mr_cache_put.exit

if.then.i:                                        ; preds = %mlxsw_sp_mr_route_ivif_unlink.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !89
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %9, i32 0, i32 5
  %free.i = getelementptr inbounds %struct.mr_mfc, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free.i, align 4
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef %12) #14
  br label %mr_cache_put.exit

mr_cache_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mr_cache_put.exit_crit_edge
  %evif_list = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 8
  %13 = ptrtoint ptr %evif_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %evif_list, align 4
  %cmp.not7 = icmp eq ptr %14, %evif_list
  br i1 %cmp.not7, label %mr_cache_put.exit.for.end_crit_edge, label %mr_cache_put.exit.for.body_crit_edge

mr_cache_put.exit.for.body_crit_edge:             ; preds = %mr_cache_put.exit
  br label %for.body

mr_cache_put.exit.for.end_crit_edge:              ; preds = %mr_cache_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %mlxsw_sp_mr_route_evif_unlink.exit.for.body_crit_edge, %mr_cache_put.exit.for.body_crit_edge
  %.pn.in8 = phi ptr [ %.pn, %mlxsw_sp_mr_route_evif_unlink.exit.for.body_crit_edge ], [ %14, %mr_cache_put.exit.for.body_crit_edge ]
  %rve.0 = getelementptr i8, ptr %.pn.in8, i32 -8
  %15 = ptrtoint ptr %.pn.in8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in8, align 4
  %call.i.i.i2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in8) #14
  br i1 %call.i.i.i2, label %if.end.i.i.i5, label %for.body.list_del.exit.i_crit_edge

for.body.list_del.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i5:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i3 = getelementptr i8, ptr %.pn.in8, i32 4
  %16 = ptrtoint ptr %prev.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i3, align 4
  %18 = ptrtoint ptr %.pn.in8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in8, align 4
  %prev1.i.i.i.i4 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i4, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i5, %for.body.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %.pn.in8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in8, align 4
  %prev.i.i6 = getelementptr i8, ptr %.pn.in8, i32 4
  %23 = ptrtoint ptr %prev.i.i6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i6, align 4
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rve.0) #14
  br i1 %call.i.i3.i, label %if.end.i.i6.i, label %list_del.exit.i.mlxsw_sp_mr_route_evif_unlink.exit_crit_edge

list_del.exit.i.mlxsw_sp_mr_route_evif_unlink.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_route_evif_unlink.exit

if.end.i.i6.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i4.i = getelementptr i8, ptr %.pn.in8, i32 -4
  %24 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i4.i, align 4
  %26 = ptrtoint ptr %rve.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rve.0, align 4
  %prev1.i.i.i5.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i5.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %mlxsw_sp_mr_route_evif_unlink.exit

mlxsw_sp_mr_route_evif_unlink.exit:               ; preds = %if.end.i.i6.i, %list_del.exit.i.mlxsw_sp_mr_route_evif_unlink.exit_crit_edge
  %30 = ptrtoint ptr %rve.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %rve.0, align 4
  %prev.i7.i = getelementptr i8, ptr %.pn.in8, i32 -4
  %31 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i, align 4
  tail call void @kfree(ptr noundef %rve.0) #14
  %cmp.not = icmp eq ptr %.pn, %evif_list
  br i1 %cmp.not, label %mlxsw_sp_mr_route_evif_unlink.exit.for.end_crit_edge, label %mlxsw_sp_mr_route_evif_unlink.exit.for.body_crit_edge

mlxsw_sp_mr_route_evif_unlink.exit.for.body_crit_edge: ; preds = %mlxsw_sp_mr_route_evif_unlink.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

mlxsw_sp_mr_route_evif_unlink.exit.for.end_crit_edge: ; preds = %mlxsw_sp_mr_route_evif_unlink.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %mlxsw_sp_mr_route_evif_unlink.exit.for.end_crit_edge, %mr_cache_put.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef %mr_route) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mr_route_del(ptr noundef %mr_table, ptr noundef %mfc) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.mlxsw_sp_mr_route_key, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %key) #14
  %0 = call ptr @memset(ptr %key, i32 255, i32 72)
  %ops = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 8
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %key_create = getelementptr inbounds %struct.mlxsw_sp_mr_table_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %key_create to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key_create, align 4
  call void %4(ptr noundef %mr_table, ptr noundef nonnull %key, ptr noundef %mfc) #14
  %route_ht = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %route_ht, ptr noundef nonnull %key, [7 x i32] [i32 72, i32 786440, i32 0, i32 256, i32 0, i32 0, i32 0])
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %route_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %route_list_lock, i32 noundef 0) #14
  call fastcc void @__mlxsw_sp_mr_route_del(ptr noundef %mr_table, ptr noundef nonnull %call)
  call void @mutex_unlock(ptr noundef %route_list_lock) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %key) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mlxsw_sp_mr_route_del(ptr noundef %mr_table, ptr noundef %mr_route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %route_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 6
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %route_list_lock) #14
  br i1 %call, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @__mlxsw_sp_mr_route_del.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !86

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__mlxsw_sp_mr_route_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 9, ptr noundef null) #14
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %mfc.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 5
  %0 = ptrtoint ptr %mfc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfc.i, align 4
  %mfc_flags.i = getelementptr inbounds %struct.mr_mfc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mfc_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mfc_flags.i, align 4
  %and.i = and i32 %3, -3
  store i32 %and.i, ptr %mfc_flags.i, align 4
  %route_ht = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7
  %ht_node = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 1
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %route_ht, ptr noundef %ht_node, [7 x i32] [i32 72, i32 786440, i32 0, i32 256, i32 0, i32 0, i32 0])
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mr_route) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_del.exit_crit_edge

if.end28.list_del.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mr_route, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %mr_route to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mr_route, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end28.list_del.exit_crit_edge
  %10 = ptrtoint ptr %mr_route to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %mr_route, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mr_route, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %12 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mlxsw_sp1.i, align 4
  %mr2.i = getelementptr inbounds %struct.mlxsw_sp, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %mr2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mr2.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %route_destroy.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %route_destroy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %route_destroy.i, align 4
  %priv.i = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %15, i32 0, i32 5
  %route_priv.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 6
  %20 = ptrtoint ptr %route_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %route_priv.i, align 4
  tail call void %19(ptr noundef %13, ptr noundef %priv.i, ptr noundef %21) #14
  %22 = ptrtoint ptr %route_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %route_priv.i, align 4
  tail call void @kfree(ptr noundef %23) #14
  tail call fastcc void @mlxsw_sp_mr_route_destroy(ptr noundef %mr_route)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_mr_vif_add(ptr noundef %mr_table, ptr noundef %dev, i16 noundef zeroext %vif_index, i32 noundef %vif_flags, ptr noundef %rif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %vif_index to i32
  %arrayidx = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %vif_index)
  %cmp = icmp ugt i16 %vif_index, 31
  br i1 %cmp, label %do.end, label %if.end22, !prof !85

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end22:                                         ; preds = %entry
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @mlxsw_sp_mr_vif_resolve(ptr noundef %mr_table, ptr noundef %dev, ptr noundef %arrayidx, i32 noundef %vif_flags, ptr noundef %rif)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end26 ], [ -17, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_mr_vif_resolve(ptr nocapture noundef readonly %mr_table, ptr noundef %dev, ptr noundef %mr_vif, i32 noundef %vif_flags, ptr noundef %rif) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr_vif to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %mr_vif, align 4
  %rif2 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %mr_vif, i32 0, i32 1
  %1 = ptrtoint ptr %rif2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rif, ptr %rif2, align 4
  %vif_flags3 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %mr_vif, i32 0, i32 2
  %2 = ptrtoint ptr %vif_flags3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %vif_flags, ptr %vif_flags3, align 4
  %route_ivif_list = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %mr_vif, i32 0, i32 4
  %3 = ptrtoint ptr %route_ivif_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %irve.0132 = load ptr, ptr %route_ivif_list, align 4
  %cmp.not133 = icmp eq ptr %irve.0132, %route_ivif_list
  br i1 %cmp.not133, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %mlxsw_sp_mr_route_ivif_resolve.exit.for.body_crit_edge, %for.body.lr.ph
  %irve.0134 = phi ptr [ %irve.0132, %for.body.lr.ph ], [ %irve.0, %mlxsw_sp_mr_route_ivif_resolve.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlxsw_sp1.i, align 4
  %mr2.i = getelementptr inbounds %struct.mlxsw_sp, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %mr2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mr2.i, align 4
  %mr_route.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %irve.0134, i32 0, i32 3
  %8 = ptrtoint ptr %mr_route.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mr_route.i, align 4
  %call.i = tail call fastcc i32 @mlxsw_sp_mr_route_action(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %for.body.mlxsw_sp_mr_route_ivif_resolve.exit_crit_edge, label %if.end.i

for.body.mlxsw_sp_mr_route_ivif_resolve.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_route_ivif_resolve.exit

if.end.i:                                         ; preds = %for.body
  %mr_vif.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %irve.0134, i32 0, i32 2
  %10 = ptrtoint ptr %mr_vif.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mr_vif.i, align 4
  %rif.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %rif.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rif.i, align 4
  %call3.i = tail call zeroext i16 @mlxsw_sp_rif_index(ptr noundef %13) #14
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %route_irif_update.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %route_irif_update.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %route_irif_update.i, align 4
  %18 = ptrtoint ptr %mr_route.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mr_route.i, align 4
  %route_priv.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %route_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %route_priv.i, align 4
  %call5.i = tail call i32 %17(ptr noundef %5, ptr noundef %21, i16 noundef zeroext %call3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.err_irif_unresolve_crit_edge

if.end.i.err_irif_unresolve_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_irif_unresolve

if.end7.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  %route_action_update.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %route_action_update.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %route_action_update.i, align 4
  %26 = ptrtoint ptr %mr_route.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mr_route.i, align 4
  %route_priv10.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %route_priv10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %route_priv10.i, align 4
  %call11.i = tail call i32 %25(ptr noundef %5, ptr noundef %29, i32 noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i.err_irif_unresolve_crit_edge

if.end7.i.err_irif_unresolve_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_irif_unresolve

if.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %mr_route.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mr_route.i, align 4
  %route_action16.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %route_action16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i, ptr %route_action16.i, align 4
  %33 = load ptr, ptr %mr_route.i, align 4
  %route_action.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %route_action.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %route_action.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.not.i.i = icmp eq i32 %35, 1
  %mfc.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %33, i32 0, i32 5
  %36 = ptrtoint ptr %mfc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mfc.i.i.i, align 4
  %mfc_flags.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %mfc_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mfc_flags.i.i.i, align 4
  %and.i.i.i = and i32 %39, -3
  %masksel.i.i.i = select i1 %cmp.not.i.i, i32 0, i32 2
  %and.sink.i.i.i = or i32 %and.i.i.i, %masksel.i.i.i
  store i32 %and.sink.i.i.i, ptr %mfc_flags.i.i.i, align 4
  br label %mlxsw_sp_mr_route_ivif_resolve.exit

mlxsw_sp_mr_route_ivif_resolve.exit:              ; preds = %if.end14.i, %for.body.mlxsw_sp_mr_route_ivif_resolve.exit_crit_edge
  %40 = ptrtoint ptr %irve.0134 to i32
  call void @__asan_load4_noabort(i32 %40)
  %irve.0 = load ptr, ptr %irve.0134, align 4
  %cmp.not = icmp eq ptr %irve.0, %route_ivif_list
  br i1 %cmp.not, label %mlxsw_sp_mr_route_ivif_resolve.exit.for.end_crit_edge, label %mlxsw_sp_mr_route_ivif_resolve.exit.for.body_crit_edge

mlxsw_sp_mr_route_ivif_resolve.exit.for.body_crit_edge: ; preds = %mlxsw_sp_mr_route_ivif_resolve.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

mlxsw_sp_mr_route_ivif_resolve.exit.for.end_crit_edge: ; preds = %mlxsw_sp_mr_route_ivif_resolve.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %mlxsw_sp_mr_route_ivif_resolve.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %route_evif_list = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %mr_vif, i32 0, i32 3
  %mlxsw_sp1.i95 = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %41 = ptrtoint ptr %route_evif_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %erve.0190 = load ptr, ptr %route_evif_list, align 4
  %cmp17.not191 = icmp eq ptr %erve.0190, %route_evif_list
  br i1 %cmp17.not191, label %for.end.cleanup_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body19:                                       ; preds = %mlxsw_sp_mr_route_evif_resolve.exit.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %erve.0192 = phi ptr [ %erve.0, %mlxsw_sp_mr_route_evif_resolve.exit.for.body19_crit_edge ], [ %erve.0190, %for.end.for.body19_crit_edge ]
  %42 = ptrtoint ptr %mlxsw_sp1.i95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mlxsw_sp1.i95, align 4
  %mr2.i96 = getelementptr inbounds %struct.mlxsw_sp, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %mr2.i96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mr2.i96, align 4
  %mr_vif.i97 = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %erve.0192, i32 0, i32 2
  %46 = ptrtoint ptr %mr_vif.i97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mr_vif.i97, align 4
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call.i.i = tail call zeroext i1 %51(ptr noundef %47) #14
  br i1 %call.i.i, label %land.lhs.true.i.i, label %for.body19.if.end7.i103_crit_edge

for.body19.if.end7.i103_crit_edge:                ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i103

land.lhs.true.i.i:                                ; preds = %for.body19
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %47, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end7.i103_crit_edge, label %mlxsw_sp_mr_vif_valid.exit.i

land.lhs.true.i.i.if.end7.i103_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i103

mlxsw_sp_mr_vif_valid.exit.i:                     ; preds = %land.lhs.true.i.i
  %rif.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %47, i32 0, i32 1
  %54 = ptrtoint ptr %rif.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rif.i.i, align 4
  %tobool1.i.not.i = icmp eq ptr %55, null
  br i1 %tobool1.i.not.i, label %mlxsw_sp_mr_vif_valid.exit.i.if.end7.i103_crit_edge, label %if.then.i

mlxsw_sp_mr_vif_valid.exit.i.if.end7.i103_crit_edge: ; preds = %mlxsw_sp_mr_vif_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i103

if.then.i:                                        ; preds = %mlxsw_sp_mr_vif_valid.exit.i
  %56 = ptrtoint ptr %mr_vif.i97 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mr_vif.i97, align 4
  %rif.i98 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %rif.i98 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rif.i98, align 4
  %call4.i = tail call zeroext i16 @mlxsw_sp_rif_index(ptr noundef %59) #14
  %60 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %45, align 4
  %route_erif_add.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %route_erif_add.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %route_erif_add.i, align 4
  %mr_route.i99 = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %erve.0192, i32 0, i32 3
  %64 = ptrtoint ptr %mr_route.i99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mr_route.i99, align 4
  %route_priv.i100 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %route_priv.i100 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %route_priv.i100, align 4
  %call5.i101 = tail call i32 %63(ptr noundef %43, ptr noundef %67, i16 noundef zeroext %call4.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i101)
  %tobool.not.i102 = icmp eq i32 %call5.i101, 0
  br i1 %tobool.not.i102, label %if.then.i.if.end7.i103_crit_edge, label %if.then.i.for.cond35.preheader_crit_edge

if.then.i.for.cond35.preheader_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond35.preheader

if.then.i.if.end7.i103_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i103

if.end7.i103:                                     ; preds = %if.then.i.if.end7.i103_crit_edge, %mlxsw_sp_mr_vif_valid.exit.i.if.end7.i103_crit_edge, %land.lhs.true.i.i.if.end7.i103_crit_edge, %for.body19.if.end7.i103_crit_edge
  %erif_index.0.i = phi i16 [ %call4.i, %if.then.i.if.end7.i103_crit_edge ], [ 0, %mlxsw_sp_mr_vif_valid.exit.i.if.end7.i103_crit_edge ], [ 0, %land.lhs.true.i.i.if.end7.i103_crit_edge ], [ 0, %for.body19.if.end7.i103_crit_edge ]
  %mr_route8.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %erve.0192, i32 0, i32 3
  %68 = ptrtoint ptr %mr_route8.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mr_route8.i, align 4
  %call9.i = tail call fastcc i32 @mlxsw_sp_mr_route_action(ptr noundef %69) #14
  %70 = ptrtoint ptr %mr_route8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mr_route8.i, align 4
  %route_action11.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %route_action11.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %route_action11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %73)
  %cmp.not.i = icmp eq i32 %call9.i, %73
  br i1 %cmp.not.i, label %if.end7.i103.if.end20.i_crit_edge, label %if.then12.i

if.end7.i103.if.end20.i_crit_edge:                ; preds = %if.end7.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then12.i:                                      ; preds = %if.end7.i103
  %74 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %45, align 4
  %route_action_update.i104 = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %route_action_update.i104 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %route_action_update.i104, align 4
  %route_priv15.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %71, i32 0, i32 6
  %78 = ptrtoint ptr %route_priv15.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %route_priv15.i, align 4
  %call16.i = tail call i32 %77(ptr noundef %43, ptr noundef %79, i32 noundef %call9.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then12.i.if.end20.i_crit_edge, label %if.then12.i.err_route_action_update.i_crit_edge

if.then12.i.err_route_action_update.i_crit_edge:  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_route_action_update.i

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then12.i.if.end20.i_crit_edge, %if.end7.i103.if.end20.i_crit_edge
  %80 = ptrtoint ptr %mr_vif.i97 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mr_vif.i97, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 20
  %84 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mtu.i, align 4
  %86 = ptrtoint ptr %mr_route8.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mr_route8.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %min_mtu.i, align 4
  %conv.i = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv.i)
  %cmp23.i = icmp ult i32 %85, %conv.i
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.i.mlxsw_sp_mr_route_evif_resolve.exit_crit_edge

if.end20.i.mlxsw_sp_mr_route_evif_resolve.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_route_evif_resolve.exit

if.then25.i:                                      ; preds = %if.end20.i
  %conv29.i = trunc i32 %85 to i16
  %90 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv29.i, ptr %min_mtu.i, align 4
  %91 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %45, align 4
  %route_min_mtu_update.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %route_min_mtu_update.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %route_min_mtu_update.i, align 4
  %95 = ptrtoint ptr %mr_route8.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mr_route8.i, align 4
  %route_priv34.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %route_priv34.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %route_priv34.i, align 4
  %min_mtu36.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %96, i32 0, i32 4
  %99 = ptrtoint ptr %min_mtu36.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %min_mtu36.i, align 4
  %call37.i = tail call i32 %94(ptr noundef %43, ptr noundef %98, i16 noundef zeroext %100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then25.i.mlxsw_sp_mr_route_evif_resolve.exit_crit_edge, label %err_route_min_mtu_update.i

if.then25.i.mlxsw_sp_mr_route_evif_resolve.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_route_evif_resolve.exit

err_route_min_mtu_update.i:                       ; preds = %if.then25.i
  %101 = ptrtoint ptr %mr_route8.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mr_route8.i, align 4
  %route_action46.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %route_action46.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %route_action46.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %104)
  %cmp47.not.i = icmp eq i32 %call9.i, %104
  br i1 %cmp47.not.i, label %err_route_min_mtu_update.i.err_route_action_update.i_crit_edge, label %if.then49.i

err_route_min_mtu_update.i.err_route_action_update.i_crit_edge: ; preds = %err_route_min_mtu_update.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_route_action_update.i

if.then49.i:                                      ; preds = %err_route_min_mtu_update.i
  call void @__sanitizer_cov_trace_pc() #16
  %105 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %45, align 4
  %route_action_update51.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %route_action_update51.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %route_action_update51.i, align 4
  %route_priv53.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %102, i32 0, i32 6
  %109 = ptrtoint ptr %route_priv53.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %route_priv53.i, align 4
  %call56.i = tail call i32 %108(ptr noundef %43, ptr noundef %110, i32 noundef %104) #14
  br label %err_route_action_update.i

err_route_action_update.i:                        ; preds = %if.then49.i, %err_route_min_mtu_update.i.err_route_action_update.i_crit_edge, %if.then12.i.err_route_action_update.i_crit_edge
  %err.0.i = phi i32 [ %call37.i, %if.then49.i ], [ %call37.i, %err_route_min_mtu_update.i.err_route_action_update.i_crit_edge ], [ %call16.i, %if.then12.i.err_route_action_update.i_crit_edge ]
  %111 = ptrtoint ptr %mr_vif.i97 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mr_vif.i97, align 4
  %ops.i106.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %ops.i106.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i106.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %call.i107.i = tail call zeroext i1 %116(ptr noundef %112) #14
  br i1 %call.i107.i, label %land.lhs.true.i109.i, label %err_route_action_update.i.for.cond35.preheader_crit_edge

err_route_action_update.i.for.cond35.preheader_crit_edge: ; preds = %err_route_action_update.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond35.preheader

land.lhs.true.i109.i:                             ; preds = %err_route_action_update.i
  %117 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %112, align 4
  %tobool.not.i108.i = icmp eq ptr %118, null
  br i1 %tobool.not.i108.i, label %land.lhs.true.i109.i.for.cond35.preheader_crit_edge, label %mlxsw_sp_mr_vif_valid.exit113.i

land.lhs.true.i109.i.for.cond35.preheader_crit_edge: ; preds = %land.lhs.true.i109.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond35.preheader

mlxsw_sp_mr_vif_valid.exit113.i:                  ; preds = %land.lhs.true.i109.i
  %rif.i110.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %112, i32 0, i32 1
  %119 = ptrtoint ptr %rif.i110.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rif.i110.i, align 4
  %tobool1.i111.not.i = icmp eq ptr %120, null
  br i1 %tobool1.i111.not.i, label %mlxsw_sp_mr_vif_valid.exit113.i.for.cond35.preheader_crit_edge, label %if.then60.i

mlxsw_sp_mr_vif_valid.exit113.i.for.cond35.preheader_crit_edge: ; preds = %mlxsw_sp_mr_vif_valid.exit113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond35.preheader

if.then60.i:                                      ; preds = %mlxsw_sp_mr_vif_valid.exit113.i
  call void @__sanitizer_cov_trace_pc() #16
  %121 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %45, align 4
  %route_erif_del.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %122, i32 0, i32 10
  %123 = ptrtoint ptr %route_erif_del.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %route_erif_del.i, align 4
  %125 = ptrtoint ptr %mr_route8.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mr_route8.i, align 4
  %route_priv63.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %route_priv63.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %route_priv63.i, align 4
  %call64.i = tail call i32 %124(ptr noundef %43, ptr noundef %128, i16 noundef zeroext %erif_index.0.i) #14
  br label %for.cond35.preheader

mlxsw_sp_mr_route_evif_resolve.exit:              ; preds = %if.then25.i.mlxsw_sp_mr_route_evif_resolve.exit_crit_edge, %if.end20.i.mlxsw_sp_mr_route_evif_resolve.exit_crit_edge
  %129 = ptrtoint ptr %mr_route8.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mr_route8.i, align 4
  %route_action43.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %route_action43.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call9.i, ptr %route_action43.i, align 4
  %132 = load ptr, ptr %mr_route8.i, align 4
  %route_action.i.i105 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %route_action.i.i105 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %route_action.i.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp.not.i.i106 = icmp eq i32 %134, 1
  %mfc.i.i.i107 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %132, i32 0, i32 5
  %135 = ptrtoint ptr %mfc.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mfc.i.i.i107, align 4
  %mfc_flags.i.i.i108 = getelementptr inbounds %struct.mr_mfc, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %mfc_flags.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mfc_flags.i.i.i108, align 4
  %and.i.i.i109 = and i32 %138, -3
  %masksel.i.i.i110 = select i1 %cmp.not.i.i106, i32 0, i32 2
  %and.sink.i.i.i111 = or i32 %and.i.i.i109, %masksel.i.i.i110
  store i32 %and.sink.i.i.i111, ptr %mfc_flags.i.i.i108, align 4
  %139 = ptrtoint ptr %erve.0192 to i32
  call void @__asan_load4_noabort(i32 %139)
  %erve.0 = load ptr, ptr %erve.0192, align 4
  %cmp17.not = icmp eq ptr %erve.0, %route_evif_list
  br i1 %cmp17.not, label %mlxsw_sp_mr_route_evif_resolve.exit.cleanup_crit_edge, label %mlxsw_sp_mr_route_evif_resolve.exit.for.body19_crit_edge

mlxsw_sp_mr_route_evif_resolve.exit.for.body19_crit_edge: ; preds = %mlxsw_sp_mr_route_evif_resolve.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

mlxsw_sp_mr_route_evif_resolve.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_mr_route_evif_resolve.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond35.preheader:                             ; preds = %if.then60.i, %mlxsw_sp_mr_vif_valid.exit113.i.for.cond35.preheader_crit_edge, %land.lhs.true.i109.i.for.cond35.preheader_crit_edge, %err_route_action_update.i.for.cond35.preheader_crit_edge, %if.then.i.for.cond35.preheader_crit_edge
  %retval.0.i112.ph = phi i32 [ %err.0.i, %err_route_action_update.i.for.cond35.preheader_crit_edge ], [ %err.0.i, %land.lhs.true.i109.i.for.cond35.preheader_crit_edge ], [ %err.0.i, %mlxsw_sp_mr_vif_valid.exit113.i.for.cond35.preheader_crit_edge ], [ %err.0.i, %if.then60.i ], [ %call5.i101, %if.then.i.for.cond35.preheader_crit_edge ]
  %erve.1.in135 = getelementptr inbounds %struct.list_head, ptr %erve.0192, i32 0, i32 1
  %140 = ptrtoint ptr %erve.1.in135 to i32
  call void @__asan_load4_noabort(i32 %140)
  %erve.1136 = load ptr, ptr %erve.1.in135, align 4
  %cmp38.not137 = icmp eq ptr %erve.1136, %route_evif_list
  br i1 %cmp38.not137, label %for.cond35.preheader.err_irif_unresolve_crit_edge, label %for.cond35.preheader.for.body40_crit_edge

for.cond35.preheader.for.body40_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body40

for.cond35.preheader.err_irif_unresolve_crit_edge: ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_irif_unresolve

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.cond35.preheader.for.body40_crit_edge
  %erve.1138 = phi ptr [ %erve.1, %for.body40.for.body40_crit_edge ], [ %erve.1136, %for.cond35.preheader.for.body40_crit_edge ]
  tail call fastcc void @mlxsw_sp_mr_route_evif_unresolve(ptr noundef %mr_table, ptr noundef %erve.1138)
  %erve.1.in = getelementptr inbounds %struct.list_head, ptr %erve.1138, i32 0, i32 1
  %141 = ptrtoint ptr %erve.1.in to i32
  call void @__asan_load4_noabort(i32 %141)
  %erve.1 = load ptr, ptr %erve.1.in, align 4
  %cmp38.not = icmp eq ptr %erve.1, %route_evif_list
  br i1 %cmp38.not, label %for.body40.err_irif_unresolve_crit_edge, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body40

for.body40.err_irif_unresolve_crit_edge:          ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_irif_unresolve

err_irif_unresolve:                               ; preds = %for.body40.err_irif_unresolve_crit_edge, %for.cond35.preheader.err_irif_unresolve_crit_edge, %if.end7.i.err_irif_unresolve_crit_edge, %if.end.i.err_irif_unresolve_crit_edge
  %irve.0131 = phi ptr [ %route_ivif_list, %for.cond35.preheader.err_irif_unresolve_crit_edge ], [ %route_ivif_list, %for.body40.err_irif_unresolve_crit_edge ], [ %irve.0134, %if.end.i.err_irif_unresolve_crit_edge ], [ %irve.0134, %if.end7.i.err_irif_unresolve_crit_edge ]
  %err.0 = phi i32 [ %retval.0.i112.ph, %for.cond35.preheader.err_irif_unresolve_crit_edge ], [ %retval.0.i112.ph, %for.body40.err_irif_unresolve_crit_edge ], [ %call11.i, %if.end7.i.err_irif_unresolve_crit_edge ], [ %call5.i, %if.end.i.err_irif_unresolve_crit_edge ]
  %irve.1.in139 = getelementptr inbounds %struct.list_head, ptr %irve.0131, i32 0, i32 1
  %142 = ptrtoint ptr %irve.1.in139 to i32
  call void @__asan_load4_noabort(i32 %142)
  %irve.1140 = load ptr, ptr %irve.1.in139, align 4
  %cmp56.not141 = icmp eq ptr %irve.1140, %route_ivif_list
  br i1 %cmp56.not141, label %err_irif_unresolve.for.end65_crit_edge, label %for.body58.lr.ph

err_irif_unresolve.for.end65_crit_edge:           ; preds = %err_irif_unresolve
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end65

for.body58.lr.ph:                                 ; preds = %err_irif_unresolve
  %mlxsw_sp1.i113 = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.body58.lr.ph
  %irve.1142 = phi ptr [ %irve.1140, %for.body58.lr.ph ], [ %irve.1, %for.body58.for.body58_crit_edge ]
  %143 = ptrtoint ptr %mlxsw_sp1.i113 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mlxsw_sp1.i113, align 4
  %mr2.i114 = getelementptr inbounds %struct.mlxsw_sp, ptr %144, i32 0, i32 11
  %145 = ptrtoint ptr %mr2.i114 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mr2.i114, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %route_action_update.i115 = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %148, i32 0, i32 6
  %149 = ptrtoint ptr %route_action_update.i115 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %route_action_update.i115, align 4
  %mr_route.i116 = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %irve.1142, i32 0, i32 3
  %151 = ptrtoint ptr %mr_route.i116 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mr_route.i116, align 4
  %route_priv.i117 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %152, i32 0, i32 6
  %153 = ptrtoint ptr %route_priv.i117 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %route_priv.i117, align 4
  %call.i118 = tail call i32 %150(ptr noundef %144, ptr noundef %154, i32 noundef 1) #14
  %155 = ptrtoint ptr %mr_route.i116 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mr_route.i116, align 4
  %route_action.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %route_action.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %route_action.i, align 4
  %158 = load ptr, ptr %mr_route.i116, align 4
  %route_action.i.i119 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %route_action.i.i119 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %route_action.i.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp.not.i.i120 = icmp eq i32 %160, 1
  %mfc.i.i.i121 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %158, i32 0, i32 5
  %161 = ptrtoint ptr %mfc.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mfc.i.i.i121, align 4
  %mfc_flags.i.i.i122 = getelementptr inbounds %struct.mr_mfc, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %mfc_flags.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mfc_flags.i.i.i122, align 4
  %and.i.i.i123 = and i32 %164, -3
  %masksel.i.i.i124 = select i1 %cmp.not.i.i120, i32 0, i32 2
  %and.sink.i.i.i125 = or i32 %and.i.i.i123, %masksel.i.i.i124
  store i32 %and.sink.i.i.i125, ptr %mfc_flags.i.i.i122, align 4
  %irve.1.in = getelementptr inbounds %struct.list_head, ptr %irve.1142, i32 0, i32 1
  %165 = ptrtoint ptr %irve.1.in to i32
  call void @__asan_load4_noabort(i32 %165)
  %irve.1 = load ptr, ptr %irve.1.in, align 4
  %cmp56.not = icmp eq ptr %irve.1, %route_ivif_list
  br i1 %cmp56.not, label %for.body58.for.end65_crit_edge, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body58

for.body58.for.end65_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end65

for.end65:                                        ; preds = %for.body58.for.end65_crit_edge, %err_irif_unresolve.for.end65_crit_edge
  %166 = ptrtoint ptr %rif2 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %rif2, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end65, %mlxsw_sp_mr_route_evif_resolve.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end65 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %mlxsw_sp_mr_route_evif_resolve.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mr_vif_del(ptr noundef %mr_table, i16 noundef zeroext %vif_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %vif_index to i32
  %arrayidx = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %vif_index)
  %cmp = icmp ugt i16 %vif_index, 31
  br i1 %cmp, label %do.end, label %if.end22, !prof !85

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end22:                                         ; preds = %entry
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %do.end42, label %if.end58, !prof !85

do.end42:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 700, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end58:                                         ; preds = %if.end22
  %route_evif_list.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %idxprom, i32 3
  %2 = ptrtoint ptr %route_evif_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %rve.036.i = load ptr, ptr %route_evif_list.i, align 4
  %cmp.not37.i = icmp eq ptr %rve.036.i, %route_evif_list.i
  br i1 %cmp.not37.i, label %if.end58.for.end.i_crit_edge, label %if.end58.for.body.i_crit_edge

if.end58.for.body.i_crit_edge:                    ; preds = %if.end58
  br label %for.body.i

if.end58.for.end.i_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end58.for.body.i_crit_edge
  %rve.038.i = phi ptr [ %rve.0.i, %for.body.i.for.body.i_crit_edge ], [ %rve.036.i, %if.end58.for.body.i_crit_edge ]
  tail call fastcc void @mlxsw_sp_mr_route_evif_unresolve(ptr noundef %mr_table, ptr noundef %rve.038.i) #14
  %3 = ptrtoint ptr %rve.038.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %rve.0.i = load ptr, ptr %rve.038.i, align 4
  %cmp.not.i = icmp eq ptr %rve.0.i, %route_evif_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end58.for.end.i_crit_edge
  %route_ivif_list.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %idxprom, i32 4
  %4 = ptrtoint ptr %route_ivif_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rve.139.i = load ptr, ptr %route_ivif_list.i, align 4
  %cmp14.not40.i = icmp eq ptr %rve.139.i, %route_ivif_list.i
  br i1 %cmp14.not40.i, label %for.end.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge, label %for.body16.lr.ph.i

for.end.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_vif_unresolve.exit

for.body16.lr.ph.i:                               ; preds = %for.end.i
  %mlxsw_sp1.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %rve.141.i = phi ptr [ %rve.139.i, %for.body16.lr.ph.i ], [ %rve.1.i, %for.body16.i.for.body16.i_crit_edge ]
  %5 = ptrtoint ptr %mlxsw_sp1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mlxsw_sp1.i.i, align 4
  %mr2.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %mr2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mr2.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %route_action_update.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %route_action_update.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %route_action_update.i.i, align 4
  %mr_route.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %rve.141.i, i32 0, i32 3
  %13 = ptrtoint ptr %mr_route.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mr_route.i.i, align 4
  %route_priv.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %route_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %route_priv.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %6, ptr noundef %16, i32 noundef 1) #14
  %17 = ptrtoint ptr %mr_route.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mr_route.i.i, align 4
  %route_action.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %route_action.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %route_action.i.i, align 4
  %20 = load ptr, ptr %mr_route.i.i, align 4
  %route_action.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %route_action.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %route_action.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not.i.i.i = icmp eq i32 %22, 1
  %mfc.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %mfc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mfc.i.i.i.i, align 4
  %mfc_flags.i.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %mfc_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mfc_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %26, -3
  %masksel.i.i.i.i = select i1 %cmp.not.i.i.i, i32 0, i32 2
  %and.sink.i.i.i.i = or i32 %and.i.i.i.i, %masksel.i.i.i.i
  store i32 %and.sink.i.i.i.i, ptr %mfc_flags.i.i.i.i, align 4
  %27 = ptrtoint ptr %rve.141.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %rve.1.i = load ptr, ptr %rve.141.i, align 4
  %cmp14.not.i = icmp eq ptr %rve.1.i, %route_ivif_list.i
  br i1 %cmp14.not.i, label %for.body16.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i

for.body16.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_vif_unresolve.exit

mlxsw_sp_mr_vif_unresolve.exit:                   ; preds = %for.body16.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge, %for.end.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  %rif.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %idxprom, i32 1
  %29 = ptrtoint ptr %rif.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rif.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_mr_vif_unresolve.exit, %do.end42, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_mr_rif_add(ptr noundef %mr_table, ptr noundef %rif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_sp_rif_dev(ptr noundef %rif) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %indvars.iv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %1, %call
  br i1 %cmp3.i, label %mlxsw_sp_mr_dev_vif_lookup.exit, label %for.cond.i

mlxsw_sp_mr_dev_vif_lookup.exit:                  ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool2.not, label %mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge, label %if.end4

mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_mr_dev_vif_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %mlxsw_sp_mr_dev_vif_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %vif_flags = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %indvars.iv.i, i32 2
  %4 = ptrtoint ptr %vif_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif_flags, align 4
  %call5 = tail call fastcc i32 @mlxsw_sp_mr_vif_resolve(ptr noundef %mr_table, ptr noundef %3, ptr noundef nonnull %arrayidx.i, i32 noundef %5, ptr noundef %rif)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_rif_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mr_rif_del(ptr noundef %mr_table, ptr noundef %rif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_sp_rif_dev(ptr noundef %rif) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %indvars.iv.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %1, %call
  br i1 %cmp3.i, label %mlxsw_sp_mr_dev_vif_lookup.exit, label %for.cond.i

mlxsw_sp_mr_dev_vif_lookup.exit:                  ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool2.not, label %mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge, label %if.end4

mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_mr_dev_vif_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %mlxsw_sp_mr_dev_vif_lookup.exit
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %route_evif_list.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %indvars.iv.i, i32 3
  %4 = ptrtoint ptr %route_evif_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %rve.036.i = load ptr, ptr %route_evif_list.i, align 4
  %cmp.not37.i = icmp eq ptr %rve.036.i, %route_evif_list.i
  br i1 %cmp.not37.i, label %if.end4.for.end.i_crit_edge, label %if.end4.for.body.i10_crit_edge

if.end4.for.body.i10_crit_edge:                   ; preds = %if.end4
  br label %for.body.i10

if.end4.for.end.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %if.end4.for.body.i10_crit_edge
  %rve.038.i = phi ptr [ %rve.0.i, %for.body.i10.for.body.i10_crit_edge ], [ %rve.036.i, %if.end4.for.body.i10_crit_edge ]
  tail call fastcc void @mlxsw_sp_mr_route_evif_unresolve(ptr noundef %mr_table, ptr noundef %rve.038.i) #14
  %5 = ptrtoint ptr %rve.038.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %rve.0.i = load ptr, ptr %rve.038.i, align 4
  %cmp.not.i = icmp eq ptr %rve.0.i, %route_evif_list.i
  br i1 %cmp.not.i, label %for.body.i10.for.end.i_crit_edge, label %for.body.i10.for.body.i10_crit_edge

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i10

for.body.i10.for.end.i_crit_edge:                 ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i10.for.end.i_crit_edge, %if.end4.for.end.i_crit_edge
  %route_ivif_list.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %indvars.iv.i, i32 4
  %6 = ptrtoint ptr %route_ivif_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %rve.139.i = load ptr, ptr %route_ivif_list.i, align 4
  %cmp14.not40.i = icmp eq ptr %rve.139.i, %route_ivif_list.i
  br i1 %cmp14.not40.i, label %for.end.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge, label %for.body16.lr.ph.i

for.end.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_vif_unresolve.exit

for.body16.lr.ph.i:                               ; preds = %for.end.i
  %mlxsw_sp1.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %rve.141.i = phi ptr [ %rve.139.i, %for.body16.lr.ph.i ], [ %rve.1.i, %for.body16.i.for.body16.i_crit_edge ]
  %7 = ptrtoint ptr %mlxsw_sp1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mlxsw_sp1.i.i, align 4
  %mr2.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %mr2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mr2.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %route_action_update.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %route_action_update.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %route_action_update.i.i, align 4
  %mr_route.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %rve.141.i, i32 0, i32 3
  %15 = ptrtoint ptr %mr_route.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mr_route.i.i, align 4
  %route_priv.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %route_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %route_priv.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %8, ptr noundef %18, i32 noundef 1) #14
  %19 = ptrtoint ptr %mr_route.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mr_route.i.i, align 4
  %route_action.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %route_action.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %route_action.i.i, align 4
  %22 = load ptr, ptr %mr_route.i.i, align 4
  %route_action.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %route_action.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %route_action.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.not.i.i.i = icmp eq i32 %24, 1
  %mfc.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %mfc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mfc.i.i.i.i, align 4
  %mfc_flags.i.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %mfc_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mfc_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %28, -3
  %masksel.i.i.i.i = select i1 %cmp.not.i.i.i, i32 0, i32 2
  %and.sink.i.i.i.i = or i32 %and.i.i.i.i, %masksel.i.i.i.i
  store i32 %and.sink.i.i.i.i, ptr %mfc_flags.i.i.i.i, align 4
  %29 = ptrtoint ptr %rve.141.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %rve.1.i = load ptr, ptr %rve.141.i, align 4
  %cmp14.not.i = icmp eq ptr %rve.1.i, %route_ivif_list.i
  br i1 %cmp14.not.i, label %for.body16.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i

for.body16.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_vif_unresolve.exit

mlxsw_sp_mr_vif_unresolve.exit:                   ; preds = %for.body16.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge, %for.end.i.mlxsw_sp_mr_vif_unresolve.exit_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %3, ptr %arrayidx.i, align 4
  %rif.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %indvars.iv.i, i32 1
  %31 = ptrtoint ptr %rif.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rif.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_mr_vif_unresolve.exit, %mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mr_rif_mtu_update(ptr noundef readonly %mr_table, ptr noundef %rif, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_sp_rif_dev(ptr noundef %rif) #14
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 4
  %mr2 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr2, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %indvars.iv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %5, %call
  br i1 %cmp3.i, label %mlxsw_sp_mr_dev_vif_lookup.exit, label %for.cond.i

mlxsw_sp_mr_dev_vif_lookup.exit:                  ; preds = %for.body.i
  %tobool4.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool4.not, label %mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge, label %if.end6

mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_mr_dev_vif_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %mlxsw_sp_mr_dev_vif_lookup.exit
  %route_evif_list = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %indvars.iv.i, i32 3
  %6 = ptrtoint ptr %route_evif_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %rve.043 = load ptr, ptr %route_evif_list, align 4
  %cmp.not44 = icmp eq ptr %rve.043, %route_evif_list
  br i1 %cmp.not44, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %conv11 = trunc i32 %mtu to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rve.045 = phi ptr [ %rve.043, %for.body.lr.ph ], [ %rve.0, %for.inc.for.body_crit_edge ]
  %mr_route = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %rve.045, i32 0, i32 3
  %7 = ptrtoint ptr %mr_route to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mr_route, align 4
  %min_mtu = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %min_mtu, align 4
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %mtu)
  %cmp8 = icmp sgt i32 %conv, %mtu
  br i1 %cmp8, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv11, ptr %min_mtu, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %route_min_mtu_update = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %route_min_mtu_update to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %route_min_mtu_update, align 4
  %16 = ptrtoint ptr %mr_route to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mr_route, align 4
  %route_priv = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %route_priv, align 4
  %call16 = tail call i32 %15(ptr noundef %1, ptr noundef %19, i16 noundef zeroext %conv11) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %rve.045 to i32
  call void @__asan_load4_noabort(i32 %20)
  %rve.0 = load ptr, ptr %rve.045, align 4
  %cmp.not = icmp eq ptr %rve.0, %route_evif_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %mlxsw_sp_mr_dev_vif_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_mr_table_create(ptr noundef %mlxsw_sp, i32 noundef %vr_id, i32 noundef %proto) local_unnamed_addr #0 align 64 {
entry:
  %catchall_route_params = alloca %struct.mlxsw_sp_mr_route_params, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %catchall_route_params) #14
  %0 = getelementptr inbounds i8, ptr %catchall_route_params, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %catchall_route_params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %vr_id, ptr %catchall_route_params, align 4
  %proto1 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %catchall_route_params, i32 0, i32 1
  %3 = ptrtoint ptr %proto1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %proto, ptr %proto1, align 4
  %value = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %catchall_route_params, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %value, align 4
  %prio = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %catchall_route_params, i32 0, i32 2
  %5 = ptrtoint ptr %prio to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %prio, align 4
  %mr2 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 11
  %6 = ptrtoint ptr %mr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mr2, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %route_priv_size = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %route_priv_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_priv_size, align 4
  %add = add i32 %11, 1376
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #19
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vr_id4 = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %vr_id4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %vr_id, ptr %vr_id4, align 16
  %mlxsw_sp5 = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %mlxsw_sp5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mlxsw_sp, ptr %mlxsw_sp5, align 4
  %proto6 = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %proto6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %proto, ptr %proto6, align 8
  %arrayidx = getelementptr [2 x %struct.mlxsw_sp_mr_table_ops], ptr @mlxsw_sp_mr_table_ops_arr, i32 0, i32 %proto
  %ops = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %ops, align 4
  %route_list = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %route_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %route_list, ptr %route_list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %route_list, ptr %prev.i, align 8
  %route_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %route_list_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlxsw_sp_mr_table_create.__key) #14
  %route_ht = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 7
  %call7 = tail call i32 @rhashtable_init(ptr noundef %route_ht, ptr noundef nonnull @mlxsw_sp_mr_route_ht_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond.preheader, label %if.end.err_route_rhashtable_init_crit_edge

if.end.err_route_rhashtable_init_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_route_rhashtable_init

for.cond.preheader:                               ; preds = %if.end
  %arrayidx14 = getelementptr [2 x %struct.mlxsw_sp_mr_vif_ops], ptr @mlxsw_sp_mr_vif_ops_arr, i32 0, i32 %proto
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.073 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %route_evif_list = getelementptr %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 4, i32 %i.073, i32 3
  %18 = ptrtoint ptr %route_evif_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %route_evif_list, ptr %route_evif_list, align 32
  %prev.i65 = getelementptr %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 4, i32 %i.073, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %route_evif_list, ptr %prev.i65, align 4
  %route_ivif_list = getelementptr %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 4, i32 %i.073, i32 4
  %20 = ptrtoint ptr %route_ivif_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %route_ivif_list, ptr %route_ivif_list, align 8
  %prev.i66 = getelementptr %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 4, i32 %i.073, i32 4, i32 1
  %21 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %route_ivif_list, ptr %prev.i66, align 4
  %ops17 = getelementptr %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 4, i32 %i.073, i32 5
  %22 = ptrtoint ptr %ops17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx14, ptr %ops17, align 16
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %route_create = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %route_create to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %route_create, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %7, i32 0, i32 5
  %catchall_route_priv = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %call9.i.i, i32 0, i32 9
  %call20 = call i32 %26(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr noundef %catchall_route_priv, ptr noundef nonnull %catchall_route_params) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %err_ops_route_create

if.end23:                                         ; preds = %for.end
  %table_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %7, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %table_list_lock, i32 noundef 0) #14
  %table_list = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %7, i32 0, i32 3
  %prev.i67 = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %7, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i67, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %28, ptr noundef %table_list) #14
  br i1 %call.i.i, label %if.end.i.i68, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i68:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %prev.i67, align 4
  %30 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %table_list, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call9.i.i, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i68, %if.end23.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %table_list_lock) #14
  br label %cleanup

err_ops_route_create:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @rhashtable_destroy(ptr noundef %route_ht) #14
  br label %err_route_rhashtable_init

err_route_rhashtable_init:                        ; preds = %err_ops_route_create, %if.end.err_route_rhashtable_init_crit_edge
  %err.0 = phi i32 [ %call7, %if.end.err_route_rhashtable_init_crit_edge ], [ %call20, %err_ops_route_create ]
  call void @mutex_destroy(ptr noundef %route_list_lock) #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  %33 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_route_rhashtable_init, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %err_route_rhashtable_init ], [ %call9.i.i, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %catchall_route_params) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mr_table_destroy(ptr noundef %mr_table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 4
  %mr2 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr2, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %mlxsw_sp_mr_table_empty.exit, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %i.05.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.do.end_crit_edge, !prof !98

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

mlxsw_sp_mr_table_empty.exit:                     ; preds = %for.cond.i
  %route_list.i = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 5
  %6 = ptrtoint ptr %route_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %route_list.i, align 4
  %cmp.i.i = icmp eq ptr %7, %route_list.i
  br i1 %cmp.i.i, label %mlxsw_sp_mr_table_empty.exit.if.end_crit_edge, label %mlxsw_sp_mr_table_empty.exit.do.end_crit_edge, !prof !86

mlxsw_sp_mr_table_empty.exit.do.end_crit_edge:    ; preds = %mlxsw_sp_mr_table_empty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

mlxsw_sp_mr_table_empty.exit.if.end_crit_edge:    ; preds = %mlxsw_sp_mr_table_empty.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %mlxsw_sp_mr_table_empty.exit.do.end_crit_edge, %for.body.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 960, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %mlxsw_sp_mr_table_empty.exit.if.end_crit_edge
  %table_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %table_list_lock, i32 noundef 0) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mr_table) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mr_table, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %mr_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mr_table, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %14 = ptrtoint ptr %mr_table to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %mr_table, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mr_table, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %table_list_lock) #14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %route_destroy = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %route_destroy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %route_destroy, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %3, i32 0, i32 5
  %catchall_route_priv = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 9
  tail call void %19(ptr noundef %1, ptr noundef %priv, ptr noundef %catchall_route_priv) #14
  %route_ht = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 7
  tail call void @rhashtable_destroy(ptr noundef %route_ht) #14
  %route_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %route_list_lock) #14
  tail call void @kfree(ptr noundef %mr_table) #14
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_mr_table_empty(ptr noundef %mr_table) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %route_list = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 5
  %2 = ptrtoint ptr %route_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %route_list, align 4
  %cmp.i = icmp eq ptr %3, %route_list
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.i, %for.end ], [ false, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mr_table_flush(ptr noundef %mr_table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %route_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %route_list_lock, i32 noundef 0) #14
  %route_list = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 5
  %0 = ptrtoint ptr %route_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route_list, align 4
  %cmp.not33 = icmp eq ptr %1, %route_list
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mr_route.034 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mr_route.034 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %mr_route.034, align 4
  tail call fastcc void @__mlxsw_sp_mr_route_del(ptr noundef %mr_table, ptr noundef %mr_route.034)
  %cmp.not = icmp eq ptr %tmp.0, %route_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %route_list_lock) #14
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.end
  %i.035 = phi i32 [ 0, %for.end ], [ %inc, %for.body16.for.body16_crit_edge ]
  %arrayidx = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %i.035
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 4
  %rif = getelementptr %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 4, i32 %i.035, i32 1
  %4 = ptrtoint ptr %rif to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rif, align 4
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end20, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16

for.end20:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_mr_init(ptr noundef %mlxsw_sp, ptr noundef %mr_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mr_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mr_ops, align 4
  %add = add i32 %1, 208
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #19
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mr_ops, ptr %call9.i.i, align 128
  %mr2 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 11
  %3 = ptrtoint ptr %mr2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %mr2, align 4
  %table_list = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %table_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %table_list, ptr %table_list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %table_list, ptr %prev.i, align 16
  %table_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %table_list_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @mlxsw_sp_mr_init.__key) #14
  %init = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %mr_ops, i32 0, i32 2
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 5
  %call3 = tail call i32 %7(ptr noundef %mlxsw_sp, ptr noundef %priv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body8, label %err29

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %stats_update_dw = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %stats_update_dw, i32 noundef 0) #14
  %8 = ptrtoint ptr %stats_update_dw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %stats_update_dw, align 8
  %lockdep_map = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlxsw_sp_mr_init.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry15 = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i51 = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry15, ptr %prev.i51, align 16
  %func = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlxsw_sp_mr_stats_update, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %call9.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlxsw_sp_mr_init.__key.9) #14
  %call28 = tail call i32 @mlxsw_core_schedule_dw(ptr noundef %stats_update_dw, i32 noundef 500) #14
  br label %cleanup

err29:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_destroy(ptr noundef %table_list_lock) #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err29, %do.body8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %err29 ], [ 0, %do.body8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_mr_stats_update(ptr noundef %work) #0 align 64 {
entry:
  %packets.i = alloca i64, align 8
  %bytes.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %table_list_lock = getelementptr i8, ptr %work, i32 108
  tail call void @mutex_lock_nested(ptr noundef %table_list_lock, i32 noundef 0) #14
  %table_list = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %table_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %mr_table.045 = load ptr, ptr %table_list, align 4
  %cmp.not46 = icmp eq ptr %mr_table.045, %table_list
  br i1 %cmp.not46, label %entry.for.end27_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end27

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %mr_table.047 = phi ptr [ %mr_table.0, %for.end.for.body_crit_edge ], [ %mr_table.045, %entry.for.body_crit_edge ]
  %route_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table.047, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %route_list_lock, i32 noundef 0) #14
  %route_list = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table.047, i32 0, i32 5
  %1 = ptrtoint ptr %route_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %mr_route.042 = load ptr, ptr %route_list, align 4
  %cmp12.not43 = icmp eq ptr %mr_route.042, %route_list
  br i1 %cmp12.not43, label %for.body.for.end_crit_edge, label %for.body14.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body14.lr.ph:                                 ; preds = %for.body
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table.047, i32 0, i32 2
  br label %for.body14

for.body14:                                       ; preds = %mlxsw_sp_mr_route_stats_update.exit.for.body14_crit_edge, %for.body14.lr.ph
  %mr_route.044 = phi ptr [ %mr_route.042, %for.body14.lr.ph ], [ %mr_route.0, %mlxsw_sp_mr_route_stats_update.exit.for.body14_crit_edge ]
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %mr1.i = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %mr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mr1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets.i) #14
  %6 = ptrtoint ptr %packets.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %packets.i, align 8, !annotation !99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes.i) #14
  %7 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %bytes.i, align 8, !annotation !99
  %route_action.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route.044, i32 0, i32 3
  %8 = ptrtoint ptr %route_action.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %for.body14.mlxsw_sp_mr_route_stats_update.exit_crit_edge, label %if.end.i

for.body14.mlxsw_sp_mr_route_stats_update.exit_crit_edge: ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_route_stats_update.exit

if.end.i:                                         ; preds = %for.body14
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %route_stats.i = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %route_stats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %route_stats.i, align 4
  %route_priv.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route.044, i32 0, i32 6
  %14 = ptrtoint ptr %route_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %route_priv.i, align 4
  %call.i = call i32 %13(ptr noundef %3, ptr noundef %15, ptr noundef nonnull %packets.i, ptr noundef nonnull %bytes.i) #14
  %mfc.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route.044, i32 0, i32 5
  %16 = ptrtoint ptr %mfc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mfc.i, align 4
  %pkt.i = getelementptr inbounds %struct.mr_mfc, ptr %17, i32 0, i32 3, i32 0, i32 4
  %18 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pkt.i, align 4
  %conv.i = zext i32 %19 to i64
  %20 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv.i)
  %cmp2.not.i = icmp eq i64 %21, %conv.i
  br i1 %cmp2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.mr_mfc, ptr %17, i32 0, i32 3, i32 0, i32 6
  %23 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lastuse.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %conv8.i = trunc i64 %21 to i32
  %24 = ptrtoint ptr %mfc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mfc.i, align 4
  %pkt11.i = getelementptr inbounds %struct.mr_mfc, ptr %25, i32 0, i32 3, i32 0, i32 4
  %26 = ptrtoint ptr %pkt11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv8.i, ptr %pkt11.i, align 4
  %27 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytes.i, align 8
  %conv12.i = trunc i64 %28 to i32
  %29 = load ptr, ptr %mfc.i, align 4
  %bytes15.i = getelementptr inbounds %struct.mr_mfc, ptr %29, i32 0, i32 3, i32 0, i32 3
  %30 = ptrtoint ptr %bytes15.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv12.i, ptr %bytes15.i, align 4
  br label %mlxsw_sp_mr_route_stats_update.exit

mlxsw_sp_mr_route_stats_update.exit:              ; preds = %if.end7.i, %for.body14.mlxsw_sp_mr_route_stats_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets.i) #14
  %31 = ptrtoint ptr %mr_route.044 to i32
  call void @__asan_load4_noabort(i32 %31)
  %mr_route.0 = load ptr, ptr %mr_route.044, align 4
  %cmp12.not = icmp eq ptr %mr_route.0, %route_list
  br i1 %cmp12.not, label %mlxsw_sp_mr_route_stats_update.exit.for.end_crit_edge, label %mlxsw_sp_mr_route_stats_update.exit.for.body14_crit_edge

mlxsw_sp_mr_route_stats_update.exit.for.body14_crit_edge: ; preds = %mlxsw_sp_mr_route_stats_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body14

mlxsw_sp_mr_route_stats_update.exit.for.end_crit_edge: ; preds = %mlxsw_sp_mr_route_stats_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %mlxsw_sp_mr_route_stats_update.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %route_list_lock) #14
  %32 = ptrtoint ptr %mr_table.047 to i32
  call void @__asan_load4_noabort(i32 %32)
  %mr_table.0 = load ptr, ptr %mr_table.047, align 4
  %cmp.not = icmp eq ptr %mr_table.0, %table_list
  br i1 %cmp.not, label %for.end.for.end27_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end27

for.end27:                                        ; preds = %for.end.for.end27_crit_edge, %entry.for.end27_crit_edge
  call void @mutex_unlock(ptr noundef %table_list_lock) #14
  %call29 = call i32 @mlxsw_core_schedule_dw(ptr noundef %work, i32 noundef 500) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_schedule_dw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_mr_fini(ptr noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mr1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 11
  %0 = ptrtoint ptr %mr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr1, align 4
  %stats_update_dw = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %1, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stats_update_dw) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fini = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %1, i32 0, i32 5
  tail call void %5(ptr noundef %mlxsw_sp, ptr noundef %priv) #14
  %table_list_lock = getelementptr inbounds %struct.mlxsw_sp_mr, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %table_list_lock) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_mr_route_action(ptr noundef %mr_route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_vif = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %mr_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_vif, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call zeroext i1 %5(ptr noundef %1) #14
  br i1 %call.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %mlxsw_sp_mr_vif_valid.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

mlxsw_sp_mr_vif_valid.exit:                       ; preds = %land.lhs.true.i
  %rif.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rif.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rif.i, align 4
  %tobool1.i.not = icmp eq ptr %9, null
  br i1 %tobool1.i.not, label %mlxsw_sp_mr_vif_valid.exit.cleanup_crit_edge, label %if.end

mlxsw_sp_mr_vif_valid.exit.cleanup_crit_edge:     ; preds = %mlxsw_sp_mr_vif_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_mr_vif_valid.exit
  %mr_table = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 7
  %10 = ptrtoint ptr %mr_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mr_table, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %is_route_starg = getelementptr inbounds %struct.mlxsw_sp_mr_table_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %is_route_starg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %is_route_starg, align 4
  %call2 = tail call zeroext i1 %15(ptr noundef %11, ptr noundef %mr_route) #14
  br i1 %call2, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %mfc.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 5
  %16 = ptrtoint ptr %mfc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mfc.i, align 4
  %mfc_parent.i = getelementptr inbounds %struct.mr_mfc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %mfc_parent.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mfc_parent.i, align 4
  %idxprom.i = zext i16 %19 to i32
  %arrayidx.i = getelementptr %struct.mr_mfc, ptr %17, i32 0, i32 3, i32 0, i32 7, i32 %idxprom.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp.i.not = icmp eq i8 %21, -1
  br i1 %cmp.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %evif_list.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 8
  %22 = ptrtoint ptr %evif_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn12.i = load ptr, ptr %evif_list.i, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %evif_list.i
  br i1 %cmp.not13.i, label %if.end5.cleanup_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge ], [ %.pn12.i, %if.end5.for.body.i_crit_edge ]
  %valid_evifs.014.i = phi i32 [ %33, %mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %mr_vif.i = getelementptr i8, ptr %.pn15.i, i32 8
  %23 = ptrtoint ptr %mr_vif.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mr_vif.i, align 4
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i.i = tail call zeroext i1 %28(ptr noundef %24) #14
  br i1 %call.i.i, label %land.lhs.true.i.i, label %for.body.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge

for.body.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_vif_valid.exit.thread.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge, label %mlxsw_sp_mr_vif_valid.exit.i

land.lhs.true.i.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_vif_valid.exit.thread.i

mlxsw_sp_mr_vif_valid.exit.i:                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rif.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %rif.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rif.i.i, align 4
  %tobool1.i.not.i = icmp ne ptr %32, null
  %inc.i = zext i1 %tobool1.i.not.i to i32
  %spec.select.i = add i32 %valid_evifs.014.i, %inc.i
  br label %mlxsw_sp_mr_vif_valid.exit.thread.i

mlxsw_sp_mr_vif_valid.exit.thread.i:              ; preds = %mlxsw_sp_mr_vif_valid.exit.i, %land.lhs.true.i.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge, %for.body.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge
  %33 = phi i32 [ %valid_evifs.014.i, %land.lhs.true.i.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge ], [ %valid_evifs.014.i, %for.body.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge ], [ %spec.select.i, %mlxsw_sp_mr_vif_valid.exit.i ]
  %34 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %evif_list.i
  br i1 %cmp.not.i, label %mlxsw_sp_mr_route_valid_evifs_num.exit, label %mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge

mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge: ; preds = %mlxsw_sp_mr_vif_valid.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

mlxsw_sp_mr_route_valid_evifs_num.exit:           ; preds = %mlxsw_sp_mr_vif_valid.exit.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %mlxsw_sp_mr_route_valid_evifs_num.exit.cleanup_crit_edge, label %for.cond.preheader

mlxsw_sp_mr_route_valid_evifs_num.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_mr_route_valid_evifs_num.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %mlxsw_sp_mr_route_valid_evifs_num.exit
  %35 = ptrtoint ptr %evif_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn34 = load ptr, ptr %evif_list.i, align 4
  %cmp.not35 = icmp eq ptr %.pn34, %evif_list.i
  br i1 %cmp.not35, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn34, %for.cond.preheader.for.body_crit_edge ]
  %mr_vif10 = getelementptr i8, ptr %.pn36, i32 8
  %36 = ptrtoint ptr %mr_vif10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mr_vif10, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool.i.not = icmp eq ptr %39, null
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %land.lhs.true12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true12:                                  ; preds = %for.body
  %rif = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %rif to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rif, align 4
  %tobool14.not = icmp eq ptr %41, null
  br i1 %tobool14.not, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %42 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %evif_list.i
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %mlxsw_sp_mr_route_valid_evifs_num.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %mlxsw_sp_mr_vif_valid.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %mlxsw_sp_mr_vif_valid.exit.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %mlxsw_sp_mr_route_valid_evifs_num.exit.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 2, %land.lhs.true12.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_rif_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !100
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !98

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !101
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !102
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !86

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !103
  %7 = tail call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !105
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !106
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #14
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !85

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #14, !srcloc !107
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #14, !srcloc !109
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !110
  %3 = tail call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !111
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !112
  %2 = tail call i32 @llvm.read_register.i32(metadata !74) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_mr_route_evif_unresolve(ptr nocapture noundef readonly %mr_table, ptr nocapture noundef readonly %rve) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 4
  %mr2 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mr2, align 4
  %mr_vif = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %rve, i32 0, i32 2
  %4 = ptrtoint ptr %mr_vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mr_vif, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call zeroext i1 %9(ptr noundef %5) #14
  br i1 %call.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %mlxsw_sp_mr_vif_valid.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

mlxsw_sp_mr_vif_valid.exit:                       ; preds = %land.lhs.true.i
  %rif.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %rif.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rif.i, align 4
  %tobool1.i.not = icmp eq ptr %13, null
  br i1 %tobool1.i.not, label %mlxsw_sp_mr_vif_valid.exit.cleanup_crit_edge, label %if.end

mlxsw_sp_mr_vif_valid.exit.cleanup_crit_edge:     ; preds = %mlxsw_sp_mr_vif_valid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_mr_vif_valid.exit
  %mr_route = getelementptr inbounds %struct.mlxsw_sp_mr_route_vif_entry, ptr %rve, i32 0, i32 3
  %14 = ptrtoint ptr %mr_route to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mr_route, align 4
  %evif_list.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %evif_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn12.i = load ptr, ptr %evif_list.i, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %evif_list.i
  br i1 %cmp.not13.i, label %if.end.if.else_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

for.body.i:                                       ; preds = %mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge ], [ %.pn12.i, %if.end.for.body.i_crit_edge ]
  %valid_evifs.014.i = phi i32 [ %27, %mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %mr_vif.i = getelementptr i8, ptr %.pn15.i, i32 8
  %17 = ptrtoint ptr %mr_vif.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mr_vif.i, align 4
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i.i = tail call zeroext i1 %22(ptr noundef %18) #14
  br i1 %call.i.i, label %land.lhs.true.i.i, label %for.body.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge

for.body.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_vif_valid.exit.thread.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge, label %mlxsw_sp_mr_vif_valid.exit.i

land.lhs.true.i.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlxsw_sp_mr_vif_valid.exit.thread.i

mlxsw_sp_mr_vif_valid.exit.i:                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rif.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %rif.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rif.i.i, align 4
  %tobool1.i.not.i = icmp ne ptr %26, null
  %inc.i = zext i1 %tobool1.i.not.i to i32
  %spec.select.i = add i32 %valid_evifs.014.i, %inc.i
  br label %mlxsw_sp_mr_vif_valid.exit.thread.i

mlxsw_sp_mr_vif_valid.exit.thread.i:              ; preds = %mlxsw_sp_mr_vif_valid.exit.i, %land.lhs.true.i.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge, %for.body.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge
  %27 = phi i32 [ %valid_evifs.014.i, %land.lhs.true.i.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge ], [ %valid_evifs.014.i, %for.body.i.mlxsw_sp_mr_vif_valid.exit.thread.i_crit_edge ], [ %spec.select.i, %mlxsw_sp_mr_vif_valid.exit.i ]
  %28 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %evif_list.i
  br i1 %cmp.not.i, label %mlxsw_sp_mr_route_valid_evifs_num.exit, label %mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge

mlxsw_sp_mr_vif_valid.exit.thread.i.for.body.i_crit_edge: ; preds = %mlxsw_sp_mr_vif_valid.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

mlxsw_sp_mr_route_valid_evifs_num.exit:           ; preds = %mlxsw_sp_mr_vif_valid.exit.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %mlxsw_sp_mr_route_valid_evifs_num.exit.if.end7_crit_edge, label %mlxsw_sp_mr_route_valid_evifs_num.exit.if.else_crit_edge

mlxsw_sp_mr_route_valid_evifs_num.exit.if.else_crit_edge: ; preds = %mlxsw_sp_mr_route_valid_evifs_num.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

mlxsw_sp_mr_route_valid_evifs_num.exit.if.end7_crit_edge: ; preds = %mlxsw_sp_mr_route_valid_evifs_num.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.else:                                          ; preds = %mlxsw_sp_mr_route_valid_evifs_num.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %29 = ptrtoint ptr %mr_route to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mr_route, align 4
  %call6 = tail call fastcc i32 @mlxsw_sp_mr_route_action(ptr noundef %30)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %mlxsw_sp_mr_route_valid_evifs_num.exit.if.end7_crit_edge
  %route_action.0 = phi i32 [ %call6, %if.else ], [ 1, %mlxsw_sp_mr_route_valid_evifs_num.exit.if.end7_crit_edge ]
  %31 = ptrtoint ptr %mr_route to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mr_route, align 4
  %route_action9 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %route_action9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %route_action9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %route_action.0, i32 %34)
  %cmp10.not = icmp eq i32 %route_action.0, %34
  br i1 %cmp10.not, label %if.end7.if.end14_crit_edge, label %if.then11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %route_action_update = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %route_action_update to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %route_action_update, align 4
  %route_priv = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %32, i32 0, i32 6
  %39 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %route_priv, align 4
  %call13 = tail call i32 %38(ptr noundef %1, ptr noundef %40, i32 noundef %route_action.0) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  %41 = ptrtoint ptr %mr_vif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mr_vif, align 4
  %rif = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %rif to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rif, align 4
  %call16 = tail call zeroext i16 @mlxsw_sp_rif_index(ptr noundef %44) #14
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %route_erif_del = getelementptr inbounds %struct.mlxsw_sp_mr_ops, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %route_erif_del to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %route_erif_del, align 4
  %49 = ptrtoint ptr %mr_route to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mr_route, align 4
  %route_priv19 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %route_priv19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %route_priv19, align 4
  %call20 = tail call i32 %48(ptr noundef %1, ptr noundef %52, i16 noundef zeroext %call16) #14
  %53 = ptrtoint ptr %mr_route to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mr_route, align 4
  %route_action22 = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %route_action22 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %route_action.0, ptr %route_action22, align 4
  %56 = load ptr, ptr %mr_route, align 4
  %route_action.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %route_action.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %route_action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.not.i40 = icmp eq i32 %58, 1
  %mfc.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %56, i32 0, i32 5
  %59 = ptrtoint ptr %mfc.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mfc.i.i, align 4
  %mfc_flags.i.i = getelementptr inbounds %struct.mr_mfc, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %mfc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mfc_flags.i.i, align 4
  %and.i.i = and i32 %62, -3
  %masksel.i.i = select i1 %cmp.not.i40, i32 0, i32 2
  %and.sink.i.i = or i32 %and.i.i, %masksel.i.i
  store i32 %and.sink.i.i, ptr %mfc_flags.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %mlxsw_sp_mr_vif_valid.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlxsw_sp_mr_route4_validate(ptr nocapture noundef readonly %mr_table, ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mfc_origin = getelementptr inbounds %struct.mfc_cache, ptr %c, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mfc_origin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.mfc_cache, ptr %c, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %do.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %5 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mlxsw_sp, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.1) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_mr_route4_key(ptr nocapture noundef readonly %mr_table, ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %c) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mfc_cache, ptr %c, i32 0, i32 1
  %mfc_origin = getelementptr inbounds %struct.mfc_cache, ptr %c, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mfc_origin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp ne i32 %2, 0
  %3 = call ptr @memset(ptr %key, i32 0, i32 72)
  %vr_id = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 3
  %4 = ptrtoint ptr %vr_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vr_id, align 4
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %key, align 4
  %proto = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %proto, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %group = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2
  %10 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %group, align 4
  %group_mask = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3
  %11 = ptrtoint ptr %group_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %group_mask, align 4
  %12 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mfc_origin, align 4
  %source = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4
  %14 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %source, align 4
  %cond = sext i1 %cmp to i32
  %source_mask = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5
  %15 = ptrtoint ptr %source_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %source_mask, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_mr_route4_starg(ptr nocapture noundef readnone %mr_table, ptr nocapture noundef readonly %mr_route) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %source_mask = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %source_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %source_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlxsw_sp_mr_route6_validate(ptr nocapture noundef readonly %mr_table, ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mf6c_origin = getelementptr inbounds %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mf6c_origin, align 4
  %arrayidx2.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %5
  %arrayidx7.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %8 = getelementptr inbounds %struct.mfc6_cache, ptr %c, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %arrayidx2.i3 = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.i3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i3, align 4
  %or.i4 = or i32 %12, %10
  %arrayidx4.i5 = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx4.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i5, align 4
  %or5.i6 = or i32 %or.i4, %14
  %arrayidx7.i7 = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx7.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i7, align 4
  %or8.i8 = or i32 %or5.i6, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i8)
  %cmp.i9 = icmp eq i32 %or8.i8, 0
  br i1 %cmp.i9, label %do.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 2
  %17 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mlxsw_sp, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.1) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_mr_route6_key(ptr nocapture noundef readonly %mr_table, ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %c) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %key, i32 0, i32 72)
  %vr_id = getelementptr inbounds %struct.mlxsw_sp_mr_table, ptr %mr_table, i32 0, i32 3
  %1 = ptrtoint ptr %vr_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vr_id, align 4
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %key, align 4
  %proto = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %proto, align 4
  %group = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mfc6_cache, ptr %c, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %group, ptr %5, i32 16)
  %group_mask = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3
  %7 = call ptr @memset(ptr %group_mask, i32 255, i32 16)
  %source = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4
  %mf6c_origin = getelementptr inbounds %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %source, ptr %mf6c_origin, i32 16)
  %9 = ptrtoint ptr %mf6c_origin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mf6c_origin, align 4
  %arrayidx2.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %12, %10
  %arrayidx4.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %14
  %arrayidx7.i = getelementptr %struct.mfc6_cache, ptr %c, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %source_mask = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5
  %17 = call ptr @memset(ptr %source_mask, i32 255, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_mr_route6_starg(ptr nocapture noundef readnone %mr_table, ptr nocapture noundef readonly %mr_route) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %source_mask = getelementptr inbounds %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %source_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %source_mask, align 4
  %arrayidx2.i = getelementptr %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 2, i32 5, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 2, i32 5, i32 0, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %5
  %arrayidx7.i = getelementptr %struct.mlxsw_sp_mr_route, ptr %mr_route, i32 0, i32 2, i32 5, i32 0, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  ret i1 %cmp.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_mr_vif4_is_regular(ptr nocapture noundef readonly %vif) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vif_flags = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %vif_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif_flags, align 4
  %and = and i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_mr_vif6_is_regular(ptr nocapture noundef readonly %vif) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vif_flags = getelementptr inbounds %struct.mlxsw_sp_mr_vif, ptr %vif, i32 0, i32 2
  %0 = ptrtoint ptr %vif_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !37, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 408, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 417, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mlxsw_sp_mr_route_add._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @mlxsw_sp_mr_route_add._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @mlxsw_sp_mr_table_create.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 924, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlxsw_sp_mr_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 1050, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlxsw_sp_mr_init.__key.7, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 1057, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mlxsw_sp_mr_init.__key.9, !16, !"__key", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlxsw_sp_mr_route_ht_params, !36, !"mlxsw_sp_mr_route_ht_params", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 93, i32 39}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 376, i32 2}
!62 = !{ptr @mlxsw_sp_mr_table_ops_arr, !63, !"mlxsw_sp_mr_table_ops_arr", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 881, i32 23}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 788, i32 3}
!66 = !{ptr @mlxsw_sp_mr_route4_validate._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mlxsw_sp_mr_route4_validate._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 835, i32 3}
!70 = !{ptr @mlxsw_sp_mr_route6_validate._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mlxsw_sp_mr_route6_validate._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mlxsw_sp_mr_vif_ops_arr, !73, !"mlxsw_sp_mr_vif_ops_arr", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr.c", i32 871, i32 21}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148383020, i64 2148383052, i64 2148383081, i64 2148383115, i64 2148383146, i64 2148383169}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148471021}
!88 = !{i64 2148385485, i64 2148385517, i64 2148385546, i64 2148385580, i64 2148385611, i64 2148385634}
!89 = !{i64 2150931267}
!90 = !{i64 2149441749}
!91 = !{i64 2149442015}
!92 = !{i64 2148381490, i64 2148381516, i64 2148381545, i64 2148381579, i64 2148381610, i64 2148381633}
!93 = !{i64 2149670251}
!94 = !{i64 2149673685}
!95 = !{i64 2149737627}
!96 = !{i64 2148383955, i64 2148383981, i64 2148384010, i64 2148384044, i64 2148384075, i64 2148384098}
!97 = !{i8 0, i8 2}
!98 = !{!"branch_weights", i32 2146410443, i32 1073205}
!99 = !{!"auto-init"}
!100 = !{i64 2149632574}
!101 = !{i64 2148390348, i64 2148390380, i64 2148390409, i64 2148390443, i64 2148390474, i64 2148390497}
!102 = !{i64 2148479429}
!103 = !{i64 2149632734}
!104 = !{i64 2149633011}
!105 = !{i64 2149632853}
!106 = !{i64 2149633216}
!107 = !{i64 2149634279, i64 2149634771, i64 2149634316, i64 2149634372, i64 2149634406, i64 2149634430, i64 2149634471, i64 2149634492, i64 2149634520, i64 2149634554}
!108 = !{i64 2148478316}
!109 = !{i64 2148388735, i64 2148388767, i64 2148388796, i64 2148388830, i64 2148388861, i64 2148388884}
!110 = !{i64 2149635674}
!111 = !{i64 2149663324}
!112 = !{i64 2149665623}
