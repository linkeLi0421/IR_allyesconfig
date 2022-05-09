; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_atomic.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_atomic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.93 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atomic-worker-%d\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/msm/msm_atomic.c\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_msm_atomic_async_commit_start = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/msm/msm_atomic_trace.h\00", [57 x i8] zeroinitializer }, align 32
@trace_msm_atomic_async_commit_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_msm_atomic_async_commit_finish = external dso_local global %struct.tracepoint, align 4
@trace_msm_atomic_async_commit_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_msm_atomic_commit_tail_start = external dso_local global %struct.tracepoint, align 4
@trace_msm_atomic_commit_tail_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_msm_atomic_wait_flush_start = external dso_local global %struct.tracepoint, align 4
@trace_msm_atomic_wait_flush_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_msm_atomic_wait_flush_finish = external dso_local global %struct.tracepoint, align 4
@trace_msm_atomic_wait_flush_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_msm_atomic_commit_tail_finish = external dso_local global %struct.tracepoint, align 4
@trace_msm_atomic_commit_tail_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_msm_atomic_flush_commit = external dso_local global %struct.tracepoint, align 4
@trace_msm_atomic_flush_commit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 133, i32 43 }
@___asan_gen_.9 = private constant [36 x i8] c"../drivers/gpu/drm/msm/msm_atomic.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 238, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/msm/msm_atomic_trace.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 41, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 108, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_atomic_prepare_fb(ptr noundef %plane, ptr noundef %new_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %kms1 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms1, align 4
  %call = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %plane, ptr noundef %new_state) #4
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %aspace = getelementptr inbounds %struct.msm_kms, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aspace, align 4
  %call3 = tail call i32 @msm_framebuffer_prepare(ptr noundef %9, ptr noundef %11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_prepare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_atomic_init_pending_timer(ptr noundef %timer, ptr noundef %kms, i32 noundef %crtc_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %kms1 = getelementptr inbounds %struct.msm_pending_timer, ptr %timer, i32 0, i32 2
  %0 = ptrtoint ptr %kms1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %kms, ptr %kms1, align 4
  %crtc_idx2 = getelementptr inbounds %struct.msm_pending_timer, ptr %timer, i32 0, i32 3
  %1 = ptrtoint ptr %crtc_idx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %crtc_idx, ptr %crtc_idx2, align 8
  %call = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %crtc_idx) #4
  %worker = getelementptr inbounds %struct.msm_pending_timer, ptr %timer, i32 0, i32 1
  %2 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %worker, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call to i32
  %4 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %worker, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %task = getelementptr inbounds %struct.kthread_worker, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 4
  tail call void @sched_set_fifo(ptr noundef %6) #4
  %7 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %worker, align 8
  tail call void @msm_hrtimer_work_init(ptr noundef %timer, ptr noundef %8, ptr noundef nonnull @msm_atomic_pending_work, i32 noundef 1, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hrtimer_work_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_atomic_pending_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %kms = getelementptr i8, ptr %work, i32 28
  %0 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kms, align 4
  %crtc_idx = getelementptr i8, ptr %work, i32 32
  %2 = ptrtoint ptr %crtc_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_idx, align 8
  %shl.i = shl nuw i32 1, %3
  tail call fastcc void @trace_msm_atomic_async_commit_start(i32 noundef %shl.i) #4
  %dev.i.i = getelementptr inbounds %struct.msm_kms, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %crtc_list.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 20
  %6 = ptrtoint ptr %crtc_list.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn16.i.i = load ptr, ptr %crtc_list.i.i, align 4
  %cmp.not18.i.i = icmp eq ptr %.pn16.i.i, %crtc_list.i.i
  br i1 %cmp.not18.i.i, label %entry.lock_crtcs.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.lock_crtcs.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lock_crtcs.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn19.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn16.i.i, %entry.for.body.i.i_crit_edge ]
  %index.i.i.i.i = getelementptr i8, ptr %.pn19.i.i, i32 148
  %7 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %8
  %and.i.i = and i32 %shl.i.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.i = getelementptr %struct.msm_kms, ptr %1, i32 0, i32 7, i32 %8
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i.i, i32 noundef %8) #4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %9 = ptrtoint ptr %.pn19.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn19.i.i, align 4
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %crtc_list3.i.i = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 20
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %crtc_list3.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.lock_crtcs.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.lock_crtcs.exit.i_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lock_crtcs.exit.i

lock_crtcs.exit.i:                                ; preds = %for.inc.i.i.lock_crtcs.exit.i_crit_edge, %entry.lock_crtcs.exit.i_crit_edge
  %pending_crtc_mask.i = getelementptr inbounds %struct.msm_kms, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %pending_crtc_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pending_crtc_mask.i, align 4
  %and.i = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lock_crtcs.exit.i
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 20, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn15.i.i = load ptr, ptr %prev.i.i, align 4
  %crtc_list316.i.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 20
  %cmp.not17.i.i = icmp eq ptr %.pn15.i.i, %crtc_list316.i.i
  br i1 %cmp.not17.i.i, label %if.then.i.msm_atomic_async_commit.exit_crit_edge, label %if.then.i.for.body.i42.i_crit_edge

if.then.i.for.body.i42.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i42.i

if.then.i.msm_atomic_async_commit.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm_atomic_async_commit.exit

for.body.i42.i:                                   ; preds = %for.inc.i48.i.for.body.i42.i_crit_edge, %if.then.i.for.body.i42.i_crit_edge
  %.pn18.i.i = phi ptr [ %.pn.i45.i, %for.inc.i48.i.for.body.i42.i_crit_edge ], [ %.pn15.i.i, %if.then.i.for.body.i42.i_crit_edge ]
  %index.i.i.i38.i = getelementptr i8, ptr %.pn18.i.i, i32 148
  %17 = ptrtoint ptr %index.i.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i.i38.i, align 4
  %shl.i.i39.i = shl nuw i32 1, %18
  %and.i40.i = and i32 %shl.i.i39.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40.i)
  %tobool.not.i41.i = icmp eq i32 %and.i40.i, 0
  br i1 %tobool.not.i41.i, label %for.body.i42.i.for.inc.i48.i_crit_edge, label %if.else.i44.i

for.body.i42.i.for.inc.i48.i_crit_edge:           ; preds = %for.body.i42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i48.i

if.else.i44.i:                                    ; preds = %for.body.i42.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i43.i = getelementptr %struct.msm_kms, ptr %1, i32 0, i32 7, i32 %18
  tail call void @mutex_unlock(ptr noundef %arrayidx.i43.i) #4
  br label %for.inc.i48.i

for.inc.i48.i:                                    ; preds = %if.else.i44.i, %for.body.i42.i.for.inc.i48.i_crit_edge
  %prev7.i.i = getelementptr inbounds %struct.list_head, ptr %.pn18.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i45.i = load ptr, ptr %prev7.i.i, align 4
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %crtc_list3.i46.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30, i32 20
  %cmp.not.i47.i = icmp eq ptr %.pn.i45.i, %crtc_list3.i46.i
  br i1 %cmp.not.i47.i, label %for.inc.i48.i.msm_atomic_async_commit.exit_crit_edge, label %for.inc.i48.i.for.body.i42.i_crit_edge

for.inc.i48.i.for.body.i42.i_crit_edge:           ; preds = %for.inc.i48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i42.i

for.inc.i48.i.msm_atomic_async_commit.exit_crit_edge: ; preds = %for.inc.i48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm_atomic_async_commit.exit

if.end.i:                                         ; preds = %lock_crtcs.exit.i
  %neg.i = xor i32 %shl.i, -1
  %and2.i = and i32 %13, %neg.i
  %22 = ptrtoint ptr %pending_crtc_mask.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and2.i, ptr %pending_crtc_mask.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %enable_commit.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %enable_commit.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enable_commit.i, align 4
  tail call void %26(ptr noundef %1) #4
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %crtc_list.i50.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 30, i32 20
  %29 = ptrtoint ptr %crtc_list.i50.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn18.i51.i = load ptr, ptr %crtc_list.i50.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn18.i51.i, %crtc_list.i50.i
  br i1 %cmp.not21.i.i, label %if.end.i.vblank_get.exit.i_crit_edge, label %if.end.i.for.body.i56.i_crit_edge

if.end.i.for.body.i56.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i56.i

if.end.i.vblank_get.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vblank_get.exit.i

for.body.i56.i:                                   ; preds = %for.inc.i61.i.for.body.i56.i_crit_edge, %if.end.i.for.body.i56.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i58.i, %for.inc.i61.i.for.body.i56.i_crit_edge ], [ %.pn18.i51.i, %if.end.i.for.body.i56.i_crit_edge ]
  %crtc.023.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -8
  %index.i.i.i52.i = getelementptr i8, ptr %.pn22.i.i, i32 148
  %30 = ptrtoint ptr %index.i.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i.i.i52.i, align 4
  %shl.i.i53.i = shl nuw i32 1, %31
  %and.i54.i = and i32 %shl.i.i53.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool.not.i55.i = icmp eq i32 %and.i54.i, 0
  br i1 %tobool.not.i55.i, label %for.body.i56.i.for.inc.i61.i_crit_edge, label %if.else.i57.i

for.body.i56.i.for.inc.i61.i_crit_edge:           ; preds = %for.body.i56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i61.i

if.else.i57.i:                                    ; preds = %for.body.i56.i
  %state.i.i = getelementptr i8, ptr %.pn22.i.i, i32 716
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state.i.i, align 4
  %active.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %active.i.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool4.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool4.not.i.i, label %if.else.i57.i.for.inc.i61.i_crit_edge, label %if.end.i.i

if.else.i57.i.for.inc.i61.i_crit_edge:            ; preds = %if.else.i57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i61.i

if.end.i.i:                                       ; preds = %if.else.i57.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i.i = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc.023.i.i) #4
  br label %for.inc.i61.i

for.inc.i61.i:                                    ; preds = %if.end.i.i, %if.else.i57.i.for.inc.i61.i_crit_edge, %for.body.i56.i.for.inc.i61.i_crit_edge
  %36 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i58.i = load ptr, ptr %.pn22.i.i, align 4
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %crtc_list3.i59.i = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 30, i32 20
  %cmp.not.i60.i = icmp eq ptr %.pn.i58.i, %crtc_list3.i59.i
  br i1 %cmp.not.i60.i, label %for.inc.i61.i.vblank_get.exit.i_crit_edge, label %for.inc.i61.i.for.body.i56.i_crit_edge

for.inc.i61.i.for.body.i56.i_crit_edge:           ; preds = %for.inc.i61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i56.i

for.inc.i61.i.vblank_get.exit.i_crit_edge:        ; preds = %for.inc.i61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vblank_get.exit.i

vblank_get.exit.i:                                ; preds = %for.inc.i61.i.vblank_get.exit.i_crit_edge, %if.end.i.vblank_get.exit.i_crit_edge
  tail call fastcc void @trace_msm_atomic_flush_commit(i32 noundef %shl.i) #4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %flush_commit.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %flush_commit.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %flush_commit.i, align 4
  tail call void %42(ptr noundef %1, i32 noundef %shl.i) #4
  tail call fastcc void @trace_msm_atomic_wait_flush_start(i32 noundef %shl.i) #4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %wait_flush.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %wait_flush.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wait_flush.i, align 4
  tail call void %46(ptr noundef %1, i32 noundef %shl.i) #4
  tail call fastcc void @trace_msm_atomic_wait_flush_finish(i32 noundef %shl.i) #4
  %47 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i, align 4
  %crtc_list.i63.i = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 20
  %49 = ptrtoint ptr %crtc_list.i63.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn17.i.i = load ptr, ptr %crtc_list.i63.i, align 4
  %cmp.not20.i.i = icmp eq ptr %.pn17.i.i, %crtc_list.i63.i
  br i1 %cmp.not20.i.i, label %vblank_get.exit.i.vblank_put.exit.i_crit_edge, label %vblank_get.exit.i.for.body.i68.i_crit_edge

vblank_get.exit.i.for.body.i68.i_crit_edge:       ; preds = %vblank_get.exit.i
  br label %for.body.i68.i

vblank_get.exit.i.vblank_put.exit.i_crit_edge:    ; preds = %vblank_get.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vblank_put.exit.i

for.body.i68.i:                                   ; preds = %for.inc.i77.i.for.body.i68.i_crit_edge, %vblank_get.exit.i.for.body.i68.i_crit_edge
  %.pn21.i.i = phi ptr [ %.pn.i74.i, %for.inc.i77.i.for.body.i68.i_crit_edge ], [ %.pn17.i.i, %vblank_get.exit.i.for.body.i68.i_crit_edge ]
  %crtc.022.i.i = getelementptr i8, ptr %.pn21.i.i, i32 -8
  %index.i.i.i64.i = getelementptr i8, ptr %.pn21.i.i, i32 148
  %50 = ptrtoint ptr %index.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i.i64.i, align 4
  %shl.i.i65.i = shl nuw i32 1, %51
  %and.i66.i = and i32 %shl.i.i65.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66.i)
  %tobool.not.i67.i = icmp eq i32 %and.i66.i, 0
  br i1 %tobool.not.i67.i, label %for.body.i68.i.for.inc.i77.i_crit_edge, label %if.else.i72.i

for.body.i68.i.for.inc.i77.i_crit_edge:           ; preds = %for.body.i68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i77.i

if.else.i72.i:                                    ; preds = %for.body.i68.i
  %state.i69.i = getelementptr i8, ptr %.pn21.i.i, i32 716
  %52 = ptrtoint ptr %state.i69.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state.i69.i, align 4
  %active.i70.i = getelementptr inbounds %struct.drm_crtc_state, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %active.i70.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %active.i70.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool4.not.i71.i = icmp eq i8 %55, 0
  br i1 %tobool4.not.i71.i, label %if.else.i72.i.for.inc.i77.i_crit_edge, label %if.end.i73.i

if.else.i72.i.for.inc.i77.i_crit_edge:            ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i77.i

if.end.i73.i:                                     ; preds = %if.else.i72.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc.022.i.i) #4
  br label %for.inc.i77.i

for.inc.i77.i:                                    ; preds = %if.end.i73.i, %if.else.i72.i.for.inc.i77.i_crit_edge, %for.body.i68.i.for.inc.i77.i_crit_edge
  %56 = ptrtoint ptr %.pn21.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i74.i = load ptr, ptr %.pn21.i.i, align 4
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  %crtc_list3.i75.i = getelementptr inbounds %struct.drm_device, ptr %58, i32 0, i32 30, i32 20
  %cmp.not.i76.i = icmp eq ptr %.pn.i74.i, %crtc_list3.i75.i
  br i1 %cmp.not.i76.i, label %for.inc.i77.i.vblank_put.exit.i_crit_edge, label %for.inc.i77.i.for.body.i68.i_crit_edge

for.inc.i77.i.for.body.i68.i_crit_edge:           ; preds = %for.inc.i77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i68.i

for.inc.i77.i.vblank_put.exit.i_crit_edge:        ; preds = %for.inc.i77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vblank_put.exit.i

vblank_put.exit.i:                                ; preds = %for.inc.i77.i.vblank_put.exit.i_crit_edge, %vblank_get.exit.i.vblank_put.exit.i_crit_edge
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  %complete_commit.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %complete_commit.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %complete_commit.i, align 4
  tail call void %62(ptr noundef %1, i32 noundef %shl.i) #4
  %63 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i, align 4
  %prev.i79.i = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 30, i32 20, i32 1
  %65 = ptrtoint ptr %prev.i79.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn15.i80.i = load ptr, ptr %prev.i79.i, align 4
  %crtc_list316.i81.i = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 30, i32 20
  %cmp.not17.i82.i = icmp eq ptr %.pn15.i80.i, %crtc_list316.i81.i
  br i1 %cmp.not17.i82.i, label %vblank_put.exit.i.unlock_crtcs.exit96.i_crit_edge, label %vblank_put.exit.i.for.body.i88.i_crit_edge

vblank_put.exit.i.for.body.i88.i_crit_edge:       ; preds = %vblank_put.exit.i
  br label %for.body.i88.i

vblank_put.exit.i.unlock_crtcs.exit96.i_crit_edge: ; preds = %vblank_put.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_crtcs.exit96.i

for.body.i88.i:                                   ; preds = %for.inc.i95.i.for.body.i88.i_crit_edge, %vblank_put.exit.i.for.body.i88.i_crit_edge
  %.pn18.i83.i = phi ptr [ %.pn.i92.i, %for.inc.i95.i.for.body.i88.i_crit_edge ], [ %.pn15.i80.i, %vblank_put.exit.i.for.body.i88.i_crit_edge ]
  %index.i.i.i84.i = getelementptr i8, ptr %.pn18.i83.i, i32 148
  %66 = ptrtoint ptr %index.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index.i.i.i84.i, align 4
  %shl.i.i85.i = shl nuw i32 1, %67
  %and.i86.i = and i32 %shl.i.i85.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86.i)
  %tobool.not.i87.i = icmp eq i32 %and.i86.i, 0
  br i1 %tobool.not.i87.i, label %for.body.i88.i.for.inc.i95.i_crit_edge, label %if.else.i90.i

for.body.i88.i.for.inc.i95.i_crit_edge:           ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i95.i

if.else.i90.i:                                    ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i89.i = getelementptr %struct.msm_kms, ptr %1, i32 0, i32 7, i32 %67
  tail call void @mutex_unlock(ptr noundef %arrayidx.i89.i) #4
  br label %for.inc.i95.i

for.inc.i95.i:                                    ; preds = %if.else.i90.i, %for.body.i88.i.for.inc.i95.i_crit_edge
  %prev7.i91.i = getelementptr inbounds %struct.list_head, ptr %.pn18.i83.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev7.i91.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i92.i = load ptr, ptr %prev7.i91.i, align 4
  %69 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i.i, align 4
  %crtc_list3.i93.i = getelementptr inbounds %struct.drm_device, ptr %70, i32 0, i32 30, i32 20
  %cmp.not.i94.i = icmp eq ptr %.pn.i92.i, %crtc_list3.i93.i
  br i1 %cmp.not.i94.i, label %for.inc.i95.i.unlock_crtcs.exit96.i_crit_edge, label %for.inc.i95.i.for.body.i88.i_crit_edge

for.inc.i95.i.for.body.i88.i_crit_edge:           ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i88.i

for.inc.i95.i.unlock_crtcs.exit96.i_crit_edge:    ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_crtcs.exit96.i

unlock_crtcs.exit96.i:                            ; preds = %for.inc.i95.i.unlock_crtcs.exit96.i_crit_edge, %vblank_put.exit.i.unlock_crtcs.exit96.i_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %disable_commit.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %disable_commit.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %disable_commit.i, align 4
  tail call void %74(ptr noundef %1) #4
  br label %msm_atomic_async_commit.exit

msm_atomic_async_commit.exit:                     ; preds = %unlock_crtcs.exit96.i, %for.inc.i48.i.msm_atomic_async_commit.exit_crit_edge, %if.then.i.msm_atomic_async_commit.exit_crit_edge
  tail call fastcc void @trace_msm_atomic_async_commit_finish(i32 noundef %shl.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_atomic_destroy_pending_timer(ptr nocapture noundef readonly %timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %worker = getelementptr inbounds %struct.msm_pending_timer, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kthread_destroy_worker(ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_atomic_commit_tail(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %kms2 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms2, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %6 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15.not.i = icmp eq i32 %7, 0
  br i1 %cmp15.not.i, label %entry.get_crtc_mask.exit_crit_edge, label %for.body.lr.ph.i

entry.get_crtc_mask.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_crtc_mask.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtcs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mask.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %mask.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.__drm_crtcs_state, ptr %9, i32 %i.016.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %13
  %or.i = or i32 %shl.i.i, %mask.017.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i.for.inc.i_crit_edge
  %mask.1.i = phi i32 [ %or.i, %land.lhs.true.i ], [ %mask.017.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.get_crtc_mask.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.get_crtc_mask.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_crtc_mask.exit

get_crtc_mask.exit:                               ; preds = %for.inc.i.get_crtc_mask.exit_crit_edge, %entry.get_crtc_mask.exit_crit_edge
  %mask.0.lcssa.i = phi i32 [ 0, %entry.get_crtc_mask.exit_crit_edge ], [ %mask.1.i, %for.inc.i.get_crtc_mask.exit_crit_edge ]
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %vsync_time = getelementptr inbounds %struct.msm_kms_funcs, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %vsync_time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsync_time, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %get_crtc_mask.exit.land.end_crit_edge, label %land.rhs

get_crtc_mask.exit.land.end_crit_edge:            ; preds = %get_crtc_mask.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %get_crtc_mask.exit
  %legacy_cursor_update.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 2
  %18 = ptrtoint ptr %legacy_cursor_update.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %legacy_cursor_update.i, align 4
  %19 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %land.rhs.land.end_crit_edge, label %for.cond.preheader.i

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.cond.preheader.i:                             ; preds = %land.rhs
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %21 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp64.i = icmp sgt i32 %22, 0
  br i1 %cmp64.i, label %for.body.lr.ph.i127, label %for.cond.preheader.i.for.cond12.preheader.i_crit_edge

for.cond.preheader.i.for.cond12.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond12.preheader.i

for.body.lr.ph.i127:                              ; preds = %for.cond.preheader.i
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %23 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %connectors.i, align 4
  br label %for.body.i134

for.cond.i:                                       ; preds = %for.body.i134
  %inc.i128 = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i129 = icmp eq i32 %inc.i128, %22
  br i1 %exitcond.not.i129, label %for.cond.i.for.cond12.preheader.i_crit_edge, label %for.cond.i.for.body.i134_crit_edge

for.cond.i.for.body.i134_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i134

for.cond.i.for.cond12.preheader.i_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.cond.i.for.cond12.preheader.i_crit_edge, %for.cond.preheader.i.for.cond12.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1367.i = icmp sgt i32 %7, 0
  br i1 %cmp1367.i, label %for.body14.lr.ph.i, label %for.cond12.preheader.i.land.end_crit_edge

for.cond12.preheader.i.land.end_crit_edge:        ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body14.lr.ph.i:                               ; preds = %for.cond12.preheader.i
  %crtcs.i131 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %25 = ptrtoint ptr %crtcs.i131 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %crtcs.i131, align 4
  br label %for.body14.i

for.body.i134:                                    ; preds = %for.cond.i.for.body.i134_crit_edge, %for.body.lr.ph.i127
  %i.065.i = phi i32 [ 0, %for.body.lr.ph.i127 ], [ %inc.i128, %for.cond.i.for.body.i134_crit_edge ]
  %arrayidx.i132 = getelementptr %struct.__drm_connnectors_state, ptr %24, i32 %i.065.i
  %27 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i132, align 4
  %tobool.not.i133 = icmp eq ptr %28, null
  br i1 %tobool.not.i133, label %for.cond.i, label %for.body.i134.land.end_crit_edge

for.body.i134.land.end_crit_edge:                 ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.body14.i:                                     ; preds = %for.inc34.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %async_crtc.0 = phi ptr [ null, %for.body14.lr.ph.i ], [ %async_crtc.1, %for.inc34.i.for.body14.i_crit_edge ]
  %num_crtcs.070.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %num_crtcs.1.i, %for.inc34.i.for.body14.i_crit_edge ]
  %i.168.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %inc35.i, %for.inc34.i.for.body14.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.__drm_crtcs_state, ptr %26, i32 %i.168.i
  %29 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx15.i, align 8
  %tobool17.not.i = icmp eq ptr %30, null
  br i1 %tobool17.not.i, label %for.body14.i.for.inc34.i_crit_edge, label %land.lhs.true18.i

for.body14.i.for.inc34.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc34.i

land.lhs.true18.i:                                ; preds = %for.body14.i
  %new_state24.i = getelementptr %struct.__drm_crtcs_state, ptr %26, i32 %i.168.i, i32 3
  %31 = ptrtoint ptr %new_state24.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %new_state24.i, align 4
  %mode_changed.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %mode_changed.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i = load i8, ptr %mode_changed.i.i, align 2
  %34 = and i8 %bf.load.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %35 = icmp ne i8 %34, 0
  %inc29.i = add i32 %num_crtcs.070.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc29.i)
  %cmp30.i = icmp sgt i32 %inc29.i, 1
  %or.cond62.i = select i1 %35, i1 true, i1 %cmp30.i
  br i1 %or.cond62.i, label %land.lhs.true18.i.land.end_crit_edge, label %land.lhs.true18.i.for.inc34.i_crit_edge

land.lhs.true18.i.for.inc34.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc34.i

land.lhs.true18.i.land.end_crit_edge:             ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

for.inc34.i:                                      ; preds = %land.lhs.true18.i.for.inc34.i_crit_edge, %for.body14.i.for.inc34.i_crit_edge
  %async_crtc.1 = phi ptr [ %async_crtc.0, %for.body14.i.for.inc34.i_crit_edge ], [ %30, %land.lhs.true18.i.for.inc34.i_crit_edge ]
  %num_crtcs.1.i = phi i32 [ %num_crtcs.070.i, %for.body14.i.for.inc34.i_crit_edge ], [ 1, %land.lhs.true18.i.for.inc34.i_crit_edge ]
  %inc35.i = add nuw nsw i32 %i.168.i, 1
  %exitcond.not = icmp eq i32 %inc35.i, %7
  br i1 %exitcond.not, label %for.inc34.i.land.end_crit_edge, label %for.inc34.i.for.body14.i_crit_edge

for.inc34.i.for.body14.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14.i

for.inc34.i.land.end_crit_edge:                   ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.end:                                         ; preds = %for.inc34.i.land.end_crit_edge, %land.lhs.true18.i.land.end_crit_edge, %for.body.i134.land.end_crit_edge, %for.cond12.preheader.i.land.end_crit_edge, %land.rhs.land.end_crit_edge, %get_crtc_mask.exit.land.end_crit_edge
  %async_crtc.3 = phi ptr [ null, %get_crtc_mask.exit.land.end_crit_edge ], [ null, %land.rhs.land.end_crit_edge ], [ null, %for.cond12.preheader.i.land.end_crit_edge ], [ %async_crtc.0, %land.lhs.true18.i.land.end_crit_edge ], [ %async_crtc.1, %for.inc34.i.land.end_crit_edge ], [ null, %for.body.i134.land.end_crit_edge ]
  %36 = phi i1 [ false, %get_crtc_mask.exit.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ true, %for.cond12.preheader.i.land.end_crit_edge ], [ false, %land.lhs.true18.i.land.end_crit_edge ], [ true, %for.inc34.i.land.end_crit_edge ], [ false, %for.body.i134.land.end_crit_edge ]
  tail call fastcc void @trace_msm_atomic_commit_tail_start(i1 noundef zeroext %36, i32 noundef %mask.0.lcssa.i)
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 8
  %enable_commit = getelementptr inbounds %struct.msm_kms_funcs, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %enable_commit to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %enable_commit, align 4
  tail call void %40(ptr noundef %5) #4
  %dev.i136 = getelementptr inbounds %struct.msm_kms, ptr %5, i32 0, i32 1
  %41 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i136, align 4
  %crtc_list.i = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 30, i32 20
  %43 = ptrtoint ptr %crtc_list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn16.i = load ptr, ptr %crtc_list.i, align 4
  %cmp.not18.i = icmp eq ptr %.pn16.i, %crtc_list.i
  br i1 %cmp.not18.i, label %land.end.lock_crtcs.exit_crit_edge, label %land.end.for.body.i140_crit_edge

land.end.for.body.i140_crit_edge:                 ; preds = %land.end
  br label %for.body.i140

land.end.lock_crtcs.exit_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lock_crtcs.exit

for.body.i140:                                    ; preds = %for.inc.i142.for.body.i140_crit_edge, %land.end.for.body.i140_crit_edge
  %.pn19.i = phi ptr [ %.pn.i, %for.inc.i142.for.body.i140_crit_edge ], [ %.pn16.i, %land.end.for.body.i140_crit_edge ]
  %index.i.i.i137 = getelementptr i8, ptr %.pn19.i, i32 148
  %44 = ptrtoint ptr %index.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index.i.i.i137, align 4
  %shl.i.i138 = shl nuw i32 1, %45
  %and.i = and i32 %shl.i.i138, %mask.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i139 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i139, label %for.body.i140.for.inc.i142_crit_edge, label %if.else.i

for.body.i140.for.inc.i142_crit_edge:             ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i142

if.else.i:                                        ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i141 = getelementptr %struct.msm_kms, ptr %5, i32 0, i32 7, i32 %45
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i141, i32 noundef %45) #4
  br label %for.inc.i142

for.inc.i142:                                     ; preds = %if.else.i, %for.body.i140.for.inc.i142_crit_edge
  %46 = ptrtoint ptr %.pn19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn19.i, align 4
  %47 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i136, align 4
  %crtc_list3.i = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 20
  %cmp.not.i = icmp eq ptr %.pn.i, %crtc_list3.i
  br i1 %cmp.not.i, label %for.inc.i142.lock_crtcs.exit_crit_edge, label %for.inc.i142.for.body.i140_crit_edge

for.inc.i142.for.body.i140_crit_edge:             ; preds = %for.inc.i142
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i140

for.inc.i142.lock_crtcs.exit_crit_edge:           ; preds = %for.inc.i142
  call void @__sanitizer_cov_trace_pc() #6
  br label %lock_crtcs.exit

lock_crtcs.exit:                                  ; preds = %for.inc.i142.lock_crtcs.exit_crit_edge, %land.end.lock_crtcs.exit_crit_edge
  tail call fastcc void @trace_msm_atomic_wait_flush_start(i32 noundef %mask.0.lcssa.i)
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 8
  %wait_flush = getelementptr inbounds %struct.msm_kms_funcs, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %wait_flush to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wait_flush, align 4
  tail call void %52(ptr noundef %5, i32 noundef %mask.0.lcssa.i) #4
  tail call fastcc void @trace_msm_atomic_wait_flush_finish(i32 noundef %mask.0.lcssa.i)
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %5, align 8
  %prepare_commit = getelementptr inbounds %struct.msm_kms_funcs, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %prepare_commit to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prepare_commit, align 4
  tail call void %56(ptr noundef %5, ptr noundef %state) #4
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %state) #4
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %state, i32 noundef 0) #4
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %state) #4
  br i1 %36, label %if.then, label %if.end42

if.then:                                          ; preds = %lock_crtcs.exit
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %async_crtc.3, i32 0, i32 8
  %57 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index.i, align 4
  %arrayidx = getelementptr %struct.msm_kms, ptr %5, i32 0, i32 9, i32 %58
  %shl.i = shl nuw i32 1, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %mask.0.lcssa.i, i32 %shl.i)
  %cmp.not = icmp eq i32 %mask.0.lcssa.i, %shl.i
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !41

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %pending_crtc_mask = getelementptr inbounds %struct.msm_kms, ptr %5, i32 0, i32 8
  %59 = ptrtoint ptr %pending_crtc_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pending_crtc_mask, align 4
  %and = and i32 %60, %mask.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.then32, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %60, %mask.0.lcssa.i
  %61 = ptrtoint ptr %pending_crtc_mask to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or, ptr %pending_crtc_mask, align 4
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %5, align 8
  %vsync_time36 = getelementptr inbounds %struct.msm_kms_funcs, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %vsync_time36 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vsync_time36, align 4
  %call37 = tail call i64 %65(ptr noundef %5, ptr noundef %async_crtc.3) #4
  %sub = add i64 %call37, -1000000
  tail call void @msm_hrtimer_queue_work(ptr noundef %arrayidx, i64 noundef %sub, i32 noundef 0) #4
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.end.if.end39_crit_edge
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 8
  %disable_commit = getelementptr inbounds %struct.msm_kms_funcs, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %disable_commit to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %disable_commit, align 4
  tail call void %69(ptr noundef %5) #4
  %70 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i136, align 4
  %prev.i = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 30, i32 20, i32 1
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn15.i = load ptr, ptr %prev.i, align 4
  %crtc_list316.i = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 30, i32 20
  %cmp.not17.i = icmp eq ptr %.pn15.i, %crtc_list316.i
  br i1 %cmp.not17.i, label %if.end39.cleanup_crit_edge, label %if.end39.for.body.i148_crit_edge

if.end39.for.body.i148_crit_edge:                 ; preds = %if.end39
  br label %for.body.i148

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i148:                                    ; preds = %for.inc.i154.for.body.i148_crit_edge, %if.end39.for.body.i148_crit_edge
  %.pn18.i = phi ptr [ %.pn.i151, %for.inc.i154.for.body.i148_crit_edge ], [ %.pn15.i, %if.end39.for.body.i148_crit_edge ]
  %index.i.i.i144 = getelementptr i8, ptr %.pn18.i, i32 148
  %73 = ptrtoint ptr %index.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %index.i.i.i144, align 4
  %shl.i.i145 = shl nuw i32 1, %74
  %and.i146 = and i32 %shl.i.i145, %mask.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  br i1 %tobool.not.i147, label %for.body.i148.for.inc.i154_crit_edge, label %if.else.i150

for.body.i148.for.inc.i154_crit_edge:             ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i154

if.else.i150:                                     ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i149 = getelementptr %struct.msm_kms, ptr %5, i32 0, i32 7, i32 %74
  tail call void @mutex_unlock(ptr noundef %arrayidx.i149) #4
  br label %for.inc.i154

for.inc.i154:                                     ; preds = %if.else.i150, %for.body.i148.for.inc.i154_crit_edge
  %prev7.i = getelementptr inbounds %struct.list_head, ptr %.pn18.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn.i151 = load ptr, ptr %prev7.i, align 4
  %76 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i136, align 4
  %crtc_list3.i152 = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 30, i32 20
  %cmp.not.i153 = icmp eq ptr %.pn.i151, %crtc_list3.i152
  br i1 %cmp.not.i153, label %for.inc.i154.cleanup_crit_edge, label %for.inc.i154.for.body.i148_crit_edge

for.inc.i154.for.body.i148_crit_edge:             ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i148

for.inc.i154.cleanup_crit_edge:                   ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %lock_crtcs.exit
  %neg = xor i32 %mask.0.lcssa.i, -1
  %pending_crtc_mask43 = getelementptr inbounds %struct.msm_kms, ptr %5, i32 0, i32 8
  %78 = ptrtoint ptr %pending_crtc_mask43 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pending_crtc_mask43, align 4
  %and44 = and i32 %79, %neg
  store i32 %and44, ptr %pending_crtc_mask43, align 4
  %80 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i136, align 4
  %crtc_list.i156 = getelementptr inbounds %struct.drm_device, ptr %81, i32 0, i32 30, i32 20
  %82 = ptrtoint ptr %crtc_list.i156 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn18.i157 = load ptr, ptr %crtc_list.i156, align 4
  %cmp.not21.i = icmp eq ptr %.pn18.i157, %crtc_list.i156
  br i1 %cmp.not21.i, label %if.end42.vblank_get.exit_crit_edge, label %if.end42.for.body.i162_crit_edge

if.end42.for.body.i162_crit_edge:                 ; preds = %if.end42
  br label %for.body.i162

if.end42.vblank_get.exit_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %vblank_get.exit

for.body.i162:                                    ; preds = %for.inc.i167.for.body.i162_crit_edge, %if.end42.for.body.i162_crit_edge
  %.pn22.i = phi ptr [ %.pn.i164, %for.inc.i167.for.body.i162_crit_edge ], [ %.pn18.i157, %if.end42.for.body.i162_crit_edge ]
  %crtc.023.i = getelementptr i8, ptr %.pn22.i, i32 -8
  %index.i.i.i158 = getelementptr i8, ptr %.pn22.i, i32 148
  %83 = ptrtoint ptr %index.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %index.i.i.i158, align 4
  %shl.i.i159 = shl nuw i32 1, %84
  %and.i160 = and i32 %shl.i.i159, %mask.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i160)
  %tobool.not.i161 = icmp eq i32 %and.i160, 0
  br i1 %tobool.not.i161, label %for.body.i162.for.inc.i167_crit_edge, label %if.else.i163

for.body.i162.for.inc.i167_crit_edge:             ; preds = %for.body.i162
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i167

if.else.i163:                                     ; preds = %for.body.i162
  %state.i = getelementptr i8, ptr %.pn22.i, i32 716
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state.i, align 4
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %active.i, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool4.not.i = icmp eq i8 %88, 0
  br i1 %tobool4.not.i, label %if.else.i163.for.inc.i167_crit_edge, label %if.end.i

if.else.i163.for.inc.i167_crit_edge:              ; preds = %if.else.i163
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i167

if.end.i:                                         ; preds = %if.else.i163
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc.023.i) #4
  br label %for.inc.i167

for.inc.i167:                                     ; preds = %if.end.i, %if.else.i163.for.inc.i167_crit_edge, %for.body.i162.for.inc.i167_crit_edge
  %89 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn.i164 = load ptr, ptr %.pn22.i, align 4
  %90 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i136, align 4
  %crtc_list3.i165 = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 30, i32 20
  %cmp.not.i166 = icmp eq ptr %.pn.i164, %crtc_list3.i165
  br i1 %cmp.not.i166, label %for.inc.i167.vblank_get.exit_crit_edge, label %for.inc.i167.for.body.i162_crit_edge

for.inc.i167.for.body.i162_crit_edge:             ; preds = %for.inc.i167
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i162

for.inc.i167.vblank_get.exit_crit_edge:           ; preds = %for.inc.i167
  call void @__sanitizer_cov_trace_pc() #6
  br label %vblank_get.exit

vblank_get.exit:                                  ; preds = %for.inc.i167.vblank_get.exit_crit_edge, %if.end42.vblank_get.exit_crit_edge
  tail call fastcc void @trace_msm_atomic_flush_commit(i32 noundef %mask.0.lcssa.i)
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %5, align 8
  %flush_commit = getelementptr inbounds %struct.msm_kms_funcs, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %flush_commit to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %flush_commit, align 4
  tail call void %95(ptr noundef %5, i32 noundef %mask.0.lcssa.i) #4
  %96 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i136, align 4
  %prev.i169 = getelementptr inbounds %struct.drm_device, ptr %97, i32 0, i32 30, i32 20, i32 1
  %98 = ptrtoint ptr %prev.i169 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn15.i170 = load ptr, ptr %prev.i169, align 4
  %crtc_list316.i171 = getelementptr inbounds %struct.drm_device, ptr %97, i32 0, i32 30, i32 20
  %cmp.not17.i172 = icmp eq ptr %.pn15.i170, %crtc_list316.i171
  br i1 %cmp.not17.i172, label %vblank_get.exit.unlock_crtcs.exit186_crit_edge, label %vblank_get.exit.for.body.i178_crit_edge

vblank_get.exit.for.body.i178_crit_edge:          ; preds = %vblank_get.exit
  br label %for.body.i178

vblank_get.exit.unlock_crtcs.exit186_crit_edge:   ; preds = %vblank_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_crtcs.exit186

for.body.i178:                                    ; preds = %for.inc.i185.for.body.i178_crit_edge, %vblank_get.exit.for.body.i178_crit_edge
  %.pn18.i173 = phi ptr [ %.pn.i182, %for.inc.i185.for.body.i178_crit_edge ], [ %.pn15.i170, %vblank_get.exit.for.body.i178_crit_edge ]
  %index.i.i.i174 = getelementptr i8, ptr %.pn18.i173, i32 148
  %99 = ptrtoint ptr %index.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %index.i.i.i174, align 4
  %shl.i.i175 = shl nuw i32 1, %100
  %and.i176 = and i32 %shl.i.i175, %mask.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i176)
  %tobool.not.i177 = icmp eq i32 %and.i176, 0
  br i1 %tobool.not.i177, label %for.body.i178.for.inc.i185_crit_edge, label %if.else.i180

for.body.i178.for.inc.i185_crit_edge:             ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i185

if.else.i180:                                     ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i179 = getelementptr %struct.msm_kms, ptr %5, i32 0, i32 7, i32 %100
  tail call void @mutex_unlock(ptr noundef %arrayidx.i179) #4
  br label %for.inc.i185

for.inc.i185:                                     ; preds = %if.else.i180, %for.body.i178.for.inc.i185_crit_edge
  %prev7.i181 = getelementptr inbounds %struct.list_head, ptr %.pn18.i173, i32 0, i32 1
  %101 = ptrtoint ptr %prev7.i181 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pn.i182 = load ptr, ptr %prev7.i181, align 4
  %102 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i136, align 4
  %crtc_list3.i183 = getelementptr inbounds %struct.drm_device, ptr %103, i32 0, i32 30, i32 20
  %cmp.not.i184 = icmp eq ptr %.pn.i182, %crtc_list3.i183
  br i1 %cmp.not.i184, label %for.inc.i185.unlock_crtcs.exit186_crit_edge, label %for.inc.i185.for.body.i178_crit_edge

for.inc.i185.for.body.i178_crit_edge:             ; preds = %for.inc.i185
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i178

for.inc.i185.unlock_crtcs.exit186_crit_edge:      ; preds = %for.inc.i185
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_crtcs.exit186

unlock_crtcs.exit186:                             ; preds = %for.inc.i185.unlock_crtcs.exit186_crit_edge, %vblank_get.exit.unlock_crtcs.exit186_crit_edge
  tail call fastcc void @trace_msm_atomic_wait_flush_start(i32 noundef %mask.0.lcssa.i)
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %5, align 8
  %wait_flush47 = getelementptr inbounds %struct.msm_kms_funcs, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %wait_flush47 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %wait_flush47, align 4
  tail call void %107(ptr noundef %5, i32 noundef %mask.0.lcssa.i) #4
  tail call fastcc void @trace_msm_atomic_wait_flush_finish(i32 noundef %mask.0.lcssa.i)
  %108 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i136, align 4
  %crtc_list.i188 = getelementptr inbounds %struct.drm_device, ptr %109, i32 0, i32 30, i32 20
  %110 = ptrtoint ptr %crtc_list.i188 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn17.i = load ptr, ptr %crtc_list.i188, align 4
  %cmp.not20.i = icmp eq ptr %.pn17.i, %crtc_list.i188
  br i1 %cmp.not20.i, label %unlock_crtcs.exit186.vblank_put.exit_crit_edge, label %unlock_crtcs.exit186.for.body.i193_crit_edge

unlock_crtcs.exit186.for.body.i193_crit_edge:     ; preds = %unlock_crtcs.exit186
  br label %for.body.i193

unlock_crtcs.exit186.vblank_put.exit_crit_edge:   ; preds = %unlock_crtcs.exit186
  call void @__sanitizer_cov_trace_pc() #6
  br label %vblank_put.exit

for.body.i193:                                    ; preds = %for.inc.i202.for.body.i193_crit_edge, %unlock_crtcs.exit186.for.body.i193_crit_edge
  %.pn21.i = phi ptr [ %.pn.i199, %for.inc.i202.for.body.i193_crit_edge ], [ %.pn17.i, %unlock_crtcs.exit186.for.body.i193_crit_edge ]
  %crtc.022.i = getelementptr i8, ptr %.pn21.i, i32 -8
  %index.i.i.i189 = getelementptr i8, ptr %.pn21.i, i32 148
  %111 = ptrtoint ptr %index.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %index.i.i.i189, align 4
  %shl.i.i190 = shl nuw i32 1, %112
  %and.i191 = and i32 %shl.i.i190, %mask.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191)
  %tobool.not.i192 = icmp eq i32 %and.i191, 0
  br i1 %tobool.not.i192, label %for.body.i193.for.inc.i202_crit_edge, label %if.else.i197

for.body.i193.for.inc.i202_crit_edge:             ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i202

if.else.i197:                                     ; preds = %for.body.i193
  %state.i194 = getelementptr i8, ptr %.pn21.i, i32 716
  %113 = ptrtoint ptr %state.i194 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %state.i194, align 4
  %active.i195 = getelementptr inbounds %struct.drm_crtc_state, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %active.i195 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %active.i195, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool4.not.i196 = icmp eq i8 %116, 0
  br i1 %tobool4.not.i196, label %if.else.i197.for.inc.i202_crit_edge, label %if.end.i198

if.else.i197.for.inc.i202_crit_edge:              ; preds = %if.else.i197
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i202

if.end.i198:                                      ; preds = %if.else.i197
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc.022.i) #4
  br label %for.inc.i202

for.inc.i202:                                     ; preds = %if.end.i198, %if.else.i197.for.inc.i202_crit_edge, %for.body.i193.for.inc.i202_crit_edge
  %117 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pn.i199 = load ptr, ptr %.pn21.i, align 4
  %118 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i136, align 4
  %crtc_list3.i200 = getelementptr inbounds %struct.drm_device, ptr %119, i32 0, i32 30, i32 20
  %cmp.not.i201 = icmp eq ptr %.pn.i199, %crtc_list3.i200
  br i1 %cmp.not.i201, label %for.inc.i202.vblank_put.exit_crit_edge, label %for.inc.i202.for.body.i193_crit_edge

for.inc.i202.for.body.i193_crit_edge:             ; preds = %for.inc.i202
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i193

for.inc.i202.vblank_put.exit_crit_edge:           ; preds = %for.inc.i202
  call void @__sanitizer_cov_trace_pc() #6
  br label %vblank_put.exit

vblank_put.exit:                                  ; preds = %for.inc.i202.vblank_put.exit_crit_edge, %unlock_crtcs.exit186.vblank_put.exit_crit_edge
  %120 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i136, align 4
  %crtc_list.i204 = getelementptr inbounds %struct.drm_device, ptr %121, i32 0, i32 30, i32 20
  %122 = ptrtoint ptr %crtc_list.i204 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn16.i205 = load ptr, ptr %crtc_list.i204, align 4
  %cmp.not18.i206 = icmp eq ptr %.pn16.i205, %crtc_list.i204
  br i1 %cmp.not18.i206, label %vblank_put.exit.lock_crtcs.exit219_crit_edge, label %vblank_put.exit.for.body.i212_crit_edge

vblank_put.exit.for.body.i212_crit_edge:          ; preds = %vblank_put.exit
  br label %for.body.i212

vblank_put.exit.lock_crtcs.exit219_crit_edge:     ; preds = %vblank_put.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lock_crtcs.exit219

for.body.i212:                                    ; preds = %for.inc.i218.for.body.i212_crit_edge, %vblank_put.exit.for.body.i212_crit_edge
  %.pn19.i207 = phi ptr [ %.pn.i215, %for.inc.i218.for.body.i212_crit_edge ], [ %.pn16.i205, %vblank_put.exit.for.body.i212_crit_edge ]
  %index.i.i.i208 = getelementptr i8, ptr %.pn19.i207, i32 148
  %123 = ptrtoint ptr %index.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %index.i.i.i208, align 4
  %shl.i.i209 = shl nuw i32 1, %124
  %and.i210 = and i32 %shl.i.i209, %mask.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool.not.i211 = icmp eq i32 %and.i210, 0
  br i1 %tobool.not.i211, label %for.body.i212.for.inc.i218_crit_edge, label %if.else.i214

for.body.i212.for.inc.i218_crit_edge:             ; preds = %for.body.i212
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i218

if.else.i214:                                     ; preds = %for.body.i212
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i213 = getelementptr %struct.msm_kms, ptr %5, i32 0, i32 7, i32 %124
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i213, i32 noundef %124) #4
  br label %for.inc.i218

for.inc.i218:                                     ; preds = %if.else.i214, %for.body.i212.for.inc.i218_crit_edge
  %125 = ptrtoint ptr %.pn19.i207 to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pn.i215 = load ptr, ptr %.pn19.i207, align 4
  %126 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i136, align 4
  %crtc_list3.i216 = getelementptr inbounds %struct.drm_device, ptr %127, i32 0, i32 30, i32 20
  %cmp.not.i217 = icmp eq ptr %.pn.i215, %crtc_list3.i216
  br i1 %cmp.not.i217, label %for.inc.i218.lock_crtcs.exit219_crit_edge, label %for.inc.i218.for.body.i212_crit_edge

for.inc.i218.for.body.i212_crit_edge:             ; preds = %for.inc.i218
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i212

for.inc.i218.lock_crtcs.exit219_crit_edge:        ; preds = %for.inc.i218
  call void @__sanitizer_cov_trace_pc() #6
  br label %lock_crtcs.exit219

lock_crtcs.exit219:                               ; preds = %for.inc.i218.lock_crtcs.exit219_crit_edge, %vblank_put.exit.lock_crtcs.exit219_crit_edge
  %128 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %5, align 8
  %complete_commit = getelementptr inbounds %struct.msm_kms_funcs, ptr %129, i32 0, i32 13
  %130 = ptrtoint ptr %complete_commit to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %complete_commit, align 4
  tail call void %131(ptr noundef %5, i32 noundef %mask.0.lcssa.i) #4
  %132 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i136, align 4
  %prev.i221 = getelementptr inbounds %struct.drm_device, ptr %133, i32 0, i32 30, i32 20, i32 1
  %134 = ptrtoint ptr %prev.i221 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn15.i222 = load ptr, ptr %prev.i221, align 4
  %crtc_list316.i223 = getelementptr inbounds %struct.drm_device, ptr %133, i32 0, i32 30, i32 20
  %cmp.not17.i224 = icmp eq ptr %.pn15.i222, %crtc_list316.i223
  br i1 %cmp.not17.i224, label %lock_crtcs.exit219.unlock_crtcs.exit238_crit_edge, label %lock_crtcs.exit219.for.body.i230_crit_edge

lock_crtcs.exit219.for.body.i230_crit_edge:       ; preds = %lock_crtcs.exit219
  br label %for.body.i230

lock_crtcs.exit219.unlock_crtcs.exit238_crit_edge: ; preds = %lock_crtcs.exit219
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_crtcs.exit238

for.body.i230:                                    ; preds = %for.inc.i237.for.body.i230_crit_edge, %lock_crtcs.exit219.for.body.i230_crit_edge
  %.pn18.i225 = phi ptr [ %.pn.i234, %for.inc.i237.for.body.i230_crit_edge ], [ %.pn15.i222, %lock_crtcs.exit219.for.body.i230_crit_edge ]
  %index.i.i.i226 = getelementptr i8, ptr %.pn18.i225, i32 148
  %135 = ptrtoint ptr %index.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %index.i.i.i226, align 4
  %shl.i.i227 = shl nuw i32 1, %136
  %and.i228 = and i32 %shl.i.i227, %mask.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.not.i229 = icmp eq i32 %and.i228, 0
  br i1 %tobool.not.i229, label %for.body.i230.for.inc.i237_crit_edge, label %if.else.i232

for.body.i230.for.inc.i237_crit_edge:             ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i237

if.else.i232:                                     ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i231 = getelementptr %struct.msm_kms, ptr %5, i32 0, i32 7, i32 %136
  tail call void @mutex_unlock(ptr noundef %arrayidx.i231) #4
  br label %for.inc.i237

for.inc.i237:                                     ; preds = %if.else.i232, %for.body.i230.for.inc.i237_crit_edge
  %prev7.i233 = getelementptr inbounds %struct.list_head, ptr %.pn18.i225, i32 0, i32 1
  %137 = ptrtoint ptr %prev7.i233 to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pn.i234 = load ptr, ptr %prev7.i233, align 4
  %138 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i136, align 4
  %crtc_list3.i235 = getelementptr inbounds %struct.drm_device, ptr %139, i32 0, i32 30, i32 20
  %cmp.not.i236 = icmp eq ptr %.pn.i234, %crtc_list3.i235
  br i1 %cmp.not.i236, label %for.inc.i237.unlock_crtcs.exit238_crit_edge, label %for.inc.i237.for.body.i230_crit_edge

for.inc.i237.for.body.i230_crit_edge:             ; preds = %for.inc.i237
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i230

for.inc.i237.unlock_crtcs.exit238_crit_edge:      ; preds = %for.inc.i237
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock_crtcs.exit238

unlock_crtcs.exit238:                             ; preds = %for.inc.i237.unlock_crtcs.exit238_crit_edge, %lock_crtcs.exit219.unlock_crtcs.exit238_crit_edge
  %140 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %5, align 8
  %disable_commit50 = getelementptr inbounds %struct.msm_kms_funcs, ptr %141, i32 0, i32 8
  %142 = ptrtoint ptr %disable_commit50 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %disable_commit50, align 4
  tail call void %143(ptr noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %unlock_crtcs.exit238, %for.inc.i154.cleanup_crit_edge, %if.end39.cleanup_crit_edge
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %state) #4
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %state) #4
  tail call fastcc void @trace_msm_atomic_commit_tail_finish(i1 noundef zeroext %36, i32 noundef %mask.0.lcssa.i)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_atomic_commit_tail_start(i1 noundef zeroext %async, i32 noundef %crtc_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_start, i32 0, i32 1), ptr blockaddress(@trace_msm_atomic_commit_tail_start, %do.body)) #4
          to label %if.end49 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !41

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !43
  %call43 = tail call i32 @__traceiter_msm_atomic_commit_tail_start(ptr noundef null, i1 noundef zeroext %async, i32 noundef %crtc_mask) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !44
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !41

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_start, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_msm_atomic_commit_tail_start.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @trace_msm_atomic_commit_tail_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 24, ptr noundef nonnull @.str.3) #4
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_atomic_wait_flush_start(i32 noundef %crtc_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_start, i32 0, i32 1), ptr blockaddress(@trace_msm_atomic_wait_flush_start, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !41

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !47
  %call42 = tail call i32 @__traceiter_msm_atomic_wait_flush_start(ptr noundef null, i32 noundef %crtc_mask) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !48
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !41

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_atomic_wait_flush_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @trace_msm_atomic_wait_flush_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 78, ptr noundef nonnull @.str.3) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_atomic_wait_flush_finish(i32 noundef %crtc_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_finish, i32 0, i32 1), ptr blockaddress(@trace_msm_atomic_wait_flush_finish, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !41

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !49
  %call42 = tail call i32 @__traceiter_msm_atomic_wait_flush_finish(ptr noundef null, i32 noundef %crtc_mask) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !50
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !41

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_finish, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_finish, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_atomic_wait_flush_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @trace_msm_atomic_wait_flush_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 91, ptr noundef nonnull @.str.3) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hrtimer_queue_work(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_atomic_commit_tail_finish(i1 noundef zeroext %async, i32 noundef %crtc_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_finish, i32 0, i32 1), ptr blockaddress(@trace_msm_atomic_commit_tail_finish, %do.body)) #4
          to label %if.end49 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !41

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !51
  %call43 = tail call i32 @__traceiter_msm_atomic_commit_tail_finish(ptr noundef null, i1 noundef zeroext %async, i32 noundef %crtc_mask) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !41

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_finish, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_finish, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_msm_atomic_commit_tail_finish.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @trace_msm_atomic_commit_tail_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 39, ptr noundef nonnull @.str.3) #4
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_atomic_flush_commit(i32 noundef %crtc_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_flush_commit, i32 0, i32 1), ptr blockaddress(@trace_msm_atomic_flush_commit, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !41

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !53
  %call42 = tail call i32 @__traceiter_msm_atomic_flush_commit(ptr noundef null, i32 noundef %crtc_mask) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !54
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !41

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_flush_commit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_flush_commit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_atomic_flush_commit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @trace_msm_atomic_flush_commit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 104, ptr noundef nonnull @.str.3) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_atomic_async_commit_start(i32 noundef %crtc_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_start, i32 0, i32 1), ptr blockaddress(@trace_msm_atomic_async_commit_start, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !41

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !55
  %call42 = tail call i32 @__traceiter_msm_atomic_async_commit_start(ptr noundef null, i32 noundef %crtc_mask) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !56
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !41

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_atomic_async_commit_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @trace_msm_atomic_async_commit_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 52, ptr noundef nonnull @.str.3) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_atomic_async_commit_finish(i32 noundef %crtc_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_finish, i32 0, i32 1), ptr blockaddress(@trace_msm_atomic_async_commit_finish, %do.body)) #4
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !41

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !57
  %call42 = tail call i32 @__traceiter_msm_atomic_async_commit_finish(ptr noundef null, i32 noundef %crtc_mask) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !58
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !41

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_finish, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_finish, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_atomic_async_commit_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @trace_msm_atomic_async_commit_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 65, ptr noundef nonnull @.str.3) #4
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !46
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #4
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_async_commit_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_async_commit_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_commit_tail_start(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_wait_flush_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_wait_flush_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_commit_tail_finish(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_atomic_flush_commit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_atomic.c", i32 133, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_atomic.c", i32 238, i32 3}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/msm_atomic_trace.h", i32 41, i32 1}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/msm_atomic_trace.h", i32 54, i32 1}
!14 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/msm_atomic_trace.h", i32 11, i32 1}
!17 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/msm_atomic_trace.h", i32 67, i32 1}
!20 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/msm_atomic_trace.h", i32 80, i32 1}
!23 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/msm_atomic_trace.h", i32 26, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/msm_atomic_trace.h", i32 93, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i8 0, i8 2}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148173940, i64 2148173945, i64 2148173958, i64 2148174002, i64 2148174036, i64 2148174057}
!43 = !{i64 2154804021}
!44 = !{i64 2154804272}
!45 = !{i64 2149342704}
!46 = !{i64 2149343740}
!47 = !{i64 2154877987}
!48 = !{i64 2154878222}
!49 = !{i64 2154899290}
!50 = !{i64 2154899527}
!51 = !{i64 2154821666}
!52 = !{i64 2154821919}
!53 = !{i64 2154916397}
!54 = !{i64 2154916624}
!55 = !{i64 2154843195}
!56 = !{i64 2154843434}
!57 = !{i64 2154860621}
!58 = !{i64 2154860862}
