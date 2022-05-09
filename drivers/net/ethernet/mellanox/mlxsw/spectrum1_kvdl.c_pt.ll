; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_kvdl_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_resource_size_params = type { i64, i64, i64, i32 }
%struct.mlxsw_sp1_kvdl_part_info = type { i32, i32, i32, i32, i32 }
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
%struct.mlxsw_sp1_kvdl_part = type { %struct.mlxsw_sp1_kvdl_part_info, [0 x i32] }

@mlxsw_sp1_kvdl_ops = dso_local constant { %struct.mlxsw_sp_kvdl_ops, [36 x i8] } { %struct.mlxsw_sp_kvdl_ops { i32 12, ptr @mlxsw_sp1_kvdl_init, ptr @mlxsw_sp1_kvdl_fini, ptr @mlxsw_sp1_kvdl_alloc, ptr @mlxsw_sp1_kvdl_free, ptr @mlxsw_sp1_kvdl_alloc_size_query, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp1_kvdl_resources_register.size_params = internal global { %struct.devlink_resource_size_params, [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"singles\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"chunks\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"large_chunks\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp1_kvdl_parts_info = internal constant { [3 x %struct.mlxsw_sp1_kvdl_part_info], [36 x i8] } { [3 x %struct.mlxsw_sp1_kvdl_part_info] [%struct.mlxsw_sp1_kvdl_part_info { i32 0, i32 0, i32 16383, i32 1, i32 6 }, %struct.mlxsw_sp1_kvdl_part_info { i32 0, i32 16384, i32 65535, i32 32, i32 7 }, %struct.mlxsw_sp1_kvdl_part_info { i32 0, i32 65536, i32 98303, i32 512, i32 8 }], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"mlxsw_sp1_kvdl_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 377, i32 32 }
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"size_params\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 389, i32 45 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 400, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 411, i32 43 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 422, i32 43 }
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"mlxsw_sp1_kvdl_parts_info\00", align 1
@___asan_gen_.19 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 53, i32 46 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @mlxsw_sp1_kvdl_ops, ptr @mlxsw_sp1_kvdl_resources_register.size_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mlxsw_sp1_kvdl_parts_info], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_kvdl_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_kvdl_resources_register.size_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_kvdl_parts_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_kvdl_init(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %priv) #0 align 64 {
entry:
  %resource_size.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.045.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %part_prev.044.i = phi ptr [ null, %entry ], [ %call9.i.i.i.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.mlxsw_sp1_kvdl_part_info], ptr @mlxsw_sp1_kvdl_parts_info, i32 0, i32 %i.045.i
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call.i.i = call ptr @priv_to_devlink(ptr noundef %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resource_size.i.i) #5
  %4 = ptrtoint ptr %resource_size.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %resource_size.i.i, align 8, !annotation !21
  %resource_id.i.i = getelementptr [3 x %struct.mlxsw_sp1_kvdl_part_info], ptr @mlxsw_sp1_kvdl_parts_info, i32 0, i32 %i.045.i, i32 4
  %5 = ptrtoint ptr %resource_id.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource_id.i.i, align 4
  %conv.i.i = zext i32 %6 to i64
  %call1.i.i = call i32 @devlink_resource_size_get(ptr noundef %call.i.i, i64 noundef %conv.i.i, ptr noundef nonnull %resource_size.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.endthread-pre-split.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %end_index.i.i = getelementptr [3 x %struct.mlxsw_sp1_kvdl_part_info], ptr @mlxsw_sp1_kvdl_parts_info, i32 0, i32 %i.045.i, i32 2
  %7 = ptrtoint ptr %end_index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end_index.i.i, align 4
  %start_index.i.i = getelementptr [3 x %struct.mlxsw_sp1_kvdl_part_info], ptr @mlxsw_sp1_kvdl_parts_info, i32 0, i32 %i.045.i, i32 1
  %9 = ptrtoint ptr %start_index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_index.i.i, align 4
  %sub.i.i = add i32 %8, 1
  %add.i.i = sub i32 %sub.i.i, %10
  %conv2.i.i = zext i32 %add.i.i to i64
  %11 = ptrtoint ptr %resource_size.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv2.i.i, ptr %resource_size.i.i, align 8
  br label %if.end.i.i

if.endthread-pre-split.i.i:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %resource_size.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %.pr.i.i = load i64, ptr %resource_size.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.endthread-pre-split.i.i, %if.then.i.i
  %13 = phi i64 [ %.pr.i.i, %if.endthread-pre-split.i.i ], [ %conv2.i.i, %if.then.i.i ]
  %alloc_size.i.i = getelementptr [3 x %struct.mlxsw_sp1_kvdl_part_info], ptr @mlxsw_sp1_kvdl_parts_info, i32 0, i32 %i.045.i, i32 3
  %14 = ptrtoint ptr %alloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alloc_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %cmp164.i.i.i.i = icmp ult i64 %13, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !22

if.then168.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i.i = trunc i64 %13 to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %15
  br label %if.end8.i.i.i.i

if.else174.i.i.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %13) #8, !srcloc !23
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t35.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t35.i.i, %if.else174.i.i.i.i ]
  %sub6.i.i = add i32 %dividend.addr.0.i.i.off0.i.i, 31
  %17 = lshr i32 %sub6.i.i, 3
  %mul.i.i = and i32 %17, 536870908
  %add7.i.i = add nuw nsw i32 %mul.i.i, 20
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add7.i.i, i32 noundef 3520) #9
  %tobool9.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool9.not.i.i, label %mlxsw_sp1_kvdl_part_init.exit.thread.i, label %if.end12.i.i

mlxsw_sp1_kvdl_part_init.exit.thread.i:           ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resource_size.i.i) #5
  %arrayidx136.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 %i.045.i
  %18 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -12 to ptr), ptr %arrayidx136.i, align 4
  br label %if.then.i

if.end12.i.i:                                     ; preds = %if.end8.i.i.i.i
  %19 = call ptr @memcpy(ptr %call9.i.i.i.i, ptr %arrayidx.i, i32 20)
  br i1 %tobool.not.i.i, label %if.then15.i.i, label %if.end12.i.i.mlxsw_sp1_kvdl_part_init.exit.i_crit_edge

if.end12.i.i.mlxsw_sp1_kvdl_part_init.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_init.exit.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  %20 = ptrtoint ptr %resource_size.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %resource_size.i.i, align 8
  %conv16.i.i = trunc i64 %21 to i32
  %tobool.not.i.i.i = icmp eq ptr %part_prev.044.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = add i32 %conv16.i.i, -1
  br label %mlxsw_sp1_kvdl_part_update.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %end_index2.i.i.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %part_prev.044.i, i32 0, i32 2
  %22 = ptrtoint ptr %end_index2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end_index2.i.i.i, align 8
  %add.i.i.i = add i32 %23, 1
  %start_index.i.i.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %call9.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %start_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i.i.i, ptr %start_index.i.i.i, align 4
  %sub7.i.i.i = add i32 %23, %conv16.i.i
  br label %mlxsw_sp1_kvdl_part_update.exit.i.i

mlxsw_sp1_kvdl_part_update.exit.i.i:              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %sub7.sink.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %sub7.i.i.i, %if.else.i.i.i ]
  %25 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %call9.i.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub7.sink.i.i.i, ptr %25, align 8
  br label %mlxsw_sp1_kvdl_part_init.exit.i

mlxsw_sp1_kvdl_part_init.exit.i:                  ; preds = %mlxsw_sp1_kvdl_part_update.exit.i.i, %if.end12.i.i.mlxsw_sp1_kvdl_part_init.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resource_size.i.i) #5
  %arrayidx1.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 %i.045.i
  %27 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i.i.i, ptr %arrayidx1.i, align 4
  %cmp.i.i = icmp ugt ptr %call9.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlxsw_sp1_kvdl_part_init.exit.i.if.then.i_crit_edge, label %if.end.i

mlxsw_sp1_kvdl_part_init.exit.i.if.then.i_crit_edge: ; preds = %mlxsw_sp1_kvdl_part_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %mlxsw_sp1_kvdl_part_init.exit.i.if.then.i_crit_edge, %mlxsw_sp1_kvdl_part_init.exit.thread.i
  %retval.0.i38.i = phi ptr [ inttoptr (i32 -12 to ptr), %mlxsw_sp1_kvdl_part_init.exit.thread.i ], [ %call9.i.i.i.i, %mlxsw_sp1_kvdl_part_init.exit.i.if.then.i_crit_edge ]
  %28 = ptrtoint ptr %retval.0.i38.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.045.i)
  %cmp1147.not.i = icmp eq i32 %i.045.i, 0
  br i1 %cmp1147.not.i, label %if.then.i.cleanup_crit_edge, label %for.body12.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %mlxsw_sp1_kvdl_part_init.exit.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %if.end, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body12.i:                                     ; preds = %if.then.i
  %i.148.i = add nsw i32 %i.045.i, -1
  %arrayidx14.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 %i.148.i
  %29 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx14.i, align 4
  call void @kfree(ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.045.i)
  %cmp11.i = icmp ugt i32 %i.045.i, 1
  br i1 %cmp11.i, label %for.body12.i.1, label %for.body12.i.cleanup_crit_edge

for.body12.i.cleanup_crit_edge:                   ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body12.i.1:                                   ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  %i.148.i.1 = add nsw i32 %i.045.i, -2
  %arrayidx14.i.1 = getelementptr [3 x ptr], ptr %priv, i32 0, i32 %i.148.i.1
  %31 = ptrtoint ptr %arrayidx14.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx14.i.1, align 4
  call void @kfree(ptr noundef %32) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @devlink_resource_occ_get_register(ptr noundef %call, i64 noundef 3, ptr noundef nonnull @mlxsw_sp1_kvdl_occ_get, ptr noundef %priv) #5
  call void @devlink_resource_occ_get_register(ptr noundef %call, i64 noundef 6, ptr noundef nonnull @mlxsw_sp1_kvdl_single_occ_get, ptr noundef %priv) #5
  call void @devlink_resource_occ_get_register(ptr noundef %call, i64 noundef 7, ptr noundef nonnull @mlxsw_sp1_kvdl_chunks_occ_get, ptr noundef %priv) #5
  call void @devlink_resource_occ_get_register(ptr noundef %call, i64 noundef 8, ptr noundef nonnull @mlxsw_sp1_kvdl_large_chunks_occ_get, ptr noundef %priv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body12.i.1, %for.body12.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %28, %if.then.i.cleanup_crit_edge ], [ %28, %for.body12.i.1 ], [ %28, %for.body12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_kvdl_fini(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #5
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call, i64 noundef 8) #5
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call, i64 noundef 7) #5
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call, i64 noundef 6) #5
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call, i64 noundef 3) #5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %3) #5
  %arrayidx.1.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %5) #5
  %arrayidx.2.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @kfree(ptr noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_kvdl_alloc(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %priv, i32 noundef %type, i32 noundef %entry_count, ptr nocapture noundef writeonly %p_entry_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %alloc_size1.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %alloc_size1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc_size1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %entry_count)
  %cmp2.not.i = icmp ult i32 %3, %entry_count
  %arrayidx.118.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.118.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.118.i, align 4
  %alloc_size1.119.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %alloc_size1.119.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_size1.119.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %entry_count)
  %cmp2.not.120.i = icmp ult i32 %7, %entry_count
  br i1 %cmp2.not.i, label %for.inc.thread.i, label %for.inc.i

for.inc.i:                                        ; preds = %entry
  br i1 %cmp2.not.120.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

for.inc.thread.i:                                 ; preds = %entry
  br i1 %cmp2.not.120.i, label %for.inc.1.thread.i, label %for.inc.thread.i.if.then.1.i_crit_edge

for.inc.thread.i.if.then.1.i_crit_edge:           ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %tobool.not.1.i = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp7.not.1.i = icmp ugt i32 %7, %3
  %or.cond = select i1 %tobool.not.1.i, i1 %cmp7.not.1.i, i1 false
  br i1 %or.cond, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.if.then.1.i_crit_edge

land.lhs.true.1.i.if.then.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1.i

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %land.lhs.true.1.i.if.then.1.i_crit_edge, %for.inc.thread.i.if.then.1.i_crit_edge
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %min_part.1.1.i = phi ptr [ %5, %if.then.1.i ], [ %1, %for.inc.i.for.inc.1.i_crit_edge ], [ %1, %land.lhs.true.1.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  %alloc_size1.2.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %alloc_size1.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_size1.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %entry_count)
  %cmp2.not.2.i = icmp ult i32 %11, %entry_count
  br i1 %cmp2.not.2.i, label %for.inc.1.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_alloc_size_part.exit

for.inc.1.thread.i:                               ; preds = %for.inc.thread.i
  %arrayidx.225.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.225.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.225.i, align 4
  %alloc_size1.226.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %alloc_size1.226.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alloc_size1.226.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %entry_count)
  %cmp2.not.227.i = icmp ult i32 %15, %entry_count
  br i1 %cmp2.not.227.i, label %for.inc.1.thread.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, label %for.inc.1.thread.i.if.then.2.i_crit_edge

for.inc.1.thread.i.if.then.2.i_crit_edge:         ; preds = %for.inc.1.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2.i

for.inc.1.thread.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge: ; preds = %for.inc.1.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_alloc_size_part.exit

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %tobool.not.2.i = icmp eq ptr %min_part.1.1.i, null
  br i1 %tobool.not.2.i, label %land.lhs.true.2.i.if.then.2.i_crit_edge, label %lor.lhs.false.2.i

land.lhs.true.2.i.if.then.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2.i

lor.lhs.false.2.i:                                ; preds = %land.lhs.true.2.i
  %alloc_size6.2.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %min_part.1.1.i, i32 0, i32 3
  %16 = ptrtoint ptr %alloc_size6.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alloc_size6.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %17)
  %cmp7.not.2.i = icmp ugt i32 %11, %17
  br i1 %cmp7.not.2.i, label %lor.lhs.false.2.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, label %lor.lhs.false.2.i.if.then.2.i_crit_edge

lor.lhs.false.2.i.if.then.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2.i

lor.lhs.false.2.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge: ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_alloc_size_part.exit

if.then.2.i:                                      ; preds = %lor.lhs.false.2.i.if.then.2.i_crit_edge, %land.lhs.true.2.i.if.then.2.i_crit_edge, %for.inc.1.thread.i.if.then.2.i_crit_edge
  %18 = phi ptr [ %9, %lor.lhs.false.2.i.if.then.2.i_crit_edge ], [ %9, %land.lhs.true.2.i.if.then.2.i_crit_edge ], [ %13, %for.inc.1.thread.i.if.then.2.i_crit_edge ]
  br label %mlxsw_sp1_kvdl_alloc_size_part.exit

mlxsw_sp1_kvdl_alloc_size_part.exit:              ; preds = %if.then.2.i, %lor.lhs.false.2.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, %for.inc.1.thread.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, %for.inc.1.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge
  %min_part.1.2.i = phi ptr [ %18, %if.then.2.i ], [ %min_part.1.1.i, %lor.lhs.false.2.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge ], [ %min_part.1.1.i, %for.inc.1.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge ], [ null, %for.inc.1.thread.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge ]
  %tobool8.not.i = icmp eq ptr %min_part.1.2.i, null
  %spec.select.i = select i1 %tobool8.not.i, ptr inttoptr (i32 -105 to ptr), ptr %min_part.1.2.i
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %mlxsw_sp1_kvdl_alloc_size_part.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %spec.select.i to i32
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp1_kvdl_alloc_size_part.exit
  %end_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %spec.select.i, i32 0, i32 2
  %20 = ptrtoint ptr %end_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end_index.i, align 4
  %start_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %spec.select.i, i32 0, i32 1
  %22 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start_index.i, align 4
  %sub.i = add i32 %21, 1
  %add.i = sub i32 %sub.i, %23
  %alloc_size.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %spec.select.i, i32 0, i32 3
  %24 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alloc_size.i, align 4
  %div.i = udiv i32 %add.i, %25
  %usage.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, ptr %spec.select.i, i32 0, i32 1
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %usage.i, i32 noundef %div.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %div.i)
  %cmp.i7 = icmp eq i32 %call.i, %div.i
  br i1 %cmp.i7, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %usage.i, i32 %div2.i.i
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %27, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %28 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start_index.i, align 4
  %30 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %alloc_size.i, align 4
  %mul.i.i = mul i32 %31, %call.i
  %add.i.i = add i32 %mul.i.i, %29
  %32 = ptrtoint ptr %p_entry_index to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i.i, ptr %p_entry_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %19, %if.then ], [ 0, %if.end.i ], [ -105, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_kvdl_free(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %priv, i32 noundef %type, i32 noundef %entry_count, i32 noundef %entry_index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %start_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %entry_index)
  %cmp1.not.i = icmp ugt i32 %3, %entry_index
  br i1 %cmp1.not.i, label %entry.for.inc.i_crit_edge, label %land.lhs.true.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %end_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %end_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %entry_index)
  %cmp3.not.i = icmp ult i32 %5, %entry_index
  br i1 %cmp3.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge

land.lhs.true.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_index_part.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  %start_index.1.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %start_index.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_index.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %entry_index)
  %cmp1.not.1.i = icmp ugt i32 %9, %entry_index
  br i1 %cmp1.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %end_index.1.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %end_index.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_index.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %entry_index)
  %cmp3.not.1.i = icmp ult i32 %11, %entry_index
  br i1 %cmp3.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge

land.lhs.true.1.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_index_part.exit

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2.i, align 4
  %start_index.2.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %start_index.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_index.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %entry_index)
  %cmp1.not.2.i = icmp ugt i32 %15, %entry_index
  br i1 %cmp1.not.2.i, label %for.inc.1.i.cleanup_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %end_index.2.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %end_index.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end_index.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %entry_index)
  %cmp3.not.2.i = icmp ult i32 %17, %entry_index
  br i1 %cmp3.not.2.i, label %land.lhs.true.2.i.cleanup_crit_edge, label %land.lhs.true.2.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge

land.lhs.true.2.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_index_part.exit

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mlxsw_sp1_kvdl_index_part.exit:                   ; preds = %land.lhs.true.2.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge, %land.lhs.true.1.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge, %land.lhs.true.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %land.lhs.true.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge ], [ %7, %land.lhs.true.1.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge ], [ %13, %land.lhs.true.2.i.mlxsw_sp1_kvdl_index_part.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlxsw_sp1_kvdl_index_part.exit.cleanup_crit_edge, label %if.end

mlxsw_sp1_kvdl_index_part.exit.cleanup_crit_edge: ; preds = %mlxsw_sp1_kvdl_index_part.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp1_kvdl_index_part.exit
  call void @__sanitizer_cov_trace_pc() #7
  %start_index.i.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %retval.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %start_index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %start_index.i.i, align 4
  %sub.i.i = sub i32 %entry_index, %19
  %alloc_size.i.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %retval.0.i, i32 0, i32 3
  %20 = ptrtoint ptr %alloc_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alloc_size.i.i, align 4
  %div.i.i = udiv i32 %sub.i.i, %21
  %usage.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, ptr %retval.0.i, i32 0, i32 1
  %rem.i.i = and i32 %div.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %div.i.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %usage.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %23, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlxsw_sp1_kvdl_index_part.exit.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %for.inc.1.i.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_kvdl_alloc_size_query(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %priv, i32 noundef %type, i32 noundef %entry_count, ptr nocapture noundef writeonly %p_alloc_size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %alloc_size1.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %alloc_size1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alloc_size1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %entry_count)
  %cmp2.not.i = icmp ult i32 %3, %entry_count
  %arrayidx.118.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.118.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.118.i, align 4
  %alloc_size1.119.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %alloc_size1.119.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_size1.119.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %entry_count)
  %cmp2.not.120.i = icmp ult i32 %7, %entry_count
  br i1 %cmp2.not.i, label %for.inc.thread.i, label %for.inc.i

for.inc.i:                                        ; preds = %entry
  br i1 %cmp2.not.120.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

for.inc.thread.i:                                 ; preds = %entry
  br i1 %cmp2.not.120.i, label %for.inc.1.thread.i, label %for.inc.thread.i.if.then.1.i_crit_edge

for.inc.thread.i.if.then.1.i_crit_edge:           ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %tobool.not.1.i = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp7.not.1.i = icmp ugt i32 %7, %3
  %or.cond = select i1 %tobool.not.1.i, i1 %cmp7.not.1.i, i1 false
  br i1 %or.cond, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.if.then.1.i_crit_edge

land.lhs.true.1.i.if.then.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.1.i

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %land.lhs.true.1.i.if.then.1.i_crit_edge, %for.inc.thread.i.if.then.1.i_crit_edge
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %min_part.1.1.i = phi ptr [ %5, %if.then.1.i ], [ %1, %for.inc.i.for.inc.1.i_crit_edge ], [ %1, %land.lhs.true.1.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  %alloc_size1.2.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %alloc_size1.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_size1.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %entry_count)
  %cmp2.not.2.i = icmp ult i32 %11, %entry_count
  br i1 %cmp2.not.2.i, label %for.inc.1.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_alloc_size_part.exit

for.inc.1.thread.i:                               ; preds = %for.inc.thread.i
  %arrayidx.225.i = getelementptr [3 x ptr], ptr %priv, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.225.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.225.i, align 4
  %alloc_size1.226.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %alloc_size1.226.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alloc_size1.226.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %entry_count)
  %cmp2.not.227.i = icmp ult i32 %15, %entry_count
  br i1 %cmp2.not.227.i, label %for.inc.1.thread.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, label %for.inc.1.thread.i.if.then.2.i_crit_edge

for.inc.1.thread.i.if.then.2.i_crit_edge:         ; preds = %for.inc.1.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2.i

for.inc.1.thread.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge: ; preds = %for.inc.1.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_alloc_size_part.exit

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %tobool.not.2.i = icmp eq ptr %min_part.1.1.i, null
  br i1 %tobool.not.2.i, label %land.lhs.true.2.i.if.then.2.i_crit_edge, label %lor.lhs.false.2.i

land.lhs.true.2.i.if.then.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2.i

lor.lhs.false.2.i:                                ; preds = %land.lhs.true.2.i
  %alloc_size6.2.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %min_part.1.1.i, i32 0, i32 3
  %16 = ptrtoint ptr %alloc_size6.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alloc_size6.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %17)
  %cmp7.not.2.i = icmp ugt i32 %11, %17
  br i1 %cmp7.not.2.i, label %lor.lhs.false.2.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, label %lor.lhs.false.2.i.if.then.2.i_crit_edge

lor.lhs.false.2.i.if.then.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.2.i

lor.lhs.false.2.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge: ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_alloc_size_part.exit

if.then.2.i:                                      ; preds = %lor.lhs.false.2.i.if.then.2.i_crit_edge, %land.lhs.true.2.i.if.then.2.i_crit_edge, %for.inc.1.thread.i.if.then.2.i_crit_edge
  %18 = phi ptr [ %9, %lor.lhs.false.2.i.if.then.2.i_crit_edge ], [ %9, %land.lhs.true.2.i.if.then.2.i_crit_edge ], [ %13, %for.inc.1.thread.i.if.then.2.i_crit_edge ]
  br label %mlxsw_sp1_kvdl_alloc_size_part.exit

mlxsw_sp1_kvdl_alloc_size_part.exit:              ; preds = %if.then.2.i, %lor.lhs.false.2.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, %for.inc.1.thread.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge, %for.inc.1.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge
  %min_part.1.2.i = phi ptr [ %18, %if.then.2.i ], [ %min_part.1.1.i, %lor.lhs.false.2.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge ], [ %min_part.1.1.i, %for.inc.1.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge ], [ null, %for.inc.1.thread.i.mlxsw_sp1_kvdl_alloc_size_part.exit_crit_edge ]
  %tobool8.not.i = icmp eq ptr %min_part.1.2.i, null
  %spec.select.i = select i1 %tobool8.not.i, ptr inttoptr (i32 -105 to ptr), ptr %min_part.1.2.i
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %mlxsw_sp1_kvdl_alloc_size_part.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %spec.select.i to i32
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp1_kvdl_alloc_size_part.exit
  call void @__sanitizer_cov_trace_pc() #7
  %alloc_size = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %spec.select.i, i32 0, i32 3
  %20 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alloc_size, align 4
  %22 = ptrtoint ptr %p_alloc_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %p_alloc_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %19, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp1_kvdl_resources_register(ptr noundef %mlxsw_core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %mlxsw_core) #5
  %call1 = tail call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 0) #5
  %call2 = tail call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 1) #5
  %call3 = tail call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 2) #5
  %0 = add i64 %call2, %call3
  %sub4 = sub i64 %call1, %0
  %conv5 = and i64 %sub4, 4294967295
  store i64 0, ptr @mlxsw_sp1_kvdl_resources_register.size_params, align 8
  store i64 %conv5, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 1), align 8
  store i64 1, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 3), align 8
  %call6 = tail call i32 @devlink_resource_register(ptr noundef %call, ptr noundef nonnull @.str, i64 noundef 16384, i64 noundef 6, i64 noundef 3, ptr noundef nonnull @mlxsw_sp1_kvdl_resources_register.size_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  store i64 0, ptr @mlxsw_sp1_kvdl_resources_register.size_params, align 8
  store i64 %conv5, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 1), align 8
  store i64 32, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 3), align 8
  %call8 = tail call i32 @devlink_resource_register(ptr noundef %call, ptr noundef nonnull @.str.1, i64 noundef 49152, i64 noundef 7, i64 noundef 3, ptr noundef nonnull @mlxsw_sp1_kvdl_resources_register.size_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i64 0, ptr @mlxsw_sp1_kvdl_resources_register.size_params, align 8
  store i64 %conv5, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 1), align 8
  store i64 512, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i32 3), align 8
  %call13 = tail call i32 @devlink_resource_register(ptr noundef %call, ptr noundef nonnull @.str.2, i64 noundef 32768, i64 noundef 8, i64 noundef 3, ptr noundef nonnull @mlxsw_sp1_kvdl_resources_register.size_params) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ %call6, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_resource_register(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_register(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp1_kvdl_occ_get(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %end_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %end_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end_index.i, align 4
  %start_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_index.i, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %alloc_size.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_size.i, align 4
  %div.i = udiv i32 %add.i, %7
  %usage.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, ptr %1, i32 0, i32 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef %usage.i, i32 noundef %div.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %div.i)
  %cmp12.i = icmp ult i32 %call11.i, %div.i
  br i1 %cmp12.i, label %entry.while.body.i_crit_edge, label %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge

entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call14.i = phi i32 [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call11.i, %entry.while.body.i_crit_edge ]
  %occ.013.i = phi i64 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alloc_size.i, align 4
  %conv.i = zext i32 %9 to i64
  %add4.i = add i64 %occ.013.i, %conv.i
  %add2.i = add nuw i32 %call14.i, 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %usage.i, i32 noundef %div.i, i32 noundef %add2.i) #5
  %cmp.i = icmp ult i32 %call.i, %div.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge

while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

mlxsw_sp1_kvdl_part_occ.exit:                     ; preds = %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge, %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge
  %occ.0.lcssa.i = phi i64 [ 0, %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge ], [ %add4.i, %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge ]
  %arrayidx.1 = getelementptr [3 x ptr], ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %end_index.i.1 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %end_index.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end_index.i.1, align 4
  %start_index.i.1 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %start_index.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_index.i.1, align 4
  %sub.i.1 = add i32 %13, 1
  %add.i.1 = sub i32 %sub.i.1, %15
  %alloc_size.i.1 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %alloc_size.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alloc_size.i.1, align 4
  %div.i.1 = udiv i32 %add.i.1, %17
  %usage.i.1 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, ptr %11, i32 0, i32 1
  %call11.i.1 = tail call i32 @_find_next_bit_be(ptr noundef %usage.i.1, i32 noundef %div.i.1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i.1, i32 %div.i.1)
  %cmp12.i.1 = icmp ult i32 %call11.i.1, %div.i.1
  br i1 %cmp12.i.1, label %mlxsw_sp1_kvdl_part_occ.exit.while.body.i.1_crit_edge, label %mlxsw_sp1_kvdl_part_occ.exit.mlxsw_sp1_kvdl_part_occ.exit.1_crit_edge

mlxsw_sp1_kvdl_part_occ.exit.mlxsw_sp1_kvdl_part_occ.exit.1_crit_edge: ; preds = %mlxsw_sp1_kvdl_part_occ.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit.1

mlxsw_sp1_kvdl_part_occ.exit.while.body.i.1_crit_edge: ; preds = %mlxsw_sp1_kvdl_part_occ.exit
  br label %while.body.i.1

while.body.i.1:                                   ; preds = %while.body.i.1.while.body.i.1_crit_edge, %mlxsw_sp1_kvdl_part_occ.exit.while.body.i.1_crit_edge
  %call14.i.1 = phi i32 [ %call.i.1, %while.body.i.1.while.body.i.1_crit_edge ], [ %call11.i.1, %mlxsw_sp1_kvdl_part_occ.exit.while.body.i.1_crit_edge ]
  %occ.013.i.1 = phi i64 [ %add4.i.1, %while.body.i.1.while.body.i.1_crit_edge ], [ 0, %mlxsw_sp1_kvdl_part_occ.exit.while.body.i.1_crit_edge ]
  %18 = ptrtoint ptr %alloc_size.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alloc_size.i.1, align 4
  %conv.i.1 = zext i32 %19 to i64
  %add4.i.1 = add i64 %occ.013.i.1, %conv.i.1
  %add2.i.1 = add nuw i32 %call14.i.1, 1
  %call.i.1 = tail call i32 @_find_next_bit_be(ptr noundef %usage.i.1, i32 noundef %div.i.1, i32 noundef %add2.i.1) #5
  %cmp.i.1 = icmp ult i32 %call.i.1, %div.i.1
  br i1 %cmp.i.1, label %while.body.i.1.while.body.i.1_crit_edge, label %while.body.i.1.mlxsw_sp1_kvdl_part_occ.exit.1_crit_edge

while.body.i.1.mlxsw_sp1_kvdl_part_occ.exit.1_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit.1

while.body.i.1.while.body.i.1_crit_edge:          ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.1

mlxsw_sp1_kvdl_part_occ.exit.1:                   ; preds = %while.body.i.1.mlxsw_sp1_kvdl_part_occ.exit.1_crit_edge, %mlxsw_sp1_kvdl_part_occ.exit.mlxsw_sp1_kvdl_part_occ.exit.1_crit_edge
  %occ.0.lcssa.i.1 = phi i64 [ 0, %mlxsw_sp1_kvdl_part_occ.exit.mlxsw_sp1_kvdl_part_occ.exit.1_crit_edge ], [ %add4.i.1, %while.body.i.1.mlxsw_sp1_kvdl_part_occ.exit.1_crit_edge ]
  %arrayidx.2 = getelementptr [3 x ptr], ptr %priv, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %end_index.i.2 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %end_index.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end_index.i.2, align 4
  %start_index.i.2 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %start_index.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %start_index.i.2, align 4
  %sub.i.2 = add i32 %23, 1
  %add.i.2 = sub i32 %sub.i.2, %25
  %alloc_size.i.2 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %21, i32 0, i32 3
  %26 = ptrtoint ptr %alloc_size.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %alloc_size.i.2, align 4
  %div.i.2 = udiv i32 %add.i.2, %27
  %usage.i.2 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, ptr %21, i32 0, i32 1
  %call11.i.2 = tail call i32 @_find_next_bit_be(ptr noundef %usage.i.2, i32 noundef %div.i.2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i.2, i32 %div.i.2)
  %cmp12.i.2 = icmp ult i32 %call11.i.2, %div.i.2
  br i1 %cmp12.i.2, label %mlxsw_sp1_kvdl_part_occ.exit.1.while.body.i.2_crit_edge, label %mlxsw_sp1_kvdl_part_occ.exit.1.mlxsw_sp1_kvdl_part_occ.exit.2_crit_edge

mlxsw_sp1_kvdl_part_occ.exit.1.mlxsw_sp1_kvdl_part_occ.exit.2_crit_edge: ; preds = %mlxsw_sp1_kvdl_part_occ.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit.2

mlxsw_sp1_kvdl_part_occ.exit.1.while.body.i.2_crit_edge: ; preds = %mlxsw_sp1_kvdl_part_occ.exit.1
  br label %while.body.i.2

while.body.i.2:                                   ; preds = %while.body.i.2.while.body.i.2_crit_edge, %mlxsw_sp1_kvdl_part_occ.exit.1.while.body.i.2_crit_edge
  %call14.i.2 = phi i32 [ %call.i.2, %while.body.i.2.while.body.i.2_crit_edge ], [ %call11.i.2, %mlxsw_sp1_kvdl_part_occ.exit.1.while.body.i.2_crit_edge ]
  %occ.013.i.2 = phi i64 [ %add4.i.2, %while.body.i.2.while.body.i.2_crit_edge ], [ 0, %mlxsw_sp1_kvdl_part_occ.exit.1.while.body.i.2_crit_edge ]
  %28 = ptrtoint ptr %alloc_size.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %alloc_size.i.2, align 4
  %conv.i.2 = zext i32 %29 to i64
  %add4.i.2 = add i64 %occ.013.i.2, %conv.i.2
  %add2.i.2 = add nuw i32 %call14.i.2, 1
  %call.i.2 = tail call i32 @_find_next_bit_be(ptr noundef %usage.i.2, i32 noundef %div.i.2, i32 noundef %add2.i.2) #5
  %cmp.i.2 = icmp ult i32 %call.i.2, %div.i.2
  br i1 %cmp.i.2, label %while.body.i.2.while.body.i.2_crit_edge, label %while.body.i.2.mlxsw_sp1_kvdl_part_occ.exit.2_crit_edge

while.body.i.2.mlxsw_sp1_kvdl_part_occ.exit.2_crit_edge: ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit.2

while.body.i.2.while.body.i.2_crit_edge:          ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.2

mlxsw_sp1_kvdl_part_occ.exit.2:                   ; preds = %while.body.i.2.mlxsw_sp1_kvdl_part_occ.exit.2_crit_edge, %mlxsw_sp1_kvdl_part_occ.exit.1.mlxsw_sp1_kvdl_part_occ.exit.2_crit_edge
  %occ.0.lcssa.i.2 = phi i64 [ 0, %mlxsw_sp1_kvdl_part_occ.exit.1.mlxsw_sp1_kvdl_part_occ.exit.2_crit_edge ], [ %add4.i.2, %while.body.i.2.mlxsw_sp1_kvdl_part_occ.exit.2_crit_edge ]
  %add.1 = add i64 %occ.0.lcssa.i.1, %occ.0.lcssa.i
  %add.2 = add i64 %occ.0.lcssa.i.2, %add.1
  ret i64 %add.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp1_kvdl_single_occ_get(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %end_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %end_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end_index.i, align 4
  %start_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_index.i, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %alloc_size.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_size.i, align 4
  %div.i = udiv i32 %add.i, %7
  %usage.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, ptr %1, i32 0, i32 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef %usage.i, i32 noundef %div.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %div.i)
  %cmp12.i = icmp ult i32 %call11.i, %div.i
  br i1 %cmp12.i, label %entry.while.body.i_crit_edge, label %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge

entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call14.i = phi i32 [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call11.i, %entry.while.body.i_crit_edge ]
  %occ.013.i = phi i64 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alloc_size.i, align 4
  %conv.i = zext i32 %9 to i64
  %add4.i = add i64 %occ.013.i, %conv.i
  %add2.i = add nuw i32 %call14.i, 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %usage.i, i32 noundef %div.i, i32 noundef %add2.i) #5
  %cmp.i = icmp ult i32 %call.i, %div.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge

while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

mlxsw_sp1_kvdl_part_occ.exit:                     ; preds = %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge, %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge
  %occ.0.lcssa.i = phi i64 [ 0, %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge ], [ %add4.i, %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge ]
  ret i64 %occ.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp1_kvdl_chunks_occ_get(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %end_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %end_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end_index.i, align 4
  %start_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_index.i, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %alloc_size.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_size.i, align 4
  %div.i = udiv i32 %add.i, %7
  %usage.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, ptr %1, i32 0, i32 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef %usage.i, i32 noundef %div.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %div.i)
  %cmp12.i = icmp ult i32 %call11.i, %div.i
  br i1 %cmp12.i, label %entry.while.body.i_crit_edge, label %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge

entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call14.i = phi i32 [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call11.i, %entry.while.body.i_crit_edge ]
  %occ.013.i = phi i64 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alloc_size.i, align 4
  %conv.i = zext i32 %9 to i64
  %add4.i = add i64 %occ.013.i, %conv.i
  %add2.i = add nuw i32 %call14.i, 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %usage.i, i32 noundef %div.i, i32 noundef %add2.i) #5
  %cmp.i = icmp ult i32 %call.i, %div.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge

while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

mlxsw_sp1_kvdl_part_occ.exit:                     ; preds = %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge, %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge
  %occ.0.lcssa.i = phi i64 [ 0, %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge ], [ %add4.i, %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge ]
  ret i64 %occ.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp1_kvdl_large_chunks_occ_get(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %end_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %end_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end_index.i, align 4
  %start_index.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_index.i, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %alloc_size.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alloc_size.i, align 4
  %div.i = udiv i32 %add.i, %7
  %usage.i = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, ptr %1, i32 0, i32 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef %usage.i, i32 noundef %div.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %div.i)
  %cmp12.i = icmp ult i32 %call11.i, %div.i
  br i1 %cmp12.i, label %entry.while.body.i_crit_edge, label %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge

entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call14.i = phi i32 [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call11.i, %entry.while.body.i_crit_edge ]
  %occ.013.i = phi i64 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alloc_size.i, align 4
  %conv.i = zext i32 %9 to i64
  %add4.i = add i64 %occ.013.i, %conv.i
  %add2.i = add nuw i32 %call14.i, 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %usage.i, i32 noundef %div.i, i32 noundef %add2.i) #5
  %cmp.i = icmp ult i32 %call.i, %div.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge

while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp1_kvdl_part_occ.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

mlxsw_sp1_kvdl_part_occ.exit:                     ; preds = %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge, %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge
  %occ.0.lcssa.i = phi i64 [ 0, %entry.mlxsw_sp1_kvdl_part_occ.exit_crit_edge ], [ %add4.i, %while.body.i.mlxsw_sp1_kvdl_part_occ.exit_crit_edge ]
  ret i64 %occ.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_resource_size_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_unregister(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @mlxsw_sp1_kvdl_ops, !1, !"mlxsw_sp1_kvdl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c", i32 377, i32 32}
!2 = !{ptr @mlxsw_sp1_kvdl_resources_register.size_params, !3, !"size_params", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c", i32 389, i32 45}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c", i32 400, i32 43}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c", i32 411, i32 43}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c", i32 422, i32 43}
!10 = !{ptr @mlxsw_sp1_kvdl_parts_info, !11, !"mlxsw_sp1_kvdl_parts_info", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_kvdl.c", i32 53, i32 46}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148610555, i64 2148610835, i64 2148611169, i64 2148611503}
