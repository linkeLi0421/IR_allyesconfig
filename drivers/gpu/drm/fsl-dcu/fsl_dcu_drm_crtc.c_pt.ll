; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_dcu_drm_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.drm_crtc, %struct.drm_encoder, %struct.fsl_dcu_drm_connector, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.fsl_dcu_drm_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
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
%struct.anon.86 = type { i32, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@fsl_dcu_drm_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_crtc_enable_vblank, ptr @fsl_dcu_drm_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@fsl_dcu_drm_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_crtc_atomic_flush, ptr @fsl_dcu_drm_crtc_atomic_enable, ptr @fsl_dcu_drm_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"fsl_dcu_drm_crtc_funcs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 159, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [30 x i8] c"fsl_dcu_drm_crtc_helper_funcs\00", align 1
@___asan_gen_.5 = private constant [46 x i8] c"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_crtc.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 128, i32 43 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @fsl_dcu_drm_crtc_funcs, ptr @fsl_dcu_drm_crtc_helper_funcs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dcu_drm_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dcu_drm_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_dcu_drm_crtc_create(ptr noundef %fsl_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 8
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 8
  tail call void @fsl_dcu_drm_init_planes(ptr noundef %1) #3
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 8
  %call = tail call ptr @fsl_dcu_drm_primary_create_plane(ptr noundef %3) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc1 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 9
  %4 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm, align 8
  %call4 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %5, ptr noundef %crtc1, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @fsl_dcu_drm_crtc_funcs, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %funcs = getelementptr inbounds %struct.drm_plane, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %destroy = getelementptr inbounds %struct.drm_plane_funcs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destroy, align 4
  tail call void %9(ptr noundef nonnull %call) #3
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %helper_private.i = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 9, i32 19
  %10 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @fsl_dcu_drm_crtc_helper_funcs, ptr %helper_private.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_dcu_drm_init_planes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_dcu_drm_primary_create_plane(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #3
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !13
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 48, ptr noundef nonnull %value) #3
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %and = and i32 %8, -9
  store i32 %and, ptr %value, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_write(ptr noundef %10, i32 noundef 48, i32 noundef %and) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #3
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !13
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 48, ptr noundef nonnull %value) #3
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %or = or i32 %8, 8
  store i32 %or, ptr %value, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_write(ptr noundef %10, i32 noundef 48, i32 noundef %or) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_mode_set_nofb(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  %vm = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %mode2 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm) #3
  %6 = call ptr @memset(ptr %vm, i32 255, i32 40)
  %pix_clk = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pix_clk, align 4
  %9 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode2, align 4
  %mul = mul i32 %10, 1000
  %call = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %mul) #3
  call void @drm_display_mode_to_videomode(ptr noundef %mode2, ptr noundef nonnull %vm) #3
  %bus_flags = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 11, i32 0, i32 20, i32 8
  %11 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_flags, align 8
  %and = shl i32 %12, 4
  %13 = and i32 %and, 64
  %flags = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and3 = and i32 %15, 1
  %16 = or i32 %13, %and3
  %and9 = lshr i32 %15, 1
  %17 = and i32 %and9, 2
  %18 = or i32 %16, %17
  %19 = xor i32 %18, 64
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 8
  %hback_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 3
  %22 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hback_porch, align 4
  %shl = shl i32 %23, 22
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %24 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hsync_len, align 4
  %shl14 = shl i32 %25, 11
  %or15 = or i32 %shl14, %shl
  %hfront_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 2
  %26 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hfront_porch, align 4
  %or16 = or i32 %or15, %27
  %call17 = call i32 @regmap_write(ptr noundef %21, i32 noundef 28, i32 noundef %or16) #3
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 8
  %vback_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 7
  %30 = ptrtoint ptr %vback_porch to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vback_porch, align 4
  %shl19 = shl i32 %31, 22
  %vsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 8
  %32 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vsync_len, align 4
  %shl20 = shl i32 %33, 11
  %or21 = or i32 %shl20, %shl19
  %vfront_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 6
  %34 = ptrtoint ptr %vfront_porch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vfront_porch, align 4
  %or22 = or i32 %or21, %35
  %call23 = call i32 @regmap_write(ptr noundef %29, i32 noundef 32, i32 noundef %or22) #3
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 8
  %vactive = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 5
  %38 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vactive, align 4
  %shl25 = shl i32 %39, 16
  %hactive = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 1
  %40 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hactive, align 4
  %shr = lshr i32 %41, 4
  %or26 = or i32 %shr, %shl25
  %call27 = call i32 @regmap_write(ptr noundef %37, i32 noundef 24, i32 noundef %or26) #3
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 8
  %call29 = call i32 @regmap_write(ptr noundef %43, i32 noundef 36, i32 noundef %19) #3
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 8
  %call31 = call i32 @regmap_write(ptr noundef %45, i32 noundef 20, i32 noundef 0) #3
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 8
  %call33 = call i32 @regmap_write(ptr noundef %47, i32 noundef 16, i32 noundef 1064960) #3
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 8
  %call35 = call i32 @regmap_write(ptr noundef %49, i32 noundef 40, i32 noundef 227338) #3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state2, align 4
  %event3 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event3, align 4
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 204, i32 noundef 1073741824) #3
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2, align 4
  %event5 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %event5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %event5, align 4
  %13 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #3
  %call7 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef nonnull %7) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %7) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %15 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crtc, align 8
  %event_lock10 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock10) #3
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %pix_clk = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pix_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %5) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call4 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 204, i32 noundef 1073741824) #3
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private, align 4
  tail call void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef %5, i1 noundef zeroext true) #3
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #3
  %regmap = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 16, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %call4 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 204, i32 noundef 1073741824) #3
  %pix_clk = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pix_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #3
  tail call void @clk_unprepare(ptr noundef %15) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @fsl_dcu_drm_crtc_funcs, !1, !"fsl_dcu_drm_crtc_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_crtc.c", i32 159, i32 36}
!2 = !{ptr @fsl_dcu_drm_crtc_helper_funcs, !3, !"fsl_dcu_drm_crtc_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_crtc.c", i32 128, i32 43}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
