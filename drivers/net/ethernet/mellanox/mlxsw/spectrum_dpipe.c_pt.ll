; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_dpipe_headers = type { ptr, i32 }
%struct.devlink_dpipe_header = type { ptr, i32, ptr, i32, i8 }
%struct.devlink_dpipe_field = type { ptr, i32, i32, i32 }
%struct.devlink_dpipe_table_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.devlink_dpipe_action = type { i32, i32, ptr, i32 }
%struct.devlink_dpipe_match = type { i32, i32, ptr, i32 }
%struct.devlink_dpipe_value = type { %union.anon.180, i32, i8, i32, ptr, ptr }
%union.anon.180 = type { ptr }
%struct.devlink_dpipe_entry = type { i64, ptr, i32, ptr, i32, i64, i8 }
%struct.mlxsw_sp_router = type { ptr, ptr, %struct.idr, %struct.atomic_t, i8, ptr, %struct.rhashtable, %struct.rhashtable, %struct.rhashtable, %struct.list_head, %struct.anon.169, %struct.anon.170, %struct.delayed_work, %struct.list_head, %struct.list_head, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, %struct.mlxsw_sp_router_nve_decap, %struct.mutex, %struct.work_struct, %struct.list_head, %struct.spinlock, [2 x ptr], ptr, i16, ptr, ptr, i32, %struct.delayed_work, %struct.list_head, i8, %struct.refcount_struct, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.anon.169 = type { [2 x ptr], ptr, i32 }
%struct.anon.170 = type { %struct.delayed_work, i32 }
%struct.mlxsw_sp_router_nve_decap = type { i32, i32, i32, %union.mlxsw_sp_l3addr, i8 }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@mlxsw_sp_dpipe_headers = internal global { %struct.devlink_dpipe_headers, [24 x i8] } { %struct.devlink_dpipe_headers { ptr @mlxsw_dpipe_headers, i32 4 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_dpipe_headers = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mlxsw_sp_dpipe_header_metadata, ptr @devlink_dpipe_header_ethernet, ptr @devlink_dpipe_header_ipv4, ptr @devlink_dpipe_header_ipv6], [16 x i8] zeroinitializer }, align 32
@mlxsw_sp_dpipe_header_metadata = internal global { %struct.devlink_dpipe_header, [44 x i8] } { %struct.devlink_dpipe_header { ptr @.str, i32 0, ptr @mlxsw_sp_dpipe_fields_metadata, i32 6, i8 0 }, [44 x i8] zeroinitializer }, align 32
@devlink_dpipe_header_ethernet = external dso_local global %struct.devlink_dpipe_header, align 4
@devlink_dpipe_header_ipv4 = external dso_local global %struct.devlink_dpipe_header, align 4
@devlink_dpipe_header_ipv6 = external dso_local global %struct.devlink_dpipe_header, align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlxsw_meta\00", [21 x i8] zeroinitializer }, align 32
@mlxsw_sp_dpipe_fields_metadata = internal global { [6 x %struct.devlink_dpipe_field], [32 x i8] } { [6 x %struct.devlink_dpipe_field] [%struct.devlink_dpipe_field { ptr @.str.1, i32 0, i32 32, i32 1 }, %struct.devlink_dpipe_field { ptr @.str.2, i32 1, i32 1, i32 0 }, %struct.devlink_dpipe_field { ptr @.str.3, i32 2, i32 1, i32 0 }, %struct.devlink_dpipe_field { ptr @.str.4, i32 3, i32 32, i32 0 }, %struct.devlink_dpipe_field { ptr @.str.5, i32 4, i32 32, i32 0 }, %struct.devlink_dpipe_field { ptr @.str.6, i32 5, i32 32, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"erif_port\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l3_forward\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l3_drop\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adj_index\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adj_size\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adj_hash_index\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlxsw_erif\00", [21 x i8] zeroinitializer }, align 32
@mlxsw_sp_erif_ops = internal global { %struct.devlink_dpipe_table_ops, [44 x i8] } { %struct.devlink_dpipe_table_ops { ptr @mlxsw_sp_dpipe_table_erif_actions_dump, ptr @mlxsw_sp_dpipe_table_erif_matches_dump, ptr @mlxsw_sp_dpipe_table_erif_entries_dump, ptr @mlxsw_sp_dpipe_table_erif_counters_update, ptr @mlxsw_sp_dpipe_table_erif_size_get }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlxsw_host4\00", [20 x i8] zeroinitializer }, align 32
@mlxsw_sp_host4_ops = internal global { %struct.devlink_dpipe_table_ops, [44 x i8] } { %struct.devlink_dpipe_table_ops { ptr @mlxsw_sp_dpipe_table_host_actions_dump, ptr @mlxsw_sp_dpipe_table_host4_matches_dump, ptr @mlxsw_sp_dpipe_table_host4_entries_dump, ptr @mlxsw_sp_dpipe_table_host4_counters_update, ptr @mlxsw_sp_dpipe_table_host4_size_get }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlxsw_host6\00", [20 x i8] zeroinitializer }, align 32
@mlxsw_sp_host6_ops = internal global { %struct.devlink_dpipe_table_ops, [44 x i8] } { %struct.devlink_dpipe_table_ops { ptr @mlxsw_sp_dpipe_table_host_actions_dump, ptr @mlxsw_sp_dpipe_table_host6_matches_dump, ptr @mlxsw_sp_dpipe_table_host6_entries_dump, ptr @mlxsw_sp_dpipe_table_host6_counters_update, ptr @mlxsw_sp_dpipe_table_host6_size_get }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlxsw_adj\00", [22 x i8] zeroinitializer }, align 32
@mlxsw_sp_dpipe_table_adj_ops = internal global { %struct.devlink_dpipe_table_ops, [44 x i8] } { %struct.devlink_dpipe_table_ops { ptr @mlxsw_sp_dpipe_table_adj_actions_dump, ptr @mlxsw_sp_dpipe_table_adj_matches_dump, ptr @mlxsw_sp_dpipe_table_adj_entries_dump, ptr @mlxsw_sp_dpipe_table_adj_counters_update, ptr @mlxsw_sp_dpipe_table_adj_size_get }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967206]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967206]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967206]
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_dpipe_headers\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 73, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"mlxsw_dpipe_headers\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 66, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_dpipe_header_metadata\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 59, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 60, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_dpipe_fields_metadata\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 21, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 23, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 29, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 34, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 39, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 44, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 49, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 299, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"mlxsw_sp_erif_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 286, i32 39 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 753, i32 9 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"mlxsw_sp_host4_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 737, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 336, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 830, i32 9 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"mlxsw_sp_host6_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 814, i32 39 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1235, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant [29 x i8] c"mlxsw_sp_dpipe_table_adj_ops\00", align 1
@___asan_gen_.75 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1219, i32 39 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @mlxsw_sp_dpipe_headers, ptr @mlxsw_dpipe_headers, ptr @mlxsw_sp_dpipe_header_metadata, ptr @.str, ptr @mlxsw_sp_dpipe_fields_metadata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mlxsw_sp_erif_ops, ptr @.str.8, ptr @mlxsw_sp_host4_ops, ptr @.str.9, ptr @.str.10, ptr @mlxsw_sp_host6_ops, ptr @.str.11, ptr @mlxsw_sp_dpipe_table_adj_ops], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_dpipe_headers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_dpipe_headers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_dpipe_header_metadata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_dpipe_fields_metadata to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_erif_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_host4_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_host6_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_dpipe_table_adj_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_dpipe_init(ptr noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #5
  %call1 = tail call i32 @devlink_dpipe_headers_register(ptr noundef %call, ptr noundef nonnull @mlxsw_sp_dpipe_headers) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %3) #5
  %call1.i = tail call i32 @devlink_dpipe_table_register(ptr noundef %call.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @mlxsw_sp_erif_ops, ptr noundef %mlxsw_sp, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_erif_table_init_crit_edge

if.end.err_erif_table_init_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_erif_table_init

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call.i36 = tail call ptr @priv_to_devlink(ptr noundef %5) #5
  %call1.i37 = tail call i32 @devlink_dpipe_table_register(ptr noundef %call.i36, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlxsw_sp_host4_ops, ptr noundef %mlxsw_sp, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.err_host4_table_init_crit_edge

if.end5.err_host4_table_init_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_host4_table_init

if.end.i:                                         ; preds = %if.end5
  %call2.i = tail call i32 @devlink_dpipe_table_resource_set(ptr noundef %call.i36, ptr noundef nonnull @.str.8, i64 noundef 4, i64 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end9, label %if.end.i.err_host4_table_init.sink.split_crit_edge

if.end.i.err_host4_table_init.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_host4_table_init.sink.split

if.end9:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call.i39 = tail call ptr @priv_to_devlink(ptr noundef %7) #5
  %call1.i40 = tail call i32 @devlink_dpipe_table_register(ptr noundef %call.i39, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlxsw_sp_host6_ops, ptr noundef %mlxsw_sp, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %if.end.i44, label %if.end9.err_host6_table_init_crit_edge

if.end9.err_host6_table_init_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_host6_table_init

if.end.i44:                                       ; preds = %if.end9
  %call2.i42 = tail call i32 @devlink_dpipe_table_resource_set(ptr noundef %call.i39, ptr noundef nonnull @.str.10, i64 noundef 5, i64 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i42)
  %tobool3.not.i43 = icmp eq i32 %call2.i42, 0
  br i1 %tobool3.not.i43, label %if.end13, label %err_resource_set.i45

err_resource_set.i45:                             ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call.i39, ptr noundef nonnull @.str.10) #5
  br label %err_host6_table_init

if.end13:                                         ; preds = %if.end.i44
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call.i48 = tail call ptr @priv_to_devlink(ptr noundef %9) #5
  %call1.i49 = tail call i32 @devlink_dpipe_table_register(ptr noundef %call.i48, ptr noundef nonnull @.str.11, ptr noundef nonnull @mlxsw_sp_dpipe_table_adj_ops, ptr noundef %mlxsw_sp, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %if.end.i53, label %if.end13.err_adj_table_init_crit_edge

if.end13.err_adj_table_init_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_adj_table_init

if.end.i53:                                       ; preds = %if.end13
  %call2.i51 = tail call i32 @devlink_dpipe_table_resource_set(ptr noundef %call.i48, ptr noundef nonnull @.str.11, i64 noundef 3, i64 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i51)
  %tobool3.not.i52 = icmp eq i32 %call2.i51, 0
  br i1 %tobool3.not.i52, label %if.end.i53.cleanup_crit_edge, label %err_resource_set.i54

if.end.i53.cleanup_crit_edge:                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_resource_set.i54:                             ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call.i48, ptr noundef nonnull @.str.11) #5
  br label %err_adj_table_init

err_adj_table_init:                               ; preds = %err_resource_set.i54, %if.end13.err_adj_table_init_crit_edge
  %retval.0.i55.ph = phi i32 [ %call1.i49, %if.end13.err_adj_table_init_crit_edge ], [ %call2.i51, %err_resource_set.i54 ]
  tail call fastcc void @mlxsw_sp_dpipe_host6_table_fini(ptr noundef %mlxsw_sp)
  br label %err_host6_table_init

err_host6_table_init:                             ; preds = %err_adj_table_init, %err_resource_set.i45, %if.end9.err_host6_table_init_crit_edge
  %err.0 = phi i32 [ %retval.0.i55.ph, %err_adj_table_init ], [ %call1.i40, %if.end9.err_host6_table_init_crit_edge ], [ %call2.i42, %err_resource_set.i45 ]
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %call.i57 = tail call ptr @priv_to_devlink(ptr noundef %11) #5
  br label %err_host4_table_init.sink.split

err_host4_table_init.sink.split:                  ; preds = %err_host6_table_init, %if.end.i.err_host4_table_init.sink.split_crit_edge
  %call.i36.sink = phi ptr [ %call.i57, %err_host6_table_init ], [ %call.i36, %if.end.i.err_host4_table_init.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %err.0, %err_host6_table_init ], [ %call2.i, %if.end.i.err_host4_table_init.sink.split_crit_edge ]
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call.i36.sink, ptr noundef nonnull @.str.8) #5
  br label %err_host4_table_init

err_host4_table_init:                             ; preds = %err_host4_table_init.sink.split, %if.end5.err_host4_table_init_crit_edge
  %err.1 = phi i32 [ %call1.i37, %if.end5.err_host4_table_init_crit_edge ], [ %err.1.ph, %err_host4_table_init.sink.split ]
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %call.i59 = tail call ptr @priv_to_devlink(ptr noundef %13) #5
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call.i59, ptr noundef nonnull @.str.7) #5
  br label %err_erif_table_init

err_erif_table_init:                              ; preds = %err_host4_table_init, %if.end.err_erif_table_init_crit_edge
  %err.2 = phi i32 [ %call1.i, %if.end.err_erif_table_init_crit_edge ], [ %err.1, %err_host4_table_init ]
  %14 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core, align 4
  %call19 = tail call ptr @priv_to_devlink(ptr noundef %15) #5
  tail call void @devlink_dpipe_headers_unregister(ptr noundef %call19) #5
  br label %cleanup

cleanup:                                          ; preds = %err_erif_table_init, %if.end.i53.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_erif_table_init ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.i53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_dpipe_headers_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_dpipe_host6_table_fini(ptr nocapture noundef readonly %mlxsw_sp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #5
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call, ptr noundef nonnull @.str.10) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_dpipe_headers_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_dpipe_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #5
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %3) #5
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call.i, ptr noundef nonnull @.str.11) #5
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call.i6 = tail call ptr @priv_to_devlink(ptr noundef %5) #5
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call.i6, ptr noundef nonnull @.str.10) #5
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call.i8 = tail call ptr @priv_to_devlink(ptr noundef %7) #5
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call.i8, ptr noundef nonnull @.str.8) #5
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call.i10 = tail call ptr @priv_to_devlink(ptr noundef %9) #5
  tail call void @devlink_dpipe_table_unregister(ptr noundef %call.i10, ptr noundef nonnull @.str.7) #5
  tail call void @devlink_dpipe_headers_unregister(ptr noundef %call) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_dpipe_table_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_erif_actions_dump(ptr nocapture noundef readnone %priv, ptr noundef %skb) #0 align 64 {
entry:
  %action = alloca %struct.devlink_dpipe_action, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %action) #5
  %header = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 2
  %0 = ptrtoint ptr %action to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %action, align 8
  %1 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header, align 8
  %field_id = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 3
  %2 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %field_id, align 4
  %call = call i32 @devlink_dpipe_action_put(ptr noundef %skb, ptr noundef nonnull %action) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %action, align 8
  %4 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header, align 8
  %5 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %field_id, align 4
  %call4 = call i32 @devlink_dpipe_action_put(ptr noundef %skb, ptr noundef nonnull %action) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %action) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_erif_matches_dump(ptr nocapture noundef readnone %priv, ptr noundef %skb) #0 align 64 {
entry:
  %match = alloca %struct.devlink_dpipe_match, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %match) #5
  %header = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match, i32 0, i32 2
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %match, align 8
  %1 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header, align 8
  %field_id = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match, i32 0, i32 3
  %2 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %field_id, align 4
  %call = call i32 @devlink_dpipe_match_put(ptr noundef %skb, ptr noundef nonnull %match) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %match) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_erif_entries_dump(ptr noundef %priv, i1 noundef zeroext %counters_enabled, ptr noundef %dump_ctx) #0 align 64 {
entry:
  %cnt.i = alloca i64, align 8
  %match_value = alloca %struct.devlink_dpipe_value, align 4
  %action_value = alloca %struct.devlink_dpipe_value, align 4
  %action = alloca %struct.devlink_dpipe_action, align 4
  %match = alloca %struct.devlink_dpipe_match, align 4
  %entry1 = alloca %struct.devlink_dpipe_entry, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %match_value) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %action_value) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %action) #5
  %0 = getelementptr inbounds i8, ptr %action, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %match) #5
  %2 = getelementptr inbounds i8, ptr %match, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %entry1) #5
  %4 = call ptr @memset(ptr %entry1, i32 0, i32 40)
  %5 = getelementptr inbounds i8, ptr %match_value, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %7 = call ptr @memset(ptr %action_value, i32 0, i32 24)
  %8 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %action, align 4
  %header.i = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 2
  %9 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header.i, align 4
  %field_id.i = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 3
  %10 = ptrtoint ptr %field_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field_id.i, align 4
  %11 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %match, align 4
  %header2.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match, i32 0, i32 2
  %12 = ptrtoint ptr %header2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header2.i, align 4
  %field_id3.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match, i32 0, i32 3
  %13 = ptrtoint ptr %field_id3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %field_id3.i, align 4
  %match_values.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 1
  %14 = ptrtoint ptr %match_values.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %match_value, ptr %match_values.i, align 8
  %match_values_count.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 2
  %15 = ptrtoint ptr %match_values_count.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %match_values_count.i, align 4
  %action_values.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 3
  %16 = ptrtoint ptr %action_values.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %action_value, ptr %action_values.i, align 8
  %action_values_count.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 4
  %17 = ptrtoint ptr %action_values_count.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %action_values_count.i, align 4
  %18 = ptrtoint ptr %match_value to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %match, ptr %match_value, align 4
  %value_size.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_value, i32 0, i32 3
  %19 = ptrtoint ptr %value_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %value_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 4) #8
  %value.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_value, i32 0, i32 4
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %value.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup41_crit_edge, label %if.end.i

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end.i:                                         ; preds = %entry
  %22 = ptrtoint ptr %action_value to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %action, ptr %action_value, align 4
  %value_size4.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_value, i32 0, i32 3
  %23 = ptrtoint ptr %value_size4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %value_size4.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i27.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 4) #8
  %value7.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_value, i32 0, i32 4
  %25 = ptrtoint ptr %value7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i27.i, ptr %value7.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i27.i, null
  br i1 %tobool9.not.i, label %err_action_alloc.i, label %if.end

err_action_alloc.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value.i, align 4
  call void @kfree(ptr noundef %27) #5
  br label %cleanup41

if.end:                                           ; preds = %if.end.i
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core, align 4
  %call2 = call i64 @mlxsw_core_res_get(ptr noundef %29, i32 noundef 39) #5
  %conv = trunc i64 %call2 to i32
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 10
  %30 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %router, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_router, ptr %31, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %counter_valid.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 6
  %counter.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 5
  br label %start_again

start_again:                                      ; preds = %for.end.start_again_crit_edge, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %i.194, %for.end.start_again_crit_edge ]
  %call3 = call i32 @devlink_dpipe_entry_ctx_prepare(ptr noundef %dump_ctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %start_again.err_ctx_prepare_crit_edge

start_again.err_ctx_prepare_crit_edge:            ; preds = %start_again
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ctx_prepare

for.cond.preheader:                               ; preds = %start_again
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv)
  %cmp96 = icmp ult i32 %i.0, %conv
  br i1 %cmp96, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.099 = phi i32 [ %j.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.197 = phi i32 [ %inc31, %for.inc.for.body_crit_edge ], [ %i.0, %for.cond.preheader.for.body_crit_edge ]
  %conv8 = trunc i32 %i.197 to i16
  %call9 = call ptr @mlxsw_sp_rif_by_index(ptr noundef %priv, i16 noundef zeroext %conv8) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %call11 = call ptr @mlxsw_sp_rif_dev(ptr noundef nonnull %call9) #5
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end14

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end14:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cnt.i) #5
  %32 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %cnt.i, align 8, !annotation !49
  %33 = ptrtoint ptr %match_values.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %match_values.i, align 8
  %value.i72 = getelementptr inbounds %struct.devlink_dpipe_value, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %value.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %value.i72, align 4
  %call.i = call zeroext i16 @mlxsw_sp_rif_index(ptr noundef nonnull %call9) #5
  %conv.i = zext i16 %call.i to i32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i, ptr %36, align 4
  %call2.i = call i32 @mlxsw_sp_rif_dev_ifindex(ptr noundef nonnull %call9) #5
  %38 = ptrtoint ptr %match_values.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %match_values.i, align 8
  %mapping_value.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %mapping_value.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call2.i, ptr %mapping_value.i, align 4
  %41 = load ptr, ptr %match_values.i, align 8
  %mapping_valid.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %mapping_valid.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %mapping_valid.i, align 4
  %43 = ptrtoint ptr %action_values.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %action_values.i, align 8
  %value5.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %value5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %value5.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %46, align 4
  %48 = ptrtoint ptr %counter_valid.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %counter_valid.i, align 8
  %49 = ptrtoint ptr %counter.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %counter.i, align 8
  %call6.i = call zeroext i16 @mlxsw_sp_rif_index(ptr noundef nonnull %call9) #5
  %conv7.i = zext i16 %call6.i to i64
  %50 = ptrtoint ptr %entry1 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv7.i, ptr %entry1, align 8
  br i1 %counters_enabled, label %if.end.i75, label %if.end14.mlxsw_sp_erif_entry_get.exit_crit_edge

if.end14.mlxsw_sp_erif_entry_get.exit_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_erif_entry_get.exit

if.end.i75:                                       ; preds = %if.end14
  %call8.i = call i32 @mlxsw_sp_rif_counter_value_get(ptr noundef %priv, ptr noundef nonnull %call9, i32 noundef 1, ptr noundef nonnull %cnt.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i74 = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i74, label %if.then10.i, label %if.end.i75.mlxsw_sp_erif_entry_get.exit_crit_edge

if.end.i75.mlxsw_sp_erif_entry_get.exit_crit_edge: ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_erif_entry_get.exit

if.then10.i:                                      ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %cnt.i, align 8
  %53 = ptrtoint ptr %counter.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %counter.i, align 8
  %54 = ptrtoint ptr %counter_valid.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %counter_valid.i, align 8
  br label %mlxsw_sp_erif_entry_get.exit

mlxsw_sp_erif_entry_get.exit:                     ; preds = %if.then10.i, %if.end.i75.mlxsw_sp_erif_entry_get.exit_crit_edge, %if.end14.mlxsw_sp_erif_entry_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cnt.i) #5
  %call20 = call i32 @devlink_dpipe_entry_ctx_append(ptr noundef %dump_ctx, ptr noundef nonnull %entry1) #5
  %55 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %mlxsw_sp_erif_entry_get.exit.err_ctx_prepare_crit_edge [
    i32 0, label %if.end30
    i32 -90, label %if.then25
  ]

mlxsw_sp_erif_entry_get.exit.err_ctx_prepare_crit_edge: ; preds = %mlxsw_sp_erif_entry_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ctx_prepare

if.then25:                                        ; preds = %mlxsw_sp_erif_entry_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.099)
  %tobool26.not = icmp eq i32 %j.099, 0
  br i1 %tobool26.not, label %if.then25.err_ctx_prepare_crit_edge, label %if.then25.for.end_crit_edge

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then25.err_ctx_prepare_crit_edge:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ctx_prepare

if.end30:                                         ; preds = %mlxsw_sp_erif_entry_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i32 %j.099, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %j.1.ph = phi i32 [ %j.099, %for.body.for.inc_crit_edge ], [ %j.099, %lor.lhs.false.for.inc_crit_edge ], [ %inc, %if.end30 ]
  %inc31 = add nuw i32 %i.197, 1
  %exitcond.not = icmp eq i32 %inc31, %conv
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call32107 = call i32 @devlink_dpipe_entry_ctx_close(ptr noundef %dump_ctx) #5
  br label %if.end36

for.end:                                          ; preds = %if.then25.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.194 = phi i32 [ %i.197, %if.then25.for.end_crit_edge ], [ %i.0, %for.cond.preheader.for.end_crit_edge ]
  %call32 = call i32 @devlink_dpipe_entry_ctx_close(ptr noundef %dump_ctx) #5
  %cmp33.not = icmp eq i32 %i.194, %conv
  br i1 %cmp33.not, label %for.end.if.end36_crit_edge, label %for.end.start_again_crit_edge

for.end.start_again_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %start_again

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end36:                                         ; preds = %for.end.if.end36_crit_edge, %for.end.thread
  %56 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %router, align 4
  %lock38 = getelementptr inbounds %struct.mlxsw_sp_router, ptr %57, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %lock38) #5
  call void @devlink_dpipe_entry_clear(ptr noundef nonnull %entry1) #5
  br label %cleanup41

err_ctx_prepare:                                  ; preds = %if.then25.err_ctx_prepare_crit_edge, %mlxsw_sp_erif_entry_get.exit.err_ctx_prepare_crit_edge, %start_again.err_ctx_prepare_crit_edge
  %err.2 = phi i32 [ %call20, %mlxsw_sp_erif_entry_get.exit.err_ctx_prepare_crit_edge ], [ -90, %if.then25.err_ctx_prepare_crit_edge ], [ %call3, %start_again.err_ctx_prepare_crit_edge ]
  %58 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %router, align 4
  %lock40 = getelementptr inbounds %struct.mlxsw_sp_router, ptr %59, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %lock40) #5
  call void @devlink_dpipe_entry_clear(ptr noundef nonnull %entry1) #5
  br label %cleanup41

cleanup41:                                        ; preds = %err_ctx_prepare, %if.end36, %err_action_alloc.i, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_ctx_prepare ], [ 0, %if.end36 ], [ -12, %err_action_alloc.i ], [ -12, %entry.cleanup41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %entry1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %match) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %action) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %action_value) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %match_value) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_erif_counters_update(ptr noundef %priv, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %router, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_router, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call21 = tail call i64 @mlxsw_core_res_get(ptr noundef %3, i32 noundef 39) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call21)
  %cmp22.not = icmp eq i64 %call21, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv2 = trunc i32 %i.023 to i16
  %call3 = tail call ptr @mlxsw_sp_rif_by_index(ptr noundef %priv, i16 noundef zeroext %conv2) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  br i1 %enable, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @mlxsw_sp_rif_counter_alloc(ptr noundef %priv, ptr noundef nonnull %call3, i32 noundef 1) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlxsw_sp_rif_counter_free(ptr noundef %priv, ptr noundef nonnull %call3, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %for.body.cleanup_crit_edge
  %inc = add i32 %i.023, 1
  %conv = sext i32 %inc to i64
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %5, i32 noundef 39) #5
  %cmp = icmp ugt i64 %call, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %router, align 4
  %lock9 = getelementptr inbounds %struct.mlxsw_sp_router, ptr %7, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %lock9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_dpipe_table_erif_size_get(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %1, i32 noundef 39) #5
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_dpipe_action_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_dpipe_match_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_dpipe_entry_ctx_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_rif_by_index(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_rif_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_dpipe_entry_ctx_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_dpipe_entry_ctx_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_dpipe_entry_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_rif_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_rif_dev_ifindex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_rif_counter_value_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_rif_counter_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_rif_counter_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_dpipe_table_resource_set(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_dpipe_table_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_host_actions_dump(ptr nocapture noundef readnone %priv, ptr noundef %skb) #0 align 64 {
entry:
  %action = alloca %struct.devlink_dpipe_action, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %action) #5
  %header = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 2
  %0 = ptrtoint ptr %action to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %action, align 8
  %1 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @devlink_dpipe_header_ethernet, ptr %header, align 8
  %field_id = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 3
  %2 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %field_id, align 4
  %call = call i32 @devlink_dpipe_action_put(ptr noundef %skb, ptr noundef nonnull %action) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %action) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_host4_matches_dump(ptr nocapture noundef readnone %priv, ptr noundef %skb) #0 align 64 {
entry:
  %match.i = alloca %struct.devlink_dpipe_match, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %match.i) #5
  %header.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match.i, i32 0, i32 2
  %0 = ptrtoint ptr %match.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %match.i, align 8
  %1 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header.i, align 8
  %field_id.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match.i, i32 0, i32 3
  %2 = ptrtoint ptr %field_id.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %field_id.i, align 4
  %call.i = call i32 @devlink_dpipe_match_put(ptr noundef %skb, ptr noundef nonnull %match.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlxsw_sp_dpipe_table_host_matches_dump.exit_crit_edge

entry.mlxsw_sp_dpipe_table_host_matches_dump.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_host_matches_dump.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %match.i, align 8
  %4 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @devlink_dpipe_header_ipv4, ptr %header.i, align 8
  %5 = ptrtoint ptr %field_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %field_id.i, align 4
  %call26.i = call i32 @devlink_dpipe_match_put(ptr noundef %skb, ptr noundef nonnull %match.i) #5
  br label %mlxsw_sp_dpipe_table_host_matches_dump.exit

mlxsw_sp_dpipe_table_host_matches_dump.exit:      ; preds = %if.end.i, %entry.mlxsw_sp_dpipe_table_host_matches_dump.exit_crit_edge
  %retval.0.i = phi i32 [ %call26.i, %if.end.i ], [ %call.i, %entry.mlxsw_sp_dpipe_table_host_matches_dump.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %match.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_host4_entries_dump(ptr noundef %priv, i1 noundef zeroext %counters_enabled, ptr noundef %dump_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_dpipe_table_host_entries_dump(ptr noundef %priv, i1 noundef zeroext %counters_enabled, ptr noundef %dump_ctx, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_host4_counters_update(ptr noundef %priv, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_dpipe_table_host_counters_update(ptr noundef %priv, i1 noundef zeroext %enable, i32 noundef 2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_dpipe_table_host4_size_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @mlxsw_sp_dpipe_table_host_size_get(ptr noundef %priv, i32 noundef 2)
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_dpipe_table_host_entries_dump(ptr noundef %mlxsw_sp, i1 noundef zeroext %counters_enabled, ptr noundef %dump_ctx, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %dip.i.i.i = alloca i32, align 4
  %match_values = alloca [2 x %struct.devlink_dpipe_value], align 4
  %matches = alloca [2 x %struct.devlink_dpipe_match], align 4
  %action_value = alloca %struct.devlink_dpipe_value, align 4
  %action = alloca %struct.devlink_dpipe_action, align 4
  %entry1 = alloca %struct.devlink_dpipe_entry, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %match_values) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %matches) #5
  %0 = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 0, i32 2
  %1 = getelementptr inbounds [2 x %struct.devlink_dpipe_match], ptr %matches, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.devlink_dpipe_match], ptr %matches, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %action_value) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %action) #5
  %3 = call ptr @memset(ptr %action, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %entry1) #5
  %4 = call ptr @memset(ptr %entry1, i32 0, i32 40)
  %5 = getelementptr inbounds i8, ptr %matches, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 28)
  %7 = getelementptr inbounds i8, ptr %match_values, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 44)
  %9 = call ptr @memset(ptr %action_value, i32 0, i32 24)
  %10 = ptrtoint ptr %matches to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %matches, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %1, align 4
  %13 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %type, label %do.end.i [
    i32 2, label %entry.sw.epilog.i_crit_edge
    i32 10, label %sw.bb6.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 391, i32 noundef 9, ptr noundef null) #5
  br label %mlxsw_sp_dpipe_table_host_match_action_prepare.exit

sw.epilog.i:                                      ; preds = %sw.bb6.i, %entry.sw.epilog.i_crit_edge
  %devlink_dpipe_header_ipv6.sink.i = phi ptr [ @devlink_dpipe_header_ipv6, %sw.bb6.i ], [ @devlink_dpipe_header_ipv4, %entry.sw.epilog.i_crit_edge ]
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %devlink_dpipe_header_ipv6.sink.i, ptr %2, align 4
  %15 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %action, align 4
  %header24.i = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 2
  %16 = ptrtoint ptr %header24.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @devlink_dpipe_header_ethernet, ptr %header24.i, align 4
  %field_id25.i = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 3
  %17 = ptrtoint ptr %field_id25.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %field_id25.i, align 4
  br label %mlxsw_sp_dpipe_table_host_match_action_prepare.exit

mlxsw_sp_dpipe_table_host_match_action_prepare.exit: ; preds = %sw.epilog.i, %do.end.i
  %match_values2.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 1
  %18 = ptrtoint ptr %match_values2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %match_values, ptr %match_values2.i, align 8
  %match_values_count.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 2
  %19 = ptrtoint ptr %match_values_count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %match_values_count.i, align 4
  %action_values.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 3
  %20 = ptrtoint ptr %action_values.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %action_value, ptr %action_values.i, align 8
  %action_values_count.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 4
  %21 = ptrtoint ptr %action_values_count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %action_values_count.i, align 4
  %22 = ptrtoint ptr %match_values to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %matches, ptr %match_values, align 4
  %value_size.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 0, i32 3
  %23 = ptrtoint ptr %value_size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %value_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 4) #8
  %value.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 0, i32 4
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %value.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_dpipe_table_host_match_action_prepare.exit.out_crit_edge, label %if.end.i

mlxsw_sp_dpipe_table_host_match_action_prepare.exit.out_crit_edge: ; preds = %mlxsw_sp_dpipe_table_host_match_action_prepare.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i:                                         ; preds = %mlxsw_sp_dpipe_table_host_match_action_prepare.exit
  %arrayidx7.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 1
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %arrayidx7.i, align 4
  %27 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %type, label %do.end.i11 [
    i32 2, label %if.end.i.sw.epilog.i12_crit_edge
    i32 10, label %sw.bb9.i
  ]

if.end.i.sw.epilog.i12_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i12

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i12

do.end.i11:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 438, i32 noundef 9, ptr noundef null) #5
  br label %out

sw.epilog.i12:                                    ; preds = %sw.bb9.i, %if.end.i.sw.epilog.i12_crit_edge
  %.sink.i = phi i32 [ 16, %sw.bb9.i ], [ 4, %if.end.i.sw.epilog.i12_crit_edge ]
  %value_size10.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 1, i32 3
  %28 = ptrtoint ptr %value_size10.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink.i, ptr %value_size10.i, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %.sink.i, i32 noundef 3264) #9
  %value30.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 1, i32 4
  %29 = ptrtoint ptr %value30.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %value30.i, align 4
  %tobool32.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool32.not.i, label %sw.epilog.i12.out_crit_edge, label %if.end34.i

sw.epilog.i12.out_crit_edge:                      ; preds = %sw.epilog.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end34.i:                                       ; preds = %sw.epilog.i12
  %30 = ptrtoint ptr %action_value to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %action, ptr %action_value, align 4
  %value_size35.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_value, i32 0, i32 3
  %31 = ptrtoint ptr %value_size35.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %value_size35.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i73.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 8) #8
  %value38.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_value, i32 0, i32 4
  %33 = ptrtoint ptr %value38.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i73.i, ptr %value38.i, align 4
  %tobool40.not.i = icmp eq ptr %call7.i73.i, null
  br i1 %tobool40.not.i, label %if.end34.i.out_crit_edge, label %if.end

if.end34.i.out_crit_edge:                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %if.end34.i
  %router.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  %34 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %router.i, align 4
  %lock.i = getelementptr inbounds %struct.mlxsw_sp_router, ptr %35, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %36 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core.i, align 4
  %call.i = call i64 @mlxsw_core_res_get(ptr noundef %37, i32 noundef 39) #5
  %conv.i = trunc i64 %call.i to i32
  %counter.i.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 5
  %counter_valid.i.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %cmp21.i = icmp eq i32 %type, 10
  br label %start_again.i

start_again.i:                                    ; preds = %out.i.start_again.i_crit_edge, %if.end
  %rif_neigh_count.0.i = phi i32 [ 0, %if.end ], [ %rif_neigh_count.5.i, %out.i.start_again.i_crit_edge ]
  %neigh_count.0.i = phi i32 [ 0, %if.end ], [ %neigh_count.6.i, %out.i.start_again.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %if.end ], [ %i.131.i, %out.i.start_again.i_crit_edge ]
  %call2.i = call i32 @devlink_dpipe_entry_ctx_prepare(ptr noundef %dump_ctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i13 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i13, label %for.cond.preheader.i, label %start_again.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge

start_again.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge: ; preds = %start_again.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_host_entries_get.exit

for.cond.preheader.i:                             ; preds = %start_again.i
  %conv348.i = sext i32 %i.0.i to i64
  %38 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core.i, align 4
  %call549.i = call i64 @mlxsw_core_res_get(ptr noundef %39, i32 noundef 39) #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call549.i, i64 %conv348.i)
  %cmp50.i = icmp ugt i64 %call549.i, %conv348.i
  br i1 %cmp50.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.out.i_crit_edge

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc49.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %j.057.i = phi i32 [ %j.4.ph.i, %for.inc49.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.154.i = phi i32 [ %inc50.i, %for.inc49.i.for.body.i_crit_edge ], [ %i.0.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %neigh_count.153.i = phi i32 [ %neigh_count.5.ph.i, %for.inc49.i.for.body.i_crit_edge ], [ %neigh_count.0.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rif_neigh_skip.052.i = phi i32 [ %rif_neigh_skip.1.ph.i, %for.inc49.i.for.body.i_crit_edge ], [ %rif_neigh_count.0.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rif_neigh_count.151.i = phi i32 [ %rif_neigh_count.4.ph.i, %for.inc49.i.for.body.i_crit_edge ], [ %rif_neigh_count.0.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv7.i = trunc i32 %i.154.i to i16
  %call8.i = call ptr @mlxsw_sp_rif_by_index(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv7.i) #5
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %for.body.i.for.inc49.i_crit_edge, label %if.end11.i

for.body.i.for.inc49.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.i

if.end11.i:                                       ; preds = %for.body.i
  %call12.i = call ptr @mlxsw_sp_rif_neigh_next(ptr noundef nonnull %call8.i, ptr noundef null) #5
  %tobool14.not36.i = icmp eq ptr %call12.i, null
  br i1 %tobool14.not36.i, label %if.end11.i.for.inc49.i_crit_edge, label %if.end11.i.for.body15.i_crit_edge

if.end11.i.for.body15.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body15.i

if.end11.i.for.inc49.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.i

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %if.end11.i.for.body15.i_crit_edge
  %neigh_entry.041.i = phi ptr [ %call44.i, %for.inc.i.for.body15.i_crit_edge ], [ %call12.i, %if.end11.i.for.body15.i_crit_edge ]
  %j.140.i = phi i32 [ %j.3.i, %for.inc.i.for.body15.i_crit_edge ], [ %j.057.i, %if.end11.i.for.body15.i_crit_edge ]
  %neigh_count.239.i = phi i32 [ %neigh_count.4.i, %for.inc.i.for.body15.i_crit_edge ], [ %neigh_count.153.i, %if.end11.i.for.body15.i_crit_edge ]
  %rif_neigh_count.237.i = phi i32 [ %rif_neigh_count.3.i, %for.inc.i.for.body15.i_crit_edge ], [ 0, %if.end11.i.for.body15.i_crit_edge ]
  %call16.i = call i32 @mlxsw_sp_neigh_entry_type(ptr noundef nonnull %neigh_entry.041.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %type)
  %cmp17.not.i = icmp eq i32 %call16.i, %type
  br i1 %cmp17.not.i, label %if.end20.i, label %for.body15.i.for.inc.i_crit_edge

for.body15.i.for.inc.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end20.i:                                       ; preds = %for.body15.i
  br i1 %cmp21.i, label %land.lhs.true.i, label %if.end20.i.if.end26.i_crit_edge

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %call23.i = call zeroext i1 @mlxsw_sp_neigh_ipv6_ignore(ptr noundef nonnull %neigh_entry.041.i) #5
  br i1 %call23.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end26.i_crit_edge

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end26.i:                                       ; preds = %land.lhs.true.i.if.end26.i_crit_edge, %if.end20.i.if.end26.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %rif_neigh_count.237.i, i32 %rif_neigh_skip.052.i)
  %cmp27.i = icmp slt i32 %rif_neigh_count.237.i, %rif_neigh_skip.052.i
  br i1 %cmp27.i, label %if.end26.i.skip.i_crit_edge, label %if.end30.i

if.end26.i.skip.i_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip.i

if.end30.i:                                       ; preds = %if.end26.i
  %40 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %type, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 10, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dip.i.i.i)
  %call.i.i.i = call ptr @mlxsw_sp_neigh_entry_ha(ptr noundef nonnull %neigh_entry.041.i) #5
  %call2.i.i.i = call i32 @mlxsw_sp_neigh4_entry_dip(ptr noundef nonnull %neigh_entry.041.i) #5
  %41 = ptrtoint ptr %dip.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call2.i.i.i, ptr %dip.i.i.i, align 4
  %42 = ptrtoint ptr %match_values2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %match_values2.i, align 8
  %value2.i.i.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %value2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value2.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i16 @mlxsw_sp_rif_index(ptr noundef nonnull %call8.i) #5
  %conv.i.i.i.i = zext i16 %call.i.i.i.i to i32
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv.i.i.i.i, ptr %45, align 4
  %call3.i.i.i.i = call i32 @mlxsw_sp_rif_dev_ifindex(ptr noundef nonnull %call8.i) #5
  %mapping_value.i.i.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %43, i32 0, i32 1
  %47 = ptrtoint ptr %mapping_value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call3.i.i.i.i, ptr %mapping_value.i.i.i.i, align 4
  %mapping_valid.i.i.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %43, i32 0, i32 2
  %48 = ptrtoint ptr %mapping_valid.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %mapping_valid.i.i.i.i, align 4
  %49 = ptrtoint ptr %match_values2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %match_values2.i, align 8
  %value6.i.i.i.i = getelementptr %struct.devlink_dpipe_value, ptr %50, i32 1, i32 4
  %51 = ptrtoint ptr %value6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %value6.i.i.i.i, align 4
  %value_size.i.i.i.i = getelementptr %struct.devlink_dpipe_value, ptr %50, i32 1, i32 3
  %53 = ptrtoint ptr %value_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value_size.i.i.i.i, align 4
  %55 = call ptr @memcpy(ptr %52, ptr %dip.i.i.i, i32 %54)
  %56 = ptrtoint ptr %action_values.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %action_values.i, align 8
  %value7.i.i.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %value7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %value7.i.i.i.i, align 4
  %60 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call.i.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %59, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %59, i32 4
  %65 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %add.ptr1.i.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dip.i.i.i)
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i27.i.i = call ptr @mlxsw_sp_neigh_entry_ha(ptr noundef nonnull %neigh_entry.041.i) #5
  %call2.i28.i.i = call ptr @mlxsw_sp_neigh6_entry_dip(ptr noundef nonnull %neigh_entry.041.i) #5
  %66 = ptrtoint ptr %match_values2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %match_values2.i, align 8
  %value2.i.i30.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %value2.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %value2.i.i30.i.i, align 4
  %call.i.i31.i.i = call zeroext i16 @mlxsw_sp_rif_index(ptr noundef nonnull %call8.i) #5
  %conv.i.i32.i.i = zext i16 %call.i.i31.i.i to i32
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv.i.i32.i.i, ptr %69, align 4
  %call3.i.i33.i.i = call i32 @mlxsw_sp_rif_dev_ifindex(ptr noundef nonnull %call8.i) #5
  %mapping_value.i.i34.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %67, i32 0, i32 1
  %71 = ptrtoint ptr %mapping_value.i.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call3.i.i33.i.i, ptr %mapping_value.i.i34.i.i, align 4
  %mapping_valid.i.i35.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %67, i32 0, i32 2
  %72 = ptrtoint ptr %mapping_valid.i.i35.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %mapping_valid.i.i35.i.i, align 4
  %73 = ptrtoint ptr %match_values2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %match_values2.i, align 8
  %value6.i.i36.i.i = getelementptr %struct.devlink_dpipe_value, ptr %74, i32 1, i32 4
  %75 = ptrtoint ptr %value6.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %value6.i.i36.i.i, align 4
  %value_size.i.i37.i.i = getelementptr %struct.devlink_dpipe_value, ptr %74, i32 1, i32 3
  %77 = ptrtoint ptr %value_size.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %value_size.i.i37.i.i, align 4
  %79 = call ptr @memcpy(ptr %76, ptr %call2.i28.i.i, i32 %78)
  %80 = ptrtoint ptr %action_values.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %action_values.i, align 8
  %value7.i.i39.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %value7.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %value7.i.i39.i.i, align 4
  %84 = ptrtoint ptr %call.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %call.i27.i.i, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %83, align 4
  %add.ptr.i.i.i40.i.i = getelementptr i8, ptr %call.i27.i.i, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i.i40.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr.i.i.i40.i.i, align 2
  %add.ptr1.i.i.i41.i.i = getelementptr i8, ptr %83, i32 4
  %89 = ptrtoint ptr %add.ptr1.i.i.i41.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %add.ptr1.i.i.i41.i.i, align 2
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 526, i32 noundef 9, ptr noundef null) #5
  br label %mlxsw_sp_dpipe_table_host_entry_fill.exit.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %call.i.i = call i32 @mlxsw_sp_neigh_counter_get(ptr noundef %mlxsw_sp, ptr noundef nonnull %neigh_entry.041.i, ptr noundef %counter.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %sw.epilog.i.i.mlxsw_sp_dpipe_table_host_entry_fill.exit.i_crit_edge

sw.epilog.i.i.mlxsw_sp_dpipe_table_host_entry_fill.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_host_entry_fill.exit.i

if.then18.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %counter_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %counter_valid.i.i, align 8
  br label %mlxsw_sp_dpipe_table_host_entry_fill.exit.i

mlxsw_sp_dpipe_table_host_entry_fill.exit.i:      ; preds = %if.then18.i.i, %sw.epilog.i.i.mlxsw_sp_dpipe_table_host_entry_fill.exit.i_crit_edge, %do.end.i.i
  %conv31.i = sext i32 %neigh_count.239.i to i64
  %91 = ptrtoint ptr %entry1 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv31.i, ptr %entry1, align 8
  %call32.i = call i32 @devlink_dpipe_entry_ctx_append(ptr noundef %dump_ctx, ptr noundef nonnull %entry1) #5
  %92 = zext i32 %call32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call32.i, label %mlxsw_sp_dpipe_table_host_entry_fill.exit.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge [
    i32 0, label %if.end41.i
    i32 -90, label %if.then37.i
  ]

mlxsw_sp_dpipe_table_host_entry_fill.exit.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge: ; preds = %mlxsw_sp_dpipe_table_host_entry_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_host_entries_get.exit

if.then37.i:                                      ; preds = %mlxsw_sp_dpipe_table_host_entry_fill.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.140.i)
  %tobool38.not.i = icmp eq i32 %j.140.i, 0
  br i1 %tobool38.not.i, label %if.then37.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge, label %if.then37.i.out.i_crit_edge

if.then37.i.out.i_crit_edge:                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.then37.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_host_entries_get.exit

if.end41.i:                                       ; preds = %mlxsw_sp_dpipe_table_host_entry_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add i32 %neigh_count.239.i, 1
  %inc42.i = add i32 %j.140.i, 1
  br label %skip.i

skip.i:                                           ; preds = %if.end41.i, %if.end26.i.skip.i_crit_edge
  %neigh_count.3.i = phi i32 [ %neigh_count.239.i, %if.end26.i.skip.i_crit_edge ], [ %inc.i, %if.end41.i ]
  %j.2.i = phi i32 [ %j.140.i, %if.end26.i.skip.i_crit_edge ], [ %inc42.i, %if.end41.i ]
  %inc43.i = add i32 %rif_neigh_count.237.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %skip.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body15.i.for.inc.i_crit_edge
  %rif_neigh_count.3.i = phi i32 [ %inc43.i, %skip.i ], [ %rif_neigh_count.237.i, %for.body15.i.for.inc.i_crit_edge ], [ %rif_neigh_count.237.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %neigh_count.4.i = phi i32 [ %neigh_count.3.i, %skip.i ], [ %neigh_count.239.i, %for.body15.i.for.inc.i_crit_edge ], [ %neigh_count.239.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %j.3.i = phi i32 [ %j.2.i, %skip.i ], [ %j.140.i, %for.body15.i.for.inc.i_crit_edge ], [ %j.140.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %call44.i = call ptr @mlxsw_sp_rif_neigh_next(ptr noundef nonnull %call8.i, ptr noundef nonnull %neigh_entry.041.i) #5
  %tobool14.not.i = icmp eq ptr %call44.i, null
  br i1 %tobool14.not.i, label %for.inc.i.for.inc49.i_crit_edge, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15.i

for.inc.i.for.inc49.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %for.inc.i.for.inc49.i_crit_edge, %if.end11.i.for.inc49.i_crit_edge, %for.body.i.for.inc49.i_crit_edge
  %rif_neigh_count.4.ph.i = phi i32 [ %rif_neigh_count.151.i, %for.body.i.for.inc49.i_crit_edge ], [ 0, %if.end11.i.for.inc49.i_crit_edge ], [ %rif_neigh_count.3.i, %for.inc.i.for.inc49.i_crit_edge ]
  %rif_neigh_skip.1.ph.i = phi i32 [ %rif_neigh_skip.052.i, %for.body.i.for.inc49.i_crit_edge ], [ 0, %if.end11.i.for.inc49.i_crit_edge ], [ 0, %for.inc.i.for.inc49.i_crit_edge ]
  %neigh_count.5.ph.i = phi i32 [ %neigh_count.153.i, %for.body.i.for.inc49.i_crit_edge ], [ %neigh_count.153.i, %if.end11.i.for.inc49.i_crit_edge ], [ %neigh_count.4.i, %for.inc.i.for.inc49.i_crit_edge ]
  %j.4.ph.i = phi i32 [ %j.057.i, %for.body.i.for.inc49.i_crit_edge ], [ %j.057.i, %if.end11.i.for.inc49.i_crit_edge ], [ %j.3.i, %for.inc.i.for.inc49.i_crit_edge ]
  %inc50.i = add i32 %i.154.i, 1
  %conv3.i = sext i32 %inc50.i to i64
  %93 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core.i, align 4
  %call5.i = call i64 @mlxsw_core_res_get(ptr noundef %94, i32 noundef 39) #5
  %cmp.i = icmp ugt i64 %call5.i, %conv3.i
  br i1 %cmp.i, label %for.inc49.i.for.body.i_crit_edge, label %for.inc49.i.out.i_crit_edge

for.inc49.i.out.i_crit_edge:                      ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

for.inc49.i.for.body.i_crit_edge:                 ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

out.i:                                            ; preds = %for.inc49.i.out.i_crit_edge, %if.then37.i.out.i_crit_edge, %for.cond.preheader.i.out.i_crit_edge
  %i.131.i = phi i32 [ %i.154.i, %if.then37.i.out.i_crit_edge ], [ %i.0.i, %for.cond.preheader.i.out.i_crit_edge ], [ %inc50.i, %for.inc49.i.out.i_crit_edge ]
  %rif_neigh_count.5.i = phi i32 [ %rif_neigh_count.237.i, %if.then37.i.out.i_crit_edge ], [ %rif_neigh_count.0.i, %for.cond.preheader.i.out.i_crit_edge ], [ %rif_neigh_count.4.ph.i, %for.inc49.i.out.i_crit_edge ]
  %neigh_count.6.i = phi i32 [ %neigh_count.239.i, %if.then37.i.out.i_crit_edge ], [ %neigh_count.0.i, %for.cond.preheader.i.out.i_crit_edge ], [ %neigh_count.5.ph.i, %for.inc49.i.out.i_crit_edge ]
  %call52.i = call i32 @devlink_dpipe_entry_ctx_close(ptr noundef %dump_ctx) #5
  %cmp53.not.i = icmp eq i32 %i.131.i, %conv.i
  br i1 %cmp53.not.i, label %out.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge, label %out.i.start_again.i_crit_edge

out.i.start_again.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %start_again.i

out.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_host_entries_get.exit

mlxsw_sp_dpipe_table_host_entries_get.exit:       ; preds = %out.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge, %if.then37.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge, %mlxsw_sp_dpipe_table_host_entry_fill.exit.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge, %start_again.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge
  %retval.0.i14 = phi i32 [ %call32.i, %mlxsw_sp_dpipe_table_host_entry_fill.exit.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge ], [ %call2.i, %start_again.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge ], [ -90, %if.then37.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge ], [ 0, %out.i.mlxsw_sp_dpipe_table_host_entries_get.exit_crit_edge ]
  %95 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %router.i, align 4
  %lock60.i = getelementptr inbounds %struct.mlxsw_sp_router, ptr %96, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %lock60.i) #5
  br label %out

out:                                              ; preds = %mlxsw_sp_dpipe_table_host_entries_get.exit, %if.end34.i.out_crit_edge, %sw.epilog.i12.out_crit_edge, %do.end.i11, %mlxsw_sp_dpipe_table_host_match_action_prepare.exit.out_crit_edge
  %err.0 = phi i32 [ %retval.0.i14, %mlxsw_sp_dpipe_table_host_entries_get.exit ], [ -12, %sw.epilog.i12.out_crit_edge ], [ -12, %mlxsw_sp_dpipe_table_host_match_action_prepare.exit.out_crit_edge ], [ -22, %do.end.i11 ], [ -12, %if.end34.i.out_crit_edge ]
  call void @devlink_dpipe_entry_clear(ptr noundef nonnull %entry1) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %entry1) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %action) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %action_value) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %matches) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %match_values) #5
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_rif_neigh_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_neigh_entry_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_neigh_ipv6_ignore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_neigh_counter_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_neigh_entry_ha(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_neigh4_entry_dip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_neigh6_entry_dip(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_dpipe_table_host_counters_update(ptr noundef %mlxsw_sp, i1 noundef zeroext %enable, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  %0 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %router, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_router, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call44 = tail call i64 @mlxsw_core_res_get(ptr noundef %3, i32 noundef 39) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call44)
  %cmp45.not = icmp eq i64 %call44, 0
  br i1 %cmp45.not, label %entry.for.end26_crit_edge, label %for.body.preheader

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end26

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %cmp13 = icmp eq i32 %type, 10
  br label %for.body

for.body:                                         ; preds = %cleanup21.for.body_crit_edge, %for.body.preheader
  %i.046 = phi i32 [ %inc, %cleanup21.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %conv2 = trunc i32 %i.046 to i16
  %call3 = tail call ptr @mlxsw_sp_rif_by_index(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv2) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.cleanup21_crit_edge, label %if.end

for.body.cleanup21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

if.end:                                           ; preds = %for.body
  %call4 = tail call ptr @mlxsw_sp_rif_neigh_next(ptr noundef nonnull %call3, ptr noundef null) #5
  %tobool6.not42 = icmp eq ptr %call4, null
  br i1 %tobool6.not42, label %if.end.cleanup21_crit_edge, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

if.end.cleanup21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

for.body7:                                        ; preds = %cleanup.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %neigh_entry.043 = phi ptr [ %call20, %cleanup.for.body7_crit_edge ], [ %call4, %if.end.for.body7_crit_edge ]
  %call8 = tail call i32 @mlxsw_sp_neigh_entry_type(ptr noundef nonnull %neigh_entry.043) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %type)
  %cmp9.not = icmp eq i32 %call8, %type
  br i1 %cmp9.not, label %if.end12, label %for.body7.cleanup_crit_edge

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %for.body7
  br i1 %cmp13, label %land.lhs.true, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end12
  %call15 = tail call zeroext i1 @mlxsw_sp_neigh_ipv6_ignore(ptr noundef nonnull %neigh_entry.043) #5
  br i1 %call15, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  tail call void @mlxsw_sp_neigh_entry_counter_update(ptr noundef %mlxsw_sp, ptr noundef nonnull %neigh_entry.043, i1 noundef zeroext %enable) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true.cleanup_crit_edge, %for.body7.cleanup_crit_edge
  %call20 = tail call ptr @mlxsw_sp_rif_neigh_next(ptr noundef nonnull %call3, ptr noundef nonnull %neigh_entry.043) #5
  %tobool6.not = icmp eq ptr %call20, null
  br i1 %tobool6.not, label %cleanup.cleanup21_crit_edge, label %cleanup.for.body7_crit_edge

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

cleanup.cleanup21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup.cleanup21_crit_edge, %if.end.cleanup21_crit_edge, %for.body.cleanup21_crit_edge
  %inc = add i32 %i.046, 1
  %conv = sext i32 %inc to i64
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %5, i32 noundef 39) #5
  %cmp = icmp ugt i64 %call, %conv
  br i1 %cmp, label %cleanup21.for.body_crit_edge, label %cleanup21.for.end26_crit_edge

cleanup21.for.end26_crit_edge:                    ; preds = %cleanup21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end26

cleanup21.for.body_crit_edge:                     ; preds = %cleanup21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end26:                                        ; preds = %cleanup21.for.end26_crit_edge, %entry.for.end26_crit_edge
  %6 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %router, align 4
  %lock28 = getelementptr inbounds %struct.mlxsw_sp_router, ptr %7, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %lock28) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_neigh_entry_counter_update(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @mlxsw_sp_dpipe_table_host_size_get(ptr noundef %mlxsw_sp, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  %0 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %router, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_router, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call47 = tail call i64 @mlxsw_core_res_get(ptr noundef %3, i32 noundef 39) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call47)
  %cmp48.not = icmp eq i64 %call47, 0
  br i1 %cmp48.not, label %entry.for.end26_crit_edge, label %for.body.preheader

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end26

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %cmp13 = icmp eq i32 %type, 10
  br label %for.body

for.body:                                         ; preds = %cleanup20.for.body_crit_edge, %for.body.preheader
  %i.050 = phi i32 [ %inc25, %cleanup20.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %size.049 = phi i64 [ %size.3, %cleanup20.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %conv2 = trunc i32 %i.050 to i16
  %call3 = tail call ptr @mlxsw_sp_rif_by_index(ptr noundef %mlxsw_sp, i16 noundef zeroext %conv2) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.cleanup20_crit_edge, label %if.end

for.body.cleanup20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

if.end:                                           ; preds = %for.body
  %call4 = tail call ptr @mlxsw_sp_rif_neigh_next(ptr noundef nonnull %call3, ptr noundef null) #5
  %tobool6.not43 = icmp eq ptr %call4, null
  br i1 %tobool6.not43, label %if.end.cleanup20_crit_edge, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

for.body7:                                        ; preds = %cleanup.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %neigh_entry.046 = phi ptr [ %call19, %cleanup.for.body7_crit_edge ], [ %call4, %if.end.for.body7_crit_edge ]
  %size.144 = phi i64 [ %size.2, %cleanup.for.body7_crit_edge ], [ %size.049, %if.end.for.body7_crit_edge ]
  %call8 = tail call i32 @mlxsw_sp_neigh_entry_type(ptr noundef nonnull %neigh_entry.046) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %type)
  %cmp9.not = icmp eq i32 %call8, %type
  br i1 %cmp9.not, label %if.end12, label %for.body7.cleanup_crit_edge

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %for.body7
  br i1 %cmp13, label %land.lhs.true, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end12
  %call15 = tail call zeroext i1 @mlxsw_sp_neigh_ipv6_ignore(ptr noundef nonnull %neigh_entry.046) #5
  br i1 %call15, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  %inc = add i64 %size.144, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true.cleanup_crit_edge, %for.body7.cleanup_crit_edge
  %size.2 = phi i64 [ %inc, %if.end18 ], [ %size.144, %for.body7.cleanup_crit_edge ], [ %size.144, %land.lhs.true.cleanup_crit_edge ]
  %call19 = tail call ptr @mlxsw_sp_rif_neigh_next(ptr noundef nonnull %call3, ptr noundef nonnull %neigh_entry.046) #5
  %tobool6.not = icmp eq ptr %call19, null
  br i1 %tobool6.not, label %cleanup.cleanup20_crit_edge, label %cleanup.for.body7_crit_edge

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

cleanup.cleanup20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup.cleanup20_crit_edge, %if.end.cleanup20_crit_edge, %for.body.cleanup20_crit_edge
  %size.3 = phi i64 [ %size.049, %for.body.cleanup20_crit_edge ], [ %size.049, %if.end.cleanup20_crit_edge ], [ %size.2, %cleanup.cleanup20_crit_edge ]
  %inc25 = add i32 %i.050, 1
  %conv = sext i32 %inc25 to i64
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %5, i32 noundef 39) #5
  %cmp = icmp ugt i64 %call, %conv
  br i1 %cmp, label %cleanup20.for.body_crit_edge, label %cleanup20.for.end26_crit_edge

cleanup20.for.end26_crit_edge:                    ; preds = %cleanup20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end26

cleanup20.for.body_crit_edge:                     ; preds = %cleanup20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end26:                                        ; preds = %cleanup20.for.end26_crit_edge, %entry.for.end26_crit_edge
  %size.0.lcssa = phi i64 [ 0, %entry.for.end26_crit_edge ], [ %size.3, %cleanup20.for.end26_crit_edge ]
  %6 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %router, align 4
  %lock28 = getelementptr inbounds %struct.mlxsw_sp_router, ptr %7, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %lock28) #5
  ret i64 %size.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_host6_matches_dump(ptr nocapture noundef readnone %priv, ptr noundef %skb) #0 align 64 {
entry:
  %match.i = alloca %struct.devlink_dpipe_match, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %match.i) #5
  %header.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match.i, i32 0, i32 2
  %0 = ptrtoint ptr %match.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %match.i, align 8
  %1 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header.i, align 8
  %field_id.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match.i, i32 0, i32 3
  %2 = ptrtoint ptr %field_id.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %field_id.i, align 4
  %call.i = call i32 @devlink_dpipe_match_put(ptr noundef %skb, ptr noundef nonnull %match.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlxsw_sp_dpipe_table_host_matches_dump.exit_crit_edge

entry.mlxsw_sp_dpipe_table_host_matches_dump.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_host_matches_dump.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %match.i, align 8
  %4 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @devlink_dpipe_header_ipv6, ptr %header.i, align 8
  %5 = ptrtoint ptr %field_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %field_id.i, align 4
  %call26.i = call i32 @devlink_dpipe_match_put(ptr noundef %skb, ptr noundef nonnull %match.i) #5
  br label %mlxsw_sp_dpipe_table_host_matches_dump.exit

mlxsw_sp_dpipe_table_host_matches_dump.exit:      ; preds = %if.end.i, %entry.mlxsw_sp_dpipe_table_host_matches_dump.exit_crit_edge
  %retval.0.i = phi i32 [ %call26.i, %if.end.i ], [ %call.i, %entry.mlxsw_sp_dpipe_table_host_matches_dump.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %match.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_host6_entries_dump(ptr noundef %priv, i1 noundef zeroext %counters_enabled, ptr noundef %dump_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_dpipe_table_host_entries_dump(ptr noundef %priv, i1 noundef zeroext %counters_enabled, ptr noundef %dump_ctx, i32 noundef 10)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_host6_counters_update(ptr noundef %priv, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlxsw_sp_dpipe_table_host_counters_update(ptr noundef %priv, i1 noundef zeroext %enable, i32 noundef 10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_dpipe_table_host6_size_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @mlxsw_sp_dpipe_table_host_size_get(ptr noundef %priv, i32 noundef 10)
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_adj_actions_dump(ptr nocapture noundef readnone %priv, ptr noundef %skb) #0 align 64 {
entry:
  %action = alloca %struct.devlink_dpipe_action, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %action) #5
  %header = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 2
  %0 = ptrtoint ptr %action to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %action, align 8
  %1 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @devlink_dpipe_header_ethernet, ptr %header, align 8
  %field_id = getelementptr inbounds %struct.devlink_dpipe_action, ptr %action, i32 0, i32 3
  %2 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %field_id, align 4
  %call = call i32 @devlink_dpipe_action_put(ptr noundef %skb, ptr noundef nonnull %action) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %action, align 8
  %4 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header, align 8
  %5 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %field_id, align 4
  %call4 = call i32 @devlink_dpipe_action_put(ptr noundef %skb, ptr noundef nonnull %action) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %action) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_adj_matches_dump(ptr nocapture noundef readnone %priv, ptr noundef %skb) #0 align 64 {
entry:
  %match = alloca %struct.devlink_dpipe_match, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %match) #5
  %header = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match, i32 0, i32 2
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %match, align 8
  %1 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header, align 8
  %field_id = getelementptr inbounds %struct.devlink_dpipe_match, ptr %match, i32 0, i32 3
  %2 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %field_id, align 4
  %call = call i32 @devlink_dpipe_match_put(ptr noundef %skb, ptr noundef nonnull %match) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %match, align 8
  %4 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header, align 8
  %5 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %field_id, align 4
  %call4 = call i32 @devlink_dpipe_match_put(ptr noundef %skb, ptr noundef nonnull %match) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %match, align 8
  %7 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header, align 8
  %8 = ptrtoint ptr %field_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %field_id, align 4
  %call11 = call i32 @devlink_dpipe_match_put(ptr noundef %skb, ptr noundef nonnull %match) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %match) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_adj_entries_dump(ptr noundef %priv, i1 noundef zeroext %counters_enabled, ptr noundef %dump_ctx) #0 align 64 {
entry:
  %adj_hash_index.i.i = alloca i32, align 4
  %adj_index.i.i = alloca i32, align 4
  %adj_size.i.i = alloca i32, align 4
  %action_values = alloca [2 x %struct.devlink_dpipe_value], align 4
  %match_values = alloca [3 x %struct.devlink_dpipe_value], align 4
  %actions = alloca [2 x %struct.devlink_dpipe_action], align 4
  %matches = alloca [3 x %struct.devlink_dpipe_match], align 4
  %entry1 = alloca %struct.devlink_dpipe_entry, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %action_values) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %match_values) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %actions) #5
  %0 = getelementptr inbounds %struct.devlink_dpipe_action, ptr %actions, i32 0, i32 2
  %1 = getelementptr inbounds [2 x %struct.devlink_dpipe_action], ptr %actions, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.devlink_dpipe_action], ptr %actions, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds [2 x %struct.devlink_dpipe_action], ptr %actions, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %matches) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %entry1) #5
  %4 = call ptr @memset(ptr %entry1, i32 0, i32 40)
  %5 = getelementptr inbounds i8, ptr %matches, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 36)
  %7 = getelementptr inbounds i8, ptr %match_values, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 68)
  %9 = getelementptr inbounds i8, ptr %actions, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 20)
  %11 = call ptr @memset(ptr %action_values, i32 0, i32 48)
  %12 = ptrtoint ptr %matches to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %matches, align 4
  %header.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 0, i32 2
  %13 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header.i, align 4
  %field_id.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 0, i32 3
  %14 = ptrtoint ptr %field_id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %field_id.i, align 4
  %header3.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 1, i32 2
  %15 = ptrtoint ptr %header3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header3.i, align 4
  %field_id4.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 1, i32 3
  %16 = ptrtoint ptr %field_id4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %field_id4.i, align 4
  %arrayidx5.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 2
  %header7.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 2, i32 2
  %17 = ptrtoint ptr %header7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %header7.i, align 4
  %field_id8.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 2, i32 3
  %18 = ptrtoint ptr %field_id8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %field_id8.i, align 4
  %19 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %actions, align 4
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @devlink_dpipe_header_ethernet, ptr %0, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %1, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlxsw_sp_dpipe_header_metadata, ptr %2, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %3, align 4
  %match_values2.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 1
  %24 = ptrtoint ptr %match_values2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %match_values, ptr %match_values2.i, align 8
  %match_values_count.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 2
  %25 = ptrtoint ptr %match_values_count.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %match_values_count.i, align 4
  %action_values3.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 3
  %26 = ptrtoint ptr %action_values3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %action_values, ptr %action_values3.i, align 8
  %action_values_count.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 4
  %27 = ptrtoint ptr %action_values_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %action_values_count.i, align 4
  %28 = ptrtoint ptr %match_values to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %matches, ptr %match_values, align 4
  %value_size.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 0, i32 3
  %29 = ptrtoint ptr %value_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %value_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 4) #8
  %value.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 0, i32 4
  %31 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %value.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i:                                         ; preds = %entry
  %arrayidx1.i = getelementptr inbounds %struct.devlink_dpipe_match, ptr %matches, i32 1
  %arrayidx8.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 1
  %32 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx1.i, ptr %arrayidx8.i, align 4
  %value_size9.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 1, i32 3
  %33 = ptrtoint ptr %value_size9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %value_size9.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i87.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 4) #8
  %value12.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 1, i32 4
  %35 = ptrtoint ptr %value12.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i87.i, ptr %value12.i, align 4
  %tobool14.not.i = icmp eq ptr %call7.i87.i, null
  br i1 %tobool14.not.i, label %if.end.i.out_crit_edge, label %if.end16.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end16.i:                                       ; preds = %if.end.i
  %arrayidx18.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 2
  %36 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx5.i, ptr %arrayidx18.i, align 4
  %value_size19.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 2, i32 3
  %37 = ptrtoint ptr %value_size19.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %value_size19.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i88.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 4) #8
  %value22.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %match_values, i32 2, i32 4
  %39 = ptrtoint ptr %value22.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i88.i, ptr %value22.i, align 4
  %tobool24.not.i = icmp eq ptr %call7.i88.i, null
  br i1 %tobool24.not.i, label %if.end16.i.out_crit_edge, label %if.end26.i

if.end16.i.out_crit_edge:                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end26.i:                                       ; preds = %if.end16.i
  %40 = ptrtoint ptr %action_values to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %actions, ptr %action_values, align 4
  %value_size29.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_values, i32 0, i32 3
  %41 = ptrtoint ptr %value_size29.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %value_size29.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i89.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 8) #8
  %value32.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_values, i32 0, i32 4
  %43 = ptrtoint ptr %value32.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i89.i, ptr %value32.i, align 4
  %tobool34.not.i = icmp eq ptr %call7.i89.i, null
  br i1 %tobool34.not.i, label %if.end26.i.out_crit_edge, label %if.end36.i

if.end26.i.out_crit_edge:                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end36.i:                                       ; preds = %if.end26.i
  %arrayidx38.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_values, i32 1
  %44 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %1, ptr %arrayidx38.i, align 4
  %value_size39.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_values, i32 1, i32 3
  %45 = ptrtoint ptr %value_size39.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %value_size39.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i90.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 4) #8
  %value42.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %action_values, i32 1, i32 4
  %47 = ptrtoint ptr %value42.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i90.i, ptr %value42.i, align 4
  %tobool44.not.i = icmp eq ptr %call7.i90.i, null
  br i1 %tobool44.not.i, label %if.end36.i.out_crit_edge, label %if.end

if.end36.i.out_crit_edge:                         ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %if.end36.i
  %router.i = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 10
  %48 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %router.i, align 4
  %lock.i = getelementptr inbounds %struct.mlxsw_sp_router, ptr %49, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %50 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %router.i, align 4
  %call.i.i = call ptr @mlxsw_sp_nexthop_next(ptr noundef %51, ptr noundef null) #5
  %tobool.not10.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not10.i.i, label %if.end.mlxsw_sp_dpipe_table_adj_size.exit.i_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.mlxsw_sp_dpipe_table_adj_size.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_adj_size.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %size.013.i.i = phi i64 [ %size.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %nh.011.i.i = phi ptr [ %call4.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.for.body.i.i_crit_edge ]
  %call1.i.i = call zeroext i1 @mlxsw_sp_nexthop_is_forward(ptr noundef nonnull %nh.011.i.i) #5
  br i1 %call1.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = call zeroext i1 @mlxsw_sp_nexthop_group_has_ipip(ptr noundef nonnull %nh.011.i.i) #5
  %not.call2.i.i = xor i1 %call2.i.i, true
  %inc.i.i = zext i1 %not.call2.i.i to i64
  %spec.select.i.i = add i64 %size.013.i.i, %inc.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %size.1.i.i = phi i64 [ %size.013.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %52 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %router.i, align 4
  %call4.i.i = call ptr @mlxsw_sp_nexthop_next(ptr noundef %53, ptr noundef nonnull %nh.011.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i, label %mlxsw_sp_dpipe_table_adj_size.exit.loopexit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

mlxsw_sp_dpipe_table_adj_size.exit.loopexit.i:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.le.i = trunc i64 %size.1.i.i to i32
  br label %mlxsw_sp_dpipe_table_adj_size.exit.i

mlxsw_sp_dpipe_table_adj_size.exit.i:             ; preds = %mlxsw_sp_dpipe_table_adj_size.exit.loopexit.i, %if.end.mlxsw_sp_dpipe_table_adj_size.exit.i_crit_edge
  %size.0.lcssa.i.off0.i = phi i32 [ 0, %if.end.mlxsw_sp_dpipe_table_adj_size.exit.i_crit_edge ], [ %extract.t.le.i, %mlxsw_sp_dpipe_table_adj_size.exit.loopexit.i ]
  %counter.i.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 5
  %counter_valid.i.i = getelementptr inbounds %struct.devlink_dpipe_entry, ptr %entry1, i32 0, i32 6
  br label %start_again.i

start_again.i:                                    ; preds = %for.end.i.start_again.i_crit_edge, %mlxsw_sp_dpipe_table_adj_size.exit.i
  %entry_index.0.i = phi i32 [ 0, %mlxsw_sp_dpipe_table_adj_size.exit.i ], [ %entry_index.113.i, %for.end.i.start_again.i_crit_edge ]
  %nh_count.0.i = phi i32 [ 0, %mlxsw_sp_dpipe_table_adj_size.exit.i ], [ %nh_count.110.i, %for.end.i.start_again.i_crit_edge ]
  %call2.i = call i32 @devlink_dpipe_entry_ctx_prepare(ptr noundef %dump_ctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i14 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i14, label %if.end.i15, label %start_again.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge

start_again.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge: ; preds = %start_again.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_adj_entries_get.exit

if.end.i15:                                       ; preds = %start_again.i
  %54 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %router.i, align 4
  %call4.i = call ptr @mlxsw_sp_nexthop_next(ptr noundef %55, ptr noundef null) #5
  %tobool5.not15.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not15.i, label %if.end.i15.for.end.i_crit_edge, label %if.end.i15.for.body.i_crit_edge

if.end.i15.for.body.i_crit_edge:                  ; preds = %if.end.i15
  br label %for.body.i

if.end.i15.for.end.i_crit_edge:                   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i15.for.body.i_crit_edge
  %j.022.i = phi i32 [ %j.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i15.for.body.i_crit_edge ]
  %nh_count.120.i = phi i32 [ %nh_count.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i15.for.body.i_crit_edge ]
  %entry_index.119.i = phi i32 [ %entry_index.3.i, %for.inc.i.for.body.i_crit_edge ], [ %entry_index.0.i, %if.end.i15.for.body.i_crit_edge ]
  %nh.016.i = phi ptr [ %call29.i, %for.inc.i.for.body.i_crit_edge ], [ %call4.i, %if.end.i15.for.body.i_crit_edge ]
  %call6.i = call zeroext i1 @mlxsw_sp_nexthop_is_forward(ptr noundef nonnull %nh.016.i) #5
  br i1 %call6.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call7.i = call zeroext i1 @mlxsw_sp_nexthop_group_has_ipip(ptr noundef nonnull %nh.016.i) #5
  br i1 %call7.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end10.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end10.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nh_count.120.i, i32 %nh_count.0.i)
  %cmp.i = icmp slt i32 %nh_count.120.i, %nh_count.0.i
  br i1 %cmp.i, label %if.end10.i.skip.i_crit_edge, label %if.end13.i

if.end10.i.skip.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip.i

if.end13.i:                                       ; preds = %if.end10.i
  %call.i1.i = call ptr @mlxsw_sp_nexthop_rif(ptr noundef nonnull %nh.016.i) #5
  %call2.i2.i = call ptr @mlxsw_sp_nexthop_ha(ptr noundef nonnull %nh.016.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adj_hash_index.i.i) #5
  %56 = ptrtoint ptr %adj_hash_index.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %adj_hash_index.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adj_index.i.i) #5
  %57 = ptrtoint ptr %adj_index.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %adj_index.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adj_size.i.i) #5
  %58 = ptrtoint ptr %adj_size.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %adj_size.i.i, align 4
  %call3.i.i = call i32 @mlxsw_sp_nexthop_indexes(ptr noundef nonnull %nh.016.i, ptr noundef nonnull %adj_index.i.i, ptr noundef nonnull %adj_size.i.i, ptr noundef nonnull %adj_hash_index.i.i) #5
  %59 = ptrtoint ptr %adj_index.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %adj_index.i.i, align 4
  %61 = ptrtoint ptr %adj_size.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %adj_size.i.i, align 4
  %63 = ptrtoint ptr %adj_hash_index.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %adj_hash_index.i.i, align 4
  %65 = ptrtoint ptr %match_values2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %match_values2.i, align 8
  %value2.i.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %value2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %value2.i.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %60, ptr %68, align 4
  %70 = load ptr, ptr %match_values2.i, align 8
  %value5.i.i.i = getelementptr %struct.devlink_dpipe_value, ptr %70, i32 1, i32 4
  %71 = ptrtoint ptr %value5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %value5.i.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %62, ptr %72, align 4
  %74 = load ptr, ptr %match_values2.i, align 8
  %value8.i.i.i = getelementptr %struct.devlink_dpipe_value, ptr %74, i32 2, i32 4
  %75 = ptrtoint ptr %value8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %value8.i.i.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %64, ptr %76, align 4
  %78 = ptrtoint ptr %action_values3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %action_values3.i, align 8
  %value10.i.i.i = getelementptr inbounds %struct.devlink_dpipe_value, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %value10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %value10.i.i.i, align 4
  %82 = ptrtoint ptr %call2.i2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %call2.i2.i, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %81, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call2.i2.i, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %81, i32 4
  %87 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %add.ptr1.i.i.i.i, align 2
  %88 = load ptr, ptr %action_values3.i, align 8
  %value13.i.i.i = getelementptr %struct.devlink_dpipe_value, ptr %88, i32 1, i32 4
  %89 = ptrtoint ptr %value13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %value13.i.i.i, align 4
  %call.i.i.i = call zeroext i16 @mlxsw_sp_rif_index(ptr noundef %call.i1.i) #5
  %conv.i.i.i = zext i16 %call.i.i.i to i32
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv.i.i.i, ptr %90, align 4
  %call14.i.i.i = call i32 @mlxsw_sp_rif_dev_ifindex(ptr noundef %call.i1.i) #5
  %mapping_value.i.i.i = getelementptr %struct.devlink_dpipe_value, ptr %88, i32 1, i32 1
  %92 = ptrtoint ptr %mapping_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call14.i.i.i, ptr %mapping_value.i.i.i, align 4
  %mapping_valid.i.i.i = getelementptr %struct.devlink_dpipe_value, ptr %88, i32 1, i32 2
  %93 = ptrtoint ptr %mapping_valid.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %mapping_valid.i.i.i, align 4
  %call4.i3.i = call i32 @mlxsw_sp_nexthop_counter_get(ptr noundef %priv, ptr noundef nonnull %nh.016.i, ptr noundef %counter.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call4.i3.i, 0
  br i1 %tobool.not.i4.i, label %if.then.i.i, label %if.end13.i.mlxsw_sp_dpipe_table_adj_entry_fill.exit.i_crit_edge

if.end13.i.mlxsw_sp_dpipe_table_adj_entry_fill.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_adj_entry_fill.exit.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %counter_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %counter_valid.i.i, align 8
  br label %mlxsw_sp_dpipe_table_adj_entry_fill.exit.i

mlxsw_sp_dpipe_table_adj_entry_fill.exit.i:       ; preds = %if.then.i.i, %if.end13.i.mlxsw_sp_dpipe_table_adj_entry_fill.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj_size.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj_index.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj_hash_index.i.i) #5
  %conv14.i = sext i32 %entry_index.119.i to i64
  %95 = ptrtoint ptr %entry1 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv14.i, ptr %entry1, align 8
  %call15.i = call i32 @devlink_dpipe_entry_ctx_append(ptr noundef %dump_ctx, ptr noundef nonnull %entry1) #5
  %96 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call15.i, label %mlxsw_sp_dpipe_table_adj_entry_fill.exit.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge [
    i32 0, label %if.end25.i
    i32 -90, label %if.then20.i
  ]

mlxsw_sp_dpipe_table_adj_entry_fill.exit.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge: ; preds = %mlxsw_sp_dpipe_table_adj_entry_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_adj_entries_get.exit

if.then20.i:                                      ; preds = %mlxsw_sp_dpipe_table_adj_entry_fill.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.022.i)
  %tobool21.not.i = icmp eq i32 %j.022.i, 0
  br i1 %tobool21.not.i, label %if.then20.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge, label %if.then20.i.for.end.i_crit_edge

if.then20.i.for.end.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then20.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_adj_entries_get.exit

if.end25.i:                                       ; preds = %mlxsw_sp_dpipe_table_adj_entry_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add i32 %entry_index.119.i, 1
  %inc26.i = add i32 %j.022.i, 1
  br label %skip.i

skip.i:                                           ; preds = %if.end25.i, %if.end10.i.skip.i_crit_edge
  %entry_index.2.i = phi i32 [ %entry_index.119.i, %if.end10.i.skip.i_crit_edge ], [ %inc.i, %if.end25.i ]
  %j.1.i = phi i32 [ %j.022.i, %if.end10.i.skip.i_crit_edge ], [ %inc26.i, %if.end25.i ]
  %inc27.i = add i32 %nh_count.120.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %skip.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %entry_index.3.i = phi i32 [ %entry_index.119.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %entry_index.2.i, %skip.i ], [ %entry_index.119.i, %for.body.i.for.inc.i_crit_edge ]
  %nh_count.2.i = phi i32 [ %nh_count.120.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %inc27.i, %skip.i ], [ %nh_count.120.i, %for.body.i.for.inc.i_crit_edge ]
  %j.2.i = phi i32 [ %j.022.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %j.1.i, %skip.i ], [ %j.022.i, %for.body.i.for.inc.i_crit_edge ]
  %97 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %router.i, align 4
  %call29.i = call ptr @mlxsw_sp_nexthop_next(ptr noundef %98, ptr noundef nonnull %nh.016.i) #5
  %tobool5.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool5.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then20.i.for.end.i_crit_edge, %if.end.i15.for.end.i_crit_edge
  %entry_index.113.i = phi i32 [ %entry_index.119.i, %if.then20.i.for.end.i_crit_edge ], [ %entry_index.0.i, %if.end.i15.for.end.i_crit_edge ], [ %entry_index.3.i, %for.inc.i.for.end.i_crit_edge ]
  %nh_count.110.i = phi i32 [ %nh_count.120.i, %if.then20.i.for.end.i_crit_edge ], [ 0, %if.end.i15.for.end.i_crit_edge ], [ %nh_count.2.i, %for.inc.i.for.end.i_crit_edge ]
  %call30.i = call i32 @devlink_dpipe_entry_ctx_close(ptr noundef %dump_ctx) #5
  %cmp31.not.i = icmp eq i32 %nh_count.110.i, %size.0.lcssa.i.off0.i
  br i1 %cmp31.not.i, label %for.end.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge, label %for.end.i.start_again.i_crit_edge

for.end.i.start_again.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %start_again.i

for.end.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_adj_entries_get.exit

mlxsw_sp_dpipe_table_adj_entries_get.exit:        ; preds = %for.end.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge, %if.then20.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge, %mlxsw_sp_dpipe_table_adj_entry_fill.exit.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge, %start_again.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge
  %retval.0.i16 = phi i32 [ %call15.i, %mlxsw_sp_dpipe_table_adj_entry_fill.exit.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge ], [ %call2.i, %start_again.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge ], [ -90, %if.then20.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge ], [ 0, %for.end.i.mlxsw_sp_dpipe_table_adj_entries_get.exit_crit_edge ]
  %99 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %router.i, align 4
  %lock38.i = getelementptr inbounds %struct.mlxsw_sp_router, ptr %100, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %lock38.i) #5
  br label %out

out:                                              ; preds = %mlxsw_sp_dpipe_table_adj_entries_get.exit, %if.end36.i.out_crit_edge, %if.end26.i.out_crit_edge, %if.end16.i.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %retval.0.i16, %mlxsw_sp_dpipe_table_adj_entries_get.exit ], [ -12, %entry.out_crit_edge ], [ -12, %if.end.i.out_crit_edge ], [ -12, %if.end16.i.out_crit_edge ], [ -12, %if.end26.i.out_crit_edge ], [ -12, %if.end36.i.out_crit_edge ]
  call void @devlink_dpipe_entry_clear(ptr noundef nonnull %entry1) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %entry1) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %matches) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %actions) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %match_values) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %action_values) #5
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_dpipe_table_adj_counters_update(ptr noundef %priv, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %ratr_pl = alloca [44 x i8], align 1
  %adj_hash_index = alloca i32, align 4
  %adj_index = alloca i32, align 4
  %adj_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ratr_pl) #5
  %0 = call ptr @memset(ptr %ratr_pl, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adj_hash_index) #5
  %1 = ptrtoint ptr %adj_hash_index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %adj_hash_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adj_index) #5
  %2 = ptrtoint ptr %adj_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %adj_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adj_size) #5
  %3 = ptrtoint ptr %adj_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %adj_size, align 4
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %router, align 4
  %call = tail call ptr @mlxsw_sp_nexthop_next(ptr noundef %5, ptr noundef null) #5
  %tobool.not21 = icmp eq ptr %call, null
  br i1 %tobool.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nh.022 = phi ptr [ %call9, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = call zeroext i1 @mlxsw_sp_nexthop_is_forward(ptr noundef nonnull %nh.022) #5
  br i1 %call1, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %call2 = call zeroext i1 @mlxsw_sp_nexthop_group_has_ipip(ptr noundef nonnull %nh.022) #5
  br i1 %call2, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @mlxsw_sp_nexthop_indexes(ptr noundef nonnull %nh.022, ptr noundef nonnull %adj_index, ptr noundef nonnull %adj_size, ptr noundef nonnull %adj_hash_index) #5
  br i1 %enable, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlxsw_sp_nexthop_counter_alloc(ptr noundef %priv, ptr noundef nonnull %nh.022) #5
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlxsw_sp_nexthop_counter_free(ptr noundef %priv, ptr noundef nonnull %nh.022) #5
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %6 = ptrtoint ptr %adj_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adj_index, align 4
  %8 = ptrtoint ptr %adj_hash_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adj_hash_index, align 4
  %add = add i32 %9, %7
  %call7 = call i32 @mlxsw_sp_nexthop_eth_update(ptr noundef %priv, i32 noundef %add, ptr noundef nonnull %nh.022, i1 noundef zeroext true, ptr noundef nonnull %ratr_pl) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %router, align 4
  %call9 = call ptr @mlxsw_sp_nexthop_next(ptr noundef %11, ptr noundef nonnull %nh.022) #5
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj_index) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj_hash_index) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ratr_pl) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_dpipe_table_adj_size_get(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %router, align 4
  %lock = getelementptr inbounds %struct.mlxsw_sp_router, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router, align 4
  %call.i = tail call ptr @mlxsw_sp_nexthop_next(ptr noundef %3, ptr noundef null) #5
  %tobool.not10.i = icmp eq ptr %call.i, null
  br i1 %tobool.not10.i, label %entry.mlxsw_sp_dpipe_table_adj_size.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mlxsw_sp_dpipe_table_adj_size.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_adj_size.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %size.013.i = phi i64 [ %size.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %nh.011.i = phi ptr [ %call4.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %call1.i = tail call zeroext i1 @mlxsw_sp_nexthop_is_forward(ptr noundef nonnull %nh.011.i) #5
  br i1 %call1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call zeroext i1 @mlxsw_sp_nexthop_group_has_ipip(ptr noundef nonnull %nh.011.i) #5
  %not.call2.i = xor i1 %call2.i, true
  %inc.i = zext i1 %not.call2.i to i64
  %spec.select.i = add i64 %size.013.i, %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i.for.inc.i_crit_edge
  %size.1.i = phi i64 [ %size.013.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %4 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %router, align 4
  %call4.i = tail call ptr @mlxsw_sp_nexthop_next(ptr noundef %5, ptr noundef nonnull %nh.011.i) #5
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.inc.i.mlxsw_sp_dpipe_table_adj_size.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.mlxsw_sp_dpipe_table_adj_size.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_dpipe_table_adj_size.exit

mlxsw_sp_dpipe_table_adj_size.exit:               ; preds = %for.inc.i.mlxsw_sp_dpipe_table_adj_size.exit_crit_edge, %entry.mlxsw_sp_dpipe_table_adj_size.exit_crit_edge
  %size.0.lcssa.i = phi i64 [ 0, %entry.mlxsw_sp_dpipe_table_adj_size.exit_crit_edge ], [ %size.1.i, %for.inc.i.mlxsw_sp_dpipe_table_adj_size.exit_crit_edge ]
  %6 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %router, align 4
  %lock2 = getelementptr inbounds %struct.mlxsw_sp_router, ptr %7, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %lock2) #5
  ret i64 %size.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_nexthop_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_nexthop_is_forward(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_nexthop_group_has_ipip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_nexthop_rif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_nexthop_ha(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_nexthop_indexes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_nexthop_counter_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_nexthop_counter_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_nexthop_counter_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_nexthop_eth_update(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @mlxsw_sp_dpipe_headers, !1, !"mlxsw_sp_dpipe_headers", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 73, i32 37}
!2 = !{ptr @mlxsw_dpipe_headers, !3, !"mlxsw_dpipe_headers", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 66, i32 37}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 60, i32 10}
!6 = !{ptr @mlxsw_sp_dpipe_header_metadata, !7, !"mlxsw_sp_dpipe_header_metadata", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 59, i32 36}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 23, i32 11}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 29, i32 11}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 34, i32 11}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 39, i32 11}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 44, i32 11}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 49, i32 11}
!20 = !{ptr @mlxsw_sp_dpipe_fields_metadata, !21, !"mlxsw_sp_dpipe_fields_metadata", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 21, i32 35}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 299, i32 10}
!24 = !{ptr @mlxsw_sp_erif_ops, !25, !"mlxsw_sp_erif_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 286, i32 39}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 753, i32 9}
!28 = !{ptr @mlxsw_sp_host4_ops, !29, !"mlxsw_sp_host4_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 737, i32 39}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 336, i32 3}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 830, i32 9}
!34 = !{ptr @mlxsw_sp_host6_ops, !35, !"mlxsw_sp_host6_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 814, i32 39}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 1235, i32 9}
!38 = !{ptr @mlxsw_sp_dpipe_table_adj_ops, !39, !"mlxsw_sp_dpipe_table_adj_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_dpipe.c", i32 1219, i32 39}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
