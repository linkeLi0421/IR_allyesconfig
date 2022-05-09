; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/basics/vector.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vector = type { ptr, i32, i32, i32, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dal_vector_construct = private unnamed_addr constant [21 x i8] c"dal_vector_construct\00", align 1
@__func__.dal_vector_presized_create = private unnamed_addr constant [27 x i8] c"dal_vector_presized_create\00", align 1
@__func__.dal_vector_create = private unnamed_addr constant [18 x i8] c"dal_vector_create\00", align 1
@__func__.dal_vector_set_at_index = private unnamed_addr constant [24 x i8] c"dal_vector_set_at_index\00", align 1
@__func__.dal_vector_clone = private unnamed_addr constant [17 x i8] c"dal_vector_clone\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.dal_vector_presized_costruct = private unnamed_addr constant [29 x i8] c"dal_vector_presized_costruct\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 41, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_vector_construct(ptr nocapture noundef writeonly %vector, ptr noundef %ctx, i32 noundef %capacity, i32 noundef %struct_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %struct_size)
  %tobool.not = icmp eq i32 %struct_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capacity)
  %tobool1.not = icmp eq i32 %capacity, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_vector_construct, i32 noundef 41) #9
  tail call void @kgdb_breakpoint() #9
  br label %return

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %capacity, i32 %struct_size) #9
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.end.return_crit_edge, label %if.end7.i.i, !prof !22

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end7.i.i:                                      ; preds = %if.end
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #12
  %4 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %vector, align 4
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %if.end7.i.i.return_crit_edge, label %if.end5

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %capacity6 = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 3
  %5 = ptrtoint ptr %capacity6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %capacity, ptr %capacity6, align 4
  %struct_size7 = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %6 = ptrtoint ptr %struct_size7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %struct_size, ptr %struct_size7, align 4
  %count = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count, align 4
  %ctx8 = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 4
  %8 = ptrtoint ptr %ctx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctx, ptr %ctx8, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end7.i.i.return_crit_edge, %if.end.return_crit_edge, %do.body
  %retval.0 = phi i1 [ true, %if.end5 ], [ false, %do.body ], [ false, %if.end7.i.i.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_vector_presized_create(ptr nocapture readnone %ctx, i32 noundef %size, ptr noundef readonly %initial_value, i32 noundef %struct_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %struct_size)
  %tobool.not.i = icmp eq i32 %struct_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool1.not.i = icmp eq i32 %size, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_vector_presized_costruct, i32 noundef 68) #9
  tail call void @kgdb_breakpoint() #9
  br label %do.body

if.end.i:                                         ; preds = %if.end
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 %struct_size) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end.i.do.body_crit_edge, label %if.end7.i.i.i, !prof !22

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end7.i.i.i:                                    ; preds = %if.end.i
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i.i, ptr %call7.i.i, align 8
  %cmp.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i, label %if.end7.i.i.i.do.body_crit_edge, label %if.end5.i

if.end7.i.i.i.do.body_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.i:                                        ; preds = %if.end7.i.i.i
  %cmp6.not.not.i = icmp eq ptr %initial_value, null
  br i1 %cmp6.not.not.i, label %if.end5.i.dal_vector_presized_costruct.exit_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.dal_vector_presized_costruct.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dal_vector_presized_costruct.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %mul.i = mul i32 %i.07.i, %struct_size
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %8 = call ptr @memmove(ptr %add.ptr.i, ptr %initial_value, i32 %struct_size)
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %size
  br i1 %exitcond.not.i, label %for.body.i.dal_vector_presized_costruct.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.dal_vector_presized_costruct.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dal_vector_presized_costruct.exit

dal_vector_presized_costruct.exit:                ; preds = %for.body.i.dal_vector_presized_costruct.exit_crit_edge, %if.end5.i.dal_vector_presized_costruct.exit_crit_edge
  %capacity.i = getelementptr inbounds %struct.vector, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %capacity.i, align 4
  %struct_size11.i = getelementptr inbounds %struct.vector, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %struct_size11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %struct_size, ptr %struct_size11.i, align 4
  %count12.i = getelementptr inbounds %struct.vector, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %count12.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %count12.i, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end7.i.i.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %do.body.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_vector_presized_create, i32 noundef 109) #9
  tail call void @kgdb_breakpoint() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dal_vector_presized_costruct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dal_vector_presized_costruct.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_vector_create(ptr noundef %ctx, i32 noundef %capacity, i32 noundef %struct_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %struct_size)
  %tobool.not.i = icmp eq i32 %struct_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capacity)
  %tobool1.not.i = icmp eq i32 %capacity, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_vector_construct, i32 noundef 41) #9
  tail call void @kgdb_breakpoint() #9
  br label %do.body

if.end.i:                                         ; preds = %if.end
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %capacity, i32 %struct_size) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end.i.do.body_crit_edge, label %if.end7.i.i.i, !prof !22

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end7.i.i.i:                                    ; preds = %if.end.i
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i.i, ptr %call7.i.i, align 8
  %cmp.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i, label %if.end7.i.i.i.do.body_crit_edge, label %dal_vector_construct.exit

if.end7.i.i.i.do.body_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

dal_vector_construct.exit:                        ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %capacity6.i = getelementptr inbounds %struct.vector, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %capacity6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %capacity, ptr %capacity6.i, align 4
  %struct_size7.i = getelementptr inbounds %struct.vector, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %struct_size7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %struct_size, ptr %struct_size7.i, align 4
  %count.i = getelementptr inbounds %struct.vector, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %count.i, align 8
  %ctx8.i = getelementptr inbounds %struct.vector, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ctx8.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ctx, ptr %ctx8.i, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end7.i.i.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %do.body.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_vector_create, i32 noundef 127) #9
  tail call void @kgdb_breakpoint() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dal_vector_construct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dal_vector_construct.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_vector_destruct(ptr nocapture noundef %vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vector, align 4
  tail call void @kfree(ptr noundef %1) #9
  %count = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count, align 4
  %capacity = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 3
  %3 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %capacity, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_vector_destroy(ptr noundef %vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %vector, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vector, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #9
  %count.i = getelementptr inbounds %struct.vector, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %count.i, align 4
  %capacity.i = getelementptr inbounds %struct.vector, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %capacity.i, align 4
  %6 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vector, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vector, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_vector_get_count(ptr nocapture noundef readonly %vector) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dal_vector_at_index(ptr nocapture noundef readonly %vector, i32 noundef %index) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vector, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %index)
  %cmp1.not = icmp ugt i32 %3, %index
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %struct_size = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %4 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %struct_size, align 4
  %mul = mul i32 %5, %index
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %lor.lhs.false.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dal_vector_remove_at_index(ptr nocapture noundef %vector, i32 noundef %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp.not = icmp ugt i32 %1, %index
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %index)
  %cmp2.not = icmp eq i32 %sub, %index
  br i1 %cmp2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vector, align 4
  %struct_size = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %4 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %struct_size, align 4
  %mul = mul i32 %5, %index
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %add = add nuw i32 %index, 1
  %mul6 = mul i32 %5, %add
  %add.ptr7 = getelementptr i8, ptr %3, i32 %mul6
  %6 = xor i32 %index, -1
  %sub10 = add i32 %1, %6
  %mul12 = mul i32 %5, %sub10
  %7 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr7, i32 %mul12)
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.end.if.end13_crit_edge
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %sub15 = add i32 %9, -1
  store i32 %sub15, ptr %count, align 4
  br label %return

return:                                           ; preds = %if.end13, %entry.return_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_vector_set_at_index(ptr nocapture noundef readonly %vector, ptr nocapture noundef readonly %what, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vector, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %lor.lhs.false.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.i:                                  ; preds = %entry
  %count.i = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %index)
  %cmp1.not.i = icmp ugt i32 %3, %index
  br i1 %cmp1.not.i, label %dal_vector_at_index.exit, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

dal_vector_at_index.exit:                         ; preds = %lor.lhs.false.i
  %struct_size.i = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %4 = ptrtoint ptr %struct_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %struct_size.i, align 4
  %mul.i = mul i32 %5, %index
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %dal_vector_at_index.exit.do.body_crit_edge, label %if.end

dal_vector_at_index.exit.do.body_crit_edge:       ; preds = %dal_vector_at_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %dal_vector_at_index.exit.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_vector_set_at_index, i32 noundef 190) #9
  tail call void @kgdb_breakpoint() #9
  br label %cleanup

if.end:                                           ; preds = %dal_vector_at_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %struct_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %struct_size.i, align 4
  %8 = call ptr @memmove(ptr %add.ptr.i, ptr %what, i32 %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_vector_insert_at(ptr nocapture noundef %vector, ptr nocapture noundef readonly %what, i32 noundef %position) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %capacity = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 3
  %2 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %mul.i = shl i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.i)
  %cmp.not.i = icmp ult i32 %1, %mul.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vector, align 4
  %struct_size.i = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %6 = ptrtoint ptr %struct_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %struct_size.i, align 4
  %mul.i34 = mul i32 %7, %mul.i
  %call.i = tail call noalias ptr @krealloc(ptr noundef %5, i32 noundef %mul.i34, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %vector, align 4
  %9 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.i, ptr %capacity, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2.i, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %10 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vector, align 4
  %struct_size = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %12 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %struct_size, align 4
  %mul = mul i32 %13, %position
  %add.ptr = getelementptr i8, ptr %11, i32 %mul
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %position)
  %cmp7 = icmp ugt i32 %15, %position
  br i1 %cmp7, label %if.then8, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %13
  %sub = sub i32 %15, %position
  %mul13 = mul i32 %sub, %13
  %16 = call ptr @memmove(ptr %add.ptr10, ptr %add.ptr, i32 %mul13)
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end4.if.end14_crit_edge
  %17 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %struct_size, align 4
  %19 = call ptr @memmove(ptr %add.ptr, ptr %what, i32 %18)
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end14 ], [ false, %if.end.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_vector_reserve(ptr nocapture noundef %vector, i32 noundef %capacity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %capacity1 = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 3
  %0 = ptrtoint ptr %capacity1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capacity1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %capacity)
  %cmp.not = icmp ult i32 %1, %capacity
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vector, align 4
  %struct_size = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %4 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %struct_size, align 4
  %mul = mul i32 %5, %capacity
  %call = tail call noalias ptr @krealloc(ptr noundef %3, i32 noundef %mul, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %vector, align 4
  %7 = ptrtoint ptr %capacity1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %capacity, ptr %capacity1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then2 ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_vector_append(ptr nocapture noundef %vector, ptr nocapture noundef readonly %item) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %capacity.i = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 3
  %2 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  br i1 %cmp.i, label %if.then.i, label %entry.if.end4.i_crit_edge

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %mul.i.i = shl i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %mul.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.i.i:                                       ; preds = %if.then.i
  %4 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vector, align 4
  %struct_size.i.i = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %6 = ptrtoint ptr %struct_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %struct_size.i.i, align 4
  %mul.i34.i = mul i32 %7, %mul.i.i
  %call.i.i = tail call noalias ptr @krealloc(ptr noundef %5, i32 noundef %mul.i34.i, i32 noundef 3264) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.dal_vector_insert_at.exit_crit_edge, label %if.then2.i.i

if.end.i.i.dal_vector_insert_at.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dal_vector_insert_at.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %vector, align 4
  %9 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.i.i, ptr %capacity.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i.i, %if.then.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %10 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vector, align 4
  %struct_size.i = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %12 = ptrtoint ptr %struct_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %struct_size.i, align 4
  %mul.i = mul i32 %13, %1
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp7.i = icmp ugt i32 %15, %1
  br i1 %cmp7.i, label %if.then8.i, label %if.end4.i.if.end14.i_crit_edge

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 %13
  %sub.i = sub i32 %15, %1
  %mul13.i = mul i32 %sub.i, %13
  %16 = call ptr @memmove(ptr %add.ptr10.i, ptr %add.ptr.i, i32 %mul13.i)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end4.i.if.end14.i_crit_edge
  %17 = ptrtoint ptr %struct_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %struct_size.i, align 4
  %19 = call ptr @memmove(ptr %add.ptr.i, ptr %item, i32 %18)
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %count, align 4
  br label %dal_vector_insert_at.exit

dal_vector_insert_at.exit:                        ; preds = %if.end14.i, %if.end.i.i.dal_vector_insert_at.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.end14.i ], [ false, %if.end.i.i.dal_vector_insert_at.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dal_vector_clone(ptr nocapture noundef readonly %vector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ctx = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %capacity = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 3
  %4 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capacity, align 4
  %struct_size = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %6 = ptrtoint ptr %struct_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %struct_size, align 4
  %call1 = tail call ptr @dal_vector_create(ptr noundef %3, i32 noundef %5, i32 noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %struct_size3 = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 1
  %8 = ptrtoint ptr %struct_size3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %struct_size3, align 4
  %call4 = tail call ptr @dal_vector_presized_create(ptr undef, i32 noundef %1, ptr noundef null, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vec_cloned.0 = phi ptr [ %call1, %if.then ], [ %call4, %if.else ]
  %cmp5 = icmp eq ptr %vec_cloned.0, null
  br i1 %cmp5, label %do.body, label %if.end7

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_vector_clone, i32 noundef 271) #9
  tail call void @kgdb_breakpoint() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %vec_cloned.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vec_cloned.0, align 4
  %12 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vector, align 4
  %struct_size9 = getelementptr inbounds %struct.vector, ptr %vec_cloned.0, i32 0, i32 1
  %14 = ptrtoint ptr %struct_size9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %struct_size9, align 4
  %capacity10 = getelementptr inbounds %struct.vector, ptr %vec_cloned.0, i32 0, i32 3
  %16 = ptrtoint ptr %capacity10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capacity10, align 4
  %mul = mul i32 %17, %15
  %18 = call ptr @memmove(ptr %11, ptr %13, i32 %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.body
  ret ptr %vec_cloned.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_vector_capacity(ptr nocapture noundef readonly %vector) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %capacity = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 3
  %0 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capacity, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dal_vector_clear(ptr nocapture noundef writeonly %vector) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.vector, ptr %vector, i32 0, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c", i32 41, i32 3}
!2 = !{ptr @__func__.dal_vector_construct, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dal_vector_presized_create, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c", i32 109, i32 2}
!5 = !{ptr @__func__.dal_vector_create, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c", i32 127, i32 2}
!7 = !{ptr @__func__.dal_vector_set_at_index, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c", i32 190, i32 3}
!9 = !{ptr @__func__.dal_vector_clone, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c", i32 271, i32 3}
!11 = !{ptr @__func__.dal_vector_presized_costruct, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/vector.c", i32 68, i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 1, i32 2000}
