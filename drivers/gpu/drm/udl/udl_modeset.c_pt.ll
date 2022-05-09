; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/udl/udl_modeset.c_pt.bc'
source_filename = "../drivers/gpu/drm/udl/udl_modeset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
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
%struct.anon.86 = type { i32, ptr }
%struct.udl_device = type { %struct.drm_device, ptr, ptr, %struct.drm_simple_display_pipe, %struct.mutex, i32, %struct.urb_list, [1024 x i8], i32 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.urb_list = type { %struct.list_head, %struct.spinlock, %struct.semaphore, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }
%struct.dma_buf_map = type { %union.anon.84, i8 }
%union.anon.84 = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@udl_mode_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create_with_dirty, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@udl_simple_display_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr @udl_simple_display_pipe_mode_valid, ptr @udl_simple_display_pipe_enable, ptr @udl_simple_display_pipe_disable, ptr null, ptr @udl_simple_display_pipe_update, ptr @drm_gem_simple_kms_prepare_shadow_fb, ptr @drm_gem_simple_kms_cleanup_shadow_fb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_simple_kms_reset_shadow_plane, ptr @drm_gem_simple_kms_duplicate_shadow_plane_state, ptr @drm_gem_simple_kms_destroy_shadow_plane_state }, [36 x i8] zeroinitializer }, align 32
@udl_simple_display_pipe_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 909199186, i32 875713112], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/udl/udl_modeset.c\00", [62 x i8] zeroinitializer }, align 32
@udl_aligned_damage_clip.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@udl_aligned_damage_clip.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@udl_aligned_damage_clip.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@udl_aligned_damage_clip.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No mode set\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write mode info %d\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"udl_mode_funcs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 441, i32 43 }
@___asan_gen_.9 = private unnamed_addr constant [30 x i8] c"udl_simple_display_pipe_funcs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 429, i32 51 }
@___asan_gen_.12 = private unnamed_addr constant [32 x i8] c"udl_simple_display_pipe_formats\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 334, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 240, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 222, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [37 x i8] c"../drivers/gpu/drm/udl/udl_modeset.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 234, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @udl_mode_funcs, ptr @udl_simple_display_pipe_funcs, ptr @udl_simple_display_pipe_formats, ptr @.str, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_simple_display_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_simple_display_pipe_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udl_modeset_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 23
  %0 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 640, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 24
  %1 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 480, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2048, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %3 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2048, ptr %max_height, align 4
  %prefer_shadow = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 92
  %4 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %prefer_shadow, align 4
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 91
  %5 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %preferred_depth, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @udl_mode_funcs, ptr %funcs, align 4
  %call7 = tail call ptr @udl_connector_init(ptr noundef %dev) #5
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %display_pipe = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 3
  %call12 = tail call i32 @drm_simple_display_pipe_init(ptr noundef %dev, ptr noundef %display_pipe, ptr noundef nonnull @udl_simple_display_pipe_funcs, ptr noundef nonnull @udl_simple_display_pipe_formats, i32 noundef 2, ptr noundef null, ptr noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_config_reset(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then9 ], [ 0, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udl_connector_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_dirty(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @udl_simple_display_pipe_mode_valid(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readnone %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udl_simple_display_pipe_enable(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef readonly %plane_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %fb3 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %2 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb3, align 4
  %mode4 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %mode_buf = getelementptr inbounds %struct.udl_device, ptr %1, i32 0, i32 7
  %incdec.ptr.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %mode_buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -81, ptr %mode_buf, align 1
  %incdec.ptr1.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr2.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %incdec.ptr1.i.i, align 1
  %incdec.ptr3.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 4
  %7 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %incdec.ptr2.i.i, align 1
  %incdec.ptr.i.i42 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -81, ptr %incdec.ptr3.i.i, align 1
  %incdec.ptr1.i.i43 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 6
  %9 = ptrtoint ptr %incdec.ptr.i.i42 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %incdec.ptr.i.i42, align 1
  %incdec.ptr2.i.i44 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 7
  %10 = ptrtoint ptr %incdec.ptr1.i.i43 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %incdec.ptr1.i.i43, align 1
  %incdec.ptr3.i.i45 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 8
  %11 = ptrtoint ptr %incdec.ptr2.i.i44 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %incdec.ptr2.i.i44, align 1
  %incdec.ptr.i.i46 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %incdec.ptr3.i.i45 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -81, ptr %incdec.ptr3.i.i45, align 1
  %incdec.ptr1.i.i47 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 10
  %13 = ptrtoint ptr %incdec.ptr.i.i46 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %incdec.ptr.i.i46, align 1
  %incdec.ptr2.i.i48 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 11
  %14 = ptrtoint ptr %incdec.ptr1.i.i47 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %incdec.ptr1.i.i47, align 1
  %incdec.ptr3.i.i49 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 12
  %15 = ptrtoint ptr %incdec.ptr2.i.i48 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %incdec.ptr2.i.i48, align 1
  %incdec.ptr.i1.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 13
  %16 = ptrtoint ptr %incdec.ptr3.i.i49 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -81, ptr %incdec.ptr3.i.i49, align 1
  %incdec.ptr1.i2.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 14
  %17 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %incdec.ptr.i1.i, align 1
  %incdec.ptr2.i3.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 15
  %18 = ptrtoint ptr %incdec.ptr1.i2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 33, ptr %incdec.ptr1.i2.i, align 1
  %incdec.ptr3.i4.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 16
  %19 = ptrtoint ptr %incdec.ptr2.i3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %incdec.ptr2.i3.i, align 1
  %incdec.ptr.i5.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 17
  %20 = ptrtoint ptr %incdec.ptr3.i4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -81, ptr %incdec.ptr3.i4.i, align 1
  %incdec.ptr1.i6.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 18
  %21 = ptrtoint ptr %incdec.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %incdec.ptr.i5.i, align 1
  %incdec.ptr2.i7.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 19
  %22 = ptrtoint ptr %incdec.ptr1.i6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 34, ptr %incdec.ptr1.i6.i, align 1
  %incdec.ptr3.i8.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 20
  %23 = ptrtoint ptr %incdec.ptr2.i7.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %incdec.ptr2.i7.i, align 1
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 6
  %24 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vdisplay, align 2
  %conv8 = zext i16 %25 to i32
  %mul = shl nuw nsw i32 %conv8, 1
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hdisplay, align 4
  %conv9 = zext i16 %27 to i32
  %mul10 = mul i32 %mul, %conv9
  %shr.i = lshr i32 %mul10, 16
  %conv.i = trunc i32 %shr.i to i8
  %incdec.ptr.i.i50 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 21
  %28 = ptrtoint ptr %incdec.ptr3.i8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -81, ptr %incdec.ptr3.i8.i, align 1
  %incdec.ptr1.i.i51 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 22
  %29 = ptrtoint ptr %incdec.ptr.i.i50 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %incdec.ptr.i.i50, align 1
  %incdec.ptr2.i.i52 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 23
  %30 = ptrtoint ptr %incdec.ptr1.i.i51 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 38, ptr %incdec.ptr1.i.i51, align 1
  %incdec.ptr3.i.i53 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 24
  %31 = ptrtoint ptr %incdec.ptr2.i.i52 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %incdec.ptr2.i.i52, align 1
  %shr1.i = lshr i32 %mul10, 8
  %conv2.i = trunc i32 %shr1.i to i8
  %incdec.ptr.i10.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 25
  %32 = ptrtoint ptr %incdec.ptr3.i.i53 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -81, ptr %incdec.ptr3.i.i53, align 1
  %incdec.ptr1.i11.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 26
  %33 = ptrtoint ptr %incdec.ptr.i10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 32, ptr %incdec.ptr.i10.i, align 1
  %incdec.ptr2.i12.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 27
  %34 = ptrtoint ptr %incdec.ptr1.i11.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 39, ptr %incdec.ptr1.i11.i, align 1
  %incdec.ptr3.i13.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 28
  %35 = ptrtoint ptr %incdec.ptr2.i12.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv2.i, ptr %incdec.ptr2.i12.i, align 1
  %conv4.i = trunc i32 %mul10 to i8
  %incdec.ptr.i14.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 29
  %36 = ptrtoint ptr %incdec.ptr3.i13.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -81, ptr %incdec.ptr3.i13.i, align 1
  %incdec.ptr1.i15.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 30
  %37 = ptrtoint ptr %incdec.ptr.i14.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 32, ptr %incdec.ptr.i14.i, align 1
  %incdec.ptr2.i16.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 31
  %38 = ptrtoint ptr %incdec.ptr1.i15.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 40, ptr %incdec.ptr1.i15.i, align 1
  %incdec.ptr3.i17.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 32
  %39 = ptrtoint ptr %incdec.ptr2.i16.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv4.i, ptr %incdec.ptr2.i16.i, align 1
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 18
  %40 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %crtc_htotal.i, align 2
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 16
  %42 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %crtc_hsync_start.i, align 2
  %sub.i = sub i16 %41, %43
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %tobool.not12.i.i.i = icmp eq i16 %sub.i, 0
  br i1 %tobool.not12.i.i.i, label %entry.udl_set_register_lfsr16.exit.i_crit_edge, label %entry.while.body.i.i.i_crit_edge

entry.while.body.i.i.i_crit_edge:                 ; preds = %entry
  br label %while.body.i.i.i

entry.udl_set_register_lfsr16.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_set_register_lfsr16.exit.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %entry.while.body.i.i.i_crit_edge
  %lv.014.i.i.i = phi i32 [ %and6.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 65535, %entry.while.body.i.i.i_crit_edge ]
  %actual_count.addr.013.i.i.i = phi i16 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %sub.i, %entry.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i16 %actual_count.addr.013.i.i.i, -1
  %shl.i.i.i = shl nuw nsw i32 %lv.014.i.i.i, 1
  %shr.i.i.i = lshr i32 %lv.014.i.i.i, 15
  %shr1.i.i.i = lshr i32 %lv.014.i.i.i, 4
  %xor.i.i.i = xor i32 %shr.i.i.i, %shr1.i.i.i
  %shr2.i.i.i = lshr i32 %lv.014.i.i.i, 2
  %xor3.i.i.i = xor i32 %xor.i.i.i, %shr2.i.i.i
  %shr4.i.i.i = lshr i32 %lv.014.i.i.i, 1
  %xor5.i.i.i = xor i32 %xor3.i.i.i, %shr4.i.i.i
  %and.i.i.i = and i32 %xor5.i.i.i, 1
  %shl.masked.i.i.i = and i32 %shl.i.i.i, 65534
  %and6.i.i.i = or i32 %and.i.i.i, %shl.masked.i.i.i
  %tobool.not.i.i.i = icmp eq i16 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.end.loopexit.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

while.end.loopexit.i.i.i:                         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.i.i = trunc i32 %and6.i.i.i to i8
  %extract3.i.i = lshr i32 %lv.014.i.i.i, 7
  %extract.t2.i.i = trunc i32 %extract3.i.i to i8
  br label %udl_set_register_lfsr16.exit.i

udl_set_register_lfsr16.exit.i:                   ; preds = %while.end.loopexit.i.i.i, %entry.udl_set_register_lfsr16.exit.i_crit_edge
  %lv.0.lcssa.i.off0.i.i = phi i8 [ -1, %entry.udl_set_register_lfsr16.exit.i_crit_edge ], [ %extract.t.i.i, %while.end.loopexit.i.i.i ]
  %lv.0.lcssa.i.off8.i.i = phi i8 [ -1, %entry.udl_set_register_lfsr16.exit.i_crit_edge ], [ %extract.t2.i.i, %while.end.loopexit.i.i.i ]
  %incdec.ptr.i.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 33
  %44 = ptrtoint ptr %incdec.ptr3.i17.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -81, ptr %incdec.ptr3.i17.i, align 1
  %incdec.ptr1.i.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 34
  %45 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 32, ptr %incdec.ptr.i.i.i.i, align 1
  %incdec.ptr2.i.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 35
  %46 = ptrtoint ptr %incdec.ptr1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %incdec.ptr1.i.i.i.i, align 1
  %incdec.ptr3.i.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 36
  %47 = ptrtoint ptr %incdec.ptr2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %lv.0.lcssa.i.off8.i.i, ptr %incdec.ptr2.i.i.i.i, align 1
  %incdec.ptr.i9.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 37
  %48 = ptrtoint ptr %incdec.ptr3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -81, ptr %incdec.ptr3.i.i.i.i, align 1
  %incdec.ptr1.i10.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 38
  %49 = ptrtoint ptr %incdec.ptr.i9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 32, ptr %incdec.ptr.i9.i.i.i, align 1
  %incdec.ptr2.i11.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 39
  %50 = ptrtoint ptr %incdec.ptr1.i10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %incdec.ptr1.i10.i.i.i, align 1
  %incdec.ptr3.i12.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 40
  %51 = ptrtoint ptr %incdec.ptr2.i11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %lv.0.lcssa.i.off0.i.i, ptr %incdec.ptr2.i11.i.i.i, align 1
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 13
  %52 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %crtc_hdisplay.i, align 4
  %add.i = add i16 %53, %sub.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i)
  %tobool.not12.i.i73.i = icmp eq i16 %add.i, 0
  br i1 %tobool.not12.i.i73.i, label %udl_set_register_lfsr16.exit.i.udl_set_register_lfsr16.exit104.i_crit_edge, label %udl_set_register_lfsr16.exit.i.while.body.i.i89.i_crit_edge

udl_set_register_lfsr16.exit.i.while.body.i.i89.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit.i
  br label %while.body.i.i89.i

udl_set_register_lfsr16.exit.i.udl_set_register_lfsr16.exit104.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_set_register_lfsr16.exit104.i

while.body.i.i89.i:                               ; preds = %while.body.i.i89.i.while.body.i.i89.i_crit_edge, %udl_set_register_lfsr16.exit.i.while.body.i.i89.i_crit_edge
  %lv.014.i.i74.i = phi i32 [ %and6.i.i87.i, %while.body.i.i89.i.while.body.i.i89.i_crit_edge ], [ 65535, %udl_set_register_lfsr16.exit.i.while.body.i.i89.i_crit_edge ]
  %actual_count.addr.013.i.i75.i = phi i16 [ %dec.i.i76.i, %while.body.i.i89.i.while.body.i.i89.i_crit_edge ], [ %add.i, %udl_set_register_lfsr16.exit.i.while.body.i.i89.i_crit_edge ]
  %dec.i.i76.i = add i16 %actual_count.addr.013.i.i75.i, -1
  %shl.i.i77.i = shl nuw nsw i32 %lv.014.i.i74.i, 1
  %shr.i.i78.i = lshr i32 %lv.014.i.i74.i, 15
  %shr1.i.i79.i = lshr i32 %lv.014.i.i74.i, 4
  %xor.i.i80.i = xor i32 %shr.i.i78.i, %shr1.i.i79.i
  %shr2.i.i81.i = lshr i32 %lv.014.i.i74.i, 2
  %xor3.i.i82.i = xor i32 %xor.i.i80.i, %shr2.i.i81.i
  %shr4.i.i83.i = lshr i32 %lv.014.i.i74.i, 1
  %xor5.i.i84.i = xor i32 %xor3.i.i82.i, %shr4.i.i83.i
  %and.i.i85.i = and i32 %xor5.i.i84.i, 1
  %shl.masked.i.i86.i = and i32 %shl.i.i77.i, 65534
  %and6.i.i87.i = or i32 %and.i.i85.i, %shl.masked.i.i86.i
  %tobool.not.i.i88.i = icmp eq i16 %dec.i.i76.i, 0
  br i1 %tobool.not.i.i88.i, label %while.end.loopexit.i.i93.i, label %while.body.i.i89.i.while.body.i.i89.i_crit_edge

while.body.i.i89.i.while.body.i.i89.i_crit_edge:  ; preds = %while.body.i.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i89.i

while.end.loopexit.i.i93.i:                       ; preds = %while.body.i.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.i90.i = trunc i32 %and6.i.i87.i to i8
  %extract3.i91.i = lshr i32 %lv.014.i.i74.i, 7
  %extract.t2.i92.i = trunc i32 %extract3.i91.i to i8
  br label %udl_set_register_lfsr16.exit104.i

udl_set_register_lfsr16.exit104.i:                ; preds = %while.end.loopexit.i.i93.i, %udl_set_register_lfsr16.exit.i.udl_set_register_lfsr16.exit104.i_crit_edge
  %lv.0.lcssa.i.off0.i94.i = phi i8 [ -1, %udl_set_register_lfsr16.exit.i.udl_set_register_lfsr16.exit104.i_crit_edge ], [ %extract.t.i90.i, %while.end.loopexit.i.i93.i ]
  %lv.0.lcssa.i.off8.i95.i = phi i8 [ -1, %udl_set_register_lfsr16.exit.i.udl_set_register_lfsr16.exit104.i_crit_edge ], [ %extract.t2.i92.i, %while.end.loopexit.i.i93.i ]
  %incdec.ptr.i.i.i96.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 41
  %54 = ptrtoint ptr %incdec.ptr3.i12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -81, ptr %incdec.ptr3.i12.i.i.i, align 1
  %incdec.ptr1.i.i.i97.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 42
  %55 = ptrtoint ptr %incdec.ptr.i.i.i96.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 32, ptr %incdec.ptr.i.i.i96.i, align 1
  %incdec.ptr2.i.i.i98.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 43
  %56 = ptrtoint ptr %incdec.ptr1.i.i.i97.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %incdec.ptr1.i.i.i97.i, align 1
  %incdec.ptr3.i.i.i99.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 44
  %57 = ptrtoint ptr %incdec.ptr2.i.i.i98.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %lv.0.lcssa.i.off8.i95.i, ptr %incdec.ptr2.i.i.i98.i, align 1
  %incdec.ptr.i9.i.i100.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 45
  %58 = ptrtoint ptr %incdec.ptr3.i.i.i99.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -81, ptr %incdec.ptr3.i.i.i99.i, align 1
  %incdec.ptr1.i10.i.i101.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 46
  %59 = ptrtoint ptr %incdec.ptr.i9.i.i100.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 32, ptr %incdec.ptr.i9.i.i100.i, align 1
  %incdec.ptr2.i11.i.i102.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 47
  %60 = ptrtoint ptr %incdec.ptr1.i10.i.i101.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %incdec.ptr1.i10.i.i101.i, align 1
  %incdec.ptr3.i12.i.i103.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 48
  %61 = ptrtoint ptr %incdec.ptr2.i11.i.i102.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %lv.0.lcssa.i.off0.i94.i, ptr %incdec.ptr2.i11.i.i102.i, align 1
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 25
  %62 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %crtc_vtotal.i, align 4
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 23
  %64 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %crtc_vsync_start.i, align 4
  %sub9.i = sub i16 %63, %65
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub9.i)
  %tobool.not12.i.i105.i = icmp eq i16 %sub9.i, 0
  br i1 %tobool.not12.i.i105.i, label %udl_set_register_lfsr16.exit104.i.udl_set_register_lfsr16.exit136.i_crit_edge, label %udl_set_register_lfsr16.exit104.i.while.body.i.i121.i_crit_edge

udl_set_register_lfsr16.exit104.i.while.body.i.i121.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit104.i
  br label %while.body.i.i121.i

udl_set_register_lfsr16.exit104.i.udl_set_register_lfsr16.exit136.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_set_register_lfsr16.exit136.i

while.body.i.i121.i:                              ; preds = %while.body.i.i121.i.while.body.i.i121.i_crit_edge, %udl_set_register_lfsr16.exit104.i.while.body.i.i121.i_crit_edge
  %lv.014.i.i106.i = phi i32 [ %and6.i.i119.i, %while.body.i.i121.i.while.body.i.i121.i_crit_edge ], [ 65535, %udl_set_register_lfsr16.exit104.i.while.body.i.i121.i_crit_edge ]
  %actual_count.addr.013.i.i107.i = phi i16 [ %dec.i.i108.i, %while.body.i.i121.i.while.body.i.i121.i_crit_edge ], [ %sub9.i, %udl_set_register_lfsr16.exit104.i.while.body.i.i121.i_crit_edge ]
  %dec.i.i108.i = add i16 %actual_count.addr.013.i.i107.i, -1
  %shl.i.i109.i = shl nuw nsw i32 %lv.014.i.i106.i, 1
  %shr.i.i110.i = lshr i32 %lv.014.i.i106.i, 15
  %shr1.i.i111.i = lshr i32 %lv.014.i.i106.i, 4
  %xor.i.i112.i = xor i32 %shr.i.i110.i, %shr1.i.i111.i
  %shr2.i.i113.i = lshr i32 %lv.014.i.i106.i, 2
  %xor3.i.i114.i = xor i32 %xor.i.i112.i, %shr2.i.i113.i
  %shr4.i.i115.i = lshr i32 %lv.014.i.i106.i, 1
  %xor5.i.i116.i = xor i32 %xor3.i.i114.i, %shr4.i.i115.i
  %and.i.i117.i = and i32 %xor5.i.i116.i, 1
  %shl.masked.i.i118.i = and i32 %shl.i.i109.i, 65534
  %and6.i.i119.i = or i32 %and.i.i117.i, %shl.masked.i.i118.i
  %tobool.not.i.i120.i = icmp eq i16 %dec.i.i108.i, 0
  br i1 %tobool.not.i.i120.i, label %while.end.loopexit.i.i125.i, label %while.body.i.i121.i.while.body.i.i121.i_crit_edge

while.body.i.i121.i.while.body.i.i121.i_crit_edge: ; preds = %while.body.i.i121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i121.i

while.end.loopexit.i.i125.i:                      ; preds = %while.body.i.i121.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.i122.i = trunc i32 %and6.i.i119.i to i8
  %extract3.i123.i = lshr i32 %lv.014.i.i106.i, 7
  %extract.t2.i124.i = trunc i32 %extract3.i123.i to i8
  br label %udl_set_register_lfsr16.exit136.i

udl_set_register_lfsr16.exit136.i:                ; preds = %while.end.loopexit.i.i125.i, %udl_set_register_lfsr16.exit104.i.udl_set_register_lfsr16.exit136.i_crit_edge
  %lv.0.lcssa.i.off0.i126.i = phi i8 [ -1, %udl_set_register_lfsr16.exit104.i.udl_set_register_lfsr16.exit136.i_crit_edge ], [ %extract.t.i122.i, %while.end.loopexit.i.i125.i ]
  %lv.0.lcssa.i.off8.i127.i = phi i8 [ -1, %udl_set_register_lfsr16.exit104.i.udl_set_register_lfsr16.exit136.i_crit_edge ], [ %extract.t2.i124.i, %while.end.loopexit.i.i125.i ]
  %incdec.ptr.i.i.i128.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 49
  %66 = ptrtoint ptr %incdec.ptr3.i12.i.i103.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -81, ptr %incdec.ptr3.i12.i.i103.i, align 1
  %incdec.ptr1.i.i.i129.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 50
  %67 = ptrtoint ptr %incdec.ptr.i.i.i128.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 32, ptr %incdec.ptr.i.i.i128.i, align 1
  %incdec.ptr2.i.i.i130.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 51
  %68 = ptrtoint ptr %incdec.ptr1.i.i.i129.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 5, ptr %incdec.ptr1.i.i.i129.i, align 1
  %incdec.ptr3.i.i.i131.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 52
  %69 = ptrtoint ptr %incdec.ptr2.i.i.i130.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %lv.0.lcssa.i.off8.i127.i, ptr %incdec.ptr2.i.i.i130.i, align 1
  %incdec.ptr.i9.i.i132.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 53
  %70 = ptrtoint ptr %incdec.ptr3.i.i.i131.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -81, ptr %incdec.ptr3.i.i.i131.i, align 1
  %incdec.ptr1.i10.i.i133.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 54
  %71 = ptrtoint ptr %incdec.ptr.i9.i.i132.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 32, ptr %incdec.ptr.i9.i.i132.i, align 1
  %incdec.ptr2.i11.i.i134.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 55
  %72 = ptrtoint ptr %incdec.ptr1.i10.i.i133.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 6, ptr %incdec.ptr1.i10.i.i133.i, align 1
  %incdec.ptr3.i12.i.i135.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 56
  %73 = ptrtoint ptr %incdec.ptr2.i11.i.i134.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %lv.0.lcssa.i.off0.i126.i, ptr %incdec.ptr2.i11.i.i134.i, align 1
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 20
  %74 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %crtc_vdisplay.i, align 2
  %add14.i = add i16 %75, %sub9.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add14.i)
  %tobool.not12.i.i137.i = icmp eq i16 %add14.i, 0
  br i1 %tobool.not12.i.i137.i, label %udl_set_register_lfsr16.exit136.i.udl_set_register_lfsr16.exit168.i_crit_edge, label %udl_set_register_lfsr16.exit136.i.while.body.i.i153.i_crit_edge

udl_set_register_lfsr16.exit136.i.while.body.i.i153.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit136.i
  br label %while.body.i.i153.i

udl_set_register_lfsr16.exit136.i.udl_set_register_lfsr16.exit168.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit136.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_set_register_lfsr16.exit168.i

while.body.i.i153.i:                              ; preds = %while.body.i.i153.i.while.body.i.i153.i_crit_edge, %udl_set_register_lfsr16.exit136.i.while.body.i.i153.i_crit_edge
  %lv.014.i.i138.i = phi i32 [ %and6.i.i151.i, %while.body.i.i153.i.while.body.i.i153.i_crit_edge ], [ 65535, %udl_set_register_lfsr16.exit136.i.while.body.i.i153.i_crit_edge ]
  %actual_count.addr.013.i.i139.i = phi i16 [ %dec.i.i140.i, %while.body.i.i153.i.while.body.i.i153.i_crit_edge ], [ %add14.i, %udl_set_register_lfsr16.exit136.i.while.body.i.i153.i_crit_edge ]
  %dec.i.i140.i = add i16 %actual_count.addr.013.i.i139.i, -1
  %shl.i.i141.i = shl nuw nsw i32 %lv.014.i.i138.i, 1
  %shr.i.i142.i = lshr i32 %lv.014.i.i138.i, 15
  %shr1.i.i143.i = lshr i32 %lv.014.i.i138.i, 4
  %xor.i.i144.i = xor i32 %shr.i.i142.i, %shr1.i.i143.i
  %shr2.i.i145.i = lshr i32 %lv.014.i.i138.i, 2
  %xor3.i.i146.i = xor i32 %xor.i.i144.i, %shr2.i.i145.i
  %shr4.i.i147.i = lshr i32 %lv.014.i.i138.i, 1
  %xor5.i.i148.i = xor i32 %xor3.i.i146.i, %shr4.i.i147.i
  %and.i.i149.i = and i32 %xor5.i.i148.i, 1
  %shl.masked.i.i150.i = and i32 %shl.i.i141.i, 65534
  %and6.i.i151.i = or i32 %and.i.i149.i, %shl.masked.i.i150.i
  %tobool.not.i.i152.i = icmp eq i16 %dec.i.i140.i, 0
  br i1 %tobool.not.i.i152.i, label %while.end.loopexit.i.i157.i, label %while.body.i.i153.i.while.body.i.i153.i_crit_edge

while.body.i.i153.i.while.body.i.i153.i_crit_edge: ; preds = %while.body.i.i153.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i153.i

while.end.loopexit.i.i157.i:                      ; preds = %while.body.i.i153.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.i154.i = trunc i32 %and6.i.i151.i to i8
  %extract3.i155.i = lshr i32 %lv.014.i.i138.i, 7
  %extract.t2.i156.i = trunc i32 %extract3.i155.i to i8
  br label %udl_set_register_lfsr16.exit168.i

udl_set_register_lfsr16.exit168.i:                ; preds = %while.end.loopexit.i.i157.i, %udl_set_register_lfsr16.exit136.i.udl_set_register_lfsr16.exit168.i_crit_edge
  %lv.0.lcssa.i.off0.i158.i = phi i8 [ -1, %udl_set_register_lfsr16.exit136.i.udl_set_register_lfsr16.exit168.i_crit_edge ], [ %extract.t.i154.i, %while.end.loopexit.i.i157.i ]
  %lv.0.lcssa.i.off8.i159.i = phi i8 [ -1, %udl_set_register_lfsr16.exit136.i.udl_set_register_lfsr16.exit168.i_crit_edge ], [ %extract.t2.i156.i, %while.end.loopexit.i.i157.i ]
  %incdec.ptr.i.i.i160.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 57
  %76 = ptrtoint ptr %incdec.ptr3.i12.i.i135.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -81, ptr %incdec.ptr3.i12.i.i135.i, align 1
  %incdec.ptr1.i.i.i161.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 58
  %77 = ptrtoint ptr %incdec.ptr.i.i.i160.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 32, ptr %incdec.ptr.i.i.i160.i, align 1
  %incdec.ptr2.i.i.i162.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 59
  %78 = ptrtoint ptr %incdec.ptr1.i.i.i161.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 7, ptr %incdec.ptr1.i.i.i161.i, align 1
  %incdec.ptr3.i.i.i163.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 60
  %79 = ptrtoint ptr %incdec.ptr2.i.i.i162.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %lv.0.lcssa.i.off8.i159.i, ptr %incdec.ptr2.i.i.i162.i, align 1
  %incdec.ptr.i9.i.i164.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 61
  %80 = ptrtoint ptr %incdec.ptr3.i.i.i163.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -81, ptr %incdec.ptr3.i.i.i163.i, align 1
  %incdec.ptr1.i10.i.i165.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 62
  %81 = ptrtoint ptr %incdec.ptr.i9.i.i164.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 32, ptr %incdec.ptr.i9.i.i164.i, align 1
  %incdec.ptr2.i11.i.i166.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 63
  %82 = ptrtoint ptr %incdec.ptr1.i10.i.i165.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 8, ptr %incdec.ptr1.i10.i.i165.i, align 1
  %incdec.ptr3.i12.i.i167.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 64
  %83 = ptrtoint ptr %incdec.ptr2.i11.i.i166.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %lv.0.lcssa.i.off0.i158.i, ptr %incdec.ptr2.i11.i.i166.i, align 1
  %84 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %crtc_htotal.i, align 2
  %sub19.i = add i16 %85, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub19.i)
  %tobool.not12.i.i169.i = icmp eq i16 %sub19.i, 0
  br i1 %tobool.not12.i.i169.i, label %udl_set_register_lfsr16.exit168.i.udl_set_register_lfsr16.exit200.i_crit_edge, label %udl_set_register_lfsr16.exit168.i.while.body.i.i185.i_crit_edge

udl_set_register_lfsr16.exit168.i.while.body.i.i185.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit168.i
  br label %while.body.i.i185.i

udl_set_register_lfsr16.exit168.i.udl_set_register_lfsr16.exit200.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit168.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_set_register_lfsr16.exit200.i

while.body.i.i185.i:                              ; preds = %while.body.i.i185.i.while.body.i.i185.i_crit_edge, %udl_set_register_lfsr16.exit168.i.while.body.i.i185.i_crit_edge
  %lv.014.i.i170.i = phi i32 [ %and6.i.i183.i, %while.body.i.i185.i.while.body.i.i185.i_crit_edge ], [ 65535, %udl_set_register_lfsr16.exit168.i.while.body.i.i185.i_crit_edge ]
  %actual_count.addr.013.i.i171.i = phi i16 [ %dec.i.i172.i, %while.body.i.i185.i.while.body.i.i185.i_crit_edge ], [ %sub19.i, %udl_set_register_lfsr16.exit168.i.while.body.i.i185.i_crit_edge ]
  %dec.i.i172.i = add i16 %actual_count.addr.013.i.i171.i, -1
  %shl.i.i173.i = shl nuw nsw i32 %lv.014.i.i170.i, 1
  %shr.i.i174.i = lshr i32 %lv.014.i.i170.i, 15
  %shr1.i.i175.i = lshr i32 %lv.014.i.i170.i, 4
  %xor.i.i176.i = xor i32 %shr.i.i174.i, %shr1.i.i175.i
  %shr2.i.i177.i = lshr i32 %lv.014.i.i170.i, 2
  %xor3.i.i178.i = xor i32 %xor.i.i176.i, %shr2.i.i177.i
  %shr4.i.i179.i = lshr i32 %lv.014.i.i170.i, 1
  %xor5.i.i180.i = xor i32 %xor3.i.i178.i, %shr4.i.i179.i
  %and.i.i181.i = and i32 %xor5.i.i180.i, 1
  %shl.masked.i.i182.i = and i32 %shl.i.i173.i, 65534
  %and6.i.i183.i = or i32 %and.i.i181.i, %shl.masked.i.i182.i
  %tobool.not.i.i184.i = icmp eq i16 %dec.i.i172.i, 0
  br i1 %tobool.not.i.i184.i, label %while.end.loopexit.i.i189.i, label %while.body.i.i185.i.while.body.i.i185.i_crit_edge

while.body.i.i185.i.while.body.i.i185.i_crit_edge: ; preds = %while.body.i.i185.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i185.i

while.end.loopexit.i.i189.i:                      ; preds = %while.body.i.i185.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.i186.i = trunc i32 %and6.i.i183.i to i8
  %extract3.i187.i = lshr i32 %lv.014.i.i170.i, 7
  %extract.t2.i188.i = trunc i32 %extract3.i187.i to i8
  br label %udl_set_register_lfsr16.exit200.i

udl_set_register_lfsr16.exit200.i:                ; preds = %while.end.loopexit.i.i189.i, %udl_set_register_lfsr16.exit168.i.udl_set_register_lfsr16.exit200.i_crit_edge
  %lv.0.lcssa.i.off0.i190.i = phi i8 [ -1, %udl_set_register_lfsr16.exit168.i.udl_set_register_lfsr16.exit200.i_crit_edge ], [ %extract.t.i186.i, %while.end.loopexit.i.i189.i ]
  %lv.0.lcssa.i.off8.i191.i = phi i8 [ -1, %udl_set_register_lfsr16.exit168.i.udl_set_register_lfsr16.exit200.i_crit_edge ], [ %extract.t2.i188.i, %while.end.loopexit.i.i189.i ]
  %incdec.ptr.i.i.i192.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 65
  %86 = ptrtoint ptr %incdec.ptr3.i12.i.i167.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -81, ptr %incdec.ptr3.i12.i.i167.i, align 1
  %incdec.ptr1.i.i.i193.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 66
  %87 = ptrtoint ptr %incdec.ptr.i.i.i192.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 32, ptr %incdec.ptr.i.i.i192.i, align 1
  %incdec.ptr2.i.i.i194.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 67
  %88 = ptrtoint ptr %incdec.ptr1.i.i.i193.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 9, ptr %incdec.ptr1.i.i.i193.i, align 1
  %incdec.ptr3.i.i.i195.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 68
  %89 = ptrtoint ptr %incdec.ptr2.i.i.i194.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %lv.0.lcssa.i.off8.i191.i, ptr %incdec.ptr2.i.i.i194.i, align 1
  %incdec.ptr.i9.i.i196.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 69
  %90 = ptrtoint ptr %incdec.ptr3.i.i.i195.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -81, ptr %incdec.ptr3.i.i.i195.i, align 1
  %incdec.ptr1.i10.i.i197.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 70
  %91 = ptrtoint ptr %incdec.ptr.i9.i.i196.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 32, ptr %incdec.ptr.i9.i.i196.i, align 1
  %incdec.ptr2.i11.i.i198.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 71
  %92 = ptrtoint ptr %incdec.ptr1.i10.i.i197.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 10, ptr %incdec.ptr1.i10.i.i197.i, align 1
  %93 = ptrtoint ptr %incdec.ptr2.i11.i.i198.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %lv.0.lcssa.i.off0.i190.i, ptr %incdec.ptr2.i11.i.i198.i, align 1
  %incdec.ptr3.i12.i.i199.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 72
  %incdec.ptr.i.i.i223.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 73
  %94 = ptrtoint ptr %incdec.ptr3.i12.i.i199.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -81, ptr %incdec.ptr3.i12.i.i199.i, align 1
  %incdec.ptr1.i.i.i224.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 74
  %95 = ptrtoint ptr %incdec.ptr.i.i.i223.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 32, ptr %incdec.ptr.i.i.i223.i, align 1
  %incdec.ptr2.i.i.i225.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 75
  %96 = ptrtoint ptr %incdec.ptr1.i.i.i224.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 11, ptr %incdec.ptr1.i.i.i224.i, align 1
  %incdec.ptr3.i.i.i226.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 76
  %97 = ptrtoint ptr %incdec.ptr2.i.i.i225.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %incdec.ptr2.i.i.i225.i, align 1
  %incdec.ptr.i9.i.i227.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 77
  %98 = ptrtoint ptr %incdec.ptr3.i.i.i226.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -81, ptr %incdec.ptr3.i.i.i226.i, align 1
  %incdec.ptr1.i10.i.i228.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 78
  %99 = ptrtoint ptr %incdec.ptr.i9.i.i227.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 32, ptr %incdec.ptr.i9.i.i227.i, align 1
  %incdec.ptr2.i11.i.i229.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 79
  %100 = ptrtoint ptr %incdec.ptr1.i10.i.i228.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 12, ptr %incdec.ptr1.i10.i.i228.i, align 1
  %incdec.ptr3.i12.i.i230.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 80
  %101 = ptrtoint ptr %incdec.ptr2.i11.i.i229.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -2, ptr %incdec.ptr2.i11.i.i229.i, align 1
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 17
  %102 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %crtc_hsync_end.i, align 4
  %104 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %crtc_hsync_start.i, align 2
  %sub26.i = sub i16 %103, %105
  %add27.i = add i16 %sub26.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add27.i)
  %tobool.not12.i.i232.i = icmp eq i16 %add27.i, 0
  br i1 %tobool.not12.i.i232.i, label %udl_set_register_lfsr16.exit200.i.udl_set_register_lfsr16.exit263.i_crit_edge, label %udl_set_register_lfsr16.exit200.i.while.body.i.i248.i_crit_edge

udl_set_register_lfsr16.exit200.i.while.body.i.i248.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit200.i
  br label %while.body.i.i248.i

udl_set_register_lfsr16.exit200.i.udl_set_register_lfsr16.exit263.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_set_register_lfsr16.exit263.i

while.body.i.i248.i:                              ; preds = %while.body.i.i248.i.while.body.i.i248.i_crit_edge, %udl_set_register_lfsr16.exit200.i.while.body.i.i248.i_crit_edge
  %lv.014.i.i233.i = phi i32 [ %and6.i.i246.i, %while.body.i.i248.i.while.body.i.i248.i_crit_edge ], [ 65535, %udl_set_register_lfsr16.exit200.i.while.body.i.i248.i_crit_edge ]
  %actual_count.addr.013.i.i234.i = phi i16 [ %dec.i.i235.i, %while.body.i.i248.i.while.body.i.i248.i_crit_edge ], [ %add27.i, %udl_set_register_lfsr16.exit200.i.while.body.i.i248.i_crit_edge ]
  %dec.i.i235.i = add i16 %actual_count.addr.013.i.i234.i, -1
  %shl.i.i236.i = shl nuw nsw i32 %lv.014.i.i233.i, 1
  %shr.i.i237.i = lshr i32 %lv.014.i.i233.i, 15
  %shr1.i.i238.i = lshr i32 %lv.014.i.i233.i, 4
  %xor.i.i239.i = xor i32 %shr.i.i237.i, %shr1.i.i238.i
  %shr2.i.i240.i = lshr i32 %lv.014.i.i233.i, 2
  %xor3.i.i241.i = xor i32 %xor.i.i239.i, %shr2.i.i240.i
  %shr4.i.i242.i = lshr i32 %lv.014.i.i233.i, 1
  %xor5.i.i243.i = xor i32 %xor3.i.i241.i, %shr4.i.i242.i
  %and.i.i244.i = and i32 %xor5.i.i243.i, 1
  %shl.masked.i.i245.i = and i32 %shl.i.i236.i, 65534
  %and6.i.i246.i = or i32 %and.i.i244.i, %shl.masked.i.i245.i
  %tobool.not.i.i247.i = icmp eq i16 %dec.i.i235.i, 0
  br i1 %tobool.not.i.i247.i, label %while.end.loopexit.i.i252.i, label %while.body.i.i248.i.while.body.i.i248.i_crit_edge

while.body.i.i248.i.while.body.i.i248.i_crit_edge: ; preds = %while.body.i.i248.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i248.i

while.end.loopexit.i.i252.i:                      ; preds = %while.body.i.i248.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.i249.i = trunc i32 %and6.i.i246.i to i8
  %extract3.i250.i = lshr i32 %lv.014.i.i233.i, 7
  %extract.t2.i251.i = trunc i32 %extract3.i250.i to i8
  br label %udl_set_register_lfsr16.exit263.i

udl_set_register_lfsr16.exit263.i:                ; preds = %while.end.loopexit.i.i252.i, %udl_set_register_lfsr16.exit200.i.udl_set_register_lfsr16.exit263.i_crit_edge
  %lv.0.lcssa.i.off0.i253.i = phi i8 [ -1, %udl_set_register_lfsr16.exit200.i.udl_set_register_lfsr16.exit263.i_crit_edge ], [ %extract.t.i249.i, %while.end.loopexit.i.i252.i ]
  %lv.0.lcssa.i.off8.i254.i = phi i8 [ -1, %udl_set_register_lfsr16.exit200.i.udl_set_register_lfsr16.exit263.i_crit_edge ], [ %extract.t2.i251.i, %while.end.loopexit.i.i252.i ]
  %incdec.ptr.i.i.i255.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 81
  %106 = ptrtoint ptr %incdec.ptr3.i12.i.i230.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -81, ptr %incdec.ptr3.i12.i.i230.i, align 1
  %incdec.ptr1.i.i.i256.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 82
  %107 = ptrtoint ptr %incdec.ptr.i.i.i255.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 32, ptr %incdec.ptr.i.i.i255.i, align 1
  %incdec.ptr2.i.i.i257.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 83
  %108 = ptrtoint ptr %incdec.ptr1.i.i.i256.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 13, ptr %incdec.ptr1.i.i.i256.i, align 1
  %incdec.ptr3.i.i.i258.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 84
  %109 = ptrtoint ptr %incdec.ptr2.i.i.i257.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %lv.0.lcssa.i.off8.i254.i, ptr %incdec.ptr2.i.i.i257.i, align 1
  %incdec.ptr.i9.i.i259.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 85
  %110 = ptrtoint ptr %incdec.ptr3.i.i.i258.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -81, ptr %incdec.ptr3.i.i.i258.i, align 1
  %incdec.ptr1.i10.i.i260.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 86
  %111 = ptrtoint ptr %incdec.ptr.i9.i.i259.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 32, ptr %incdec.ptr.i9.i.i259.i, align 1
  %incdec.ptr2.i11.i.i261.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 87
  %112 = ptrtoint ptr %incdec.ptr1.i10.i.i260.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 14, ptr %incdec.ptr1.i10.i.i260.i, align 1
  %incdec.ptr3.i12.i.i262.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 88
  %113 = ptrtoint ptr %incdec.ptr2.i11.i.i261.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %lv.0.lcssa.i.off0.i253.i, ptr %incdec.ptr2.i11.i.i261.i, align 1
  %114 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %hdisplay, align 4
  %116 = lshr i16 %115, 8
  %conv1.i.i = trunc i16 %116 to i8
  %incdec.ptr.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 89
  %117 = ptrtoint ptr %incdec.ptr3.i12.i.i262.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -81, ptr %incdec.ptr3.i12.i.i262.i, align 1
  %incdec.ptr1.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 90
  %118 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 32, ptr %incdec.ptr.i.i.i, align 1
  %incdec.ptr2.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 91
  %119 = ptrtoint ptr %incdec.ptr1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 15, ptr %incdec.ptr1.i.i.i, align 1
  %incdec.ptr3.i.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 92
  %120 = ptrtoint ptr %incdec.ptr2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv1.i.i, ptr %incdec.ptr2.i.i.i, align 1
  %conv4.i.i = trunc i16 %115 to i8
  %incdec.ptr.i9.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 93
  %121 = ptrtoint ptr %incdec.ptr3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -81, ptr %incdec.ptr3.i.i.i, align 1
  %incdec.ptr1.i10.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 94
  %122 = ptrtoint ptr %incdec.ptr.i9.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 32, ptr %incdec.ptr.i9.i.i, align 1
  %incdec.ptr2.i11.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 95
  %123 = ptrtoint ptr %incdec.ptr1.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 16, ptr %incdec.ptr1.i10.i.i, align 1
  %incdec.ptr3.i12.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 96
  %124 = ptrtoint ptr %incdec.ptr2.i11.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv4.i.i, ptr %incdec.ptr2.i11.i.i, align 1
  %125 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %crtc_vtotal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool.not12.i.i264.i = icmp eq i16 %126, 0
  br i1 %tobool.not12.i.i264.i, label %udl_set_register_lfsr16.exit263.i.udl_set_register_lfsr16.exit295.i_crit_edge, label %udl_set_register_lfsr16.exit263.i.while.body.i.i280.i_crit_edge

udl_set_register_lfsr16.exit263.i.while.body.i.i280.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit263.i
  br label %while.body.i.i280.i

udl_set_register_lfsr16.exit263.i.udl_set_register_lfsr16.exit295.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit263.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_set_register_lfsr16.exit295.i

while.body.i.i280.i:                              ; preds = %while.body.i.i280.i.while.body.i.i280.i_crit_edge, %udl_set_register_lfsr16.exit263.i.while.body.i.i280.i_crit_edge
  %lv.014.i.i265.i = phi i32 [ %and6.i.i278.i, %while.body.i.i280.i.while.body.i.i280.i_crit_edge ], [ 65535, %udl_set_register_lfsr16.exit263.i.while.body.i.i280.i_crit_edge ]
  %actual_count.addr.013.i.i266.i = phi i16 [ %dec.i.i267.i, %while.body.i.i280.i.while.body.i.i280.i_crit_edge ], [ %126, %udl_set_register_lfsr16.exit263.i.while.body.i.i280.i_crit_edge ]
  %dec.i.i267.i = add i16 %actual_count.addr.013.i.i266.i, -1
  %shl.i.i268.i = shl nuw nsw i32 %lv.014.i.i265.i, 1
  %shr.i.i269.i = lshr i32 %lv.014.i.i265.i, 15
  %shr1.i.i270.i = lshr i32 %lv.014.i.i265.i, 4
  %xor.i.i271.i = xor i32 %shr.i.i269.i, %shr1.i.i270.i
  %shr2.i.i272.i = lshr i32 %lv.014.i.i265.i, 2
  %xor3.i.i273.i = xor i32 %xor.i.i271.i, %shr2.i.i272.i
  %shr4.i.i274.i = lshr i32 %lv.014.i.i265.i, 1
  %xor5.i.i275.i = xor i32 %xor3.i.i273.i, %shr4.i.i274.i
  %and.i.i276.i = and i32 %xor5.i.i275.i, 1
  %shl.masked.i.i277.i = and i32 %shl.i.i268.i, 65534
  %and6.i.i278.i = or i32 %and.i.i276.i, %shl.masked.i.i277.i
  %tobool.not.i.i279.i = icmp eq i16 %dec.i.i267.i, 0
  br i1 %tobool.not.i.i279.i, label %while.end.loopexit.i.i284.i, label %while.body.i.i280.i.while.body.i.i280.i_crit_edge

while.body.i.i280.i.while.body.i.i280.i_crit_edge: ; preds = %while.body.i.i280.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i280.i

while.end.loopexit.i.i284.i:                      ; preds = %while.body.i.i280.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.i281.i = trunc i32 %and6.i.i278.i to i8
  %extract3.i282.i = lshr i32 %lv.014.i.i265.i, 7
  %extract.t2.i283.i = trunc i32 %extract3.i282.i to i8
  br label %udl_set_register_lfsr16.exit295.i

udl_set_register_lfsr16.exit295.i:                ; preds = %while.end.loopexit.i.i284.i, %udl_set_register_lfsr16.exit263.i.udl_set_register_lfsr16.exit295.i_crit_edge
  %lv.0.lcssa.i.off0.i285.i = phi i8 [ -1, %udl_set_register_lfsr16.exit263.i.udl_set_register_lfsr16.exit295.i_crit_edge ], [ %extract.t.i281.i, %while.end.loopexit.i.i284.i ]
  %lv.0.lcssa.i.off8.i286.i = phi i8 [ -1, %udl_set_register_lfsr16.exit263.i.udl_set_register_lfsr16.exit295.i_crit_edge ], [ %extract.t2.i283.i, %while.end.loopexit.i.i284.i ]
  %incdec.ptr.i.i.i287.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 97
  %127 = ptrtoint ptr %incdec.ptr3.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -81, ptr %incdec.ptr3.i12.i.i, align 1
  %incdec.ptr1.i.i.i288.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 98
  %128 = ptrtoint ptr %incdec.ptr.i.i.i287.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 32, ptr %incdec.ptr.i.i.i287.i, align 1
  %incdec.ptr2.i.i.i289.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 99
  %129 = ptrtoint ptr %incdec.ptr1.i.i.i288.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 17, ptr %incdec.ptr1.i.i.i288.i, align 1
  %incdec.ptr3.i.i.i290.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 100
  %130 = ptrtoint ptr %incdec.ptr2.i.i.i289.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %lv.0.lcssa.i.off8.i286.i, ptr %incdec.ptr2.i.i.i289.i, align 1
  %incdec.ptr.i9.i.i291.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 101
  %131 = ptrtoint ptr %incdec.ptr3.i.i.i290.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -81, ptr %incdec.ptr3.i.i.i290.i, align 1
  %incdec.ptr1.i10.i.i292.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 102
  %132 = ptrtoint ptr %incdec.ptr.i9.i.i291.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 32, ptr %incdec.ptr.i9.i.i291.i, align 1
  %incdec.ptr2.i11.i.i293.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 103
  %133 = ptrtoint ptr %incdec.ptr1.i10.i.i292.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 18, ptr %incdec.ptr1.i10.i.i292.i, align 1
  %incdec.ptr3.i12.i.i294.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 104
  %134 = ptrtoint ptr %incdec.ptr2.i11.i.i293.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %lv.0.lcssa.i.off0.i285.i, ptr %incdec.ptr2.i11.i.i293.i, align 1
  %incdec.ptr.i.i.i298.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 105
  %135 = ptrtoint ptr %incdec.ptr3.i12.i.i294.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -81, ptr %incdec.ptr3.i12.i.i294.i, align 1
  %incdec.ptr1.i.i.i299.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 106
  %136 = ptrtoint ptr %incdec.ptr.i.i.i298.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 32, ptr %incdec.ptr.i.i.i298.i, align 1
  %incdec.ptr2.i.i.i300.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 107
  %137 = ptrtoint ptr %incdec.ptr1.i.i.i299.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 19, ptr %incdec.ptr1.i.i.i299.i, align 1
  %incdec.ptr3.i.i.i301.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 108
  %138 = ptrtoint ptr %incdec.ptr2.i.i.i300.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -1, ptr %incdec.ptr2.i.i.i300.i, align 1
  %incdec.ptr.i9.i.i302.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 109
  %139 = ptrtoint ptr %incdec.ptr3.i.i.i301.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -81, ptr %incdec.ptr3.i.i.i301.i, align 1
  %incdec.ptr1.i10.i.i303.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 110
  %140 = ptrtoint ptr %incdec.ptr.i9.i.i302.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 32, ptr %incdec.ptr.i9.i.i302.i, align 1
  %incdec.ptr2.i11.i.i304.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 111
  %141 = ptrtoint ptr %incdec.ptr1.i10.i.i303.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 20, ptr %incdec.ptr1.i10.i.i303.i, align 1
  %142 = ptrtoint ptr %incdec.ptr2.i11.i.i304.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -1, ptr %incdec.ptr2.i11.i.i304.i, align 1
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 24
  %143 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %crtc_vsync_end.i, align 2
  %145 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %crtc_vsync_start.i, align 4
  %sub37.i = sub i16 %144, %146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub37.i)
  %tobool.not12.i.i306.i = icmp eq i16 %sub37.i, 0
  br i1 %tobool.not12.i.i306.i, label %udl_set_register_lfsr16.exit295.i.udl_set_vid_cmds.exit_crit_edge, label %udl_set_register_lfsr16.exit295.i.while.body.i.i322.i_crit_edge

udl_set_register_lfsr16.exit295.i.while.body.i.i322.i_crit_edge: ; preds = %udl_set_register_lfsr16.exit295.i
  br label %while.body.i.i322.i

udl_set_register_lfsr16.exit295.i.udl_set_vid_cmds.exit_crit_edge: ; preds = %udl_set_register_lfsr16.exit295.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_set_vid_cmds.exit

while.body.i.i322.i:                              ; preds = %while.body.i.i322.i.while.body.i.i322.i_crit_edge, %udl_set_register_lfsr16.exit295.i.while.body.i.i322.i_crit_edge
  %lv.014.i.i307.i = phi i32 [ %and6.i.i320.i, %while.body.i.i322.i.while.body.i.i322.i_crit_edge ], [ 65535, %udl_set_register_lfsr16.exit295.i.while.body.i.i322.i_crit_edge ]
  %actual_count.addr.013.i.i308.i = phi i16 [ %dec.i.i309.i, %while.body.i.i322.i.while.body.i.i322.i_crit_edge ], [ %sub37.i, %udl_set_register_lfsr16.exit295.i.while.body.i.i322.i_crit_edge ]
  %dec.i.i309.i = add i16 %actual_count.addr.013.i.i308.i, -1
  %shl.i.i310.i = shl nuw nsw i32 %lv.014.i.i307.i, 1
  %shr.i.i311.i = lshr i32 %lv.014.i.i307.i, 15
  %shr1.i.i312.i = lshr i32 %lv.014.i.i307.i, 4
  %xor.i.i313.i = xor i32 %shr.i.i311.i, %shr1.i.i312.i
  %shr2.i.i314.i = lshr i32 %lv.014.i.i307.i, 2
  %xor3.i.i315.i = xor i32 %xor.i.i313.i, %shr2.i.i314.i
  %shr4.i.i316.i = lshr i32 %lv.014.i.i307.i, 1
  %xor5.i.i317.i = xor i32 %xor3.i.i315.i, %shr4.i.i316.i
  %and.i.i318.i = and i32 %xor5.i.i317.i, 1
  %shl.masked.i.i319.i = and i32 %shl.i.i310.i, 65534
  %and6.i.i320.i = or i32 %and.i.i318.i, %shl.masked.i.i319.i
  %tobool.not.i.i321.i = icmp eq i16 %dec.i.i309.i, 0
  br i1 %tobool.not.i.i321.i, label %while.end.loopexit.i.i326.i, label %while.body.i.i322.i.while.body.i.i322.i_crit_edge

while.body.i.i322.i.while.body.i.i322.i_crit_edge: ; preds = %while.body.i.i322.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i322.i

while.end.loopexit.i.i326.i:                      ; preds = %while.body.i.i322.i
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t.i323.i = trunc i32 %and6.i.i320.i to i8
  %extract3.i324.i = lshr i32 %lv.014.i.i307.i, 7
  %extract.t2.i325.i = trunc i32 %extract3.i324.i to i8
  br label %udl_set_vid_cmds.exit

udl_set_vid_cmds.exit:                            ; preds = %while.end.loopexit.i.i326.i, %udl_set_register_lfsr16.exit295.i.udl_set_vid_cmds.exit_crit_edge
  %lv.0.lcssa.i.off0.i327.i = phi i8 [ -1, %udl_set_register_lfsr16.exit295.i.udl_set_vid_cmds.exit_crit_edge ], [ %extract.t.i323.i, %while.end.loopexit.i.i326.i ]
  %lv.0.lcssa.i.off8.i328.i = phi i8 [ -1, %udl_set_register_lfsr16.exit295.i.udl_set_vid_cmds.exit_crit_edge ], [ %extract.t2.i325.i, %while.end.loopexit.i.i326.i ]
  %incdec.ptr3.i12.i.i305.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 112
  %incdec.ptr.i.i.i329.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 113
  %147 = ptrtoint ptr %incdec.ptr3.i12.i.i305.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -81, ptr %incdec.ptr3.i12.i.i305.i, align 1
  %incdec.ptr1.i.i.i330.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 114
  %148 = ptrtoint ptr %incdec.ptr.i.i.i329.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 32, ptr %incdec.ptr.i.i.i329.i, align 1
  %incdec.ptr2.i.i.i331.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 115
  %149 = ptrtoint ptr %incdec.ptr1.i.i.i330.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 21, ptr %incdec.ptr1.i.i.i330.i, align 1
  %incdec.ptr3.i.i.i332.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 116
  %150 = ptrtoint ptr %incdec.ptr2.i.i.i331.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %lv.0.lcssa.i.off8.i328.i, ptr %incdec.ptr2.i.i.i331.i, align 1
  %incdec.ptr.i9.i.i333.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 117
  %151 = ptrtoint ptr %incdec.ptr3.i.i.i332.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -81, ptr %incdec.ptr3.i.i.i332.i, align 1
  %incdec.ptr1.i10.i.i334.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 118
  %152 = ptrtoint ptr %incdec.ptr.i9.i.i333.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 32, ptr %incdec.ptr.i9.i.i333.i, align 1
  %incdec.ptr2.i11.i.i335.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 119
  %153 = ptrtoint ptr %incdec.ptr1.i10.i.i334.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 22, ptr %incdec.ptr1.i10.i.i334.i, align 1
  %incdec.ptr3.i12.i.i336.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 120
  %154 = ptrtoint ptr %incdec.ptr2.i11.i.i335.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %lv.0.lcssa.i.off0.i327.i, ptr %incdec.ptr2.i11.i.i335.i, align 1
  %155 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %crtc_vdisplay.i, align 2
  %157 = lshr i16 %156, 8
  %conv1.i338.i = trunc i16 %157 to i8
  %incdec.ptr.i.i339.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 121
  %158 = ptrtoint ptr %incdec.ptr3.i12.i.i336.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 -81, ptr %incdec.ptr3.i12.i.i336.i, align 1
  %incdec.ptr1.i.i340.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 122
  %159 = ptrtoint ptr %incdec.ptr.i.i339.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 32, ptr %incdec.ptr.i.i339.i, align 1
  %incdec.ptr2.i.i341.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 123
  %160 = ptrtoint ptr %incdec.ptr1.i.i340.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 23, ptr %incdec.ptr1.i.i340.i, align 1
  %incdec.ptr3.i.i342.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 124
  %161 = ptrtoint ptr %incdec.ptr2.i.i341.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv1.i338.i, ptr %incdec.ptr2.i.i341.i, align 1
  %conv4.i343.i = trunc i16 %156 to i8
  %incdec.ptr.i9.i344.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 125
  %162 = ptrtoint ptr %incdec.ptr3.i.i342.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -81, ptr %incdec.ptr3.i.i342.i, align 1
  %incdec.ptr1.i10.i345.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 126
  %163 = ptrtoint ptr %incdec.ptr.i9.i344.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 32, ptr %incdec.ptr.i9.i344.i, align 1
  %incdec.ptr2.i11.i346.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 127
  %164 = ptrtoint ptr %incdec.ptr1.i10.i345.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 24, ptr %incdec.ptr1.i10.i345.i, align 1
  %incdec.ptr3.i12.i347.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 128
  %165 = ptrtoint ptr %incdec.ptr2.i11.i346.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv4.i343.i, ptr %incdec.ptr2.i11.i346.i, align 1
  %166 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mode4, align 4
  %div.i = sdiv i32 %167, 5
  %conv.i.i = trunc i32 %div.i to i8
  %incdec.ptr.i.i348.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 129
  %168 = ptrtoint ptr %incdec.ptr3.i12.i347.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -81, ptr %incdec.ptr3.i12.i347.i, align 1
  %incdec.ptr1.i.i349.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 130
  %169 = ptrtoint ptr %incdec.ptr.i.i348.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 32, ptr %incdec.ptr.i.i348.i, align 1
  %incdec.ptr2.i.i350.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 131
  %170 = ptrtoint ptr %incdec.ptr1.i.i349.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 27, ptr %incdec.ptr1.i.i349.i, align 1
  %incdec.ptr3.i.i351.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 132
  %171 = ptrtoint ptr %incdec.ptr2.i.i350.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv.i.i, ptr %incdec.ptr2.i.i350.i, align 1
  %172 = lshr i32 %div.i, 8
  %conv4.i352.i = trunc i32 %172 to i8
  %incdec.ptr.i1.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 133
  %173 = ptrtoint ptr %incdec.ptr3.i.i351.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -81, ptr %incdec.ptr3.i.i351.i, align 1
  %incdec.ptr1.i2.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 134
  %174 = ptrtoint ptr %incdec.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 32, ptr %incdec.ptr.i1.i.i, align 1
  %incdec.ptr2.i3.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 135
  %175 = ptrtoint ptr %incdec.ptr1.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 28, ptr %incdec.ptr1.i2.i.i, align 1
  %incdec.ptr3.i4.i.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 136
  %176 = ptrtoint ptr %incdec.ptr2.i3.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv4.i352.i, ptr %incdec.ptr2.i3.i.i, align 1
  %incdec.ptr.i.i54 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 137
  %177 = ptrtoint ptr %incdec.ptr3.i4.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -81, ptr %incdec.ptr3.i4.i.i, align 1
  %incdec.ptr1.i.i55 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 138
  %178 = ptrtoint ptr %incdec.ptr.i.i54 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 32, ptr %incdec.ptr.i.i54, align 1
  %incdec.ptr2.i.i56 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 139
  %179 = ptrtoint ptr %incdec.ptr1.i.i55 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 31, ptr %incdec.ptr1.i.i55, align 1
  %incdec.ptr3.i.i57 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 140
  %180 = ptrtoint ptr %incdec.ptr2.i.i56 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %incdec.ptr2.i.i56, align 1
  %incdec.ptr.i.i58 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 141
  %181 = ptrtoint ptr %incdec.ptr3.i.i57 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -81, ptr %incdec.ptr3.i.i57, align 1
  %incdec.ptr1.i.i59 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 142
  %182 = ptrtoint ptr %incdec.ptr.i.i58 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 32, ptr %incdec.ptr.i.i58, align 1
  %incdec.ptr2.i.i60 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 143
  %183 = ptrtoint ptr %incdec.ptr1.i.i59 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -1, ptr %incdec.ptr1.i.i59, align 1
  %incdec.ptr3.i.i61 = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 144
  %184 = ptrtoint ptr %incdec.ptr2.i.i60 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -1, ptr %incdec.ptr2.i.i60, align 1
  %incdec.ptr.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 145
  %185 = ptrtoint ptr %incdec.ptr3.i.i61 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -81, ptr %incdec.ptr3.i.i61, align 1
  %incdec.ptr1.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 146
  %186 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 106, ptr %incdec.ptr.i, align 1
  %incdec.ptr2.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 147
  %187 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %incdec.ptr1.i, align 1
  %incdec.ptr3.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 148
  %188 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %incdec.ptr2.i, align 1
  %incdec.ptr4.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 149
  %189 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 150
  %190 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %incdec.ptr4.i, align 1
  %incdec.ptr6.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 151
  %191 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %incdec.ptr7.i = getelementptr %struct.udl_device, ptr %1, i32 0, i32 7, i32 152
  %192 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %incdec.ptr6.i, align 1
  %193 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %incdec.ptr7.i, align 1
  %mode_buf_len = getelementptr inbounds %struct.udl_device, ptr %1, i32 0, i32 8
  %194 = ptrtoint ptr %mode_buf_len to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 153, ptr %mode_buf_len, align 8
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %plane_state, i32 0, i32 2
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 9
  %195 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 10
  %197 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %height, align 4
  tail call fastcc void @udl_handle_damage(ptr noundef %3, ptr noundef %data, i32 noundef 0, i32 noundef 0, i32 noundef %196, i32 noundef %198)
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %199 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %199)
  %bf.load = load i8, ptr %mode_changed, align 2
  %200 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %bf.cast.not = icmp eq i8 %200, 0
  br i1 %bf.cast.not, label %udl_set_vid_cmds.exit.cleanup_crit_edge, label %if.end

udl_set_vid_cmds.exit.cleanup_crit_edge:          ; preds = %udl_set_vid_cmds.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %udl_set_vid_cmds.exit
  %201 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pipe, align 8
  %mode_buf_len.i = getelementptr inbounds %struct.udl_device, ptr %202, i32 0, i32 8
  %203 = ptrtoint ptr %mode_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %mode_buf_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i = icmp eq i32 %204, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = tail call ptr @udl_get_urb(ptr noundef %202) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %205 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %transfer_buffer.i, align 4
  %mode_buf.i = getelementptr inbounds %struct.udl_device, ptr %202, i32 0, i32 7
  %207 = ptrtoint ptr %mode_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %mode_buf_len.i, align 8
  %209 = call ptr @memcpy(ptr %206, ptr %mode_buf.i, i32 %208)
  %210 = load i32, ptr %mode_buf_len.i, align 8
  %call7.i = tail call i32 @udl_submit_urb(ptr noundef %202, ptr noundef nonnull %call.i, i32 noundef %210) #5
  %211 = ptrtoint ptr %mode_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %mode_buf_len.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %212) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.end.i.cleanup_crit_edge, %if.then.i, %udl_set_vid_cmds.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udl_simple_display_pipe_disable(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %call = tail call ptr @udl_get_urb(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -81, ptr %3, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %3, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr2.i.i = getelementptr i8, ptr %3, i32 3
  %6 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %incdec.ptr1.i.i, align 1
  %incdec.ptr3.i.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %incdec.ptr2.i.i, align 1
  %incdec.ptr.i.i20 = getelementptr i8, ptr %3, i32 5
  %8 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -81, ptr %incdec.ptr3.i.i, align 1
  %incdec.ptr1.i.i21 = getelementptr i8, ptr %3, i32 6
  %9 = ptrtoint ptr %incdec.ptr.i.i20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %incdec.ptr.i.i20, align 1
  %incdec.ptr2.i.i22 = getelementptr i8, ptr %3, i32 7
  %10 = ptrtoint ptr %incdec.ptr1.i.i21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %incdec.ptr1.i.i21, align 1
  %incdec.ptr3.i.i23 = getelementptr i8, ptr %3, i32 8
  %11 = ptrtoint ptr %incdec.ptr2.i.i22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %incdec.ptr2.i.i22, align 1
  %incdec.ptr.i.i24 = getelementptr i8, ptr %3, i32 9
  %12 = ptrtoint ptr %incdec.ptr3.i.i23 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -81, ptr %incdec.ptr3.i.i23, align 1
  %incdec.ptr1.i.i25 = getelementptr i8, ptr %3, i32 10
  %13 = ptrtoint ptr %incdec.ptr.i.i24 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %incdec.ptr.i.i24, align 1
  %incdec.ptr2.i.i26 = getelementptr i8, ptr %3, i32 11
  %14 = ptrtoint ptr %incdec.ptr1.i.i25 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %incdec.ptr1.i.i25, align 1
  %incdec.ptr3.i.i27 = getelementptr i8, ptr %3, i32 12
  %15 = ptrtoint ptr %incdec.ptr2.i.i26 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %incdec.ptr2.i.i26, align 1
  %incdec.ptr.i = getelementptr i8, ptr %3, i32 13
  %16 = ptrtoint ptr %incdec.ptr3.i.i27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -81, ptr %incdec.ptr3.i.i27, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %3, i32 14
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 106, ptr %incdec.ptr.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %3, i32 15
  %18 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %incdec.ptr1.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %3, i32 16
  %19 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %incdec.ptr2.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %3, i32 17
  %20 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %3, i32 18
  %21 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %incdec.ptr4.i, align 1
  %incdec.ptr6.i = getelementptr i8, ptr %3, i32 19
  %22 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %incdec.ptr7.i = getelementptr i8, ptr %3, i32 20
  %23 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %incdec.ptr6.i, align 1
  %incdec.ptr8.i = getelementptr i8, ptr %3, i32 21
  %24 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %incdec.ptr7.i, align 1
  %25 = load ptr, ptr %transfer_buffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr8.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call8 = tail call i32 @udl_submit_urb(ptr noundef %1, ptr noundef nonnull %call, i32 noundef %sub.ptr.sub) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udl_simple_display_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_plane_state) #0 align 64 {
entry:
  %rect = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rect) #5
  %4 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 3
  %tobool.not = icmp eq ptr %3, null
  %7 = call ptr @memset(ptr %rect, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_plane_state, ptr noundef %1, ptr noundef nonnull %rect) #5
  br i1 %call3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rect, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %sub = sub i32 %13, %9
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %sub7 = sub i32 %15, %11
  call fastcc void @udl_handle_damage(ptr noundef nonnull %3, ptr noundef %data, i32 noundef %9, i32 noundef %11, i32 noundef %sub, i32 noundef %sub7)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rect) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_simple_kms_prepare_shadow_fb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_cleanup_shadow_fb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_reset_shadow_plane(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_simple_kms_duplicate_shadow_plane_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_destroy_shadow_plane_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udl_handle_damage(ptr noundef %fb, ptr nocapture noundef readonly %map, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca ptr, align 4
  %urb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #5
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cmd, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %urb) #5
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %format, align 8
  %7 = getelementptr inbounds %struct.drm_format_info, ptr %6, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 2
  %conv = zext i8 %9 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %conv) #5, !range !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %if.end, label %udl_log_cpp.exit.thread, !prof !31

udl_log_cpp.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 9, ptr noundef null) #5
  br label %cleanup54

if.end:                                           ; preds = %entry
  %12 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #5, !range !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x)
  %cmp.i = icmp slt i32 %x, 0
  br i1 %cmp.i, label %land.rhs.i, label %lor.lhs.false.critedge.i

land.rhs.i:                                       ; preds = %if.end
  %.b239.i = load i1, ptr @udl_aligned_damage_clip.__already_done, align 1
  br i1 %.b239.i, label %land.rhs.i.cleanup54_crit_edge, label %if.then.i, !prof !32

land.rhs.i.cleanup54_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @udl_aligned_damage_clip.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #5
  br label %cleanup54

lor.lhs.false.critedge.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y)
  %cmp37.i = icmp slt i32 %y, 0
  br i1 %cmp37.i, label %land.rhs44.i, label %lor.lhs.false91.critedge.i

land.rhs44.i:                                     ; preds = %lor.lhs.false.critedge.i
  %.b233238.i = load i1, ptr @udl_aligned_damage_clip.__already_done.1, align 1
  br i1 %.b233238.i, label %land.rhs44.i.cleanup54_crit_edge, label %if.then55.i, !prof !32

land.rhs44.i.cleanup54_crit_edge:                 ; preds = %land.rhs44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.then55.i:                                      ; preds = %land.rhs44.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @udl_aligned_damage_clip.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 9, ptr noundef null) #5
  br label %cleanup54

lor.lhs.false91.critedge.i:                       ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %cmp93.i = icmp slt i32 %width, 0
  br i1 %cmp93.i, label %land.rhs100.i, label %lor.lhs.false147.critedge.i

land.rhs100.i:                                    ; preds = %lor.lhs.false91.critedge.i
  %.b234237.i = load i1, ptr @udl_aligned_damage_clip.__already_done.2, align 1
  br i1 %.b234237.i, label %land.rhs100.i.cleanup54_crit_edge, label %if.then111.i, !prof !32

land.rhs100.i.cleanup54_crit_edge:                ; preds = %land.rhs100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.then111.i:                                     ; preds = %land.rhs100.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @udl_aligned_damage_clip.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #5
  br label %cleanup54

lor.lhs.false147.critedge.i:                      ; preds = %lor.lhs.false91.critedge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height)
  %cmp149.i = icmp slt i32 %height, 0
  br i1 %cmp149.i, label %land.rhs156.i, label %if.else

land.rhs156.i:                                    ; preds = %lor.lhs.false147.critedge.i
  %.b235236.i = load i1, ptr @udl_aligned_damage_clip.__already_done.3, align 1
  br i1 %.b235236.i, label %land.rhs156.i.cleanup54_crit_edge, label %if.then167.i, !prof !32

land.rhs156.i.cleanup54_crit_edge:                ; preds = %land.rhs156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.then167.i:                                     ; preds = %land.rhs156.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @udl_aligned_damage_clip.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #5
  br label %cleanup54

if.else:                                          ; preds = %lor.lhs.false147.critedge.i
  %and.i = and i32 %x, -4
  %sub205.i = and i32 %x, 3
  %add206.i = add nuw nsw i32 %sub205.i, 3
  %add207.i = add nuw i32 %add206.i, %width
  %and208.i = and i32 %add207.i, -4
  %add209.i = add i32 %and208.i, %and.i
  %add212.i = add nuw i32 %height, %y
  %width5 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %13 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add209.i, i32 %14)
  %cmp6 = icmp ugt i32 %add209.i, %14
  br i1 %cmp6, label %if.else.cleanup54_crit_edge, label %lor.lhs.false

if.else.cleanup54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

lor.lhs.false:                                    ; preds = %if.else
  %height8 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %15 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add212.i, i32 %16)
  %cmp9 = icmp ugt i32 %add212.i, %16
  br i1 %cmp9, label %lor.lhs.false.cleanup54_crit_edge, label %if.end13

lor.lhs.false.cleanup54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end13:                                         ; preds = %lor.lhs.false
  %call14 = tail call i32 @drm_gem_fb_begin_cpu_access(ptr noundef %fb, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup54_crit_edge

if.end13.cleanup54_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end17:                                         ; preds = %if.end13
  %call18 = tail call ptr @udl_get_urb(ptr noundef %1) #5
  %17 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call18, ptr %urb, align 4
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.out_drm_gem_fb_end_cpu_access_crit_edge, label %if.end21

if.end17.out_drm_gem_fb_end_cpu_access_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_drm_gem_fb_end_cpu_access

if.end21:                                         ; preds = %if.end17
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer, align 4
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add212.i, i32 %y)
  %cmp2312 = icmp sgt i32 %add212.i, %y
  br i1 %cmp2312, label %for.body.lr.ph, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %shl = shl i32 %and.i, %12
  %shl33 = shl i32 %and208.i, %12
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %add212.i
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ %y, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %21 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pitches, align 8
  %mul = mul i32 %22, %i.013
  %add = add i32 %mul, %shl
  %23 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width5, align 8
  %mul27 = mul i32 %24, %i.013
  %add29 = add i32 %mul27, %and.i
  %shl30 = shl i32 %add29, %12
  %call34 = call i32 @udl_render_hline(ptr noundef %1, i32 noundef %12, ptr noundef nonnull %urb, ptr noundef %3, ptr noundef nonnull %cmd, i32 noundef %add, i32 noundef %shl30, i32 noundef %shl33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond, label %for.body.out_drm_gem_fb_end_cpu_access_crit_edge

for.body.out_drm_gem_fb_end_cpu_access_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_drm_gem_fb_end_cpu_access

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end21.for.end_crit_edge
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd, align 4
  %27 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb, align 4
  %transfer_buffer41 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_buffer41, align 4
  %cmp42 = icmp ugt ptr %26, %30
  br i1 %cmp42, label %if.then44, label %if.else52

if.then44:                                        ; preds = %for.end
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %32
  %cmp46 = icmp ult ptr %26, %add.ptr
  br i1 %cmp46, label %if.then48, label %if.then44.if.end49_crit_edge

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %26, i32 1
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %incdec.ptr, ptr %cmd, align 4
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -81, ptr %26, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then44.if.end49_crit_edge
  %35 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd, align 4
  %37 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb, align 4
  %transfer_buffer50 = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %transfer_buffer50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %transfer_buffer50, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call51 = call i32 @udl_submit_urb(ptr noundef %1, ptr noundef %38, i32 noundef %sub.ptr.sub) #5
  br label %out_drm_gem_fb_end_cpu_access

if.else52:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @udl_urb_completion(ptr noundef %28) #5
  br label %out_drm_gem_fb_end_cpu_access

out_drm_gem_fb_end_cpu_access:                    ; preds = %if.else52, %if.end49, %for.body.out_drm_gem_fb_end_cpu_access_crit_edge, %if.end17.out_drm_gem_fb_end_cpu_access_crit_edge
  call void @drm_gem_fb_end_cpu_access(ptr noundef %fb, i32 noundef 2) #5
  br label %cleanup54

cleanup54:                                        ; preds = %out_drm_gem_fb_end_cpu_access, %if.end13.cleanup54_crit_edge, %lor.lhs.false.cleanup54_crit_edge, %if.else.cleanup54_crit_edge, %if.then167.i, %land.rhs156.i.cleanup54_crit_edge, %if.then111.i, %land.rhs100.i.cleanup54_crit_edge, %if.then55.i, %land.rhs44.i.cleanup54_crit_edge, %if.then.i, %land.rhs.i.cleanup54_crit_edge, %udl_log_cpp.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %urb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_begin_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udl_get_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udl_render_hline(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udl_submit_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udl_urb_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_end_cpu_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @udl_mode_funcs, !1, !"udl_mode_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 441, i32 43}
!2 = !{ptr @udl_simple_display_pipe_funcs, !3, !"udl_simple_display_pipe_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 429, i32 51}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 240, i32 6}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 250, i32 6}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 251, i32 6}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 252, i32 6}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 253, i32 6}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 222, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 234, i32 2}
!18 = !{ptr @udl_simple_display_pipe_formats, !19, !"udl_simple_display_pipe_formats", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/udl/udl_modeset.c", i32 334, i32 23}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i32 0, i32 33}
!31 = !{!"branch_weights", i32 -102759400, i32 4193255}
!32 = !{!"branch_weights", i32 2000, i32 1}
