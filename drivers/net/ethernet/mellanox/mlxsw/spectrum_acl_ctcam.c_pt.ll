; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_ctcam.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_ctcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parman_ops = type { i32, i32, ptr, ptr, i32 }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_acl_ctcam_region = type { ptr, ptr, ptr }
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
%struct.mlxsw_sp_acl_tcam_region = type { ptr, ptr, %struct.list_head, i32, i16, [16 x i8], ptr, ptr, [0 x i32] }
%struct.parman_item = type { %struct.list_head, i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32, %struct.mlxsw_afk_element_values, ptr, i8, i32, i16 }
%struct.mlxsw_afk_element_values = type { %struct.mlxsw_afk_element_usage, %struct.anon.170 }
%struct.mlxsw_afk_element_usage = type { [1 x i32] }
%struct.anon.170 = type { [64 x i8], [64 x i8] }
%struct.mlxsw_sp_acl_ctcam_region_ops = type { ptr, ptr }

@mlxsw_sp_acl_ctcam_region_parman_ops = internal constant { %struct.parman_ops, [44 x i8] } { %struct.parman_ops { i32 16, i32 16, ptr @mlxsw_sp_acl_ctcam_region_parman_resize, ptr @mlxsw_sp_acl_ctcam_region_parman_move, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mlxsw_reg_ptar = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12294, i16 48, ptr @.str.14 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, align 1
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_ptar_op\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_ptar_action_set_type\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_ptar_key_type\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_ptar_region_size\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ptar_region_id\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ptar\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_prcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12301, i16 64, ptr @.str.25 }, [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_prcr_op\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_prcr_offset\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_prcr_size\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_prcr_dest_offset\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prcr\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_ptce2 = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12311, i16 472, ptr @.str.38 }, [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_ptce2_v\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_ptce2_op\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_ptce2_offset\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ptce2_priority\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ptce2\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [37 x i8] c"mlxsw_sp_acl_ctcam_region_parman_ops\00", align 1
@___asan_gen_.40 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_ctcam.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 148, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_ptar\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 33, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2533, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2540, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2551, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2561, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2568, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2517, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_prcr\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2670, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2676, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2682, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2695, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2652, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_ptce2\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2832, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2862, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2867, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2876, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 2826, i32 1 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_acl_ctcam_region_parman_ops, ptr @mlxsw_reg_ptar, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @mlxsw_reg_prcr, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @mlxsw_reg_ptce2, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.38], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_ctcam_region_parman_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ptar to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_prcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ptce2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_ctcam_region_init(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %cregion, ptr noundef %region, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %region1 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %cregion, i32 0, i32 2
  %0 = ptrtoint ptr %region1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %region, ptr %region1, align 4
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %cregion, i32 0, i32 1
  %1 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %ops2, align 4
  %call = tail call ptr @parman_create(ptr noundef nonnull @mlxsw_sp_acl_ctcam_region_parman_ops, ptr noundef %cregion) #4
  %2 = ptrtoint ptr %cregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %cregion, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parman_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_ctcam_region_fini(ptr nocapture noundef readonly %cregion) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cregion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cregion, align 4
  tail call void @parman_destroy(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_ctcam_chunk_init(ptr nocapture noundef readonly %cregion, ptr noundef %cchunk, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cregion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cregion, align 4
  tail call void @parman_prio_init(ptr noundef %1, ptr noundef %cchunk, i32 noundef %priority) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_prio_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_ctcam_chunk_fini(ptr noundef %cchunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @parman_prio_fini(ptr noundef %cchunk) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_prio_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_ctcam_entry_add(ptr noundef %mlxsw_sp, ptr noundef %cregion, ptr noundef %cchunk, ptr noundef %centry, ptr noundef %rulei, i1 noundef zeroext %fillup_priority) local_unnamed_addr #0 align 64 {
entry:
  %ptce2_pl.i = alloca [472 x i8], align 1
  %priority.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cregion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cregion, align 4
  %call = tail call i32 @parman_item_add(ptr noundef %1, ptr noundef %cchunk, ptr noundef %centry) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %region1.i = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %cregion, i32 0, i32 2
  %2 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region1.i, align 4
  %acl.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %4 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acl.i, align 4
  %call.i = tail call ptr @mlxsw_sp_acl_afk(ptr noundef %5) #4
  call void @llvm.lifetime.start.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  %6 = call ptr @memset(ptr %ptce2_pl.i, i32 255, i32 472)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priority.i) #4
  %7 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %priority.i, align 4, !annotation !86
  %call2.i = call i32 @mlxsw_sp_acl_tcam_priority_get(ptr noundef %mlxsw_sp, ptr noundef %rulei, ptr noundef nonnull %priority.i, i1 noundef zeroext %fillup_priority) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.end.err_rule_insert_crit_edge

if.end.err_rule_insert_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_rule_insert

if.end.i:                                         ; preds = %if.end
  %tcam_region_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %3, i32 0, i32 5
  %index.i = getelementptr inbounds %struct.parman_item, ptr %centry, i32 0, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %conv.i = trunc i32 %9 to i16
  %10 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %priority.i, align 4
  call fastcc void @mlxsw_reg_ptce2_pack(ptr noundef nonnull %ptce2_pl.i, i1 noundef zeroext true, i32 noundef 0, ptr noundef %tcam_region_info.i, i16 noundef zeroext %conv.i, i32 noundef %11) #4
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %ptce2_pl.i, i32 32
  %arrayidx.i.i48.i = getelementptr inbounds i8, ptr %ptce2_pl.i, i32 128
  %key_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %key_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key_info.i, align 4
  %values.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 1
  call void @mlxsw_afk_encode(ptr noundef %call.i, ptr noundef %13, ptr noundef %values.i, ptr noundef %arrayidx.i.i.i, ptr noundef %arrayidx.i.i48.i) #4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %cregion, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call9.i = call i32 %17(ptr noundef %cregion, ptr noundef %centry, ptr noundef %arrayidx.i.i48.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i.err_rule_insert_crit_edge

if.end.i.err_rule_insert_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_rule_insert

if.end12.i:                                       ; preds = %if.end.i
  %act_block.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %18 = ptrtoint ptr %act_block.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %act_block.i, align 4
  %call13.i = call ptr @mlxsw_afa_block_first_set(ptr noundef %19) #4
  %arrayidx.i.i52.i = getelementptr inbounds i8, ptr %ptce2_pl.i, i32 224
  %20 = call ptr @memcpy(ptr %arrayidx.i.i52.i, ptr %call13.i, i32 168)
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %21 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core.i, align 4
  %call16.i = call i32 @mlxsw_reg_write(ptr noundef %22, ptr noundef nonnull @mlxsw_reg_ptce2, ptr noundef nonnull %ptce2_pl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %mlxsw_sp_acl_ctcam_region_entry_insert.exit, label %err_ptce2_write.i

err_ptce2_write.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %entry_remove.i = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %entry_remove.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %entry_remove.i, align 4
  call void %26(ptr noundef %cregion, ptr noundef %centry) #4
  br label %err_rule_insert

mlxsw_sp_acl_ctcam_region_entry_insert.exit:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i) #4
  call void @llvm.lifetime.end.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  br label %cleanup

err_rule_insert:                                  ; preds = %err_ptce2_write.i, %if.end.i.err_rule_insert_crit_edge, %if.end.err_rule_insert_crit_edge
  %retval.0.i.ph = phi i32 [ %call9.i, %if.end.i.err_rule_insert_crit_edge ], [ %call2.i, %if.end.err_rule_insert_crit_edge ], [ %call16.i, %err_ptce2_write.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i) #4
  call void @llvm.lifetime.end.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  %27 = ptrtoint ptr %cregion to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cregion, align 4
  call void @parman_item_remove(ptr noundef %28, ptr noundef %cchunk, ptr noundef %centry) #4
  br label %cleanup

cleanup:                                          ; preds = %err_rule_insert, %mlxsw_sp_acl_ctcam_region_entry_insert.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %err_rule_insert ], [ %call, %entry.cleanup_crit_edge ], [ 0, %mlxsw_sp_acl_ctcam_region_entry_insert.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parman_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_item_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_ctcam_entry_del(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %cregion, ptr noundef %cchunk, ptr noundef %centry) local_unnamed_addr #0 align 64 {
entry:
  %ptce2_pl.i = alloca [472 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  %0 = call ptr @memset(ptr %ptce2_pl.i, i32 255, i32 472)
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %cregion, i32 0, i32 2
  %1 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %region.i, align 4
  %tcam_region_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %2, i32 0, i32 5
  %index.i = getelementptr inbounds %struct.parman_item, ptr %centry, i32 0, i32 1
  %3 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i, align 4
  %conv.i = trunc i32 %4 to i16
  call fastcc void @mlxsw_reg_ptce2_pack(ptr noundef nonnull %ptce2_pl.i, i1 noundef zeroext false, i32 noundef 0, ptr noundef %tcam_region_info.i, i16 noundef zeroext %conv.i, i32 noundef 0) #4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %5 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_ptce2, ptr noundef nonnull %ptce2_pl.i) #4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %cregion, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %entry_remove.i = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %entry_remove.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry_remove.i, align 4
  call void %10(ptr noundef %cregion, ptr noundef %centry) #4
  call void @llvm.lifetime.end.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  %11 = ptrtoint ptr %cregion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cregion, align 4
  call void @parman_item_remove(ptr noundef %12, ptr noundef %cchunk, ptr noundef %centry) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_ctcam_entry_action_replace(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %cregion, ptr nocapture noundef readonly %centry, ptr nocapture noundef readonly %rulei) local_unnamed_addr #0 align 64 {
entry:
  %ptce2_pl.i = alloca [472 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %2 = ptrtoint ptr %rulei to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rulei, align 4
  call void @llvm.lifetime.start.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  %4 = call ptr @memset(ptr %ptce2_pl.i, i32 255, i32 472)
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %cregion, i32 0, i32 2
  %5 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %region.i, align 4
  %tcam_region_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %6, i32 0, i32 5
  %index.i = getelementptr inbounds %struct.parman_item, ptr %centry, i32 0, i32 1
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  %conv.i = trunc i32 %8 to i16
  call fastcc void @mlxsw_reg_ptce2_pack(ptr noundef nonnull %ptce2_pl.i, i1 noundef zeroext true, i32 noundef 1, ptr noundef %tcam_region_info.i, i16 noundef zeroext %conv.i, i32 noundef %3) #4
  %call.i = tail call ptr @mlxsw_afa_block_first_set(ptr noundef %1) #4
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %ptce2_pl.i, i32 224
  %9 = call ptr @memcpy(ptr %arrayidx.i.i.i, ptr %call.i, i32 168)
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %call4.i = call i32 @mlxsw_reg_write(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_ptce2, ptr noundef nonnull %ptce2_pl.i) #4
  call void @llvm.lifetime.end.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_ctcam_region_parman_resize(ptr nocapture noundef readonly %priv, i32 noundef %new_count) #0 align 64 {
entry:
  %ptar_pl.i = alloca [48 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %region1 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %region1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %region1, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp2, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %5, i32 noundef 21) #4
  %conv = zext i32 %new_count to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %conv)
  %cmp = icmp ult i64 %call, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ptar_pl.i) #4
  %key_type.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %key_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_type.i, align 4
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id.i, align 4
  %10 = call ptr @memset(ptr %ptar_pl.i, i32 0, i32 48)
  %11 = ptrtoint ptr %ptar_pl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptar_pl.i, align 4
  %and6.i.i51.i.i = and i32 %7, 255
  %or.i.i28.i.i = and i32 %12, 251723520
  %and7.i.i54.i.i = or i32 %or.i.i28.i.i, 268566528
  %or.i.i55.i.i = or i32 %and6.i.i51.i.i, %and7.i.i54.i.i
  store i32 %or.i.i55.i.i, ptr %ptar_pl.i, align 4
  %conv1.i.i = and i32 %new_count, 65535
  %arrayidx.i.i80.i.i = getelementptr inbounds i32, ptr %ptar_pl.i, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i80.i.i, align 4
  %and7.i.i82.i.i = and i32 %14, -65536
  %or.i.i83.i.i = or i32 %conv1.i.i, %and7.i.i82.i.i
  store i32 %or.i.i83.i.i, ptr %arrayidx.i.i80.i.i, align 4
  %tcam_region_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %1, i32 0, i32 5
  %conv2.i.i = zext i16 %9 to i32
  %arrayidx.i.i108.i.i = getelementptr inbounds i32, ptr %ptar_pl.i, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i108.i.i, align 4
  %and7.i.i110.i.i = and i32 %16, -65536
  %or.i.i111.i.i = or i32 %and7.i.i110.i.i, %conv2.i.i
  store i32 %or.i.i111.i.i, ptr %arrayidx.i.i108.i.i, align 4
  %arrayidx.i.i115.i.i = getelementptr inbounds i8, ptr %ptar_pl.i, i32 16
  %17 = call ptr @memcpy(ptr %arrayidx.i.i115.i.i, ptr %tcam_region_info.i, i32 16)
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %19, ptr noundef nonnull @mlxsw_reg_ptar, ptr noundef nonnull %ptar_pl.i) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ptar_pl.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_ctcam_region_parman_move(ptr nocapture noundef readonly %priv, i32 noundef %from_index, i32 noundef %to_index, i32 noundef %count) #0 align 64 {
entry:
  %prcr_pl.i = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %region1 = getelementptr inbounds %struct.mlxsw_sp_acl_ctcam_region, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %region1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %region1, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %prcr_pl.i) #4
  %tcam_region_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %1, i32 0, i32 5
  %4 = call ptr @memset(ptr %prcr_pl.i, i32 0, i32 64)
  %5 = ptrtoint ptr %prcr_pl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prcr_pl.i, align 4
  %conv1.i.i = and i32 %from_index, 65535
  %and7.i.i23.i.i = and i32 %6, 268369920
  %or.i.i.i.i = or i32 %conv1.i.i, %and7.i.i23.i.i
  store i32 %or.i.i.i.i, ptr %prcr_pl.i, align 4
  %conv2.i.i = and i32 %count, 65535
  %arrayidx.i.i48.i.i = getelementptr inbounds i32, ptr %prcr_pl.i, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i48.i.i, align 4
  %and7.i.i50.i.i = and i32 %8, -65536
  %or.i.i51.i.i = or i32 %conv2.i.i, %and7.i.i50.i.i
  store i32 %or.i.i51.i.i, ptr %arrayidx.i.i48.i.i, align 4
  %arrayidx.i.i55.i.i = getelementptr inbounds i8, ptr %prcr_pl.i, i32 16
  %9 = call ptr @memcpy(ptr %arrayidx.i.i55.i.i, ptr %tcam_region_info.i, i32 16)
  %conv3.i.i = and i32 %to_index, 65535
  %arrayidx.i.i81.i.i = getelementptr inbounds i32, ptr %prcr_pl.i, i32 8
  %10 = ptrtoint ptr %arrayidx.i.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i81.i.i, align 4
  %and7.i.i83.i.i = and i32 %11, -65536
  %or.i.i84.i.i = or i32 %conv3.i.i, %and7.i.i83.i.i
  store i32 %or.i.i84.i.i, ptr %arrayidx.i.i81.i.i, align 4
  %arrayidx.i.i88.i.i = getelementptr inbounds i8, ptr %prcr_pl.i, i32 48
  %12 = call ptr @memcpy(ptr %arrayidx.i.i88.i.i, ptr %tcam_region_info.i, i32 16)
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_prcr, ptr noundef nonnull %prcr_pl.i) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %prcr_pl.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_afk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_tcam_priority_get(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_ptce2_pack(ptr nocapture noundef %payload, i1 noundef zeroext %valid, i32 noundef %op, ptr nocapture noundef readonly %tcam_region_info, i16 noundef zeroext %offset, i32 noundef %priority) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = call ptr @memset(ptr %payload, i32 0, i32 472)
  %spec.select.i.i = select i1 %valid, i32 -2147483648, i32 0
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, 2140078080
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %spec.select.i.i26 = shl i32 %op, 20
  %and6.i.i31 = and i32 %spec.select.i.i26, 7340032
  %or.i.i35 = or i32 %and6.i.i31, %or.i.i
  %conv2 = zext i16 %offset to i32
  %or.i.i63 = or i32 %or.i.i35, %conv2
  store i32 %or.i.i63, ptr %payload, align 4
  %and6.i.i87 = and i32 %priority, 16777215
  %arrayidx.i.i88 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i88, align 4
  %and7.i.i90 = and i32 %4, -16777216
  %or.i.i91 = or i32 %and6.i.i87, %and7.i.i90
  store i32 %or.i.i91, ptr %arrayidx.i.i88, align 4
  %arrayidx.i.i95 = getelementptr i8, ptr %payload, i32 16
  %5 = call ptr @memcpy(ptr %arrayidx.i.i95, ptr %tcam_region_info, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afk_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afa_block_first_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @mlxsw_sp_acl_ctcam_region_parman_ops, !1, !"mlxsw_sp_acl_ctcam_region_parman_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_ctcam.c", i32 148, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__mlxsw_item_offset._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @__mlxsw_item_offset._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2533, i32 1}
!10 = distinct !{null, !9, !"mlxsw_reg_ptar_op_item", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2540, i32 1}
!13 = distinct !{null, !12, !"mlxsw_reg_ptar_action_set_type_item", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2551, i32 1}
!16 = distinct !{null, !15, !"mlxsw_reg_ptar_key_type_item", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2561, i32 1}
!19 = distinct !{null, !18, !"mlxsw_reg_ptar_region_size_item", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2568, i32 1}
!22 = distinct !{null, !21, !"mlxsw_reg_ptar_region_id_item", i1 false, i1 false}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2576, i32 1}
!25 = distinct !{null, !24, !"mlxsw_reg_ptar_tcam_region_info_item", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2517, i32 1}
!28 = !{ptr @mlxsw_reg_ptar, !27, !"mlxsw_reg_ptar", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2670, i32 1}
!31 = distinct !{null, !30, !"mlxsw_reg_prcr_op_item", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2676, i32 1}
!34 = distinct !{null, !33, !"mlxsw_reg_prcr_offset_item", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2682, i32 1}
!37 = distinct !{null, !36, !"mlxsw_reg_prcr_size_item", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2688, i32 1}
!40 = distinct !{null, !39, !"mlxsw_reg_prcr_tcam_region_info_item", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2695, i32 1}
!43 = distinct !{null, !42, !"mlxsw_reg_prcr_dest_offset_item", i1 false, i1 false}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2701, i32 1}
!46 = distinct !{null, !45, !"mlxsw_reg_prcr_dest_tcam_region_info_item", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2652, i32 1}
!49 = !{ptr @mlxsw_reg_prcr, !48, !"mlxsw_reg_prcr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2832, i32 1}
!52 = distinct !{null, !51, !"mlxsw_reg_ptce2_v_item", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2862, i32 1}
!55 = distinct !{null, !54, !"mlxsw_reg_ptce2_op_item", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2867, i32 1}
!58 = distinct !{null, !57, !"mlxsw_reg_ptce2_offset_item", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2876, i32 1}
!61 = distinct !{null, !60, !"mlxsw_reg_ptce2_priority_item", i1 false, i1 false}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2882, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_ptce2_tcam_region_info_item", i1 false, i1 false}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2891, i32 1}
!67 = distinct !{null, !66, !"mlxsw_reg_ptce2_flex_key_blocks_item", i1 false, i1 false}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2900, i32 1}
!70 = distinct !{null, !69, !"mlxsw_reg_ptce2_mask_item", i1 false, i1 false}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2907, i32 1}
!73 = distinct !{null, !72, !"mlxsw_reg_ptce2_flex_action_set_item", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2826, i32 1}
!76 = !{ptr @mlxsw_reg_ptce2, !75, !"mlxsw_reg_ptce2", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
