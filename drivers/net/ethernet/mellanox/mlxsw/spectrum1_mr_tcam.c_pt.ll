; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum1_mr_tcam.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum1_mr_tcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_mr_tcam_ops = type { i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.parman_ops = type { i32, i32, ptr, ptr, i32 }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mlxsw_sp1_mr_tcam_region = type { ptr, i32, ptr, ptr }
%struct.parman_prio = type { %struct.list_head, %struct.list_head, i32 }
%struct.mlxsw_sp_mr_route_key = type { i32, i32, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.mlxsw_sp1_mr_tcam_route = type { %struct.parman_item, ptr }
%struct.parman_item = type { %struct.list_head, i32 }

@mlxsw_sp1_mr_tcam_ops = dso_local constant { %struct.mlxsw_sp_mr_tcam_ops, [36 x i8] } { %struct.mlxsw_sp_mr_tcam_ops { i32 32, ptr @mlxsw_sp1_mr_tcam_init, ptr @mlxsw_sp1_mr_tcam_fini, i32 16, ptr @mlxsw_sp1_mr_tcam_route_create, ptr @mlxsw_sp1_mr_tcam_route_destroy, ptr @mlxsw_sp1_mr_tcam_route_update }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp1_mr_tcam_region_parman_ops = internal constant { %struct.parman_ops, [44 x i8] } { %struct.parman_ops { i32 16, i32 16, ptr @mlxsw_sp1_mr_tcam_region_parman_resize, ptr @mlxsw_sp1_mr_tcam_region_parman_move, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mlxsw_reg_rtar = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32764, i16 32, ptr @.str.9 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, align 1
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_rtar_op\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_rtar_key_type\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_rtar_region_size\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtar\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_rrcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32753, i16 36, ptr @.str.20 }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_rrcr_op\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_rrcr_offset\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_rrcr_size\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_rrcr_table_id\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_rrcr_dest_offset\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rrcr\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_reg_rmft2 = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32729, i16 372, ptr @.str.48 }, [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_rmft2_v\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_rmft2_op\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_rmft2_offset\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_rmft2_virtual_router\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_rmft2_irif_mask\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_rmft2_irif\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_rmft2_type\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_rmft2_dip4\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_rmft2_dip4_mask\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_rmft2_sip4\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_rmft2_sip4_mask\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmft2\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"mlxsw_sp1_mr_tcam_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 334, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [36 x i8] c"mlxsw_sp1_mr_tcam_region_parman_ops\00", align 1
@___asan_gen_.54 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_mr_tcam.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 229, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_rtar\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 33, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 6847, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 6858, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 6867, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 6836, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_rrcr\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 7295, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 7301, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 7307, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 7314, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 7320, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 7283, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_rmft2\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8637, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8664, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8677, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8683, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8694, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8700, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8647, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8707, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8715, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8722, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8730, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 8631, i32 1 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp1_mr_tcam_ops, ptr @mlxsw_sp1_mr_tcam_region_parman_ops, ptr @mlxsw_reg_rtar, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @mlxsw_reg_rrcr, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @mlxsw_reg_rmft2, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.48], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_mr_tcam_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_mr_tcam_region_parman_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rtar to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rrcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rmft2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_mr_tcam_init(ptr noundef %mlxsw_sp, ptr noundef %priv) #0 align 64 {
entry:
  %rtar_pl.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %1, i32 noundef 21) #5
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @mlxsw_sp1_mr_tcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %priv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 1
  %call6 = tail call fastcc i32 @mlxsw_sp1_mr_tcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %arrayidx5, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %err_ipv6_region_init

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_ipv6_region_init:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %parman_prios.i = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parman_prios.i, align 4
  tail call void @parman_prio_fini(ptr noundef %3) #5
  %4 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parman_prios.i, align 4
  %arrayidx.1.i = getelementptr %struct.parman_prio, ptr %5, i32 1
  tail call void @parman_prio_fini(ptr noundef %arrayidx.1.i) #5
  %6 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parman_prios.i, align 4
  %arrayidx.2.i = getelementptr %struct.parman_prio, ptr %7, i32 2
  tail call void @parman_prio_fini(ptr noundef %arrayidx.2.i) #5
  %8 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parman_prios.i, align 4
  tail call void @kfree(ptr noundef %9) #5
  %parman.i = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %parman.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parman.i, align 4
  tail call void @parman_destroy(ptr noundef %11) #5
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rtar_pl.i.i) #5
  %rtar_key_type.i.i = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 0, i32 1
  %14 = call ptr @memset(ptr %rtar_pl.i.i, i32 255, i32 32)
  %15 = ptrtoint ptr %rtar_key_type.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rtar_key_type.i.i, align 4
  call fastcc void @mlxsw_reg_rtar_pack(ptr noundef nonnull %rtar_pl.i.i, i32 noundef 2, i32 noundef %16, i16 noundef zeroext 0) #5
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core.i.i, align 4
  %call.i.i = call i32 @mlxsw_reg_write(ptr noundef %18, ptr noundef nonnull @mlxsw_reg_rtar, ptr noundef nonnull %rtar_pl.i.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtar_pl.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_ipv6_region_init, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %err_ipv6_region_init ], [ -5, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_mr_tcam_fini(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %rtar_pl.i.i4 = alloca [32 x i8], align 1
  %rtar_pl.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 1
  %parman_prios.i = getelementptr %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 1, i32 3
  %0 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parman_prios.i, align 4
  tail call void @parman_prio_fini(ptr noundef %1) #5
  %2 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parman_prios.i, align 4
  %arrayidx.1.i = getelementptr %struct.parman_prio, ptr %3, i32 1
  tail call void @parman_prio_fini(ptr noundef %arrayidx.1.i) #5
  %4 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parman_prios.i, align 4
  %arrayidx.2.i = getelementptr %struct.parman_prio, ptr %5, i32 2
  tail call void @parman_prio_fini(ptr noundef %arrayidx.2.i) #5
  %6 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parman_prios.i, align 4
  tail call void @kfree(ptr noundef %7) #5
  %parman.i = getelementptr %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 1, i32 2
  %8 = ptrtoint ptr %parman.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parman.i, align 4
  tail call void @parman_destroy(ptr noundef %9) #5
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rtar_pl.i.i) #5
  %rtar_key_type.i.i = getelementptr %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 1, i32 1
  %12 = call ptr @memset(ptr %rtar_pl.i.i, i32 255, i32 32)
  %13 = ptrtoint ptr %rtar_key_type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rtar_key_type.i.i, align 4
  call fastcc void @mlxsw_reg_rtar_pack(ptr noundef nonnull %rtar_pl.i.i, i32 noundef 2, i32 noundef %14, i16 noundef zeroext 0) #5
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core.i.i, align 4
  %call.i.i = call i32 @mlxsw_reg_write(ptr noundef %16, ptr noundef nonnull @mlxsw_reg_rtar, ptr noundef nonnull %rtar_pl.i.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtar_pl.i.i) #5
  %parman_prios.i5 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 0, i32 3
  %17 = ptrtoint ptr %parman_prios.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parman_prios.i5, align 4
  call void @parman_prio_fini(ptr noundef %18) #5
  %19 = ptrtoint ptr %parman_prios.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parman_prios.i5, align 4
  %arrayidx.1.i6 = getelementptr %struct.parman_prio, ptr %20, i32 1
  call void @parman_prio_fini(ptr noundef %arrayidx.1.i6) #5
  %21 = ptrtoint ptr %parman_prios.i5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parman_prios.i5, align 4
  %arrayidx.2.i7 = getelementptr %struct.parman_prio, ptr %22, i32 2
  call void @parman_prio_fini(ptr noundef %arrayidx.2.i7) #5
  %23 = ptrtoint ptr %parman_prios.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parman_prios.i5, align 4
  call void @kfree(ptr noundef %24) #5
  %parman.i8 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %parman.i8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parman.i8, align 4
  call void @parman_destroy(ptr noundef %26) #5
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rtar_pl.i.i4) #5
  %rtar_key_type.i.i9 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 0, i32 1
  %29 = call ptr @memset(ptr %rtar_pl.i.i4, i32 255, i32 32)
  %30 = ptrtoint ptr %rtar_key_type.i.i9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rtar_key_type.i.i9, align 4
  call fastcc void @mlxsw_reg_rtar_pack(ptr noundef nonnull %rtar_pl.i.i4, i32 noundef 2, i32 noundef %31, i16 noundef zeroext 0) #5
  %core.i.i10 = getelementptr inbounds %struct.mlxsw_sp, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %core.i.i10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core.i.i10, align 4
  %call.i.i11 = call i32 @mlxsw_reg_write(ptr noundef %33, ptr noundef nonnull @mlxsw_reg_rtar, ptr noundef nonnull %rtar_pl.i.i4) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtar_pl.i.i4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_mr_tcam_route_create(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %priv, ptr noundef %route_priv, ptr noundef %key, ptr noundef %afa_block, i32 noundef %prio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %proto.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %proto.i, align 4
  %parman.i = getelementptr [2 x %struct.mlxsw_sp1_mr_tcam_region], ptr %priv, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %parman.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parman.i, align 4
  %parman_prios.i = getelementptr [2 x %struct.mlxsw_sp1_mr_tcam_region], ptr %priv, i32 0, i32 %1, i32 3
  %4 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parman_prios.i, align 4
  %arrayidx.i = getelementptr %struct.parman_prio, ptr %5, i32 %prio
  %call1.i = tail call i32 @parman_item_add(ptr noundef %3, ptr noundef %arrayidx.i, ptr noundef %route_priv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %parman_prios.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parman_prios.i, align 4
  %arrayidx3.i = getelementptr %struct.parman_prio, ptr %7, i32 %prio
  %parman_prio.i = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_route, ptr %route_priv, i32 0, i32 1
  %8 = ptrtoint ptr %parman_prio.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx3.i, ptr %parman_prio.i, align 4
  %call1 = tail call fastcc i32 @mlxsw_sp1_mr_tcam_route_replace(ptr noundef %mlxsw_sp, ptr noundef %route_priv, ptr noundef %key, ptr noundef %afa_block)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_route_replace

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_route_replace:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %proto.i, align 4
  %parman.i16 = getelementptr [2 x %struct.mlxsw_sp1_mr_tcam_region], ptr %priv, i32 0, i32 %10, i32 2
  %11 = ptrtoint ptr %parman.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parman.i16, align 4
  %13 = ptrtoint ptr %parman_prio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parman_prio.i, align 4
  tail call void @parman_item_remove(ptr noundef %12, ptr noundef %14, ptr noundef %route_priv) #5
  br label %cleanup

cleanup:                                          ; preds = %err_route_replace, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_route_replace ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_mr_tcam_route_destroy(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %priv, ptr noundef %route_priv, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %rmft2_pl.i = alloca [372 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %rmft2_pl.i) #5
  %0 = call ptr @memset(ptr %rmft2_pl.i, i32 255, i32 372)
  %proto.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proto.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.mlxsw_sp1_mr_tcam_route_remove.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

entry.mlxsw_sp1_mr_tcam_route_remove.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_mr_tcam_route_remove.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index.i = getelementptr inbounds %struct.parman_item, ptr %route_priv, i32 0, i32 1
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %conv.i = trunc i32 %5 to i16
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  %conv1.i = trunc i32 %7 to i16
  call fastcc void @mlxsw_reg_rmft2_ipv4_pack(ptr noundef nonnull %rmft2_pl.i, i1 noundef zeroext false, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv1.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  br label %mlxsw_sp1_mr_tcam_route_remove.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index4.i = getelementptr inbounds %struct.parman_item, ptr %route_priv, i32 0, i32 1
  %8 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index4.i, align 4
  %conv5.i = trunc i32 %9 to i16
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key, align 4
  %conv7.i = trunc i32 %11 to i16
  call fastcc void @mlxsw_reg_rmft2_ipv6_pack(ptr noundef nonnull %rmft2_pl.i, i1 noundef zeroext false, i16 noundef zeroext %conv5.i, i16 noundef zeroext %conv7.i, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, ptr noundef null) #5
  br label %mlxsw_sp1_mr_tcam_route_remove.exit

mlxsw_sp1_mr_tcam_route_remove.exit:              ; preds = %sw.bb2.i, %sw.bb.i, %entry.mlxsw_sp1_mr_tcam_route_remove.exit_crit_edge
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %12 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %13, ptr noundef nonnull @mlxsw_reg_rmft2, ptr noundef nonnull %rmft2_pl.i) #5
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %rmft2_pl.i) #5
  %14 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %proto.i, align 4
  %parman.i = getelementptr [2 x %struct.mlxsw_sp1_mr_tcam_region], ptr %priv, i32 0, i32 %15, i32 2
  %16 = ptrtoint ptr %parman.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parman.i, align 4
  %parman_prio.i = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_route, ptr %route_priv, i32 0, i32 1
  %18 = ptrtoint ptr %parman_prio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parman_prio.i, align 4
  call void @parman_item_remove(ptr noundef %17, ptr noundef %19, ptr noundef %route_priv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_mr_tcam_route_update(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %route_priv, ptr noundef %key, ptr noundef %afa_block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp1_mr_tcam_route_replace(ptr noundef %mlxsw_sp, ptr noundef %route_priv, ptr noundef %key, ptr noundef %afa_block)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp1_mr_tcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %mr_tcam_region, i32 noundef %rtar_key_type) unnamed_addr #0 align 64 {
entry:
  %rtar_pl.i34 = alloca [32 x i8], align 1
  %rtar_pl.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rtar_key_type1 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %mr_tcam_region, i32 0, i32 1
  %0 = ptrtoint ptr %rtar_key_type1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rtar_key_type, ptr %rtar_key_type1, align 4
  %1 = ptrtoint ptr %mr_tcam_region to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mlxsw_sp, ptr %mr_tcam_region, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rtar_pl.i) #5
  %2 = call ptr @memset(ptr %rtar_pl.i, i32 255, i32 32)
  call fastcc void @mlxsw_reg_rtar_pack(ptr noundef nonnull %rtar_pl.i, i32 noundef 0, i32 noundef %rtar_key_type, i16 noundef zeroext 16) #5
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %3 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %4, ptr noundef nonnull @mlxsw_reg_rtar, ptr noundef nonnull %rtar_pl.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtar_pl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @parman_create(ptr noundef nonnull @mlxsw_sp1_mr_tcam_region_parman_ops, ptr noundef %mr_tcam_region) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.err_parman_create_crit_edge, label %if.end6

if.end.err_parman_create_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_parman_create

if.end6:                                          ; preds = %if.end
  %parman7 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %mr_tcam_region, i32 0, i32 2
  %5 = ptrtoint ptr %parman7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %parman7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 60) #8
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  call void @parman_destroy(ptr noundef nonnull %call3) #5
  br label %err_parman_create

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %parman_prios12 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %mr_tcam_region, i32 0, i32 3
  %7 = ptrtoint ptr %parman_prios12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %parman_prios12, align 4
  %8 = ptrtoint ptr %parman7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parman7, align 4
  call void @parman_prio_init(ptr noundef %9, ptr noundef nonnull %call7.i.i, i32 noundef 0) #5
  %10 = ptrtoint ptr %parman7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parman7, align 4
  %12 = ptrtoint ptr %parman_prios12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parman_prios12, align 4
  %arrayidx.1 = getelementptr %struct.parman_prio, ptr %13, i32 1
  call void @parman_prio_init(ptr noundef %11, ptr noundef %arrayidx.1, i32 noundef 1) #5
  %14 = ptrtoint ptr %parman7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parman7, align 4
  %16 = ptrtoint ptr %parman_prios12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parman_prios12, align 4
  %arrayidx.2 = getelementptr %struct.parman_prio, ptr %17, i32 2
  call void @parman_prio_init(ptr noundef %15, ptr noundef %arrayidx.2, i32 noundef 2) #5
  br label %cleanup

err_parman_create:                                ; preds = %if.then10, %if.end.err_parman_create_crit_edge
  %18 = ptrtoint ptr %mr_tcam_region to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mr_tcam_region, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rtar_pl.i34) #5
  %20 = call ptr @memset(ptr %rtar_pl.i34, i32 255, i32 32)
  %21 = ptrtoint ptr %rtar_key_type1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rtar_key_type1, align 4
  call fastcc void @mlxsw_reg_rtar_pack(ptr noundef nonnull %rtar_pl.i34, i32 noundef 2, i32 noundef %22, i16 noundef zeroext 0) #5
  %core.i36 = getelementptr inbounds %struct.mlxsw_sp, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %core.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core.i36, align 4
  %call.i37 = call i32 @mlxsw_reg_write(ptr noundef %24, ptr noundef nonnull @mlxsw_reg_rtar, ptr noundef nonnull %rtar_pl.i34) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtar_pl.i34) #5
  br label %cleanup

cleanup:                                          ; preds = %err_parman_create, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_parman_create ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parman_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_prio_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_rtar_pack(ptr nocapture noundef %payload, i32 noundef %op, i32 noundef %key_type, i16 noundef zeroext %region_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = call ptr @memset(ptr %payload, i32 0, i32 32)
  %spec.select.i.i = shl i32 %op, 28
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, 268435200
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %and6.i.i28 = and i32 %key_type, 255
  %or.i.i32 = or i32 %and6.i.i28, %or.i.i
  store i32 %or.i.i32, ptr %payload, align 4
  %conv1 = zext i16 %region_size to i32
  %arrayidx.i.i57 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i57, align 4
  %and7.i.i59 = and i32 %4, -65536
  %or.i.i60 = or i32 %and7.i.i59, %conv1
  store i32 %or.i.i60, ptr %arrayidx.i.i57, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_mr_tcam_region_parman_resize(ptr nocapture noundef readonly %priv, i32 noundef %new_count) #0 align 64 {
entry:
  %rtar_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rtar_pl) #5
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %rtar_pl, i32 255, i32 32)
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %4, i32 noundef 21) #5
  %conv = zext i32 %new_count to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %conv)
  %cmp = icmp ult i64 %call, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rtar_key_type = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %rtar_key_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rtar_key_type, align 4
  %conv3 = trunc i32 %new_count to i16
  call fastcc void @mlxsw_reg_rtar_pack(ptr noundef nonnull %rtar_pl, i32 noundef 1, i32 noundef %6, i16 noundef zeroext %conv3)
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %call6 = call i32 @mlxsw_reg_write(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_rtar, ptr noundef nonnull %rtar_pl) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rtar_pl) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_mr_tcam_region_parman_move(ptr nocapture noundef readonly %priv, i32 noundef %from_index, i32 noundef %to_index, i32 noundef %count) #0 align 64 {
entry:
  %rrcr_pl = alloca [36 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rrcr_pl) #5
  %rtar_key_type = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %rtar_key_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtar_key_type, align 4
  %4 = call ptr @memset(ptr %rrcr_pl, i32 0, i32 36)
  %5 = ptrtoint ptr %rrcr_pl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rrcr_pl, align 4
  %conv1.i = and i32 %from_index, 65535
  %and7.i.i23.i = and i32 %6, 268369920
  %or.i.i.i = or i32 %conv1.i, %and7.i.i23.i
  store i32 %or.i.i.i, ptr %rrcr_pl, align 4
  %conv2.i = and i32 %count, 65535
  %arrayidx.i.i48.i = getelementptr inbounds i32, ptr %rrcr_pl, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i48.i, align 4
  %and7.i.i50.i = and i32 %8, -65536
  %or.i.i51.i = or i32 %conv2.i, %and7.i.i50.i
  store i32 %or.i.i51.i, ptr %arrayidx.i.i48.i, align 4
  %and6.i.i75.i = and i32 %3, 15
  %arrayidx.i.i76.i = getelementptr inbounds i32, ptr %rrcr_pl, i32 4
  %9 = ptrtoint ptr %arrayidx.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i76.i, align 4
  %and7.i.i78.i = and i32 %10, -16
  %or.i.i79.i = or i32 %and6.i.i75.i, %and7.i.i78.i
  store i32 %or.i.i79.i, ptr %arrayidx.i.i76.i, align 4
  %conv3.i = and i32 %to_index, 65535
  %arrayidx.i.i104.i = getelementptr inbounds i32, ptr %rrcr_pl, i32 8
  %11 = ptrtoint ptr %arrayidx.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i104.i, align 4
  %and7.i.i106.i = and i32 %12, -65536
  %or.i.i107.i = or i32 %conv3.i, %and7.i.i106.i
  store i32 %or.i.i107.i, ptr %arrayidx.i.i104.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_rrcr, ptr noundef nonnull %rrcr_pl) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rrcr_pl) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_prio_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp1_mr_tcam_route_replace(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %parman_item, ptr noundef readonly %key, ptr noundef %afa_block) unnamed_addr #0 align 64 {
entry:
  %rmft2_pl = alloca [372 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %rmft2_pl) #5
  %0 = call ptr @memset(ptr %rmft2_pl, i32 255, i32 372)
  %proto = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proto, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.parman_item, ptr %parman_item, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  %conv1 = trunc i32 %7 to i16
  %group = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2
  %8 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %group, align 4
  %group_mask = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3
  %10 = ptrtoint ptr %group_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %group_mask, align 4
  %source = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4
  %12 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %source, align 4
  %source_mask = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5
  %14 = ptrtoint ptr %source_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %source_mask, align 4
  %call = tail call ptr @mlxsw_afa_block_first_set(ptr noundef %afa_block) #5
  call fastcc void @mlxsw_reg_rmft2_ipv4_pack(ptr noundef nonnull %rmft2_pl, i1 noundef zeroext true, i16 noundef zeroext %conv, i16 noundef zeroext %conv1, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %call)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %index4 = getelementptr inbounds %struct.parman_item, ptr %parman_item, i32 0, i32 1
  %16 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index4, align 4
  %conv5 = trunc i32 %17 to i16
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key, align 4
  %conv7 = trunc i32 %19 to i16
  %group8 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2
  %group_mask9 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3
  %source10 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4
  %source_mask11 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5
  %call12 = tail call ptr @mlxsw_afa_block_first_set(ptr noundef %afa_block) #5
  %20 = ptrtoint ptr %group8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %group8, align 4
  %21 = insertvalue [4 x i32] undef, i32 %.unpack, 0
  %.elt34 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %.elt34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack35 = load i32, ptr %.elt34, align 4
  %23 = insertvalue [4 x i32] %21, i32 %.unpack35, 1
  %.elt36 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %.elt36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack37 = load i32, ptr %.elt36, align 4
  %25 = insertvalue [4 x i32] %23, i32 %.unpack37, 2
  %.elt38 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %.elt38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack39 = load i32, ptr %.elt38, align 4
  %27 = insertvalue [4 x i32] %25, i32 %.unpack39, 3
  %28 = ptrtoint ptr %group_mask9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack40 = load i32, ptr %group_mask9, align 4
  %29 = insertvalue [4 x i32] undef, i32 %.unpack40, 0
  %.elt41 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %.elt41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack42 = load i32, ptr %.elt41, align 4
  %31 = insertvalue [4 x i32] %29, i32 %.unpack42, 1
  %.elt43 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %.elt43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack44 = load i32, ptr %.elt43, align 4
  %33 = insertvalue [4 x i32] %31, i32 %.unpack44, 2
  %.elt45 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %34 = ptrtoint ptr %.elt45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack46 = load i32, ptr %.elt45, align 4
  %35 = insertvalue [4 x i32] %33, i32 %.unpack46, 3
  %36 = ptrtoint ptr %source10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack47 = load i32, ptr %source10, align 4
  %37 = insertvalue [4 x i32] undef, i32 %.unpack47, 0
  %.elt48 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %.elt48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack49 = load i32, ptr %.elt48, align 4
  %39 = insertvalue [4 x i32] %37, i32 %.unpack49, 1
  %.elt50 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %.elt50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack51 = load i32, ptr %.elt50, align 4
  %41 = insertvalue [4 x i32] %39, i32 %.unpack51, 2
  %.elt52 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4, i32 0, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %.elt52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack53 = load i32, ptr %.elt52, align 4
  %43 = insertvalue [4 x i32] %41, i32 %.unpack53, 3
  %44 = ptrtoint ptr %source_mask11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack54 = load i32, ptr %source_mask11, align 4
  %45 = insertvalue [4 x i32] undef, i32 %.unpack54, 0
  %.elt55 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %.elt55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack56 = load i32, ptr %.elt55, align 4
  %47 = insertvalue [4 x i32] %45, i32 %.unpack56, 1
  %.elt57 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5, i32 0, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %.elt57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack58 = load i32, ptr %.elt57, align 4
  %49 = insertvalue [4 x i32] %47, i32 %.unpack58, 2
  %.elt59 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5, i32 0, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %.elt59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack60 = load i32, ptr %.elt59, align 4
  %51 = insertvalue [4 x i32] %49, i32 %.unpack60, 3
  call fastcc void @mlxsw_reg_rmft2_ipv6_pack(ptr noundef nonnull %rmft2_pl, i1 noundef zeroext true, i16 noundef zeroext %conv5, i16 noundef zeroext %conv7, [4 x i32] %27, [4 x i32] %35, [4 x i32] %43, [4 x i32] %51, ptr noundef %call12)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %52 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %core, align 4
  %call21 = call i32 @mlxsw_reg_write(ptr noundef %53, ptr noundef nonnull @mlxsw_reg_rmft2, ptr noundef nonnull %rmft2_pl) #5
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %rmft2_pl) #5
  ret i32 %call21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parman_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_rmft2_ipv4_pack(ptr nocapture noundef %payload, i1 noundef zeroext %v, i16 noundef zeroext %offset, i16 noundef zeroext %virtual_router, i32 noundef %dip4, i32 noundef %dip4_mask, i32 noundef %sip4, i32 noundef %sip4_mask, ptr noundef %flexible_action_set) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mlxsw_reg_rmft2_common_pack(ptr noundef %payload, i1 noundef zeroext %v, i16 noundef zeroext %offset, i16 noundef zeroext %virtual_router, ptr noundef %flexible_action_set)
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %1, -805306369
  store i32 %and7.i.i, ptr %payload, align 4
  %arrayidx.i.i23 = getelementptr i32, ptr %payload, i32 7
  %2 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dip4, ptr %arrayidx.i.i23, align 4
  %arrayidx.i.i50 = getelementptr i32, ptr %payload, i32 11
  %3 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dip4_mask, ptr %arrayidx.i.i50, align 4
  %arrayidx.i.i78 = getelementptr i32, ptr %payload, i32 15
  %4 = ptrtoint ptr %arrayidx.i.i78 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sip4, ptr %arrayidx.i.i78, align 4
  %arrayidx.i.i106 = getelementptr i32, ptr %payload, i32 19
  %5 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sip4_mask, ptr %arrayidx.i.i106, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afa_block_first_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_rmft2_ipv6_pack(ptr nocapture noundef %payload, i1 noundef zeroext %v, i16 noundef zeroext %offset, i16 noundef zeroext %virtual_router, [4 x i32] %dip6.coerce, [4 x i32] %dip6_mask.coerce, [4 x i32] %sip6.coerce, [4 x i32] %sip6_mask.coerce, ptr noundef %flexible_action_set) unnamed_addr #3 align 64 {
entry:
  %dip6.sroa.0 = alloca [4 x i32], align 4
  %dip6_mask.sroa.0 = alloca [4 x i32], align 4
  %sip6.sroa.0 = alloca [4 x i32], align 4
  %sip6_mask.sroa.0 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  %dip6.coerce.fca.0.extract = extractvalue [4 x i32] %dip6.coerce, 0
  %0 = ptrtoint ptr %dip6.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dip6.coerce.fca.0.extract, ptr %dip6.sroa.0, align 4
  %dip6.coerce.fca.1.extract = extractvalue [4 x i32] %dip6.coerce, 1
  %dip6.sroa.0.4.dip6.coerce.fca.1.gep.sroa_idx = getelementptr inbounds i8, ptr %dip6.sroa.0, i32 4
  %1 = ptrtoint ptr %dip6.sroa.0.4.dip6.coerce.fca.1.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dip6.coerce.fca.1.extract, ptr %dip6.sroa.0.4.dip6.coerce.fca.1.gep.sroa_idx, align 4
  %dip6.coerce.fca.2.extract = extractvalue [4 x i32] %dip6.coerce, 2
  %dip6.sroa.0.8.dip6.coerce.fca.2.gep.sroa_idx = getelementptr inbounds i8, ptr %dip6.sroa.0, i32 8
  %2 = ptrtoint ptr %dip6.sroa.0.8.dip6.coerce.fca.2.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dip6.coerce.fca.2.extract, ptr %dip6.sroa.0.8.dip6.coerce.fca.2.gep.sroa_idx, align 4
  %dip6.coerce.fca.3.extract = extractvalue [4 x i32] %dip6.coerce, 3
  %dip6.sroa.0.12.dip6.coerce.fca.3.gep.sroa_idx = getelementptr inbounds i8, ptr %dip6.sroa.0, i32 12
  %3 = ptrtoint ptr %dip6.sroa.0.12.dip6.coerce.fca.3.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dip6.coerce.fca.3.extract, ptr %dip6.sroa.0.12.dip6.coerce.fca.3.gep.sroa_idx, align 4
  %dip6_mask.coerce.fca.0.extract = extractvalue [4 x i32] %dip6_mask.coerce, 0
  %4 = ptrtoint ptr %dip6_mask.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dip6_mask.coerce.fca.0.extract, ptr %dip6_mask.sroa.0, align 4
  %dip6_mask.coerce.fca.1.extract = extractvalue [4 x i32] %dip6_mask.coerce, 1
  %dip6_mask.sroa.0.4.dip6_mask.coerce.fca.1.gep.sroa_idx = getelementptr inbounds i8, ptr %dip6_mask.sroa.0, i32 4
  %5 = ptrtoint ptr %dip6_mask.sroa.0.4.dip6_mask.coerce.fca.1.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dip6_mask.coerce.fca.1.extract, ptr %dip6_mask.sroa.0.4.dip6_mask.coerce.fca.1.gep.sroa_idx, align 4
  %dip6_mask.coerce.fca.2.extract = extractvalue [4 x i32] %dip6_mask.coerce, 2
  %dip6_mask.sroa.0.8.dip6_mask.coerce.fca.2.gep.sroa_idx = getelementptr inbounds i8, ptr %dip6_mask.sroa.0, i32 8
  %6 = ptrtoint ptr %dip6_mask.sroa.0.8.dip6_mask.coerce.fca.2.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dip6_mask.coerce.fca.2.extract, ptr %dip6_mask.sroa.0.8.dip6_mask.coerce.fca.2.gep.sroa_idx, align 4
  %dip6_mask.coerce.fca.3.extract = extractvalue [4 x i32] %dip6_mask.coerce, 3
  %dip6_mask.sroa.0.12.dip6_mask.coerce.fca.3.gep.sroa_idx = getelementptr inbounds i8, ptr %dip6_mask.sroa.0, i32 12
  %7 = ptrtoint ptr %dip6_mask.sroa.0.12.dip6_mask.coerce.fca.3.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dip6_mask.coerce.fca.3.extract, ptr %dip6_mask.sroa.0.12.dip6_mask.coerce.fca.3.gep.sroa_idx, align 4
  %sip6.coerce.fca.0.extract = extractvalue [4 x i32] %sip6.coerce, 0
  %8 = ptrtoint ptr %sip6.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sip6.coerce.fca.0.extract, ptr %sip6.sroa.0, align 4
  %sip6.coerce.fca.1.extract = extractvalue [4 x i32] %sip6.coerce, 1
  %sip6.sroa.0.4.sip6.coerce.fca.1.gep.sroa_idx = getelementptr inbounds i8, ptr %sip6.sroa.0, i32 4
  %9 = ptrtoint ptr %sip6.sroa.0.4.sip6.coerce.fca.1.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sip6.coerce.fca.1.extract, ptr %sip6.sroa.0.4.sip6.coerce.fca.1.gep.sroa_idx, align 4
  %sip6.coerce.fca.2.extract = extractvalue [4 x i32] %sip6.coerce, 2
  %sip6.sroa.0.8.sip6.coerce.fca.2.gep.sroa_idx = getelementptr inbounds i8, ptr %sip6.sroa.0, i32 8
  %10 = ptrtoint ptr %sip6.sroa.0.8.sip6.coerce.fca.2.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sip6.coerce.fca.2.extract, ptr %sip6.sroa.0.8.sip6.coerce.fca.2.gep.sroa_idx, align 4
  %sip6.coerce.fca.3.extract = extractvalue [4 x i32] %sip6.coerce, 3
  %sip6.sroa.0.12.sip6.coerce.fca.3.gep.sroa_idx = getelementptr inbounds i8, ptr %sip6.sroa.0, i32 12
  %11 = ptrtoint ptr %sip6.sroa.0.12.sip6.coerce.fca.3.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sip6.coerce.fca.3.extract, ptr %sip6.sroa.0.12.sip6.coerce.fca.3.gep.sroa_idx, align 4
  %sip6_mask.coerce.fca.0.extract = extractvalue [4 x i32] %sip6_mask.coerce, 0
  %12 = ptrtoint ptr %sip6_mask.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sip6_mask.coerce.fca.0.extract, ptr %sip6_mask.sroa.0, align 4
  %sip6_mask.coerce.fca.1.extract = extractvalue [4 x i32] %sip6_mask.coerce, 1
  %sip6_mask.sroa.0.4.sip6_mask.coerce.fca.1.gep.sroa_idx = getelementptr inbounds i8, ptr %sip6_mask.sroa.0, i32 4
  %13 = ptrtoint ptr %sip6_mask.sroa.0.4.sip6_mask.coerce.fca.1.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sip6_mask.coerce.fca.1.extract, ptr %sip6_mask.sroa.0.4.sip6_mask.coerce.fca.1.gep.sroa_idx, align 4
  %sip6_mask.coerce.fca.2.extract = extractvalue [4 x i32] %sip6_mask.coerce, 2
  %sip6_mask.sroa.0.8.sip6_mask.coerce.fca.2.gep.sroa_idx = getelementptr inbounds i8, ptr %sip6_mask.sroa.0, i32 8
  %14 = ptrtoint ptr %sip6_mask.sroa.0.8.sip6_mask.coerce.fca.2.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sip6_mask.coerce.fca.2.extract, ptr %sip6_mask.sroa.0.8.sip6_mask.coerce.fca.2.gep.sroa_idx, align 4
  %sip6_mask.coerce.fca.3.extract = extractvalue [4 x i32] %sip6_mask.coerce, 3
  %sip6_mask.sroa.0.12.sip6_mask.coerce.fca.3.gep.sroa_idx = getelementptr inbounds i8, ptr %sip6_mask.sroa.0, i32 12
  %15 = ptrtoint ptr %sip6_mask.sroa.0.12.sip6_mask.coerce.fca.3.gep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sip6_mask.coerce.fca.3.extract, ptr %sip6_mask.sroa.0.12.sip6_mask.coerce.fca.3.gep.sroa_idx, align 4
  tail call fastcc void @mlxsw_reg_rmft2_common_pack(ptr noundef %payload, i1 noundef zeroext %v, i16 noundef zeroext %offset, i16 noundef zeroext %virtual_router, ptr noundef %flexible_action_set)
  %16 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %17, -805306369
  %or.i.i = or i32 %and7.i.i, 268435456
  store i32 %or.i.i, ptr %payload, align 4
  %arrayidx.i.i4 = getelementptr i8, ptr %payload, i32 16
  %18 = call ptr @memcpy(ptr %arrayidx.i.i4, ptr %dip6.sroa.0, i32 16)
  %arrayidx.i.i9 = getelementptr i8, ptr %payload, i32 32
  %19 = call ptr @memcpy(ptr %arrayidx.i.i9, ptr %dip6_mask.sroa.0, i32 16)
  %arrayidx.i.i14 = getelementptr i8, ptr %payload, i32 48
  %20 = call ptr @memcpy(ptr %arrayidx.i.i14, ptr %sip6.sroa.0, i32 16)
  %arrayidx.i.i19 = getelementptr i8, ptr %payload, i32 64
  %21 = call ptr @memcpy(ptr %arrayidx.i.i19, ptr %sip6_mask.sroa.0, i32 16)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_rmft2_common_pack(ptr nocapture noundef %payload, i1 noundef zeroext %v, i16 noundef zeroext %offset, i16 noundef zeroext %virtual_router, ptr noundef readonly %flex_action_set) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = call ptr @memset(ptr %payload, i32 0, i32 372)
  %spec.select.i.i = select i1 %v, i32 -2147483648, i32 0
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, 2144272384
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %conv2 = zext i16 %offset to i32
  %or.i.i51 = or i32 %or.i.i, %conv2
  store i32 %or.i.i51, ptr %payload, align 4
  %conv3 = zext i16 %virtual_router to i32
  %arrayidx.i.i76 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i76, align 4
  %and7.i.i78 = and i32 %4, -65536
  %or.i.i79 = or i32 %and7.i.i78, %conv3
  store i32 %or.i.i79, ptr %arrayidx.i.i76, align 4
  %arrayidx.i.i100 = getelementptr i32, ptr %payload, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i100, align 4
  %arrayidx.i.i123 = getelementptr i32, ptr %payload, i32 2
  %and7.i.i125 = and i32 %6, -16842752
  %7 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and7.i.i125, ptr %arrayidx.i.i123, align 4
  %tobool5.not = icmp eq ptr %flex_action_set, null
  br i1 %tobool5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i129 = getelementptr i8, ptr %payload, i32 128
  %8 = call ptr @memcpy(ptr %arrayidx.i.i129, ptr %flex_action_set, i32 168)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_item_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @mlxsw_sp1_mr_tcam_ops, !1, !"mlxsw_sp1_mr_tcam_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_mr_tcam.c", i32 334, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__mlxsw_item_offset._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @__mlxsw_item_offset._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6847, i32 1}
!10 = distinct !{null, !9, !"mlxsw_reg_rtar_op_item", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6858, i32 1}
!13 = distinct !{null, !12, !"mlxsw_reg_rtar_key_type_item", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6867, i32 1}
!16 = distinct !{null, !15, !"mlxsw_reg_rtar_region_size_item", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 6836, i32 1}
!19 = !{ptr @mlxsw_reg_rtar, !18, !"mlxsw_reg_rtar", i1 false, i1 false}
!20 = !{ptr @mlxsw_sp1_mr_tcam_region_parman_ops, !21, !"mlxsw_sp1_mr_tcam_region_parman_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_mr_tcam.c", i32 229, i32 32}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7295, i32 1}
!24 = distinct !{null, !23, !"mlxsw_reg_rrcr_op_item", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7301, i32 1}
!27 = distinct !{null, !26, !"mlxsw_reg_rrcr_offset_item", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7307, i32 1}
!30 = distinct !{null, !29, !"mlxsw_reg_rrcr_size_item", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7314, i32 1}
!33 = distinct !{null, !32, !"mlxsw_reg_rrcr_table_id_item", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7320, i32 1}
!36 = distinct !{null, !35, !"mlxsw_reg_rrcr_dest_offset_item", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 7283, i32 1}
!39 = !{ptr @mlxsw_reg_rrcr, !38, !"mlxsw_reg_rrcr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8637, i32 1}
!42 = distinct !{null, !41, !"mlxsw_reg_rmft2_v_item", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8664, i32 1}
!45 = distinct !{null, !44, !"mlxsw_reg_rmft2_op_item", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8677, i32 1}
!48 = distinct !{null, !47, !"mlxsw_reg_rmft2_offset_item", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8683, i32 1}
!51 = distinct !{null, !50, !"mlxsw_reg_rmft2_virtual_router_item", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8694, i32 1}
!54 = distinct !{null, !53, !"mlxsw_reg_rmft2_irif_mask_item", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8700, i32 1}
!57 = distinct !{null, !56, !"mlxsw_reg_rmft2_irif_item", i1 false, i1 false}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8743, i32 1}
!60 = distinct !{null, !59, !"mlxsw_reg_rmft2_flexible_action_set_item", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8647, i32 1}
!63 = distinct !{null, !62, !"mlxsw_reg_rmft2_type_item", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8707, i32 1}
!66 = distinct !{null, !65, !"mlxsw_reg_rmft2_dip4_item", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8715, i32 1}
!69 = distinct !{null, !68, !"mlxsw_reg_rmft2_dip4_mask_item", i1 false, i1 false}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8722, i32 1}
!72 = distinct !{null, !71, !"mlxsw_reg_rmft2_sip4_item", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8730, i32 1}
!75 = distinct !{null, !74, !"mlxsw_reg_rmft2_sip4_mask_item", i1 false, i1 false}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8706, i32 1}
!78 = distinct !{null, !77, !"mlxsw_reg_rmft2_dip6_item", i1 false, i1 false}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8714, i32 1}
!81 = distinct !{null, !80, !"mlxsw_reg_rmft2_dip6_mask_item", i1 false, i1 false}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8721, i32 1}
!84 = distinct !{null, !83, !"mlxsw_reg_rmft2_sip6_item", i1 false, i1 false}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8729, i32 1}
!87 = distinct !{null, !86, !"mlxsw_reg_rmft2_sip6_mask_item", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8631, i32 1}
!90 = !{ptr @mlxsw_reg_rmft2, !89, !"mlxsw_reg_rmft2", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
