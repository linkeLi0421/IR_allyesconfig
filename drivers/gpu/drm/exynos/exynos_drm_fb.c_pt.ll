; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.atomic_t = type { i32 }
%struct.anon.88 = type { i32, ptr }
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.exynos_drm_gem = type { %struct.drm_gem_object, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }

@exynos_drm_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to initialize framebuffer\0A\00", [54 x i8] zeroinitializer }, align 32
@exynos_drm_fb_dma_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/exynos/exynos_drm_fb.c\00", [57 x i8] zeroinitializer }, align 32
@exynos_drm_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @exynos_user_fb_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@exynos_drm_mode_config_helpers = internal global { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail_rpm, ptr null }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"*ERROR* Non-contiguous GEM memory is not supported.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to lookup gem object\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"exynos_drm_fb_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 52, i32 43 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 83, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 146, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [29 x i8] c"exynos_drm_mode_config_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 157, i32 43 }
@___asan_gen_.20 = private unnamed_addr constant [31 x i8] c"exynos_drm_mode_config_helpers\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 153, i32 44 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 44, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [42 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_fb.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 114, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @exynos_drm_fb_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @exynos_drm_mode_config_funcs, ptr @exynos_drm_mode_config_helpers, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_framebuffer_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr nocapture noundef readonly %exynos_gem, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp33 = icmp sgt i32 %count, 0
  br i1 %cmp33, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_private.i.i, align 4
  %mapping.i.i = getelementptr inbounds %struct.exynos_drm_private, ptr %2, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %exynos_gem, i32 %i.034
  %3 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapping.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %4, null
  br i1 %tobool.i.not.i, label %if.end.i, label %for.body.if.end5_crit_edge

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %for.body
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %flags1.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags1.i, align 8
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5_crit_edge, label %check_fb_gem_memory_type.exit

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

check_fb_gem_memory_type.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #6
  br label %err

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 %i.034
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %mode_cmd) #6
  %call8 = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @exynos_drm_fb_funcs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %phi.cast = inttoptr i32 %call8 to ptr
  br label %err

err:                                              ; preds = %if.then10, %check_fb_gem_memory_type.exit
  %ret.0 = phi ptr [ inttoptr (i32 -22 to ptr), %check_fb_gem_memory_type.exit ], [ %phi.cast, %if.then10 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %err ], [ %call7.i.i, %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_fb_dma_addr(ptr nocapture noundef readonly %fb, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp sgt i32 %index, 3
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b45 = load i1, ptr @exynos_drm_fb_dma_addr.__already_done, align 1
  br i1 %.b45, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !25

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @exynos_drm_fb_dma_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 146, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %dma_addr = getelementptr inbounds %struct.exynos_drm_gem, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr, align 8
  %arrayidx39 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 %index
  %4 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx39, align 4
  %add = add i32 %5, %3
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end37 ], [ 0, %if.then ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @exynos_drm_mode_config_init(ptr nocapture noundef writeonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %min_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 23
  %0 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 24
  %1 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %3 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %max_height, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @exynos_drm_mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 103
  %5 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @exynos_drm_mode_config_helpers, ptr %helper_private, align 4
  %normalize_zpos = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 98
  %6 = ptrtoint ptr %normalize_zpos to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %normalize_zpos, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @exynos_user_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #0 align 64 {
entry:
  %exynos_gem = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %exynos_gem) #6
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %0 = call ptr @memset(ptr %exynos_gem, i32 255, i32 16)
  %1 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp67.not = icmp eq i8 %2, 0
  br i1 %cmp67.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %height5 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.068)
  %cmp2 = icmp eq i32 %i.068, 0
  %3 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height5, align 8
  br i1 %cmp2, label %for.body.cond.end_crit_edge, label %cond.false

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vsub, align 1
  %conv6 = zext i8 %6 to i32
  %add = add i32 %4, -1
  %sub = add i32 %add, %conv6
  %div = udiv i32 %sub, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ %4, %for.body.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 %i.068
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 %i.068
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5, i32 %i.068
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11, align 4
  %call12 = tail call ptr @exynos_drm_gem_get(ptr noundef %file_priv, i32 noundef %12) #6
  %arrayidx13 = getelementptr [4 x ptr], ptr %exynos_gem, i32 0, i32 %i.068
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %arrayidx13, align 4
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #6
  br label %err

if.end:                                           ; preds = %cond.end
  %mul = mul i32 %8, %cond
  %add10 = add i32 %mul, %10
  %size17 = getelementptr inbounds %struct.exynos_drm_gem, ptr %call12, i32 0, i32 2
  %16 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %17)
  %cmp18 = icmp ugt i32 %add10, %17
  %inc = add nuw nsw i32 %i.068, 1
  br i1 %cmp18, label %if.end.while.body.preheader_crit_edge, label %for.inc

if.end.while.body.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

for.inc:                                          ; preds = %if.end
  %18 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %call24 = call ptr @exynos_drm_framebuffer_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef nonnull %exynos_gem, i32 noundef %i.0.lcssa)
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end.err_crit_edge, label %for.end.cleanup32_crit_edge

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

err:                                              ; preds = %for.end.err_crit_edge, %if.then
  %i.2 = phi i32 [ %i.068, %if.then ], [ %i.0.lcssa, %for.end.err_crit_edge ]
  %ret.2 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then ], [ %call24, %for.end.err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %tobool29.not69 = icmp eq i32 %i.2, 0
  br i1 %tobool29.not69, label %err.cleanup32_crit_edge, label %err.while.body.preheader_crit_edge

err.while.body.preheader_crit_edge:               ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

err.cleanup32_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

while.body.preheader:                             ; preds = %err.while.body.preheader_crit_edge, %if.end.while.body.preheader_crit_edge
  %ret.277 = phi ptr [ %ret.2, %err.while.body.preheader_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.while.body.preheader_crit_edge ]
  %i.276 = phi i32 [ %i.2, %err.while.body.preheader_crit_edge ], [ %inc, %if.end.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %exynos_drm_gem_put.exit.while.body_crit_edge, %while.body.preheader
  %i.370 = phi i32 [ %dec, %exynos_drm_gem_put.exit.while.body_crit_edge ], [ %i.276, %while.body.preheader ]
  %dec = add nsw i32 %i.370, -1
  %arrayidx30 = getelementptr [4 x ptr], ptr %exynos_gem, i32 0, i32 %dec
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx30, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %while.body.exynos_drm_gem_put.exit_crit_edge, label %if.then.i.i

while.body.exynos_drm_gem_put.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_gem_put.exit

if.then.i.i:                                      ; preds = %while.body
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %21, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr nonnull %21, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #6, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_drm_gem_put.exit

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef 3) #6
  br label %exynos_drm_gem_put.exit

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @drm_gem_object_free(ptr noundef nonnull %21) #6
  br label %exynos_drm_gem_put.exit

exynos_drm_gem_put.exit:                          ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.exynos_drm_gem_put.exit_crit_edge, %while.body.exynos_drm_gem_put.exit_crit_edge
  %tobool29.not = icmp eq i32 %dec, 0
  br i1 %tobool29.not, label %exynos_drm_gem_put.exit.cleanup32_crit_edge, label %exynos_drm_gem_put.exit.while.body_crit_edge

exynos_drm_gem_put.exit.while.body_crit_edge:     ; preds = %exynos_drm_gem_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

exynos_drm_gem_put.exit.cleanup32_crit_edge:      ; preds = %exynos_drm_gem_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

cleanup32:                                        ; preds = %exynos_drm_gem_put.exit.cleanup32_crit_edge, %err.cleanup32_crit_edge, %for.end.cleanup32_crit_edge
  %retval.0 = phi ptr [ %call24, %for.end.cleanup32_crit_edge ], [ %ret.2, %err.cleanup32_crit_edge ], [ %ret.277, %exynos_drm_gem_put.exit.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %exynos_gem) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fb.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fb.c", i32 146, i32 6}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fb.c", i32 44, i32 3}
!8 = !{ptr @exynos_drm_fb_funcs, !9, !"exynos_drm_fb_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fb.c", i32 52, i32 43}
!10 = !{ptr @exynos_drm_mode_config_funcs, !11, !"exynos_drm_mode_config_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fb.c", i32 157, i32 43}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fb.c", i32 114, i32 4}
!14 = !{ptr @exynos_drm_mode_config_helpers, !15, !"exynos_drm_mode_config_helpers", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fb.c", i32 153, i32 44}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148522021}
!27 = !{i64 2148436473, i64 2148436505, i64 2148436534, i64 2148436568, i64 2148436599, i64 2148436622}
!28 = !{i64 2150170172}
