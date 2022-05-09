; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/msm_disp_snapshot.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.msm_disp_state = type { ptr, ptr, %struct.list_head, ptr, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.drm_print_iterator = type { ptr, i32, i32, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/msm/disp/msm_disp_snapshot.c\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid params\0A\00", [16 x i8] zeroinitializer }, align 32
@msm_disp_snapshot_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&kms->dump_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disp_snapshot\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create disp state task\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 37, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 87, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 110, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 112, i32 46 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 112, i32 52 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [48 x i8] c"../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 114, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @msm_disp_snapshot_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_disp_snapshot_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_disp_snapshot_state_sync(ptr noundef %kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msm_kms, ptr %kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dump_mutex = getelementptr inbounds %struct.msm_kms, ptr %kms, i32 0, i32 6
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %dump_mutex) #4
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #7
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev25 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev25, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i, align 8
  %drm_dev27 = getelementptr inbounds %struct.msm_disp_state, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %drm_dev27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %drm_dev27, align 4
  %blocks = getelementptr inbounds %struct.msm_disp_state, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %blocks, ptr %blocks, align 8
  %prev.i = getelementptr inbounds %struct.msm_disp_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %blocks, ptr %prev.i, align 4
  tail call void @msm_disp_snapshot_capture_state(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end24 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_capture_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_disp_snapshot_state(ptr noundef readonly %drm_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_dev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %kms1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms1, align 4
  %dump_worker = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dump_worker to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dump_worker, align 8
  %dump_work = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 5
  %call = tail call zeroext i1 @kthread_queue_work(ptr noundef %5, ptr noundef %dump_work) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_disp_snapshot_init(ptr noundef readonly %drm_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_dev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %kms1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms1, align 4
  %dump_mutex = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %dump_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @msm_disp_snapshot_init.__key) #4
  %call = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #4
  %dump_worker = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dump_worker to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %dump_worker, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #4
  br label %do.body6

do.body6:                                         ; preds = %if.then4, %if.end.do.body6_crit_edge
  %dump_work = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  %7 = ptrtoint ptr %dump_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dump_work, ptr %dump_work, align 4
  %prev.i = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dump_work, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @_msm_disp_snapshot_work, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then
  %retval.0 = phi i32 [ 0, %do.body6 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_msm_disp_snapshot_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_mutex = getelementptr i8, ptr %work, i32 20
  tail call void @mutex_lock_nested(ptr noundef %dump_mutex, i32 noundef 0) #4
  %dev.i = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %dump_mutex) #4
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !22

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #7
  %tobool21.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool21.not.i, label %msm_disp_snapshot_state_sync.exit.thread, label %msm_disp_snapshot_state_sync.exit

msm_disp_snapshot_state_sync.exit.thread:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %dump_mutex) #4
  br label %cleanup

msm_disp_snapshot_state_sync.exit:                ; preds = %if.end.i
  %dev25.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev25.i, align 4
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i.i, align 8
  %drm_dev27.i = getelementptr inbounds %struct.msm_disp_state, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %drm_dev27.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %drm_dev27.i, align 4
  %blocks.i = getelementptr inbounds %struct.msm_disp_state, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %blocks.i, ptr %blocks.i, align 8
  %prev.i.i = getelementptr inbounds %struct.msm_disp_state, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %blocks.i, ptr %prev.i.i, align 4
  tail call void @msm_disp_snapshot_capture_state(ptr noundef nonnull %call7.i.i.i) #4
  tail call void @mutex_unlock(ptr noundef %dump_mutex) #4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %msm_disp_snapshot_state_sync.exit.cleanup_crit_edge, label %if.end

msm_disp_snapshot_state_sync.exit.cleanup_crit_edge: ; preds = %msm_disp_snapshot_state_sync.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %msm_disp_snapshot_state_sync.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @dev_coredumpm(ptr noundef %10, ptr noundef null, ptr noundef nonnull %call7.i.i.i, i32 noundef 0, i32 noundef 3264, ptr noundef nonnull @disp_devcoredump_read, ptr noundef nonnull @msm_disp_state_free) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %msm_disp_snapshot_state_sync.exit.cleanup_crit_edge, %msm_disp_snapshot_state_sync.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_disp_snapshot_destroy(ptr noundef readonly %drm_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_dev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %kms1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms1, align 4
  %dump_worker = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dump_worker to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dump_worker, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kthread_destroy_worker(ptr noundef nonnull %5) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %dump_mutex = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %dump_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disp_devcoredump_read(ptr noundef %buffer, i64 noundef %offset, i32 noundef %count, ptr noundef %data, i32 noundef %datalen) #0 align 64 {
entry:
  %iter = alloca %struct.drm_print_iterator, align 4
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #4
  %0 = getelementptr inbounds %struct.drm_print_iterator, ptr %iter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_print_iterator, ptr %iter, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_print_iterator, ptr %iter, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #4
  %3 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %6 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buffer, ptr %iter, align 4
  %conv = trunc i64 %offset to i32
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %count, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %2, align 4, !noalias !23
  %10 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__drm_printfn_coredump, ptr %p, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__drm_puts_coredump, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %iter, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %5, align 4
  call void @msm_disp_state_print(ptr noundef %data, ptr noundef nonnull %p) #4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %sub = sub i32 %count, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #4
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_state_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_state_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_coredump(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_coredump(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c", i32 37, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c", i32 87, i32 3}
!4 = !{ptr @msm_disp_snapshot_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c", i32 110, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c", i32 112, i32 46}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c", i32 112, i32 52}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot.c", i32 114, i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!24}
!24 = distinct !{!24, !25, !"drm_coredump_printer: %agg.result"}
!25 = distinct !{!25, !"drm_coredump_printer"}
