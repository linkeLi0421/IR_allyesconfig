; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_plane_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_plane_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_primary_helper_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_primary_helper_destroy\09\09\09\09"
module asm "\09.long\09__crc_drm_primary_helper_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_primary_helper_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_primary_helper_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_drm_primary_helper_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_primary_helper_funcs\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_primary_helper_funcs\09\09\09\09"
module asm "\09.long\09__crc_drm_primary_helper_funcs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_primary_helper_funcs:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_primary_helper_funcs\22\09\09\09\09\09"
module asm "__kstrtabns_drm_primary_helper_funcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mode_set = type { ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }

@__kstrtab_drm_primary_helper_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_primary_helper_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_primary_helper_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_primary_helper_destroy to i32), ptr @__kstrtab_drm_primary_helper_destroy, ptr @__kstrtabns_drm_primary_helper_destroy }, section "___ksymtab+drm_primary_helper_destroy", align 4
@drm_primary_helper_funcs = dso_local constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_primary_helper_update, ptr @drm_primary_helper_disable, ptr @drm_primary_helper_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_drm_primary_helper_funcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_primary_helper_funcs = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_primary_helper_funcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_primary_helper_funcs to i32), ptr @__kstrtab_drm_primary_helper_funcs, ptr @__kstrtabns_drm_primary_helper_funcs }, section "___ksymtab+drm_primary_helper_funcs", align 4
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/drm_plane_helper.c\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"drm_primary_helper_funcs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 243, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [38 x i8] c"../drivers/gpu/drm/drm_plane_helper.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 85, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_drm_primary_helper_destroy, ptr @__ksymtab_drm_primary_helper_funcs, ptr @drm_primary_helper_funcs, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_primary_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_primary_helper_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #6
  tail call void @kfree(ptr noundef %plane) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_primary_helper_update(ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h, ptr noundef %ctx) #0 align 64 {
entry:
  %plane_state.i = alloca %struct.drm_plane_state, align 4
  %crtc_state.i = alloca %struct.drm_crtc_state, align 4
  %set = alloca %struct.drm_mode_set, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %set) #6
  %0 = getelementptr inbounds %struct.drm_mode_set, ptr %set, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_mode_set, ptr %set, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_mode_set, ptr %set, i32 0, i32 3
  %3 = getelementptr inbounds %struct.drm_mode_set, ptr %set, i32 0, i32 4
  %4 = getelementptr inbounds %struct.drm_mode_set, ptr %set, i32 0, i32 5
  %5 = getelementptr inbounds %struct.drm_mode_set, ptr %set, i32 0, i32 6
  %6 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fb, ptr %set, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %crtc, ptr %0, align 4
  %mode3 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mode3, ptr %1, align 4
  %shr = lshr i32 %src_x, 16
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shr, ptr %2, align 4
  %shr4 = lshr i32 %src_y, 16
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr4, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %plane_state.i) #6
  %13 = getelementptr inbounds i8, ptr %plane_state.i, i32 108
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !17
  %15 = ptrtoint ptr %plane_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %plane, ptr %plane_state.i, align 4
  %crtc3.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 1
  %16 = ptrtoint ptr %crtc3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %crtc, ptr %crtc3.i, align 4
  %fb4.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 2
  %17 = ptrtoint ptr %fb4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fb, ptr %fb4.i, align 4
  %fence.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 3
  %18 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %fence.i, align 4
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 4
  %19 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %crtc_x, ptr %crtc_x.i, align 4
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 5
  %20 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %crtc_y, ptr %crtc_y.i, align 4
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 6
  %21 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %crtc_w, ptr %crtc_w.i, align 4
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 7
  %22 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %crtc_h, ptr %crtc_h.i, align 4
  %src_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 8
  %23 = ptrtoint ptr %src_x.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %src_x, ptr %src_x.i, align 4
  %src_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 9
  %24 = ptrtoint ptr %src_y.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %src_y, ptr %src_y.i, align 4
  %src_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 10
  %25 = ptrtoint ptr %src_h.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %src_h, ptr %src_h.i, align 4
  %src_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 11
  %26 = ptrtoint ptr %src_w.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %src_w, ptr %src_w.i, align 4
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 12
  %27 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %alpha.i, align 4
  %pixel_blend_mode.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 13
  %28 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %pixel_blend_mode.i, align 2
  %rotation10.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 14
  %29 = ptrtoint ptr %rotation10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %rotation10.i, align 4
  %zpos.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 15
  %scaling_filter.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 23
  %30 = ptrtoint ptr %scaling_filter.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %scaling_filter.i, align 4
  %commit.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 24
  %31 = ptrtoint ptr %commit.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %commit.i, align 4
  %state.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state.i, i32 0, i32 25
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %state.i, align 4
  %33 = call ptr @memset(ptr %zpos.i, i32 0, i32 53)
  call void @llvm.lifetime.start.p0(i64 284, ptr nonnull %crtc_state.i) #6
  %34 = getelementptr inbounds i8, ptr %crtc_state.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 255, i32 264)
  %36 = ptrtoint ptr %crtc_state.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %crtc, ptr %crtc_state.i, align 4
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 11
  %37 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %enabled.i, align 8, !range !18
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %34, align 4
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state.i, i32 0, i32 2
  %40 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %active.i, align 1
  %planes_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state.i, i32 0, i32 3
  %41 = ptrtoint ptr %planes_changed.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %planes_changed.i, align 2
  %plane_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state.i, i32 0, i32 4
  %mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state.i, i32 0, i32 8
  %42 = call ptr @memset(ptr %plane_mask.i, i32 0, i32 124)
  %43 = call ptr @memcpy(ptr %mode.i, ptr %mode3, i32 112)
  %mode_blob.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state.i, i32 0, i32 9
  %scaling_filter35.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state.i, i32 0, i32 17
  %44 = call ptr @memset(ptr %mode_blob.i, i32 0, i32 23)
  %45 = call ptr @memset(ptr %scaling_filter35.i, i32 0, i32 16)
  %call40.i = call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %plane_state.i, ptr noundef nonnull %crtc_state.i, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end, label %drm_plane_helper_check_update.exit

drm_plane_helper_check_update.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 284, ptr nonnull %crtc_state.i) #6
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %plane_state.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %13, align 4, !range !18
  call void @llvm.lifetime.end.p0(i64 284, ptr nonnull %crtc_state.i) #6
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %plane_state.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool13.not = icmp eq i8 %47, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 14
  %48 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs, align 4
  %disable_plane = getelementptr inbounds %struct.drm_plane_funcs, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %disable_plane to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disable_plane, align 4
  %call15 = call i32 %51(ptr noundef %plane, ptr noundef %ctx) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = call fastcc i32 @get_connectors_for_crtc(ptr noundef %crtc, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp eq i32 %call17, 0
  br i1 %cmp, label %do.body21, label %do.end27, !prof !19

do.body21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_plane_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #6, !srcloc !20
  unreachable

do.end27:                                         ; preds = %if.end16
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call17, i32 4) #6
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %do.end27.cleanup_crit_edge, label %if.end7.i.i, !prof !19

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end27
  %54 = extractvalue { i32, i1 } %52, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef 3520) #9
  %tobool29.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool29.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end31

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = call fastcc i32 @get_connectors_for_crtc(ptr noundef %crtc, ptr noundef nonnull %call8.i.i, i32 noundef %call17)
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call8.i.i, ptr %4, align 4
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call17, ptr %5, align 4
  %funcs35 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 16
  %57 = ptrtoint ptr %funcs35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %funcs35, align 4
  %set_config = getelementptr inbounds %struct.drm_crtc_funcs, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_config, align 4
  %call36 = call i32 %60(ptr noundef nonnull %set, ptr noundef %ctx) #6
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end7.i.i.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %if.then14, %drm_plane_helper_check_update.exit
  %retval.0 = phi i32 [ %call36, %if.end31 ], [ %call15, %if.then14 ], [ %call40.i, %drm_plane_helper_check_update.exit ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %do.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %set) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @drm_primary_helper_disable(ptr nocapture noundef readnone %plane, ptr nocapture noundef readnone %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_connectors_for_crtc(ptr noundef readonly %crtc, ptr noundef writeonly %connector_list, i32 noundef %num_connectors) unnamed_addr #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #6
  %2 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !17
  %3 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !17
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 1
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %connection_mutex) #6
  br i1 %call.i.i, label %entry.if.end_crit_edge, label %do.end, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %conn_iter) #6
  %call2141 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #6
  %tobool22.not42 = icmp eq ptr %call2141, null
  br i1 %tobool22.not42, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %if.end.while.body_crit_edge
  %call2145 = phi ptr [ %call21, %if.end32.while.body_crit_edge ], [ %call2141, %if.end.while.body_crit_edge ]
  %connector_list.addr.044 = phi ptr [ %connector_list.addr.2, %if.end32.while.body_crit_edge ], [ %connector_list, %if.end.while.body_crit_edge ]
  %count.043 = phi i32 [ %count.1, %if.end32.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %encoder = getelementptr inbounds %struct.drm_connector, ptr %call2145, i32 0, i32 41
  %5 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder, align 4
  %tobool23.not = icmp eq ptr %6, null
  br i1 %tobool23.not, label %while.body.if.end32_crit_edge, label %land.lhs.true

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true:                                    ; preds = %while.body
  %crtc25 = getelementptr inbounds %struct.drm_encoder, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %crtc25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtc25, align 4
  %cmp = icmp eq ptr %8, %crtc
  br i1 %cmp, label %if.then26, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true
  %cmp27.not = icmp eq ptr %connector_list.addr.044, null
  br i1 %cmp27.not, label %if.then26.if.end31_crit_edge, label %land.lhs.true28

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true28:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_cmp4(i32 %count.043, i32 %num_connectors)
  %cmp29 = icmp slt i32 %count.043, %num_connectors
  br i1 %cmp29, label %if.then30, label %land.lhs.true28.if.end31_crit_edge

land.lhs.true28.if.end31_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr ptr, ptr %connector_list.addr.044, i32 1
  %9 = ptrtoint ptr %connector_list.addr.044 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2145, ptr %connector_list.addr.044, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true28.if.end31_crit_edge, %if.then26.if.end31_crit_edge
  %connector_list.addr.1 = phi ptr [ %incdec.ptr, %if.then30 ], [ %connector_list.addr.044, %land.lhs.true28.if.end31_crit_edge ], [ null, %if.then26.if.end31_crit_edge ]
  %inc = add i32 %count.043, 1
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %land.lhs.true.if.end32_crit_edge, %while.body.if.end32_crit_edge
  %count.1 = phi i32 [ %inc, %if.end31 ], [ %count.043, %land.lhs.true.if.end32_crit_edge ], [ %count.043, %while.body.if.end32_crit_edge ]
  %connector_list.addr.2 = phi ptr [ %connector_list.addr.1, %if.end31 ], [ %connector_list.addr.044, %land.lhs.true.if.end32_crit_edge ], [ %connector_list.addr.044, %while.body.if.end32_crit_edge ]
  %call21 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #6
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %if.end.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %count.1, %if.end32.while.end_crit_edge ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #6
  ret i32 %count.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_drm_primary_helper_destroy, !1, !"__ksymtab_drm_primary_helper_destroy", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_plane_helper.c", i32 241, i32 1}
!2 = !{ptr @drm_primary_helper_funcs, !3, !"drm_primary_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_plane_helper.c", i32 243, i32 30}
!4 = !{ptr @__ksymtab_drm_primary_helper_funcs, !5, !"__ksymtab_drm_primary_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_plane_helper.c", i32 248, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_plane_helper.c", i32 85, i32 2}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2156493733, i64 2156494232, i64 2156493770, i64 2156493826, i64 2156493860, i64 2156493884, i64 2156493925, i64 2156493946, i64 2156493974, i64 2156494008}
!21 = !{!"branch_weights", i32 2000, i32 1}
