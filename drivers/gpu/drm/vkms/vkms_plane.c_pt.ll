; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vkms/vkms_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/vkms/vkms_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.vkms_plane_state = type { %struct.drm_shadow_plane_state, ptr }
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }
%struct.dma_buf_map = type { %union.anon.84, i8 }
%union.anon.84 = type { ptr }
%struct.vkms_composer = type { %struct.drm_framebuffer, %struct.drm_rect, %struct.drm_rect, [4 x %struct.dma_buf_map], i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@vkms_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713112], [28 x i8] zeroinitializer }, align 32
@vkms_primary_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @drm_gem_prepare_shadow_fb, ptr @drm_gem_cleanup_shadow_fb, ptr @vkms_plane_atomic_check, ptr @vkms_plane_atomic_update, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vkms_plane_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 875713089, i32 875713112], [24 x i8] zeroinitializer }, align 32
@vkms_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr null, ptr @vkms_plane_reset, ptr null, ptr @vkms_plane_duplicate_state, ptr @vkms_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/vkms/vkms_plane.c\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot allocate vkms_plane_state\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't allocate composer\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"vkms_formats\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 14, i32 18 }
@___asan_gen_.6 = private unnamed_addr constant [26 x i8] c"vkms_primary_helper_funcs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 155, i32 44 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"vkms_plane_formats\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 18, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"vkms_plane_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 86, i32 37 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 130, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 79, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [37 x i8] c"../drivers/gpu/drm/vkms/vkms_plane.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 35, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @vkms_formats, ptr @vkms_primary_helper_funcs, ptr @vkms_plane_formats, ptr @vkms_plane_funcs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_primary_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_plane_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vkms_plane_init(ptr noundef %vkmsdev, i32 noundef %type, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge11
  ]

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %formats.0 = phi ptr [ @vkms_plane_formats, %sw.bb1 ], [ @vkms_formats, %entry.sw.epilog_crit_edge ]
  %nformats.0 = phi i32 [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %shl = shl nuw i32 1, %index
  %call = tail call ptr (ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @__drmm_universal_plane_alloc(ptr noundef %vkmsdev, i32 noundef 528, i32 noundef 0, i32 noundef %shl, ptr noundef nonnull @vkms_plane_funcs, ptr noundef nonnull %formats.0, i32 noundef %nformats.0, ptr noundef null, i32 noundef %type, ptr noundef null) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call, i32 0, i32 18
  %1 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vkms_primary_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_universal_plane_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prepare_shadow_fb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_cleanup_shadow_fb(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %do.end, label %if.end24, !prof !23

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %call26 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %9) #3
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.not = icmp ne i32 %12, 1
  %call34 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call26, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext %cmp.not, i1 noundef zeroext true) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end37, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %13 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %visible, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool38.not = icmp ne i8 %14, 0
  %brmerge = or i1 %cmp.not, %tobool38.not
  %spec.select = select i1 %brmerge, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end30.cleanup_crit_edge, %if.then28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then28 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call34, %if.end30.cleanup_crit_edge ], [ %spec.select, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %9, null
  %tobool2.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %composer3 = getelementptr inbounds %struct.vkms_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %composer3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %composer3, align 4
  %src = getelementptr inbounds %struct.vkms_composer, ptr %11, i32 0, i32 1
  %src4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %12 = call ptr @memcpy(ptr %src, ptr %src4, i32 16)
  %dst = getelementptr inbounds %struct.vkms_composer, ptr %11, i32 0, i32 2
  %dst5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %13 = call ptr @memcpy(ptr %dst, ptr %dst5, i32 16)
  %14 = call ptr @memcpy(ptr %11, ptr %7, i32 144)
  %map = getelementptr inbounds %struct.vkms_composer, ptr %11, i32 0, i32 3
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %5, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %map, ptr %data, i32 32)
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %base.i) #3
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 7
  %16 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offsets, align 8
  %offset = getelementptr inbounds %struct.vkms_composer, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %offset, align 8
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 6
  %19 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pitches, align 8
  %pitch = getelementptr inbounds %struct.vkms_composer, ptr %11, i32 0, i32 5
  %21 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pitch, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %format, align 8
  %24 = getelementptr inbounds %struct.drm_format_info, ptr %23, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 2
  %conv = zext i8 %26 to i32
  %cpp = getelementptr inbounds %struct.vkms_composer, ptr %11, i32 0, i32 6
  %27 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %cpp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %crtc2.i = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc2.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.vkms_plane_destroy_state.exit_crit_edge, label %if.then.i

if.then.vkms_plane_destroy_state.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %vkms_plane_destroy_state.exit

if.then.i:                                        ; preds = %if.then
  %composer.i = getelementptr inbounds %struct.vkms_plane_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %composer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %composer.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 2, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #3
  %6 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %if.then.i.vkms_plane_destroy_state.exit_crit_edge, label %if.then4.i

if.then.i.vkms_plane_destroy_state.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %vkms_plane_destroy_state.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %composer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %composer.i, align 4
  %base.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i.i) #3
  br label %vkms_plane_destroy_state.exit

vkms_plane_destroy_state.exit:                    ; preds = %if.then4.i, %if.then.i.vkms_plane_destroy_state.exit_crit_edge, %if.then.vkms_plane_destroy_state.exit_crit_edge
  %composer8.i = getelementptr inbounds %struct.vkms_plane_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %composer8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %composer8.i, align 4
  tail call void @kfree(ptr noundef %11) #3
  %12 = ptrtoint ptr %composer8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %composer8.i, align 4
  tail call void @__drm_gem_destroy_shadow_plane_state(ptr noundef nonnull %1) #3
  tail call void @kfree(ptr noundef nonnull %1) #3
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %vkms_plane_destroy_state.exit, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 192) #6
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__drm_gem_reset_shadow_plane(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vkms_plane_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 192) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 224) #6
  %tobool2.not = icmp eq ptr %call7.i.i14, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #3
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %composer5 = getelementptr inbounds %struct.vkms_plane_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %composer5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i14, ptr %composer5, align 4
  tail call void @__drm_gem_duplicate_shadow_plane_state(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end4 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_plane_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc2 = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %entry
  %composer = getelementptr inbounds %struct.vkms_plane_state, ptr %old_state, i32 0, i32 1
  %2 = ptrtoint ptr %composer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %composer, align 4
  %refcount.i = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 2, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #3
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %composer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %composer, align 4
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %composer8 = getelementptr inbounds %struct.vkms_plane_state, ptr %old_state, i32 0, i32 1
  %8 = ptrtoint ptr %composer8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %composer8, align 4
  tail call void @kfree(ptr noundef %9) #3
  %10 = ptrtoint ptr %composer8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %composer8, align 4
  tail call void @__drm_gem_destroy_shadow_plane_state(ptr noundef %old_state) #3
  tail call void @kfree(ptr noundef %old_state) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_gem_reset_shadow_plane(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_gem_duplicate_shadow_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_gem_destroy_shadow_plane_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @vkms_formats, !1, !"vkms_formats", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vkms/vkms_plane.c", i32 14, i32 18}
!2 = !{ptr @vkms_primary_helper_funcs, !3, !"vkms_primary_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vkms/vkms_plane.c", i32 155, i32 44}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vkms/vkms_plane.c", i32 130, i32 30}
!6 = !{ptr @vkms_plane_formats, !7, !"vkms_plane_formats", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vkms/vkms_plane.c", i32 18, i32 18}
!8 = !{ptr @vkms_plane_funcs, !9, !"vkms_plane_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vkms/vkms_plane.c", i32 86, i32 37}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vkms/vkms_plane.c", i32 79, i32 3}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vkms/vkms_plane.c", i32 35, i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i8 0, i8 2}
