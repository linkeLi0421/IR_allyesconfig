; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_fbdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_fbdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_fb_helper_funcs = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.exynos_drm_fbdev = type { %struct.drm_fb_helper, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.87, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }
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
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@exynos_drm_fb_helper_funcs = internal constant { %struct.drm_fb_helper_funcs, [28 x i8] } { %struct.drm_fb_helper_funcs { ptr @exynos_drm_fbdev_create }, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to initialize drm fb helper.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* failed to set up hw configuration.\0A\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"surface width(%d), height(%d) and bpp(%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to create drm framebuffer.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to allocate fb info.\0A\00", [59 x i8] zeroinitializer }, align 32
@exynos_drm_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_cfb_fillrect, ptr @drm_fb_helper_cfb_copyarea, ptr @drm_fb_helper_cfb_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr @exynos_drm_fb_mmap, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"exynos_drm_fb_helper_funcs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 143, i32 41 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 167, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 174, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 96, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 118, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 67, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"exynos_drm_fb_ops\00", align 1
@___asan_gen_.28 = private constant [45 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_fbdev.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 47, i32 28 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @exynos_drm_fb_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @exynos_drm_fb_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_fb_helper_funcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_fbdev_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 460) #7
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %1, align 4
  tail call void @drm_fb_helper_prepare(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @exynos_drm_fb_helper_funcs) #4
  %call4 = tail call i32 @drm_fb_helper_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  br label %err_init

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @drm_fb_helper_initial_config(ptr noundef nonnull %call7.i.i, i32 noundef 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %call7.i.i) #4
  br label %err_init

err_init:                                         ; preds = %if.then10, %if.then5
  %ret.0 = phi i32 [ %call4, %if.then5 ], [ %call8, %if.then10 ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %1, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_init, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_init ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_drm_fbdev_fini(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %fb1.i = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.exynos_drm_fbdev_destroy.exit_crit_edge, label %land.lhs.true.i

if.end.exynos_drm_fbdev_destroy.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos_drm_fbdev_destroy.exit

land.lhs.true.i:                                  ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.exynos_drm_fbdev_destroy.exit_crit_edge, label %if.then6.i

land.lhs.true.i.exynos_drm_fbdev_destroy.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos_drm_fbdev_destroy.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_framebuffer_remove(ptr noundef nonnull %5) #4
  br label %exynos_drm_fbdev_destroy.exit

exynos_drm_fbdev_destroy.exit:                    ; preds = %if.then6.i, %land.lhs.true.i.exynos_drm_fbdev_destroy.exit_crit_edge, %if.end.exynos_drm_fbdev_destroy.exit_crit_edge
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef nonnull %3) #4
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %3) #4
  tail call void @kfree(ptr noundef nonnull %3) #4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %exynos_drm_fbdev_destroy.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_fbdev_create(ptr noundef %helper, ptr noundef %sizes) #0 align 64 {
entry:
  %exynos_gem = alloca ptr, align 4
  %mode_cmd = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exynos_gem) #4
  %dev1 = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mode_cmd) #4
  %2 = call ptr @memset(ptr %mode_cmd, i32 0, i32 104)
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %surface_width = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 2
  %5 = ptrtoint ptr %surface_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %surface_width, align 4
  %surface_height = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 3
  %7 = ptrtoint ptr %surface_height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %surface_height, align 4
  %surface_bpp = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 4
  %9 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %surface_bpp, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %8, i32 noundef %10) #4
  %11 = ptrtoint ptr %surface_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %surface_width, align 4
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %13 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %width, align 4
  %14 = ptrtoint ptr %surface_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %surface_height, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height, align 8
  %17 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %surface_bpp, align 4
  %shr = lshr i32 %18, 3
  %mul = mul i32 %shr, %12
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %19 = ptrtoint ptr %pitches to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %pitches, align 4
  %surface_depth = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 5
  %20 = ptrtoint ptr %surface_depth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %surface_depth, align 4
  %call = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %18, i32 noundef %21) #4
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %22 = ptrtoint ptr %pixel_format to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call, ptr %pixel_format, align 4
  %mul11 = mul i32 %15, %mul
  %call12 = tail call ptr @exynos_drm_gem_create(ptr noundef %1, i32 noundef 4, i32 noundef %mul11, i1 noundef zeroext true) #4
  %23 = ptrtoint ptr %exynos_gem to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call12, ptr %exynos_gem, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %exynos_gem15 = getelementptr inbounds %struct.exynos_drm_fbdev, ptr %helper, i32 0, i32 1
  %25 = ptrtoint ptr %exynos_gem15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call12, ptr %exynos_gem15, align 4
  %call16 = call ptr @exynos_drm_framebuffer_init(ptr noundef %1, ptr noundef nonnull %mode_cmd, ptr noundef nonnull %exynos_gem, i32 noundef 1) #4
  %fb = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 2
  %26 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16, ptr %fb, align 4
  %cmp.i53 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #4
  %29 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %err_destroy_gem

if.end23:                                         ; preds = %if.end
  %32 = ptrtoint ptr %exynos_gem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %exynos_gem, align 4
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call16, i32 0, i32 9
  %34 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call16, i32 0, i32 10
  %36 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call16, i32 0, i32 4
  %38 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %format.i, align 8
  %40 = getelementptr inbounds %struct.drm_format_info, ptr %39, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 2
  %call.i = call ptr @drm_fb_helper_alloc_fbi(ptr noundef %helper) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %exynos_drm_fbdev_update.exit, label %exynos_drm_fbdev_update.exit.thread

exynos_drm_fbdev_update.exit.thread:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul i32 %37, %35
  %conv.i = zext i8 %42 to i32
  %mul2.i = mul i32 %mul.i, %conv.i
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 20
  %43 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @exynos_drm_fb_ops, ptr %fbops.i, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %call.i, ptr noundef %helper, ptr noundef %sizes) #4
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 4
  %44 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xoffset.i, align 4
  %46 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %format.i, align 8
  %48 = getelementptr inbounds %struct.drm_format_info, ptr %47, i32 0, i32 3
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 2
  %conv8.i = zext i8 %50 to i32
  %mul9.i = mul i32 %45, %conv8.i
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 6, i32 5
  %51 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %yoffset.i, align 4
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call16, i32 0, i32 6
  %53 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pitches.i, align 8
  %mul12.i = mul i32 %54, %52
  %add.i = add i32 %mul12.i, %mul9.i
  %kvaddr.i = getelementptr inbounds %struct.exynos_drm_gem, ptr %33, i32 0, i32 4
  %55 = ptrtoint ptr %kvaddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %kvaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 %add.i
  %57 = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 25
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i, ptr %57, align 4
  %screen_size.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 26
  %59 = ptrtoint ptr %screen_size.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul2.i, ptr %screen_size.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call.i, i32 0, i32 7, i32 2
  %60 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul2.i, ptr %smem_len.i, align 4
  br label %cleanup

exynos_drm_fbdev_update.exit:                     ; preds = %if.end23
  %61 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_private.i.i, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.exynos_drm_private, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_dev.i.i, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %66, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #4
  %67 = ptrtoint ptr %call.i to i32
  %cmp = icmp slt ptr %call.i, null
  br i1 %cmp, label %err_destroy_framebuffer, label %exynos_drm_fbdev_update.exit.cleanup_crit_edge

exynos_drm_fbdev_update.exit.cleanup_crit_edge:   ; preds = %exynos_drm_fbdev_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_destroy_framebuffer:                          ; preds = %exynos_drm_fbdev_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fb, align 4
  call void @drm_framebuffer_cleanup(ptr noundef %69) #4
  br label %err_destroy_gem

err_destroy_gem:                                  ; preds = %err_destroy_framebuffer, %if.then19
  %ret.0 = phi i32 [ %31, %if.then19 ], [ %67, %err_destroy_framebuffer ]
  %70 = ptrtoint ptr %exynos_gem to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %exynos_gem, align 4
  call void @exynos_drm_gem_destroy(ptr noundef %71) #4
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_gem, %exynos_drm_fbdev_update.exit.cleanup_crit_edge, %exynos_drm_fbdev_update.exit.thread, %if.then
  %retval.0 = phi i32 [ %24, %if.then ], [ %ret.0, %err_destroy_gem ], [ %67, %exynos_drm_fbdev_update.exit.cleanup_crit_edge ], [ 0, %exynos_drm_fbdev_update.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode_cmd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exynos_gem) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_gem_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_check_var(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_set_par(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_setcmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_blank(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_pan_display(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_drm_fb_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %exynos_gem1 = getelementptr inbounds %struct.exynos_drm_fbdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %exynos_gem1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exynos_gem1, align 4
  %call = tail call i32 @drm_gem_prime_mmap(ptr noundef %3, ptr noundef %vma) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fbdev.c", i32 167, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fbdev.c", i32 174, i32 3}
!5 = !{ptr @exynos_drm_fb_helper_funcs, !6, !"exynos_drm_fb_helper_funcs", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fbdev.c", i32 143, i32 41}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fbdev.c", i32 96, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fbdev.c", i32 118, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fbdev.c", i32 67, i32 3}
!13 = !{ptr @exynos_drm_fb_ops, !14, !"exynos_drm_fb_ops", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fbdev.c", i32 47, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
