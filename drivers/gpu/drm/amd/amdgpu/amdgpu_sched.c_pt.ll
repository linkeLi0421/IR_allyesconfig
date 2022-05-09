; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_sched.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_amdgpu_sched_in = type { i32, i32, i32, i32 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm, ptr, ptr, %struct.mutex, %struct.idr, %struct.amdgpu_ctx_mgr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.96, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.96 = type { %union.anon.97, [128 x i64] }
%union.anon.97 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.amdgpu_ctx_mgr = type { ptr, %struct.mutex, %struct.idr }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid sched op specified: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_sched.c\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid context priority %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 108, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [45 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_sched.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 113, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_sched_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  %fpriv.i43 = alloca ptr, align 4
  %fpriv.i = alloca ptr, align 4
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %1) #3
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %priority = getelementptr inbounds %struct.drm_amdgpu_sched_in, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority, align 4
  %call2 = tail call zeroext i1 @amdgpu_ctx_priority_is_valid(i32 noundef %3) #3
  br i1 %call2, label %if.end19, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %5) #3
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end19.cleanup_crit_edge [
    i32 1, label %sw.bb21
    i32 2, label %sw.bb24
  ]

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb21:                                          ; preds = %if.end19
  %fd = getelementptr inbounds %struct.drm_amdgpu_sched_in, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fd, align 4
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority, align 4
  %call.i.i = tail call i32 @__fdget(i32 noundef %10) #3, !noalias !14
  %and.i.i.i = and i32 %call.i.i, -4
  %13 = inttoptr i32 %and.i.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fpriv.i) #3
  %14 = ptrtoint ptr %fpriv.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %fpriv.i, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %sw.bb21.amdgpu_sched_process_priority_override.exit_crit_edge, label %if.end.i

sw.bb21.amdgpu_sched_process_priority_override.exit_crit_edge: ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #5
  br label %amdgpu_sched_process_priority_override.exit

if.end.i:                                         ; preds = %sw.bb21
  %call.i = call i32 @amdgpu_file_to_fpriv(ptr noundef nonnull %13, ptr noundef nonnull %fpriv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %if.then3.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %id.i, align 4
  %16 = ptrtoint ptr %fpriv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fpriv.i, align 4
  %ctx_handles6.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %17, i32 0, i32 5, i32 2
  %call57.i = call ptr @idr_get_next(ptr noundef %ctx_handles6.i, ptr noundef nonnull %id.i) #3
  %cmp.not8.i = icmp eq ptr %call57.i, null
  br i1 %cmp.not8.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.then3.i:                                       ; preds = %if.end.i
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then3.i.amdgpu_sched_process_priority_override.exit_crit_edge, label %if.then3.i.cleanup.sink.split.i_crit_edge

if.then3.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.then3.i.amdgpu_sched_process_priority_override.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %amdgpu_sched_process_priority_override.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call59.i = phi ptr [ %call5.i, %for.body.i.for.body.i_crit_edge ], [ %call57.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @amdgpu_ctx_priority_override(ptr noundef nonnull %call59.i, i32 noundef %12) #3
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %add.i = add i32 %19, 1
  store i32 %add.i, ptr %id.i, align 4
  %20 = ptrtoint ptr %fpriv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fpriv.i, align 4
  %ctx_handles.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %21, i32 0, i32 5, i32 2
  %call5.i = call ptr @idr_get_next(ptr noundef %ctx_handles.i, ptr noundef nonnull %id.i) #3
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %and.i1.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.not.i2.i = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.not.i2.i, label %for.end.i.amdgpu_sched_process_priority_override.exit_crit_edge, label %for.end.i.cleanup.sink.split.i_crit_edge

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

for.end.i.amdgpu_sched_process_priority_override.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %amdgpu_sched_process_priority_override.exit

cleanup.sink.split.i:                             ; preds = %for.end.i.cleanup.sink.split.i_crit_edge, %if.then3.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call.i, %if.then3.i.cleanup.sink.split.i_crit_edge ], [ 0, %for.end.i.cleanup.sink.split.i_crit_edge ]
  call void @fput(ptr noundef nonnull %13) #3
  br label %amdgpu_sched_process_priority_override.exit

amdgpu_sched_process_priority_override.exit:      ; preds = %cleanup.sink.split.i, %for.end.i.amdgpu_sched_process_priority_override.exit_crit_edge, %if.then3.i.amdgpu_sched_process_priority_override.exit_crit_edge, %sw.bb21.amdgpu_sched_process_priority_override.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.bb21.amdgpu_sched_process_priority_override.exit_crit_edge ], [ %call.i, %if.then3.i.amdgpu_sched_process_priority_override.exit_crit_edge ], [ 0, %for.end.i.amdgpu_sched_process_priority_override.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fpriv.i) #3
  br label %cleanup

sw.bb24:                                          ; preds = %if.end19
  %fd25 = getelementptr inbounds %struct.drm_amdgpu_sched_in, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %fd25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fd25, align 4
  %ctx_id = getelementptr inbounds %struct.drm_amdgpu_sched_in, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctx_id, align 4
  %26 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %priority, align 4
  %call.i.i44 = tail call i32 @__fdget(i32 noundef %23) #3, !noalias !18
  %and.i.i.i45 = and i32 %call.i.i44, -4
  %28 = inttoptr i32 %and.i.i.i45 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fpriv.i43) #3
  %29 = ptrtoint ptr %fpriv.i43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %fpriv.i43, align 4, !annotation !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i45)
  %tobool.not.i46 = icmp eq i32 %and.i.i.i45, 0
  br i1 %tobool.not.i46, label %sw.bb24.amdgpu_sched_context_priority_override.exit_crit_edge, label %if.end.i49

sw.bb24.amdgpu_sched_context_priority_override.exit_crit_edge: ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #5
  br label %amdgpu_sched_context_priority_override.exit

if.end.i49:                                       ; preds = %sw.bb24
  %call.i47 = call i32 @amdgpu_file_to_fpriv(ptr noundef nonnull %28, ptr noundef nonnull %fpriv.i43) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool2.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool2.not.i48, label %if.end4.i, label %if.then3.i52

if.then3.i52:                                     ; preds = %if.end.i49
  %and.i.i50 = and i32 %call.i.i44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %and.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.then3.i52.amdgpu_sched_context_priority_override.exit_crit_edge, label %if.then3.i52.cleanup.sink.split.i57_crit_edge

if.then3.i52.cleanup.sink.split.i57_crit_edge:    ; preds = %if.then3.i52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i57

if.then3.i52.amdgpu_sched_context_priority_override.exit_crit_edge: ; preds = %if.then3.i52
  call void @__sanitizer_cov_trace_pc() #5
  br label %amdgpu_sched_context_priority_override.exit

if.end4.i:                                        ; preds = %if.end.i49
  %30 = ptrtoint ptr %fpriv.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fpriv.i43, align 4
  %call5.i53 = call ptr @amdgpu_ctx_get(ptr noundef %31, i32 noundef %25) #3
  %tobool6.not.i = icmp eq ptr %call5.i53, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  %and.i1.i54 = and i32 %call.i.i44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i54)
  %tobool.not.i2.i55 = icmp eq i32 %and.i1.i54, 0
  br i1 %tobool.not.i2.i55, label %if.then7.i.amdgpu_sched_context_priority_override.exit_crit_edge, label %if.then7.i.cleanup.sink.split.i57_crit_edge

if.then7.i.cleanup.sink.split.i57_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i57

if.then7.i.amdgpu_sched_context_priority_override.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %amdgpu_sched_context_priority_override.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @amdgpu_ctx_priority_override(ptr noundef nonnull %call5.i53, i32 noundef %27) #3
  %call9.i = call i32 @amdgpu_ctx_put(ptr noundef nonnull %call5.i53) #3
  %and.i5.i = and i32 %call.i.i44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool.not.i6.i = icmp eq i32 %and.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end8.i.amdgpu_sched_context_priority_override.exit_crit_edge, label %if.end8.i.cleanup.sink.split.i57_crit_edge

if.end8.i.cleanup.sink.split.i57_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i57

if.end8.i.amdgpu_sched_context_priority_override.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %amdgpu_sched_context_priority_override.exit

cleanup.sink.split.i57:                           ; preds = %if.end8.i.cleanup.sink.split.i57_crit_edge, %if.then7.i.cleanup.sink.split.i57_crit_edge, %if.then3.i52.cleanup.sink.split.i57_crit_edge
  %retval.0.ph.i56 = phi i32 [ %call.i47, %if.then3.i52.cleanup.sink.split.i57_crit_edge ], [ -22, %if.then7.i.cleanup.sink.split.i57_crit_edge ], [ 0, %if.end8.i.cleanup.sink.split.i57_crit_edge ]
  call void @fput(ptr noundef nonnull %28) #3
  br label %amdgpu_sched_context_priority_override.exit

amdgpu_sched_context_priority_override.exit:      ; preds = %cleanup.sink.split.i57, %if.end8.i.amdgpu_sched_context_priority_override.exit_crit_edge, %if.then7.i.amdgpu_sched_context_priority_override.exit_crit_edge, %if.then3.i52.amdgpu_sched_context_priority_override.exit_crit_edge, %sw.bb24.amdgpu_sched_context_priority_override.exit_crit_edge
  %retval.0.i58 = phi i32 [ -22, %sw.bb24.amdgpu_sched_context_priority_override.exit_crit_edge ], [ %call.i47, %if.then3.i52.amdgpu_sched_context_priority_override.exit_crit_edge ], [ -22, %if.then7.i.amdgpu_sched_context_priority_override.exit_crit_edge ], [ 0, %if.end8.i.amdgpu_sched_context_priority_override.exit_crit_edge ], [ %retval.0.ph.i56, %cleanup.sink.split.i57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fpriv.i43) #3
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_sched_context_priority_override.exit, %amdgpu_sched_process_priority_override.exit, %if.end19.cleanup_crit_edge, %do.end, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %do.end ], [ %retval.0.i58, %amdgpu_sched_context_priority_override.exit ], [ %retval.0.i, %amdgpu_sched_process_priority_override.exit ], [ -22, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_ctx_priority_is_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_file_to_fpriv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ctx_priority_override(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ctx_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sched.c", i32 108, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_sched.c", i32 113, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"fdget: %agg.result"}
!16 = distinct !{!16, !"fdget"}
!17 = !{!"auto-init"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"fdget: %agg.result"}
!20 = distinct !{!20, !"fdget"}
