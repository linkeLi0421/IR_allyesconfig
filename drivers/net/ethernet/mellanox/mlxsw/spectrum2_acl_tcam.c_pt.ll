; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum2_acl_tcam.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum2_acl_tcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_acl_tcam_ops = type { i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_acl_ctcam_region_ops = type { ptr, ptr }
%struct.mlxsw_sp_acl_tcam = type { ptr, i32, ptr, i32, i32, %struct.mutex, %struct.list_head, i32, [0 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlxsw_sp2_acl_tcam = type { %struct.mlxsw_sp_acl_atcam, i32, i32 }
%struct.mlxsw_sp_acl_atcam = type { ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.mlxsw_sp2_acl_tcam_region = type { %struct.mlxsw_sp_acl_atcam_region, ptr }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.rhashtable, %struct.list_head, %struct.mlxsw_sp_acl_ctcam_region, ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_acl_ctcam_region = type { ptr, ptr, ptr }
%struct.mlxsw_sp_acl_tcam_region = type { ptr, ptr, %struct.list_head, i32, i16, [16 x i8], ptr, ptr, [0 x i32] }
%struct.mlxsw_sp_acl_rule_info = type { i32, %struct.mlxsw_afk_element_values, ptr, i8, i32, i16 }
%struct.mlxsw_afk_element_values = type { %struct.mlxsw_afk_element_usage, %struct.anon.170 }
%struct.mlxsw_afk_element_usage = type { [1 x i32] }
%struct.anon.170 = type { [64 x i8], [64 x i8] }
%struct.mlxsw_sp2_acl_tcam_entry = type { %struct.mlxsw_sp_acl_atcam_entry, ptr }
%struct.mlxsw_sp_acl_atcam_entry = type { %struct.rhash_head, %struct.list_head, %struct.mlxsw_sp_acl_atcam_entry_ht_key, [96 x i8], %struct.anon.171, %struct.mlxsw_sp_acl_ctcam_entry, ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.mlxsw_sp_acl_atcam_entry_ht_key = type { [96 x i8], i8 }
%struct.anon.171 = type { i16, i8, i8 }
%struct.mlxsw_sp_acl_ctcam_entry = type { %struct.parman_item }
%struct.parman_item = type { %struct.list_head, i32 }

@mlxsw_sp2_acl_tcam_ops = dso_local constant { %struct.mlxsw_sp_acl_tcam_ops, [56 x i8] } { %struct.mlxsw_sp_acl_tcam_ops { i32 81, i32 12, ptr @mlxsw_sp2_acl_tcam_init, ptr @mlxsw_sp2_acl_tcam_fini, i32 276, ptr @mlxsw_sp2_acl_tcam_region_init, ptr @mlxsw_sp2_acl_tcam_region_fini, ptr @mlxsw_sp2_acl_tcam_region_associate, ptr @mlxsw_sp2_acl_tcam_region_rehash_hints_get, ptr @mlxsw_sp2_acl_tcam_region_rehash_hints_put, i32 20, ptr @mlxsw_sp2_acl_tcam_chunk_init, ptr @mlxsw_sp2_acl_tcam_chunk_fini, i32 236, ptr @mlxsw_sp2_acl_tcam_entry_add, ptr @mlxsw_sp2_acl_tcam_entry_del, ptr @mlxsw_sp2_acl_tcam_entry_action_replace, ptr @mlxsw_sp2_acl_tcam_entry_activity_get }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum2_acl_tcam.c\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_reg_pefa = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12303, i16 176, ptr @.str.9 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_reg_pgcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12289, i16 32, ptr @.str.12 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, align 1
@.str.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_pefa_index\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_pefa_ca\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pefa\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reg_pgcr_default_action_pointer_base\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pgcr\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp2_acl_ctcam_region_ops = internal constant { %struct.mlxsw_sp_acl_ctcam_region_ops, [24 x i8] } { %struct.mlxsw_sp_acl_ctcam_region_ops { ptr @mlxsw_sp2_acl_ctcam_region_entry_insert, ptr @mlxsw_sp2_acl_ctcam_region_entry_remove }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"mlxsw_sp2_acl_tcam_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 251, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 96, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pefa\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pgcr\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 33, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 2735, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 2752, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 2729, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 2331, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 2324, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"mlxsw_sp2_acl_ctcam_region_ops\00", align 1
@___asan_gen_.50 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_acl_tcam.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 64, i32 1 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp2_acl_tcam_ops, ptr @.str, ptr @mlxsw_reg_pefa, ptr @mlxsw_reg_pgcr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @mlxsw_sp2_acl_ctcam_region_ops], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_acl_tcam_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pefa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pgcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_acl_ctcam_region_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_tcam_init(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr nocapture noundef readonly %_tcam) #0 align 64 {
entry:
  %pefa_pl = alloca [176 x i8], align 4
  %pgcr_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %pefa_pl) #3
  %0 = call ptr @memset(ptr %pefa_pl, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pgcr_pl) #3
  %max_regions = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, ptr %_tcam, i32 0, i32 1
  %1 = call ptr @memset(ptr %pgcr_pl, i32 255, i32 32)
  %2 = ptrtoint ptr %max_regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_regions, align 4
  %kvdl_count = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %kvdl_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %kvdl_count, align 4
  %kvdl_index = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, ptr %priv, i32 0, i32 1
  %call = tail call i32 @mlxsw_sp_kvdl_alloc(ptr noundef %mlxsw_sp, i32 noundef 1, i32 noundef %3, ptr noundef %kvdl_index) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %afa = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 12
  %5 = ptrtoint ptr %afa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %afa, align 4
  %call2 = tail call ptr @mlxsw_afa_block_create(ptr noundef %6) #3
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %call2 to i32
  br label %err_afa_block

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @mlxsw_afa_block_continue(ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end32.critedge, label %do.end, !prof !39

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #3
  br label %err_afa_block_continue

if.end32.critedge:                                ; preds = %if.end6
  %call33 = tail call ptr @mlxsw_afa_block_cur_set(ptr noundef %call2) #3
  %8 = ptrtoint ptr %kvdl_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %kvdl_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp120.not = icmp eq i32 %9, 0
  br i1 %cmp120.not, label %if.end32.critedge.for.end_crit_edge, label %for.body.lr.ph

if.end32.critedge.for.end_crit_edge:              ; preds = %if.end32.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end32.critedge
  %tobool2.not.i = icmp eq ptr %call33, null
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %arrayidx.i.i24.i = getelementptr inbounds i32, ptr %pefa_pl, i32 1
  %arrayidx.i.i31.i = getelementptr inbounds i8, ptr %pefa_pl, i32 8
  br label %for.body

for.cond:                                         ; preds = %mlxsw_reg_pefa_pack.exit
  %inc = add nuw i32 %i.0121, 1
  %10 = ptrtoint ptr %kvdl_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kvdl_count, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %12 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %kvdl_index, align 4
  %add = add i32 %13, %i.0121
  %14 = call ptr @memset(ptr %pefa_pl, i32 0, i32 176)
  %and6.i.i.i = and i32 %add, 16777215
  %15 = ptrtoint ptr %pefa_pl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pefa_pl, align 4
  %and7.i.i.i = and i32 %16, -16777216
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %pefa_pl, align 4
  %17 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i24.i, align 4
  %or.i.i27.i = or i32 %18, 16777216
  store i32 %or.i.i27.i, ptr %arrayidx.i.i24.i, align 4
  br i1 %tobool2.not.i, label %for.body.mlxsw_reg_pefa_pack.exit_crit_edge, label %if.then.i

for.body.mlxsw_reg_pefa_pack.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %mlxsw_reg_pefa_pack.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %19 = call ptr @memcpy(ptr %arrayidx.i.i31.i, ptr %call33, i32 168)
  br label %mlxsw_reg_pefa_pack.exit

mlxsw_reg_pefa_pack.exit:                         ; preds = %if.then.i, %for.body.mlxsw_reg_pefa_pack.exit_crit_edge
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 4
  %call37 = call i32 @mlxsw_reg_write(ptr noundef %21, ptr noundef nonnull @mlxsw_reg_pefa, ptr noundef nonnull %pefa_pl) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.cond, label %mlxsw_reg_pefa_pack.exit.err_afa_block_continue_crit_edge

mlxsw_reg_pefa_pack.exit.err_afa_block_continue_crit_edge: ; preds = %mlxsw_reg_pefa_pack.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_afa_block_continue

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end32.critedge.for.end_crit_edge
  %22 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kvdl_index, align 4
  %24 = call ptr @memset(ptr %pgcr_pl, i32 0, i32 32)
  %and6.i.i.i111 = and i32 %23, 16777215
  %arrayidx.i.i.i112 = getelementptr inbounds i32, ptr %pgcr_pl, i32 7
  %25 = ptrtoint ptr %arrayidx.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i112, align 4
  %and7.i.i.i114 = and i32 %26, -16777216
  %or.i.i.i115 = or i32 %and6.i.i.i111, %and7.i.i.i114
  store i32 %or.i.i.i115, ptr %arrayidx.i.i.i112, align 4
  %core43 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %27 = ptrtoint ptr %core43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core43, align 4
  %call45 = call i32 @mlxsw_reg_write(ptr noundef %28, ptr noundef nonnull @mlxsw_reg_pgcr, ptr noundef nonnull %pgcr_pl) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.end.err_afa_block_continue_crit_edge

for.end.err_afa_block_continue_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_afa_block_continue

if.end48:                                         ; preds = %for.end
  %call49 = call i32 @mlxsw_sp_acl_atcam_init(ptr noundef %mlxsw_sp, ptr noundef %priv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.err_afa_block_continue_crit_edge

if.end48.err_afa_block_continue_crit_edge:        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_afa_block_continue

if.end52:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  call void @mlxsw_afa_block_destroy(ptr noundef %call2) #3
  br label %cleanup

err_afa_block_continue:                           ; preds = %if.end48.err_afa_block_continue_crit_edge, %for.end.err_afa_block_continue_crit_edge, %mlxsw_reg_pefa_pack.exit.err_afa_block_continue_crit_edge, %do.end
  %err.0 = phi i32 [ %call45, %for.end.err_afa_block_continue_crit_edge ], [ %call49, %if.end48.err_afa_block_continue_crit_edge ], [ %call7, %do.end ], [ %call37, %mlxsw_reg_pefa_pack.exit.err_afa_block_continue_crit_edge ]
  call void @mlxsw_afa_block_destroy(ptr noundef %call2) #3
  br label %err_afa_block

err_afa_block:                                    ; preds = %err_afa_block_continue, %if.then4
  %err.1 = phi i32 [ %7, %if.then4 ], [ %err.0, %err_afa_block_continue ]
  %29 = ptrtoint ptr %kvdl_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %kvdl_count, align 4
  %31 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %kvdl_index, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 1, i32 noundef %30, i32 noundef %32) #3
  br label %cleanup

cleanup:                                          ; preds = %err_afa_block, %if.end52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_afa_block ], [ 0, %if.end52 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pgcr_pl) #3
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %pefa_pl) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_acl_tcam_fini(ptr noundef %mlxsw_sp, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_atcam_fini(ptr noundef %mlxsw_sp, ptr noundef %priv) #3
  %kvdl_count = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %kvdl_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kvdl_count, align 4
  %kvdl_index = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kvdl_index, align 4
  tail call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 1, i32 noundef %1, i32 noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_tcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %tcam_priv, ptr noundef %_region, ptr noundef %hints_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %region1 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam_region, ptr %region_priv, i32 0, i32 1
  %0 = ptrtoint ptr %region1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %_region, ptr %region1, align 4
  %call = tail call i32 @mlxsw_sp_acl_atcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %tcam_priv, ptr noundef %region_priv, ptr noundef %_region, ptr noundef %hints_priv, ptr noundef nonnull @mlxsw_sp2_acl_ctcam_region_ops) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_acl_tcam_region_fini(ptr nocapture noundef readnone %mlxsw_sp, ptr noundef %region_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_atcam_region_fini(ptr noundef %region_priv) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_tcam_region_associate(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %call = tail call i32 @mlxsw_sp_acl_atcam_region_associate(ptr noundef %mlxsw_sp, i16 noundef zeroext %1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp2_acl_tcam_region_rehash_hints_get(ptr noundef %region_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_sp_acl_atcam_rehash_hints_get(ptr noundef %region_priv) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_acl_tcam_region_rehash_hints_put(ptr noundef %hints_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_atcam_rehash_hints_put(ptr noundef %hints_priv) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_acl_tcam_chunk_init(ptr noundef %region_priv, ptr noundef %chunk_priv, i32 noundef %priority) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_atcam_chunk_init(ptr noundef %region_priv, ptr noundef %chunk_priv, i32 noundef %priority) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_acl_tcam_chunk_fini(ptr noundef %chunk_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_atcam_chunk_fini(ptr noundef %chunk_priv) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_tcam_entry_add(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %chunk_priv, ptr noundef %entry_priv, ptr noundef %rulei) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %act_block2 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam_entry, ptr %entry_priv, i32 0, i32 1
  %2 = ptrtoint ptr %act_block2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %act_block2, align 4
  %call = tail call i32 @mlxsw_sp_acl_atcam_entry_add(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %chunk_priv, ptr noundef %entry_priv, ptr noundef %rulei) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_acl_tcam_entry_del(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %chunk_priv, ptr noundef %entry_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_atcam_entry_del(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %chunk_priv, ptr noundef %entry_priv) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_tcam_entry_action_replace(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %entry_priv, ptr noundef %rulei) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %act_block2 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam_entry, ptr %entry_priv, i32 0, i32 1
  %2 = ptrtoint ptr %act_block2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %act_block2, align 4
  %call = tail call i32 @mlxsw_sp_acl_atcam_entry_action_replace(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %entry_priv, ptr noundef %rulei) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_tcam_entry_activity_get(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %region_priv, ptr nocapture noundef readonly %entry_priv, ptr noundef %activity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %act_block = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam_entry, ptr %entry_priv, i32 0, i32 1
  %0 = ptrtoint ptr %act_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act_block, align 4
  %call = tail call i32 @mlxsw_afa_block_activity_get(ptr noundef %1, ptr noundef %activity) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_kvdl_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afa_block_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_continue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afa_block_cur_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_atcam_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afa_block_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_kvdl_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_atcam_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_atcam_region_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_acl_ctcam_region_entry_insert(ptr noundef %cregion, ptr nocapture noundef writeonly %centry, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cregion, i32 -236
  %call2 = tail call ptr @mlxsw_sp_acl_erp_mask_get(ptr noundef %add.ptr.i, ptr noundef %mask, i1 noundef zeroext true) #3
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %erp_mask5 = getelementptr i8, ptr %centry, i32 16
  %1 = ptrtoint ptr %erp_mask5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %erp_mask5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_acl_ctcam_region_entry_remove(ptr noundef %cregion, ptr nocapture noundef readonly %centry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cregion, i32 -236
  %erp_mask = getelementptr i8, ptr %centry, i32 16
  %0 = ptrtoint ptr %erp_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_mask, align 4
  tail call void @mlxsw_sp_acl_erp_mask_put(ptr noundef %add.ptr.i, ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_erp_mask_get(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_erp_mask_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_atcam_region_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_atcam_region_associate(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_atcam_rehash_hints_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_atcam_rehash_hints_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_atcam_chunk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_atcam_chunk_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_atcam_entry_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_atcam_entry_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_atcam_entry_action_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_activity_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @mlxsw_sp2_acl_tcam_ops, !1, !"mlxsw_sp2_acl_tcam_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_acl_tcam.c", i32 251, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_acl_tcam.c", i32 96, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__mlxsw_item_offset._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @__mlxsw_item_offset._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2735, i32 1}
!12 = distinct !{null, !11, !"mlxsw_reg_pefa_index_item", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2752, i32 1}
!15 = distinct !{null, !14, !"mlxsw_reg_pefa_ca_item", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2761, i32 1}
!18 = distinct !{null, !17, !"mlxsw_reg_pefa_flex_action_set_item", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2729, i32 1}
!21 = !{ptr @mlxsw_reg_pefa, !20, !"mlxsw_reg_pefa", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2331, i32 1}
!24 = distinct !{null, !23, !"mlxsw_reg_pgcr_default_action_pointer_base_item", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2324, i32 1}
!27 = !{ptr @mlxsw_reg_pgcr, !26, !"mlxsw_reg_pgcr", i1 false, i1 false}
!28 = !{ptr @mlxsw_sp2_acl_ctcam_region_ops, !29, !"mlxsw_sp2_acl_ctcam_region_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_acl_tcam.c", i32 64, i32 1}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
