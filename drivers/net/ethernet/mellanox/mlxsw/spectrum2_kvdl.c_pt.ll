; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum2_kvdl.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum2_kvdl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_kvdl_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp2_kvdl_part_info = type { i8, i32, i32 }
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
%struct.mlxsw_sp2_kvdl_part = type { ptr, i32, i32, i32, [0 x i32] }

@mlxsw_sp2_kvdl_ops = dso_local constant { %struct.mlxsw_sp_kvdl_ops, [36 x i8] } { %struct.mlxsw_sp_kvdl_ops { i32 24, ptr @mlxsw_sp2_kvdl_init, ptr @mlxsw_sp2_kvdl_fini, ptr @mlxsw_sp2_kvdl_alloc, ptr @mlxsw_sp2_kvdl_free, ptr @mlxsw_sp2_kvdl_alloc_size_query, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp2_kvdl_parts_info = internal constant { [6 x %struct.mlxsw_sp2_kvdl_part_info], [56 x i8] } { [6 x %struct.mlxsw_sp2_kvdl_part_info] [%struct.mlxsw_sp2_kvdl_part_info { i8 33, i32 0, i32 3 }, %struct.mlxsw_sp2_kvdl_part_info { i8 35, i32 4, i32 4 }, %struct.mlxsw_sp2_kvdl_part_info { i8 36, i32 0, i32 0 }, %struct.mlxsw_sp2_kvdl_part_info { i8 38, i32 0, i32 0 }, %struct.mlxsw_sp2_kvdl_part_info { i8 40, i32 0, i32 0 }, %struct.mlxsw_sp2_kvdl_part_info { i8 41, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_reg_iedr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 14340, i16 528, ptr @.str.11 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, align 1
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_iedr_num_rec\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_iedr_rec_type\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_iedr_rec_size\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_iedr_rec_index_start\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iedr\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"mlxsw_sp2_kvdl_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 266, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"mlxsw_sp2_kvdl_parts_info\00", align 1
@___asan_gen_.16 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_kvdl.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 32, i32 46 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_iedr\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 33, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 3465, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 3471, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 3478, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 3485, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 3459, i32 1 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp2_kvdl_ops, ptr @mlxsw_sp2_kvdl_parts_info, ptr @mlxsw_reg_iedr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_kvdl_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_kvdl_parts_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_iedr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_kvdl_init(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.038.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x %struct.mlxsw_sp2_kvdl_part_info], ptr @mlxsw_sp2_kvdl_parts_info, i32 0, i32 %i.038.i
  %0 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i.i, align 4
  %usage_bit_count_res_id.i.i = getelementptr [6 x %struct.mlxsw_sp2_kvdl_part_info], ptr @mlxsw_sp2_kvdl_parts_info, i32 0, i32 %i.038.i, i32 1
  %2 = ptrtoint ptr %usage_bit_count_res_id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usage_bit_count_res_id.i.i, align 4
  %call.i.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %1, i32 noundef %3) #6
  br i1 %call.i.i, label %lor.lhs.false.i.i, label %for.body.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge

for.body.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_part_init.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %4 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core.i.i, align 4
  %index_range_res_id.i.i = getelementptr [6 x %struct.mlxsw_sp2_kvdl_part_info], ptr @mlxsw_sp2_kvdl_parts_info, i32 0, i32 %i.038.i, i32 2
  %6 = ptrtoint ptr %index_range_res_id.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index_range_res_id.i.i, align 4
  %call2.i.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %5, i32 noundef %7) #6
  br i1 %call2.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge

lor.lhs.false.i.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_part_init.exit.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %8 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core.i.i, align 4
  %call6.i.i = tail call i64 @mlxsw_core_res_get(ptr noundef %9, i32 noundef %3) #6
  %conv.i.i = trunc i64 %call6.i.i to i32
  %10 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i.i, align 4
  %call9.i.i = tail call i64 @mlxsw_core_res_get(ptr noundef %11, i32 noundef %7) #6
  %sub.i.i = add i32 %conv.i.i, 31
  %12 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %12, 536870908
  %add12.i.i = add nuw nsw i32 %mul.i.i, 16
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add12.i.i, i32 noundef 3520) #9
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge, label %mlxsw_sp2_kvdl_part_init.exit.i

if.end.i.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_part_init.exit.thread.i

mlxsw_sp2_kvdl_part_init.exit.thread.i:           ; preds = %if.end.i.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge, %lor.lhs.false.i.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge, %for.body.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge ], [ inttoptr (i32 -5 to ptr), %for.body.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge ], [ inttoptr (i32 -5 to ptr), %lor.lhs.false.i.i.mlxsw_sp2_kvdl_part_init.exit.thread.i_crit_edge ]
  %arrayidx131.i = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %i.038.i
  %13 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i.ph.i, ptr %arrayidx131.i, align 4
  br label %if.then.i

mlxsw_sp2_kvdl_part_init.exit.i:                  ; preds = %if.end.i.i
  %conv10.i.i = trunc i64 %call9.i.i to i32
  %div.i.i = udiv i32 %conv10.i.i, %conv.i.i
  %14 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %call9.i.i.i.i, align 128
  %usage_bit_count18.i.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %call9.i.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %usage_bit_count18.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i.i, ptr %usage_bit_count18.i.i, align 4
  %indexes_per_usage_bit19.i.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %call9.i.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %indexes_per_usage_bit19.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div.i.i, ptr %indexes_per_usage_bit19.i.i, align 8
  %sub20.i.i = add i32 %conv.i.i, -1
  %last_allocated_bit.i.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %call9.i.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %last_allocated_bit.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub20.i.i, ptr %last_allocated_bit.i.i, align 4
  %arrayidx1.i = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %i.038.i
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i.i.i, ptr %arrayidx1.i, align 4
  %cmp.i.i = icmp ugt ptr %call9.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlxsw_sp2_kvdl_part_init.exit.i.if.then.i_crit_edge, label %for.inc.i

mlxsw_sp2_kvdl_part_init.exit.i.if.then.i_crit_edge: ; preds = %mlxsw_sp2_kvdl_part_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %mlxsw_sp2_kvdl_part_init.exit.i.if.then.i_crit_edge, %mlxsw_sp2_kvdl_part_init.exit.thread.i
  %retval.0.i33.i = phi ptr [ %retval.0.i.ph.i, %mlxsw_sp2_kvdl_part_init.exit.thread.i ], [ %call9.i.i.i.i, %mlxsw_sp2_kvdl_part_init.exit.i.if.then.i_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i33.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.038.i)
  %cmp940.not.i = icmp eq i32 %i.038.i, 0
  br i1 %cmp940.not.i, label %if.then.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, label %for.body10.i

if.then.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_parts_init.exit

for.inc.i:                                        ; preds = %mlxsw_sp2_kvdl_part_init.exit.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_parts_init.exit

for.body10.i:                                     ; preds = %if.then.i
  %i.141.i = add nsw i32 %i.038.i, -1
  %arrayidx12.i = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %i.141.i
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12.i, align 4
  tail call void @kfree(ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.038.i)
  %cmp9.i = icmp ugt i32 %i.038.i, 1
  br i1 %cmp9.i, label %for.body10.i.1, label %for.body10.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge

for.body10.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_parts_init.exit

for.body10.i.1:                                   ; preds = %for.body10.i
  %i.141.i.1 = add nsw i32 %i.038.i, -2
  %arrayidx12.i.1 = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %i.141.i.1
  %22 = ptrtoint ptr %arrayidx12.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12.i.1, align 4
  tail call void @kfree(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.038.i)
  %cmp9.i.1.not = icmp eq i32 %i.038.i, 2
  br i1 %cmp9.i.1.not, label %for.body10.i.1.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, label %for.body10.i.2

for.body10.i.1.mlxsw_sp2_kvdl_parts_init.exit_crit_edge: ; preds = %for.body10.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_parts_init.exit

for.body10.i.2:                                   ; preds = %for.body10.i.1
  %i.141.i.2 = add nsw i32 %i.038.i, -3
  %arrayidx12.i.2 = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %i.141.i.2
  %24 = ptrtoint ptr %arrayidx12.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx12.i.2, align 4
  tail call void @kfree(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.038.i)
  %cmp9.i.2 = icmp ugt i32 %i.038.i, 3
  br i1 %cmp9.i.2, label %for.body10.i.3, label %for.body10.i.2.mlxsw_sp2_kvdl_parts_init.exit_crit_edge

for.body10.i.2.mlxsw_sp2_kvdl_parts_init.exit_crit_edge: ; preds = %for.body10.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_parts_init.exit

for.body10.i.3:                                   ; preds = %for.body10.i.2
  %i.141.i.3 = add nsw i32 %i.038.i, -4
  %arrayidx12.i.3 = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %i.141.i.3
  %26 = ptrtoint ptr %arrayidx12.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx12.i.3, align 4
  tail call void @kfree(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.038.i)
  %cmp9.i.3.not = icmp eq i32 %i.038.i, 4
  br i1 %cmp9.i.3.not, label %for.body10.i.3.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, label %for.body10.i.4

for.body10.i.3.mlxsw_sp2_kvdl_parts_init.exit_crit_edge: ; preds = %for.body10.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_parts_init.exit

for.body10.i.4:                                   ; preds = %for.body10.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %i.141.i.4 = add nsw i32 %i.038.i, -5
  %arrayidx12.i.4 = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %i.141.i.4
  %28 = ptrtoint ptr %arrayidx12.i.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx12.i.4, align 4
  tail call void @kfree(ptr noundef %29) #6
  br label %mlxsw_sp2_kvdl_parts_init.exit

mlxsw_sp2_kvdl_parts_init.exit:                   ; preds = %for.body10.i.4, %for.body10.i.3.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, %for.body10.i.2.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, %for.body10.i.1.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, %for.body10.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, %for.inc.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge, %if.then.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.then.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge ], [ %19, %for.body10.i.4 ], [ %19, %for.body10.i.3.mlxsw_sp2_kvdl_parts_init.exit_crit_edge ], [ %19, %for.body10.i.2.mlxsw_sp2_kvdl_parts_init.exit_crit_edge ], [ %19, %for.body10.i.1.mlxsw_sp2_kvdl_parts_init.exit_crit_edge ], [ %19, %for.body10.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge ], [ 0, %for.inc.i.mlxsw_sp2_kvdl_parts_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_kvdl_fini(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  %arrayidx.1.i = getelementptr [6 x ptr], ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %3) #6
  %arrayidx.2.i = getelementptr [6 x ptr], ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @kfree(ptr noundef %5) #6
  %arrayidx.3.i = getelementptr [6 x ptr], ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @kfree(ptr noundef %7) #6
  %arrayidx.4.i = getelementptr [6 x ptr], ptr %priv, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4.i, align 4
  tail call void @kfree(ptr noundef %9) #6
  %arrayidx.5.i = getelementptr [6 x ptr], ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5.i, align 4
  tail call void @kfree(ptr noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_kvdl_alloc(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %priv, i32 noundef %type, i32 noundef %entry_count, ptr nocapture noundef writeonly %p_entry_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %indexes_per_usage_bit.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %indexes_per_usage_bit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %indexes_per_usage_bit.i, align 4
  %add.i = add i32 %entry_count, -1
  %sub.i = add i32 %add.i, %3
  %div.i = udiv i32 %sub.i, %3
  %last_allocated_bit.i.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_allocated_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_allocated_bit.i.i, align 4
  %add.i.i = add i32 %5, 1
  %usage_bit_count.i.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %usage_bit_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usage_bit_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %7)
  %cmp.i.i = icmp eq i32 %add.i.i, %7
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %usage.i.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.i)
  %cmp1345.not.i.i = icmp ugt i32 %3, %sub.i
  br label %again.outer.i.i

again.outer.i.i:                                  ; preds = %land.lhs.true.i.i.again.outer.i.i_crit_edge, %entry
  %bit.0.ph.i.i = phi i32 [ %spec.store.select.i.i, %entry ], [ 0, %land.lhs.true.i.i.again.outer.i.i_crit_edge ]
  %wrap.0.off0.ph.i.i = phi i1 [ false, %entry ], [ true, %land.lhs.true.i.i.again.outer.i.i_crit_edge ]
  br label %again.i.i

again.i.i:                                        ; preds = %for.body.i.i.again.i.i_crit_edge, %again.outer.i.i
  %bit.0.i.i = phi i32 [ %bit.0.ph.i.i, %again.outer.i.i ], [ %add9.i.i, %for.body.i.i.again.i.i_crit_edge ]
  %8 = ptrtoint ptr %usage_bit_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage_bit_count.i.i, align 4
  %call.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %usage.i.i, i32 noundef %9, i32 noundef %bit.0.i.i) #6
  %add9.i.i = add i32 %call.i.i, %div.i
  br i1 %wrap.0.off0.ph.i.i, label %land.lhs.true8.critedge.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %again.i.i
  %10 = ptrtoint ptr %usage_bit_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usage_bit_count.i.i, align 4
  %cmp4.not.i.i = icmp ult i32 %add9.i.i, %11
  br i1 %cmp4.not.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge, label %land.lhs.true.i.i.again.outer.i.i_crit_edge

land.lhs.true.i.i.again.outer.i.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %again.outer.i.i

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

land.lhs.true8.critedge.i.i:                      ; preds = %again.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i.i, i32 %spec.store.select.i.i)
  %cmp10.not.i.i = icmp ult i32 %add9.i.i, %spec.store.select.i.i
  br i1 %cmp10.not.i.i, label %land.lhs.true8.critedge.i.i.if.end12.i.i_crit_edge, label %land.lhs.true8.critedge.i.i.mlxsw_sp2_kvdl_part_alloc.exit_crit_edge

land.lhs.true8.critedge.i.i.mlxsw_sp2_kvdl_part_alloc.exit_crit_edge: ; preds = %land.lhs.true8.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_part_alloc.exit

land.lhs.true8.critedge.i.i.if.end12.i.i_crit_edge: ; preds = %land.lhs.true8.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %land.lhs.true8.critedge.i.i.if.end12.i.i_crit_edge, %land.lhs.true.i.i.if.end12.i.i_crit_edge
  br i1 %cmp1345.not.i.i, label %if.end12.i.i.for.end.i_crit_edge, label %if.end12.i.i.for.body.i.i_crit_edge

if.end12.i.i.for.body.i.i_crit_edge:              ; preds = %if.end12.i.i
  br label %for.body.i.i

if.end12.i.i.for.end.i_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.046.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div.i
  br i1 %exitcond.not.i.i, label %for.body.preheader.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end12.i.i.for.body.i.i_crit_edge
  %i.046.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end12.i.i.for.body.i.i_crit_edge ]
  %add14.i.i = add i32 %i.046.i.i, %call.i.i
  %div3.i.i.i = lshr i32 %add14.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %usage.i.i, i32 %div3.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %add14.i.i, 31
  %14 = shl nuw i32 1, %and.i.i.i
  %15 = and i32 %14, %13
  %tobool18.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool18.not.i.i, label %for.cond.i.i, label %for.body.i.i.again.i.i_crit_edge

for.body.i.i.again.i.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %again.i.i

for.body.preheader.i:                             ; preds = %for.cond.i.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add2.i = add i32 %i.025.i, %call.i.i
  %rem.i.i = and i32 %add2.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %add2.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %usage.i.i, i32 %div2.i.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %17
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end12.i.i.for.end.i_crit_edge
  %18 = ptrtoint ptr %indexes_per_usage_bit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %indexes_per_usage_bit.i, align 4
  %mul.i = mul i32 %19, %call.i.i
  %20 = ptrtoint ptr %p_entry_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %p_entry_index, align 4
  br label %mlxsw_sp2_kvdl_part_alloc.exit

mlxsw_sp2_kvdl_part_alloc.exit:                   ; preds = %for.end.i, %land.lhs.true8.critedge.i.i.mlxsw_sp2_kvdl_part_alloc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i ], [ -105, %land.lhs.true8.critedge.i.i.mlxsw_sp2_kvdl_part_alloc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_kvdl_free(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %priv, i32 noundef %type, i32 noundef %entry_count, i32 noundef %entry_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x ptr], ptr %priv, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 528) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.mlxsw_sp2_kvdl_part_free.exit_crit_edge, label %if.end.i.i

entry.mlxsw_sp2_kvdl_part_free.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_part_free.exit

if.end.i.i:                                       ; preds = %entry
  %7 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 528)
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call7.i.i.i, align 8
  %and4.i.i.i.i.i = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and4.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %mlxsw_reg_iedr_num_rec_set.exit.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

mlxsw_reg_iedr_num_rec_set.exit.i.i.i:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and7.i.i.i.i.i = and i32 %9, -256
  %or.i.i.i.i.i = or i32 %and7.i.i.i.i.i, 1
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i.i.i.i, ptr %call7.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %mlxsw_reg_iedr_num_rec_set.exit.i.i.i, %if.end.i.i.if.end.i.i.i_crit_edge
  %conv4.i.i.i = zext i8 %5 to i32
  %spec.select.i.i39.i.i.i = shl nuw i32 %conv4.i.i.i, 24
  %arrayidx.i.i45.i.i.i = getelementptr i32, ptr %call7.i.i.i, i32 4
  %11 = ptrtoint ptr %arrayidx.i.i45.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i45.i.i.i, align 8
  %and7.i.i47.i.i.i = and i32 %12, 16769024
  %or.i.i48.i.i.i = or i32 %spec.select.i.i39.i.i.i, %and7.i.i47.i.i.i
  %and6.i.i72.i.i.i = and i32 %entry_count, 8191
  %arrayidx.i.i73.i.i.i = getelementptr i32, ptr %call7.i.i.i, i32 4
  %or.i.i76.i.i.i = or i32 %and6.i.i72.i.i.i, %or.i.i48.i.i.i
  %13 = ptrtoint ptr %arrayidx.i.i73.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i76.i.i.i, ptr %arrayidx.i.i73.i.i.i, align 8
  %and6.i.i100.i.i.i = and i32 %entry_index, 16777215
  %arrayidx.i.i101.i.i.i = getelementptr i32, ptr %call7.i.i.i, i32 5
  %14 = ptrtoint ptr %arrayidx.i.i101.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i101.i.i.i, align 4
  %and7.i.i103.i.i.i = and i32 %15, -16777216
  %or.i.i104.i.i.i = or i32 %and6.i.i100.i.i.i, %and7.i.i103.i.i.i
  store i32 %or.i.i104.i.i.i, ptr %arrayidx.i.i101.i.i.i, align 4
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %16 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core.i.i, align 4
  %call1.i.i = tail call i32 @mlxsw_reg_write(ptr noundef %17, ptr noundef nonnull @mlxsw_reg_iedr, ptr noundef nonnull %call7.i.i.i) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.i.i.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge

if.end.i.i.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_part_free.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %indexes_per_usage_bit.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %indexes_per_usage_bit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %indexes_per_usage_bit.i, align 4
  %add.i = add i32 %entry_count, -1
  %sub.i = add i32 %add.i, %19
  %div3.i = udiv i32 %entry_index, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub.i)
  %cmp19.not.i = icmp ugt i32 %19, %sub.i
  br i1 %cmp19.not.i, label %if.end.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_part_free.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %div.i = udiv i32 %sub.i, %19
  %usage.i = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, ptr %1, i32 0, i32 4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add5.i = add i32 %i.020.i, %div3.i
  %rem.i.i = and i32 %add5.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %add5.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %usage.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %21, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlxsw_sp2_kvdl_part_free.exit

mlxsw_sp2_kvdl_part_free.exit:                    ; preds = %for.body.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge, %if.end.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge, %if.end.i.i.i.mlxsw_sp2_kvdl_part_free.exit_crit_edge, %entry.mlxsw_sp2_kvdl_part_free.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_sp2_kvdl_alloc_size_query(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %priv, i32 noundef %type, i32 noundef %entry_count, ptr nocapture noundef writeonly %p_alloc_count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_alloc_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %entry_count, ptr %p_alloc_count, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @mlxsw_sp2_kvdl_ops, !1, !"mlxsw_sp2_kvdl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_kvdl.c", i32 266, i32 32}
!2 = !{ptr @mlxsw_sp2_kvdl_parts_info, !3, !"mlxsw_sp2_kvdl_parts_info", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_kvdl.c", i32 32, i32 46}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__mlxsw_item_offset._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @__mlxsw_item_offset._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3465, i32 1}
!12 = distinct !{null, !11, !"mlxsw_reg_iedr_num_rec_item", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3471, i32 1}
!15 = distinct !{null, !14, !"mlxsw_reg_iedr_rec_type_item", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3478, i32 1}
!18 = distinct !{null, !17, !"mlxsw_reg_iedr_rec_size_item", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3485, i32 1}
!21 = distinct !{null, !20, !"mlxsw_reg_iedr_rec_index_start_item", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3459, i32 1}
!24 = !{ptr @mlxsw_reg_iedr, !23, !"mlxsw_reg_iedr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
