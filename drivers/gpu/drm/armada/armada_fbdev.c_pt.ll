; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/armada/armada_fbdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/armada/armada_fbdev.c"
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
%struct.armada_private = type { %struct.drm_device, ptr, [2 x ptr], %struct.drm_mm, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.87, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }
%struct.armada_gem_object = type { %struct.drm_gem_object, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@armada_fb_helper_funcs = internal constant { %struct.drm_fb_helper_funcs, [28 x i8] } { %struct.drm_fb_helper_funcs { ptr @armada_fb_probe }, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize drm fb helper\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set initial config\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate fb memory\0A\00", [34 x i8] zeroinitializer }, align 32
@armada_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_cfb_fillrect, ptr @drm_fb_helper_cfb_copyarea, ptr @drm_fb_helper_cfb_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"allocated %dx%d %dbpp fb: 0x%08llx\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"armada_fb_helper_funcs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 114, i32 41 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 134, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 140, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 48, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"armada_fb_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 19, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [41 x i8] c"../drivers/gpu/drm/armada/armada_fbdev.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 90, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @armada_fb_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @armada_fb_ops, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_fb_helper_funcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_fbdev_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 456, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %fbdev = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %fbdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %fbdev, align 4
  tail call void @drm_fb_helper_prepare(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @armada_fb_helper_funcs) #4
  %call2 = tail call i32 @drm_fb_helper_init(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %err_fb_helper

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @drm_fb_helper_initial_config(ptr noundef nonnull %call.i, i32 noundef 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %call.i) #4
  br label %err_fb_helper

err_fb_helper:                                    ; preds = %if.then8, %if.then4
  %ret.0 = phi i32 [ %call2, %if.then4 ], [ %call6, %if.then8 ]
  %3 = ptrtoint ptr %fbdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fbdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_fb_helper, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_fb_helper ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @armada_fbdev_fini(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fbdev = getelementptr inbounds %struct.armada_private, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef nonnull %1) #4
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %1) #4
  %fb = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %funcs = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef nonnull %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %fbdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fbdev, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_fb_probe(ptr noundef %fbh, ptr noundef %sizes) #0 align 64 {
entry:
  %mode.i = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_fb_helper, ptr %fbh, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.drm_fb_helper, ptr %fbh, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mode.i) #4
  %4 = call ptr @memset(ptr %mode.i, i32 0, i32 104)
  %surface_width.i = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 2
  %5 = ptrtoint ptr %surface_width.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %surface_width.i, align 4
  %width.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode.i, i32 0, i32 1
  %7 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %width.i, align 4
  %surface_height.i = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 3
  %8 = ptrtoint ptr %surface_height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %surface_height.i, align 4
  %height.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode.i, i32 0, i32 2
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height.i, align 8
  %surface_bpp.i = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 4
  %11 = ptrtoint ptr %surface_bpp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %surface_bpp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp.not.i.i = icmp eq i32 %12, 4
  %add.i.i = add i32 %12, 7
  %div6.i.i = lshr i32 %add.i.i, 3
  %mul.i.i = mul i32 %div6.i.i, %6
  %div15.i.i = lshr i32 %6, 1
  %cond.i.i = select i1 %cmp.not.i.i, i32 %div15.i.i, i32 %mul.i.i
  %add2.i.i = add i32 %cond.i.i, 127
  %and.i.i = and i32 %add2.i.i, -128
  %pitches.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode.i, i32 0, i32 6
  %13 = ptrtoint ptr %pitches.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.i.i, ptr %pitches.i, align 4
  %surface_depth.i = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 5
  %14 = ptrtoint ptr %surface_depth.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %surface_depth.i, align 4
  %call4.i = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %12, i32 noundef %15) #4
  %pixel_format.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode.i, i32 0, i32 3
  %16 = ptrtoint ptr %pixel_format.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4.i, ptr %pixel_format.i, align 4
  %mul.i = mul i32 %and.i.i, %9
  %call8.i = tail call ptr @armada_gem_alloc_private_object(ptr noundef %3, i32 noundef %mul.i) #4
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #4
  br label %armada_fbdev_create.exit.thread

if.end.i:                                         ; preds = %if.then
  %call9.i = tail call i32 @armada_gem_linear_back(ptr noundef %3, ptr noundef nonnull %call8.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %call8.i, i32 1, i32 3, i32 1) #4
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call8.i, ptr nonnull %call8.i, i32 1, ptr nonnull elementtype(i32) %call8.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.armada_fbdev_create.exit.thread_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !23

if.end5.i.i.i.i.i.i.i.armada_fbdev_create.exit.thread_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %armada_fbdev_create.exit.thread

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call8.i, i32 noundef 3) #4
  br label %armada_fbdev_create.exit.thread

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @drm_gem_object_free(ptr noundef nonnull %call8.i) #4
  br label %armada_fbdev_create.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = tail call ptr @armada_gem_map_object(ptr noundef %3, ptr noundef nonnull %call8.i) #4
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.then.i96.i, label %if.then.i106.i

if.then.i96.i:                                    ; preds = %if.end13.i
  %call.i.i.i.i.i.i.i.i93.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %call8.i, i32 1, i32 3, i32 1) #4
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call8.i, ptr nonnull %call8.i, i32 1, ptr nonnull elementtype(i32) %call8.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i94.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i94.i)
  %cmp.i.i.i.i.i.i95.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i94.i, 1
  br i1 %cmp.i.i.i.i.i.i95.i, label %if.then.i.i.i100.i, label %if.end5.i.i.i.i.i.i98.i

if.end5.i.i.i.i.i.i98.i:                          ; preds = %if.then.i96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i94.i)
  %.not.i.i.i.i.i.i97.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i94.i, 0
  br i1 %.not.i.i.i.i.i.i97.i, label %if.end5.i.i.i.i.i.i98.i.armada_fbdev_create.exit.thread_crit_edge, label %if.then10.i.i.i.i.i.i99.i, !prof !23

if.end5.i.i.i.i.i.i98.i.armada_fbdev_create.exit.thread_crit_edge: ; preds = %if.end5.i.i.i.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %armada_fbdev_create.exit.thread

if.then10.i.i.i.i.i.i99.i:                        ; preds = %if.end5.i.i.i.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call8.i, i32 noundef 3) #4
  br label %armada_fbdev_create.exit.thread

if.then.i.i.i100.i:                               ; preds = %if.then.i96.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @drm_gem_object_free(ptr noundef nonnull %call8.i) #4
  br label %armada_fbdev_create.exit.thread

if.then.i106.i:                                   ; preds = %if.end13.i
  %call19.i = call ptr @armada_framebuffer_create(ptr noundef %3, ptr noundef nonnull %mode.i, ptr noundef nonnull %call8.i) #4
  %call.i.i.i.i.i.i.i.i103.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i, i32 noundef 4) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !21
  call void @llvm.prefetch.p0(ptr nonnull %call8.i, i32 1, i32 3, i32 1) #4
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call8.i, ptr nonnull %call8.i, i32 1, ptr nonnull elementtype(i32) %call8.i) #4, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i104.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i104.i)
  %cmp.i.i.i.i.i.i105.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i104.i, 1
  br i1 %cmp.i.i.i.i.i.i105.i, label %if.then.i.i.i110.i, label %if.end5.i.i.i.i.i.i108.i

if.end5.i.i.i.i.i.i108.i:                         ; preds = %if.then.i106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i104.i)
  %.not.i.i.i.i.i.i107.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i104.i, 0
  br i1 %.not.i.i.i.i.i.i107.i, label %if.end5.i.i.i.i.i.i108.i.drm_gem_object_put.exit111.i_crit_edge, label %if.then10.i.i.i.i.i.i109.i, !prof !23

if.end5.i.i.i.i.i.i108.i.drm_gem_object_put.exit111.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i108.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_gem_object_put.exit111.i

if.then10.i.i.i.i.i.i109.i:                       ; preds = %if.end5.i.i.i.i.i.i108.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @refcount_warn_saturate(ptr noundef nonnull %call8.i, i32 noundef 3) #4
  br label %drm_gem_object_put.exit111.i

if.then.i.i.i110.i:                               ; preds = %if.then.i106.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !24
  call void @drm_gem_object_free(ptr noundef nonnull %call8.i) #4
  br label %drm_gem_object_put.exit111.i

drm_gem_object_put.exit111.i:                     ; preds = %if.then.i.i.i110.i, %if.then10.i.i.i.i.i.i109.i, %if.end5.i.i.i.i.i.i108.i.drm_gem_object_put.exit111.i_crit_edge
  %cmp.i.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %drm_gem_object_put.exit111.i.armada_fbdev_create.exit_crit_edge, label %if.end24.i

drm_gem_object_put.exit111.i.armada_fbdev_create.exit_crit_edge: ; preds = %drm_gem_object_put.exit111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %armada_fbdev_create.exit

if.end24.i:                                       ; preds = %drm_gem_object_put.exit111.i
  %call25.i = call ptr @drm_fb_helper_alloc_fbi(ptr noundef %fbh) #4
  %cmp.i112.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112.i, label %if.then27.i, label %armada_fbdev_create.exit.thread7

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %funcs.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call19.i, i32 0, i32 5
  %20 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  call void %23(ptr noundef %call19.i) #4
  br label %armada_fbdev_create.exit

armada_fbdev_create.exit.thread7:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call25.i, i32 0, i32 20
  %24 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @armada_fb_ops, ptr %fbops.i, align 4
  %phys_addr.i = getelementptr inbounds %struct.armada_gem_object, ptr %call8.i, i32 0, i32 2
  %25 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys_addr.i, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %call25.i, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %smem_start.i, align 4
  %size31.i = getelementptr inbounds %struct.drm_gem_object, ptr %call8.i, i32 0, i32 5
  %28 = ptrtoint ptr %size31.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size31.i, align 8
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call25.i, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %smem_len.i, align 4
  %31 = load i32, ptr %size31.i, align 8
  %screen_size.i = getelementptr inbounds %struct.fb_info, ptr %call25.i, i32 0, i32 26
  %32 = ptrtoint ptr %screen_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %screen_size.i, align 4
  %33 = getelementptr inbounds %struct.fb_info, ptr %call25.i, i32 0, i32 25
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call14.i, ptr %33, align 4
  %35 = ptrtoint ptr %fb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call19.i, ptr %fb, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %call25.i, ptr noundef %fbh, ptr noundef %sizes) #4
  %width37.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call19.i, i32 0, i32 9
  %36 = ptrtoint ptr %width37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width37.i, align 8
  %height39.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call19.i, i32 0, i32 10
  %38 = ptrtoint ptr %height39.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height39.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call19.i, i32 0, i32 4
  %40 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %format.i, align 8
  %42 = getelementptr inbounds %struct.drm_format_info, ptr %41, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 2
  %conv.i = zext i8 %44 to i32
  %mul42.i = shl nuw nsw i32 %conv.i, 3
  %45 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys_addr.i, align 4
  %conv44.i = zext i32 %46 to i64
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %37, i32 noundef %39, i32 noundef %mul42.i, i64 noundef %conv44.i) #4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode.i) #4
  br label %if.end2

armada_fbdev_create.exit.thread:                  ; preds = %if.then.i.i.i100.i, %if.then10.i.i.i.i.i.i99.i, %if.end5.i.i.i.i.i.i98.i.armada_fbdev_create.exit.thread_crit_edge, %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.armada_fbdev_create.exit.thread_crit_edge, %if.then.i
  %retval.0.i.ph = phi i32 [ -12, %if.then.i.i.i100.i ], [ -12, %if.then10.i.i.i.i.i.i99.i ], [ -12, %if.end5.i.i.i.i.i.i98.i.armada_fbdev_create.exit.thread_crit_edge ], [ %call9.i, %if.then.i.i.i.i ], [ %call9.i, %if.then10.i.i.i.i.i.i.i ], [ %call9.i, %if.end5.i.i.i.i.i.i.i.armada_fbdev_create.exit.thread_crit_edge ], [ -12, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode.i) #4
  br label %if.end2

armada_fbdev_create.exit:                         ; preds = %if.then27.i, %drm_gem_object_put.exit111.i.armada_fbdev_create.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call25.i, %if.then27.i ], [ %call19.i, %drm_gem_object_put.exit111.i.armada_fbdev_create.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode.i) #4
  br label %if.end2

if.end2:                                          ; preds = %armada_fbdev_create.exit, %armada_fbdev_create.exit.thread, %armada_fbdev_create.exit.thread7, %entry.if.end2_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end2_crit_edge ], [ 1, %armada_fbdev_create.exit.thread7 ], [ %retval.0.i, %armada_fbdev_create.exit ], [ %retval.0.i.ph, %armada_fbdev_create.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @armada_gem_alloc_private_object(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_gem_linear_back(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @armada_gem_map_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @armada_framebuffer_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/armada/armada_fbdev.c", i32 134, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/armada/armada_fbdev.c", i32 140, i32 3}
!4 = !{ptr @armada_fb_helper_funcs, !5, !"armada_fb_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/armada/armada_fbdev.c", i32 114, i32 41}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/armada/armada_fbdev.c", i32 48, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/armada/armada_fbdev.c", i32 90, i32 2}
!10 = !{ptr @armada_fb_ops, !11, !"armada_fb_ops", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/armada/armada_fbdev.c", i32 19, i32 28}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148302510}
!22 = !{i64 2148216974, i64 2148217006, i64 2148217035, i64 2148217069, i64 2148217100, i64 2148217123}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2149307420}
