; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.mlxsw_sp_policer_core_ops = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp_policer_family = type { i32, i32, ptr, i16, i16, %struct.idr, %struct.mutex, %struct.atomic_t, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlxsw_sp_policer_family_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlxsw_sp_policer = type { %struct.mlxsw_sp_policer_params, i16 }
%struct.mlxsw_sp_policer_params = type { i64, i64, i8 }
%struct.mlxsw_sp_policer_core = type { [1 x ptr], ptr, i8, i8 }
%struct.devlink_resource_size_params = type { i64, i64, i64, i32 }

@mlxsw_sp_policer_add.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mlxsw_spectrum: Failed to allocate policer index\00", [47 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_add.__msg.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mlxsw_spectrum: Failed to initialize policer\00", [51 x i8] zeroinitializer }, align 32
@mlxsw_reg_qpcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 16388, i16 40, ptr @.str.3 }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"global_policers\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"single_rate_policers\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_sp1_policer_core_ops = dso_local constant { %struct.mlxsw_sp_policer_core_ops, [28 x i8] } { %struct.mlxsw_sp_policer_core_ops { ptr @mlxsw_sp1_policer_core_init }, [28 x i8] zeroinitializer }, align 32
@mlxsw_sp2_policer_core_ops = dso_local constant { %struct.mlxsw_sp_policer_core_ops, [28 x i8] } { %struct.mlxsw_sp_policer_core_ops { ptr @mlxsw_sp2_policer_core_init }, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qpcr\00", [27 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 35, ptr null, ptr null }, align 1
@.str.4 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_qpcr_pid\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_qpcr_g\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_qpcr_violate_count\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_family_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&family->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c\00", [41 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_single_rate_family = internal constant { %struct.mlxsw_sp_policer_family, [48 x i8] } { %struct.mlxsw_sp_policer_family { i32 0, i32 2, ptr null, i16 0, i16 0, %struct.idr zeroinitializer, %struct.mutex zeroinitializer, %struct.atomic_t zeroinitializer, ptr @mlxsw_sp_policer_single_rate_ops }, [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_single_rate_ops = internal constant { %struct.mlxsw_sp_policer_family_ops, [40 x i8] } { %struct.mlxsw_sp_policer_family_ops { ptr @mlxsw_sp_policer_single_rate_family_init, ptr @mlxsw_sp_policer_single_rate_family_fini, ptr @mlxsw_sp_policer_single_rate_index_alloc, ptr @mlxsw_sp_policer_single_rate_index_free, ptr @mlxsw_sp_policer_single_rate_init, ptr @mlxsw_sp_policer_single_rate_params_check }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_qpcr_rate_type\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_qpcr_violate_action\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_qpcr_cir\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_qpcr_ir_units\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_qpcr_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_qpcr_cbs\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_qpcr_clear_counter\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_single_rate_params_check.__msg = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"mlxsw_spectrum: Only bandwidth policing is currently supported by single rate policers\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_single_rate_params_check.__msg.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mlxsw_spectrum: Policer burst size is not power of two\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_single_rate_params_check.__msg.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mlxsw_spectrum: Policer burst size lower than limit\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_single_rate_params_check.__msg.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlxsw_spectrum: Policer burst size higher than limit\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_single_rate_params_check.__msg.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mlxsw_spectrum: Policer rate lower than limit\00", [50 x i8] zeroinitializer }, align 32
@mlxsw_sp_policer_single_rate_params_check.__msg.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mlxsw_spectrum: Policer rate higher than limit\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 253, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 259, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_qpcr\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 422, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 433, i32 43 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"mlxsw_sp1_policer_core_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 453, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"mlxsw_sp2_policer_core_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 466, i32 40 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3552, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 33, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3569, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3563, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3678, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 320, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 326, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 378, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [36 x i8] c"mlxsw_sp_policer_single_rate_family\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 221, i32 45 }
@___asan_gen_.95 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_policer_single_rate_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 212, i32 49 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3616, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3672, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3638, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3603, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3590, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3629, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 3575, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 178, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 183, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 190, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 195, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 200, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.135 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 205, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_policer_add.__msg, ptr @mlxsw_sp_policer_add.__msg.1, ptr @mlxsw_reg_qpcr, ptr @.str, ptr @.str.2, ptr @mlxsw_sp1_policer_core_ops, ptr @mlxsw_sp2_policer_core_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @mlxsw_sp_policer_family_register.__key, ptr @.str.13, ptr @.str.14, ptr @xa_init_flags.__key, ptr @.str.15, ptr @mlxsw_sp_policer_single_rate_family, ptr @mlxsw_sp_policer_single_rate_ops, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @mlxsw_sp_policer_single_rate_params_check.__msg, ptr @mlxsw_sp_policer_single_rate_params_check.__msg.30, ptr @mlxsw_sp_policer_single_rate_params_check.__msg.31, ptr @mlxsw_sp_policer_single_rate_params_check.__msg.32, ptr @mlxsw_sp_policer_single_rate_params_check.__msg.33, ptr @mlxsw_sp_policer_single_rate_params_check.__msg.34], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_add.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_add.__msg.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_qpcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_policer_core_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_policer_core_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_family_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_single_rate_family to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_single_rate_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_single_rate_params_check.__msg to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_single_rate_params_check.__msg.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_single_rate_params_check.__msg.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_single_rate_params_check.__msg.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_single_rate_params_check.__msg.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_policer_single_rate_params_check.__msg.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_policer_add(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %type, ptr noundef %params, ptr noundef %extack, ptr nocapture noundef writeonly %p_policer_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %policer_core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 15
  %0 = ptrtoint ptr %policer_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policer_core, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %policer_params_check = getelementptr inbounds %struct.mlxsw_sp_policer_family_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %policer_params_check to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %policer_params_check, align 4
  %call = tail call i32 %7(ptr noundef %3, ptr noundef %params, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 32) #10
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = call ptr @memcpy(ptr %call7.i, ptr %params, i32 24)
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %policer_index_alloc = getelementptr inbounds %struct.mlxsw_sp_policer_family_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %policer_index_alloc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %policer_index_alloc, align 4
  %call7 = tail call i32 %13(ptr noundef %3, ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_policer_add.__msg) #7
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body.err_policer_index_alloc_crit_edge, label %if.then11

do.body.err_policer_index_alloc_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_policer_index_alloc

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mlxsw_sp_policer_add.__msg, ptr %extack, align 4
  br label %err_policer_index_alloc

if.end13:                                         ; preds = %if.end4
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %policer_init = getelementptr inbounds %struct.mlxsw_sp_policer_family_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %policer_init to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %policer_init, align 4
  %call15 = tail call i32 %18(ptr noundef %3, ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end26, label %do.body18

do.body18:                                        ; preds = %if.end13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_policer_add.__msg.1) #7
  %tobool20.not = icmp eq ptr %extack, null
  br i1 %tobool20.not, label %do.body18.if.end23_crit_edge, label %if.then21

do.body18.if.end23_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlxsw_sp_policer_add.__msg.1, ptr %extack, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body18.if.end23_crit_edge
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %policer_index_free = getelementptr inbounds %struct.mlxsw_sp_policer_family_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %policer_index_free to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %policer_index_free, align 4
  %index28 = getelementptr inbounds %struct.mlxsw_sp_policer, ptr %call7.i, i32 0, i32 1
  %24 = ptrtoint ptr %index28 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %index28, align 8
  %call29 = tail call ptr %23(ptr noundef %3, i16 noundef zeroext %25) #7
  br label %err_policer_index_alloc

if.end26:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %index = getelementptr inbounds %struct.mlxsw_sp_policer, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %index, align 8
  %28 = ptrtoint ptr %p_policer_index to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %p_policer_index, align 2
  br label %cleanup

err_policer_index_alloc:                          ; preds = %if.end23, %if.then11, %do.body.err_policer_index_alloc_crit_edge
  %err.0 = phi i32 [ %call15, %if.end23 ], [ %call7, %if.then11 ], [ %call7, %do.body.err_policer_index_alloc_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_policer_index_alloc, %if.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_policer_index_alloc ], [ 0, %if.end26 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_policer_del(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %type, i16 noundef zeroext %policer_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %policer_core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 15
  %0 = ptrtoint ptr %policer_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policer_core, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %policer_index_free = getelementptr inbounds %struct.mlxsw_sp_policer_family_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %policer_index_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %policer_index_free, align 4
  %call = tail call ptr %7(ptr noundef %3, i16 noundef zeroext %policer_index) #7
  tail call void @kfree(ptr noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_policer_drops_counter_get(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %type, i16 noundef zeroext %policer_index, ptr nocapture noundef writeonly %p_drops) local_unnamed_addr #0 align 64 {
entry:
  %qpcr_pl = alloca [40 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qpcr_pl) #7
  %policer_core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 15
  %0 = ptrtoint ptr %policer_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policer_core, align 4
  %arrayidx = getelementptr [1 x ptr], ptr %1, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = call ptr @memset(ptr %qpcr_pl, i32 0, i32 40)
  %5 = and i16 %policer_index, 16383
  %and6.i.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %qpcr_pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qpcr_pl, align 4
  %and7.i.i = and i32 %7, -16384
  %or.i.i = or i32 %and7.i.i, %and6.i.i
  store i32 %or.i.i, ptr %qpcr_pl, align 4
  %qpcr_type = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %qpcr_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qpcr_type, align 4
  %spec.select.i.i29 = shl i32 %9, 14
  %and6.i.i34 = and i32 %spec.select.i.i29, 49152
  %and7.i.i37 = and i32 %or.i.i, -49153
  %or.i.i38 = or i32 %and6.i.i34, %and7.i.i37
  store i32 %or.i.i38, ptr %qpcr_pl, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_qpcr, ptr noundef nonnull %qpcr_pl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_qpcr_violate_count_get.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlxsw_reg_qpcr_violate_count_get.exit:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i54 = getelementptr inbounds i64, ptr %qpcr_pl, i32 4
  %12 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i.i54, align 8
  %14 = ptrtoint ptr %p_drops to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %p_drops, align 8
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_qpcr_violate_count_get.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qpcr_pl) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_policers_init(ptr noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %policer_core1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 15
  %1 = ptrtoint ptr %policer_core1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %policer_core1, align 4
  %policer_core_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 39
  %2 = ptrtoint ptr %policer_core_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policer_core_ops, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_policer_core, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ops, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call3 = tail call i32 %6(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.body, label %if.end.err_init_crit_edge

if.end.err_init_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_init

for.body:                                         ; preds = %if.end
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @mlxsw_sp_policer_single_rate_family, i32 noundef 176, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.err_init_crit_edge, label %if.end.i

for.body.err_init_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_init

if.end.i:                                         ; preds = %for.body
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mlxsw_sp, ptr %mlxsw_sp1.i, align 4
  %policer_idr.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %policer_idr.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %9 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %idr_next.i.i.i, align 4
  %lock.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlxsw_sp_policer_family_register.__key) #7
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call2.i = tail call i32 %15(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.err_family_init.i_crit_edge

if.end.i.err_family_init.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_family_init.i

if.end5.i:                                        ; preds = %if.end.i
  %start_index.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start_index.i, align 4
  %end_index.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %end_index.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %end_index.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp.not.i = icmp ult i16 %17, %19
  br i1 %cmp.not.i, label %mlxsw_sp_policer_family_register.exit, label %do.end19.i, !prof !86

do.end19.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 326, i32 noundef 9, ptr noundef null) #7
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %fini.i = getelementptr inbounds %struct.mlxsw_sp_policer_family_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fini.i, align 4
  tail call void %23(ptr noundef nonnull %call.i) #7
  br label %err_family_init.i

err_family_init.i:                                ; preds = %do.end19.i, %if.end.i.err_family_init.i_crit_edge
  %err.0.i = phi i32 [ %call2.i, %if.end.i.err_family_init.i_crit_edge ], [ -22, %do.end19.i ]
  tail call void @mutex_destroy(ptr noundef %lock.i) #7
  tail call void @idr_destroy(ptr noundef %policer_idr.i) #7
  tail call void @kfree(ptr noundef nonnull %call.i) #7
  br label %err_init

mlxsw_sp_policer_family_register.exit:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %policer_core1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %policer_core1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %25, align 4
  br label %cleanup

err_init:                                         ; preds = %err_family_init.i, %for.body.err_init_crit_edge, %if.end.err_init_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.err_init_crit_edge ], [ -12, %for.body.err_init_crit_edge ], [ %err.0.i, %err_family_init.i ]
  %27 = ptrtoint ptr %policer_core1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %policer_core1, align 4
  tail call void @kfree(ptr noundef %28) #7
  br label %cleanup

cleanup:                                          ; preds = %err_init, %mlxsw_sp_policer_family_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_init ], [ -12, %entry.cleanup_crit_edge ], [ 0, %mlxsw_sp_policer_family_register.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_policers_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %policer_core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 15
  %0 = ptrtoint ptr %policer_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %policer_core, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %fini.i = getelementptr inbounds %struct.mlxsw_sp_policer_family_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fini.i, align 4
  tail call void %7(ptr noundef %3) #7
  %lock.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %3, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %lock.i) #7
  %policer_idr.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %3, i32 0, i32 5
  %xa_head.i.i.i = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %3, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xa_head.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %9, null
  br i1 %cmp.i.i.i, label %idr_is_empty.exit.i, label %entry.do.end.i_crit_edge, !prof !87

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

idr_is_empty.exit.i:                              ; preds = %entry
  %call2.i.i = tail call i32 @radix_tree_tagged(ptr noundef %policer_idr.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.i.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.i.not.i, label %idr_is_empty.exit.i.do.end.i_crit_edge, label %idr_is_empty.exit.i.mlxsw_sp_policer_family_unregister.exit_crit_edge, !prof !88

idr_is_empty.exit.i.mlxsw_sp_policer_family_unregister.exit_crit_edge: ; preds = %idr_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_policer_family_unregister.exit

idr_is_empty.exit.i.do.end.i_crit_edge:           ; preds = %idr_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %idr_is_empty.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 350, i32 noundef 9, ptr noundef null) #7
  br label %mlxsw_sp_policer_family_unregister.exit

mlxsw_sp_policer_family_unregister.exit:          ; preds = %do.end.i, %idr_is_empty.exit.i.mlxsw_sp_policer_family_unregister.exit_crit_edge
  tail call void @idr_destroy(ptr noundef %policer_idr.i) #7
  tail call void @kfree(ptr noundef %3) #7
  %10 = ptrtoint ptr %policer_core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %policer_core, align 4
  tail call void @kfree(ptr noundef %11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_policer_resources_register(ptr noundef %mlxsw_core) local_unnamed_addr #0 align 64 {
entry:
  %size_params = alloca %struct.devlink_resource_size_params, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %mlxsw_core) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %size_params) #7
  %0 = getelementptr inbounds i8, ptr %size_params, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %call1 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %mlxsw_core, i32 noundef 36) #7
  br i1 %call1, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %mlxsw_core, i32 noundef 37) #7
  br i1 %call2, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 36) #7
  %call4 = tail call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 37) #7
  %2 = ptrtoint ptr %size_params to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call3, ptr %size_params, align 8
  %size_max2.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_params, i32 0, i32 1
  %3 = ptrtoint ptr %size_max2.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call3, ptr %size_max2.i, align 8
  %size_granularity3.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_params, i32 0, i32 2
  %4 = ptrtoint ptr %size_granularity3.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %size_granularity3.i, align 8
  %unit4.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_params, i32 0, i32 3
  %5 = ptrtoint ptr %unit4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %unit4.i, align 8
  %call5 = call i32 @devlink_resource_register(ptr noundef %call, ptr noundef nonnull @.str, i64 noundef %call3, i64 noundef 13, i64 noundef 0, ptr noundef nonnull %size_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 %call3, %call4
  %6 = ptrtoint ptr %size_params to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sub, ptr %size_params, align 8
  %7 = ptrtoint ptr %size_max2.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sub, ptr %size_max2.i, align 8
  %8 = ptrtoint ptr %size_granularity3.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1, ptr %size_granularity3.i, align 8
  %9 = ptrtoint ptr %unit4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %unit4.i, align 8
  %call8 = call i32 @devlink_resource_register(ptr noundef %call, ptr noundef nonnull @.str.2, i64 noundef %sub, i64 noundef 14, i64 noundef 13, ptr noundef nonnull %size_params) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call8, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %size_params) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_resource_register(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp1_policer_core_init(ptr nocapture noundef writeonly %policer_core) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lowest_bs_bits = getelementptr inbounds %struct.mlxsw_sp_policer_core, ptr %policer_core, i32 0, i32 2
  %0 = ptrtoint ptr %lowest_bs_bits to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %lowest_bs_bits, align 4
  %highest_bs_bits = getelementptr inbounds %struct.mlxsw_sp_policer_core, ptr %policer_core, i32 0, i32 3
  %1 = ptrtoint ptr %highest_bs_bits to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 25, ptr %highest_bs_bits, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp2_policer_core_init(ptr nocapture noundef writeonly %policer_core) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lowest_bs_bits = getelementptr inbounds %struct.mlxsw_sp_policer_core, ptr %policer_core, i32 0, i32 2
  %0 = ptrtoint ptr %lowest_bs_bits to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %lowest_bs_bits, align 4
  %highest_bs_bits = getelementptr inbounds %struct.mlxsw_sp_policer_core, ptr %policer_core, i32 0, i32 3
  %1 = ptrtoint ptr %highest_bs_bits to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 31, ptr %highest_bs_bits, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_policer_single_rate_family_init(ptr noundef %family) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp, align 4
  %core1 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %3, i32 noundef 36) #7
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %3, i32 noundef 37) #7
  br i1 %call2, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i64 @mlxsw_core_res_get(ptr noundef %3, i32 noundef 37) #7
  %conv = trunc i64 %call3 to i16
  %start_index = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 3
  %4 = ptrtoint ptr %start_index to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %start_index, align 4
  %call4 = tail call i64 @mlxsw_core_res_get(ptr noundef %3, i32 noundef 36) #7
  %conv5 = trunc i64 %call4 to i16
  %end_index = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 4
  %5 = ptrtoint ptr %end_index to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv5, ptr %end_index, align 2
  %policers_count = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %policers_count, i32 noundef 4) #7
  %6 = ptrtoint ptr %policers_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %policers_count, align 4
  %call6 = tail call ptr @priv_to_devlink(ptr noundef %3) #7
  tail call void @devlink_resource_occ_get_register(ptr noundef %call6, i64 noundef 14, ptr noundef nonnull @mlxsw_sp_policer_single_rate_occ_get, ptr noundef %family) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_policer_single_rate_family_fini(ptr noundef %family) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %3) #7
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call, i64 noundef 14) #7
  %policers_count = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %policers_count, i32 noundef 4) #7
  %4 = ptrtoint ptr %policers_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %policers_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 112, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_policer_single_rate_index_alloc(ptr noundef %family, ptr noundef %policer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %policer_idr = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 5
  %start_index = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 3
  %0 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %start_index, align 4
  %conv = zext i16 %1 to i32
  %end_index = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 4
  %2 = ptrtoint ptr %end_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %end_index, align 2
  %conv1 = zext i16 %3 to i32
  %call = tail call i32 @idr_alloc(ptr noundef %policer_idr, ptr noundef %policer, i32 noundef %conv, i32 noundef %conv1, i32 noundef 3264) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %policers_count = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %policers_count, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %policers_count, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %policers_count, ptr %policers_count, i32 1, ptr elementtype(i32) %policers_count) #7, !srcloc !89
  %conv4 = trunc i32 %call to i16
  %index = getelementptr inbounds %struct.mlxsw_sp_policer, ptr %policer, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %index, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_policer_single_rate_index_free(ptr noundef %family, i16 noundef zeroext %policer_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %policers_count = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %policers_count, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %policers_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %policers_count, ptr %policers_count, i32 1, ptr elementtype(i32) %policers_count) #7, !srcloc !90
  %lock = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %policer_idr = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 5
  %conv = zext i16 %policer_index to i32
  %call = tail call ptr @idr_remove(ptr noundef %policer_idr, i32 noundef %conv) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !88

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 147, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_policer_single_rate_init(ptr nocapture noundef readonly %family, ptr nocapture noundef readonly %policer) #0 align 64 {
entry:
  %qpcr_pl = alloca [40 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %policer to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %policer, align 8
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %1, i32 0) #11, !srcloc !91
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %1, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #11, !srcloc !92
  %burst = getelementptr inbounds %struct.mlxsw_sp_policer_params, ptr %policer, i32 0, i32 1
  %4 = ptrtoint ptr %burst to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %burst, align 8
  %shr.i.i.i = lshr i64 %5, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %5)
  %tobool.not.i = icmp ult i64 %5, 64
  br i1 %tobool.not.i, label %entry.mlxsw_sp_policer_burst_bytes_hw_units.exit_crit_edge, label %if.end.i

entry.mlxsw_sp_policer_burst_bytes_hw_units.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_policer_burst_bytes_hw_units.exit

if.end.i:                                         ; preds = %entry
  %shr.i.i = lshr i64 %5, 38
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #7, !range !93
  %add.i.i = sub nuw nsw i32 64, %6
  br label %fls64.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #7, !range !93
  %sub.i6.i.i = sub nuw nsw i32 32, %7
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %fls64.exit.i

fls64.exit.i:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %conv.i = shl i32 %retval.0.i.i, 24
  %phi.bo = add i32 %conv.i, 1056964608
  %phi.bo14 = and i32 %phi.bo, 1056964608
  br label %mlxsw_sp_policer_burst_bytes_hw_units.exit

mlxsw_sp_policer_burst_bytes_hw_units.exit:       ; preds = %fls64.exit.i, %entry.mlxsw_sp_policer_burst_bytes_hw_units.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo14, %fls64.exit.i ], [ 0, %entry.mlxsw_sp_policer_burst_bytes_hw_units.exit_crit_edge ]
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %3, 0
  %8 = lshr i64 %asmresult10.i.i.i.i, 6
  %mlxsw_sp3 = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 2
  %9 = ptrtoint ptr %mlxsw_sp3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mlxsw_sp3, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %qpcr_pl) #7
  %index = getelementptr inbounds %struct.mlxsw_sp_policer, ptr %policer, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index, align 8
  %13 = trunc i64 %8 to i32
  %conv = and i32 %13, -8
  %14 = call ptr @memset(ptr %qpcr_pl, i32 0, i32 40)
  %15 = ptrtoint ptr %qpcr_pl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qpcr_pl, align 4
  %and7.i.i.i = and i32 %16, -65536
  %17 = and i16 %12, 16383
  %and6.i.i.i.masked = zext i16 %17 to i32
  %and7.i.i27.i = or i32 %and7.i.i.i, %and6.i.i.i.masked
  %or.i.i28.i = or i32 %and7.i.i27.i, 32768
  store i32 %or.i.i28.i, ptr %qpcr_pl, align 4
  %arrayidx.i.i52.i = getelementptr inbounds i32, ptr %qpcr_pl, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i52.i, align 4
  %and7.i.i54.i = and i32 %19, -769
  %or.i.i55.i = or i32 %and7.i.i54.i, 256
  store i32 %or.i.i55.i, ptr %arrayidx.i.i52.i, align 4
  %arrayidx.i.i80.i = getelementptr inbounds i32, ptr %qpcr_pl, i32 6
  %20 = ptrtoint ptr %arrayidx.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i80.i, align 4
  %and7.i.i82.i = and i32 %21, -16
  %or.i.i83.i = or i32 %and7.i.i82.i, 1
  store i32 %or.i.i83.i, ptr %arrayidx.i.i80.i, align 4
  %arrayidx.i.i108.i = getelementptr inbounds i32, ptr %qpcr_pl, i32 3
  %22 = ptrtoint ptr %arrayidx.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %arrayidx.i.i108.i, align 4
  %arrayidx.i.i136.i = getelementptr inbounds i32, ptr %qpcr_pl, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i136.i, align 4
  %arrayidx.i.i164.i = getelementptr inbounds i32, ptr %qpcr_pl, i32 1
  %or.i.i167.i = or i32 %24, 20480
  %25 = ptrtoint ptr %arrayidx.i.i164.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i167.i, ptr %arrayidx.i.i164.i, align 4
  %arrayidx.i.i192.i = getelementptr inbounds i32, ptr %qpcr_pl, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i192.i, align 4
  %and7.i.i194.i = and i32 %27, -1056964609
  %or.i.i195.i = or i32 %retval.0.i, %and7.i.i194.i
  store i32 %or.i.i195.i, ptr %arrayidx.i.i192.i, align 4
  %arrayidx.i.i = getelementptr inbounds i32, ptr %qpcr_pl, i32 1
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %29, -2147483648
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %10, i32 0, i32 1
  %30 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core, align 4
  %call7 = call i32 @mlxsw_reg_write(ptr noundef %31, ptr noundef nonnull @mlxsw_reg_qpcr, ptr noundef nonnull %qpcr_pl) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %qpcr_pl) #7
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_policer_single_rate_params_check(ptr nocapture noundef readonly %family, ptr nocapture noundef readonly %params, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %family, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp, align 4
  %policer_core1 = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %policer_core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policer_core1, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %params, align 8
  %mul = shl i64 %5, 3
  %bytes = getelementptr inbounds %struct.mlxsw_sp_policer_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bytes, align 8, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_policer_single_rate_params_check.__msg) #7
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %burst = getelementptr inbounds %struct.mlxsw_sp_policer_params, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %burst to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %burst, align 8
  %conv = trunc i64 %9 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %conv) #7, !range !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %if.end14, label %do.body6

do.body6:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_policer_single_rate_params_check.__msg.30) #7
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %do.body6.cleanup.sink.split_crit_edge

do.body6.cleanup.sink.split_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %shr.i.i.i = lshr i64 %9, 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %9)
  %tobool.not.i = icmp ult i64 %9, 64
  br i1 %tobool.not.i, label %if.end14.mlxsw_sp_policer_burst_bytes_hw_units.exit_crit_edge, label %if.end.i

if.end14.mlxsw_sp_policer_burst_bytes_hw_units.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_policer_burst_bytes_hw_units.exit

if.end.i:                                         ; preds = %if.end14
  %shr.i.i = lshr i64 %9, 38
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #7, !range !93
  %add.i.i = sub nuw nsw i32 64, %12
  br label %fls64.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #7, !range !93
  %sub.i6.i.i = sub nuw nsw i32 32, %13
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %fls64.exit.i

fls64.exit.i:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %14 = trunc i32 %retval.0.i.i to i8
  %conv.i = add nsw i8 %14, -1
  br label %mlxsw_sp_policer_burst_bytes_hw_units.exit

mlxsw_sp_policer_burst_bytes_hw_units.exit:       ; preds = %fls64.exit.i, %if.end14.mlxsw_sp_policer_burst_bytes_hw_units.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %fls64.exit.i ], [ 0, %if.end14.mlxsw_sp_policer_burst_bytes_hw_units.exit_crit_edge ]
  %lowest_bs_bits = getelementptr inbounds %struct.mlxsw_sp_policer_core, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %lowest_bs_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lowest_bs_bits, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i, i8 %16)
  %cmp = icmp ult i8 %retval.0.i, %16
  br i1 %cmp, label %do.body21, label %if.end29

do.body21:                                        ; preds = %mlxsw_sp_policer_burst_bytes_hw_units.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_policer_single_rate_params_check.__msg.31) #7
  %tobool23.not = icmp eq ptr %extack, null
  br i1 %tobool23.not, label %do.body21.cleanup_crit_edge, label %do.body21.cleanup.sink.split_crit_edge

do.body21.cleanup.sink.split_crit_edge:           ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %mlxsw_sp_policer_burst_bytes_hw_units.exit
  %highest_bs_bits = getelementptr inbounds %struct.mlxsw_sp_policer_core, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %highest_bs_bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %highest_bs_bits, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i, i8 %18)
  %cmp32 = icmp ugt i8 %retval.0.i, %18
  br i1 %cmp32, label %do.body35, label %if.end43

do.body35:                                        ; preds = %if.end29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_policer_single_rate_params_check.__msg.32) #7
  %tobool37.not = icmp eq ptr %extack, null
  br i1 %tobool37.not, label %do.body35.cleanup_crit_edge, label %do.body35.cleanup.sink.split_crit_edge

do.body35.cleanup.sink.split_crit_edge:           ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %mul)
  %cmp44 = icmp ult i64 %mul, 1024
  br i1 %cmp44, label %do.body47, label %if.end55

do.body47:                                        ; preds = %if.end43
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_policer_single_rate_params_check.__msg.33) #7
  %tobool49.not = icmp eq ptr %extack, null
  br i1 %tobool49.not, label %do.body47.cleanup_crit_edge, label %do.body47.cleanup.sink.split_crit_edge

do.body47.cleanup.sink.split_crit_edge:           ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp8(i64 2000000000000, i64 %mul)
  %cmp56 = icmp ugt i64 %mul, 2000000000000
  br i1 %cmp56, label %do.body59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body59:                                        ; preds = %if.end55
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp_policer_single_rate_params_check.__msg.34) #7
  %tobool61.not = icmp eq ptr %extack, null
  br i1 %tobool61.not, label %do.body59.cleanup_crit_edge, label %do.body59.cleanup.sink.split_crit_edge

do.body59.cleanup.sink.split_crit_edge:           ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body59.cleanup.sink.split_crit_edge, %do.body47.cleanup.sink.split_crit_edge, %do.body35.cleanup.sink.split_crit_edge, %do.body21.cleanup.sink.split_crit_edge, %do.body6.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %mlxsw_sp_policer_single_rate_params_check.__msg.34.sink = phi ptr [ @mlxsw_sp_policer_single_rate_params_check.__msg, %do.body.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_policer_single_rate_params_check.__msg.30, %do.body6.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_policer_single_rate_params_check.__msg.31, %do.body21.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_policer_single_rate_params_check.__msg.32, %do.body35.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_policer_single_rate_params_check.__msg.33, %do.body47.cleanup.sink.split_crit_edge ], [ @mlxsw_sp_policer_single_rate_params_check.__msg.34, %do.body59.cleanup.sink.split_crit_edge ]
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mlxsw_sp_policer_single_rate_params_check.__msg.34.sink, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.body47.cleanup_crit_edge, %do.body35.cleanup_crit_edge, %do.body21.cleanup_crit_edge, %do.body6.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body6.cleanup_crit_edge ], [ -22, %do.body21.cleanup_crit_edge ], [ -22, %do.body35.cleanup_crit_edge ], [ -22, %do.body47.cleanup_crit_edge ], [ -22, %do.body59.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_register(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_policer_single_rate_occ_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %policers_count = getelementptr inbounds %struct.mlxsw_sp_policer_family, ptr %priv, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %policers_count, i32 noundef 4) #7
  %0 = ptrtoint ptr %policers_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %policers_count, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_unregister(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @mlxsw_sp_policer_add.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 253, i32 3}
!2 = !{ptr @mlxsw_sp_policer_add.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 259, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 422, i32 43}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 433, i32 43}
!8 = !{ptr @mlxsw_sp1_policer_core_ops, !9, !"mlxsw_sp1_policer_core_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 453, i32 40}
!10 = !{ptr @mlxsw_sp2_policer_core_ops, !11, !"mlxsw_sp2_policer_core_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 466, i32 40}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3552, i32 1}
!14 = !{ptr @mlxsw_reg_qpcr, !13, !"mlxsw_reg_qpcr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__mlxsw_item_offset._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @__mlxsw_item_offset._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3569, i32 1}
!23 = distinct !{null, !22, !"mlxsw_reg_qpcr_pid_item", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3563, i32 1}
!26 = distinct !{null, !25, !"mlxsw_reg_qpcr_g_item", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3678, i32 1}
!29 = distinct !{null, !28, !"mlxsw_reg_qpcr_violate_count_item", i1 false, i1 false}
!30 = !{ptr @mlxsw_sp_policer_family_register.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 320, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 326, i32 6}
!35 = !{ptr @xa_init_flags.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"mlxsw_sp_policer_family_arr", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 227, i32 46}
!40 = !{ptr @mlxsw_sp_policer_single_rate_family, !41, !"mlxsw_sp_policer_single_rate_family", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 221, i32 45}
!42 = !{ptr @mlxsw_sp_policer_single_rate_ops, !43, !"mlxsw_sp_policer_single_rate_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 212, i32 49}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3616, i32 1}
!46 = distinct !{null, !45, !"mlxsw_reg_qpcr_rate_type_item", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3672, i32 1}
!49 = distinct !{null, !48, !"mlxsw_reg_qpcr_violate_action_item", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3638, i32 1}
!52 = distinct !{null, !51, !"mlxsw_reg_qpcr_cir_item", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3603, i32 1}
!55 = distinct !{null, !54, !"mlxsw_reg_qpcr_ir_units_item", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3590, i32 1}
!58 = distinct !{null, !57, !"mlxsw_reg_qpcr_bytes_item", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3629, i32 1}
!61 = distinct !{null, !60, !"mlxsw_reg_qpcr_cbs_item", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3575, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_qpcr_clear_counter_item", i1 false, i1 false}
!65 = !{ptr @mlxsw_sp_policer_single_rate_params_check.__msg, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 178, i32 3}
!67 = !{ptr @mlxsw_sp_policer_single_rate_params_check.__msg.30, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 183, i32 3}
!69 = !{ptr @mlxsw_sp_policer_single_rate_params_check.__msg.31, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 190, i32 3}
!71 = !{ptr @mlxsw_sp_policer_single_rate_params_check.__msg.32, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 195, i32 3}
!73 = !{ptr @mlxsw_sp_policer_single_rate_params_check.__msg.33, !74, !"__msg", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 200, i32 3}
!75 = !{ptr @mlxsw_sp_policer_single_rate_params_check.__msg.34, !76, !"__msg", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_policer.c", i32 205, i32 3}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{!"branch_weights", i32 2146410443, i32 1073205}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2148199700, i64 2148199726, i64 2148199755, i64 2148199789, i64 2148199820, i64 2148199843}
!90 = !{i64 2148202165, i64 2148202191, i64 2148202220, i64 2148202254, i64 2148202285, i64 2148202308}
!91 = !{i64 1442033, i64 1442060, i64 1442082, i64 1442110}
!92 = !{i64 1442441, i64 1442468, i64 1442501, i64 1442522, i64 1442549, i64 1442575}
!93 = !{i32 0, i32 33}
!94 = !{i8 0, i8 2}
