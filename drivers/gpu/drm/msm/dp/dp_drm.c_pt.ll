; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_drm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_drm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
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
%struct.atomic_t = type { i32 }
%struct.anon.91 = type { i32, ptr }
%struct.dp_connector = type { %struct.drm_connector, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.msm_dp = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, ptr, i32, i32, ptr }
%struct.msm_dp_bridge = type { %struct.drm_bridge, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@dp_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @dp_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dp_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @dp_connector_get_modes, ptr null, ptr @dp_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to attach panel bridge: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dp_bridge_ops = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @dp_bridge_disable, ptr @dp_bridge_post_disable, ptr @dp_bridge_mode_set, ptr null, ptr @dp_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to attach bridge, rc=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"is_connected = %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get DP sink modes, rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add mode %ux%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No sink connected\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"dp_connector_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 126, i32 41 }
@___asan_gen_.11 = private unnamed_addr constant [26 x i8] c"dp_connector_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 135, i32 48 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 177, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"dp_bridge_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 219, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 245, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 42, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 80, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 89, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [35 x i8] c"../drivers/gpu/drm/msm/dp/dp_drm.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 98, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @dp_connector_funcs, ptr @dp_connector_helper_funcs, ptr @.str, ptr @dp_bridge_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_bridge_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_drm_connector_init(ptr noundef %dp_display) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp_display to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_display, align 4
  %dev = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1048, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp_display2 = getelementptr inbounds %struct.dp_connector, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dp_display2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dp_display, ptr %dp_display2, align 8
  %5 = ptrtoint ptr %dp_display to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp_display, align 4
  %connector_type = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 9
  %7 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector_type, align 4
  %call4 = tail call i32 @drm_connector_init(ptr noundef %6, ptr noundef nonnull %call.i, ptr noundef nonnull @dp_connector_funcs, i32 noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = inttoptr i32 %call4 to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 35
  %10 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dp_connector_helper_funcs, ptr %helper_private.i, align 4
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 33
  %11 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %polled, align 4
  %encoder = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 4
  %12 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %encoder, align 4
  %call9 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call.i, ptr noundef %13) #4
  %panel_bridge = getelementptr inbounds %struct.msm_dp, ptr %dp_display, i32 0, i32 5
  %14 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %panel_bridge, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %16 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %encoder, align 4
  %call14 = tail call i32 @drm_bridge_attach(ptr noundef %17, ptr noundef nonnull %15, ptr noundef null, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call14) #4
  %18 = inttoptr i32 %call14 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then6 ], [ %18, %if.then15 ], [ %call.i, %if.then11.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_dp_bridge_init(ptr noundef %dp_display, ptr nocapture noundef readonly %dev, ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 284, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp_display3 = getelementptr inbounds %struct.msm_dp_bridge, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dp_display3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dp_display, ptr %dp_display3, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dp_bridge_ops, ptr %funcs, align 4
  %encoder5 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %encoder5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %encoder, ptr %encoder5, align 4
  %call6 = tail call i32 @drm_bridge_attach(ptr noundef %encoder, ptr noundef nonnull %call.i, ptr noundef null, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %call6) #4
  %5 = inttoptr i32 %call6 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then8 ], [ %call.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_connector_detect(ptr nocapture noundef readonly %conn, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_display = getelementptr inbounds %struct.dp_connector, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %dp_display to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_display, align 8
  %is_connected = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_connected, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond) #4
  %4 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_connected, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %cond3 = select i1 %tobool2.not, i32 2, i32 1
  ret i32 %cond3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  %drm_mode = alloca %struct.drm_display_mode, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %drm_mode) #4
  %0 = call ptr @memset(ptr %drm_mode, i32 255, i32 112)
  %tobool.not = icmp eq ptr %connector, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp_display = getelementptr inbounds %struct.dp_connector, ptr %connector, i32 0, i32 1
  %1 = ptrtoint ptr %dp_display to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp_display, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 128) #7
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %is_connected = getelementptr inbounds %struct.msm_dp, ptr %2, i32 0, i32 6
  %4 = ptrtoint ptr %is_connected to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_connected, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = tail call i32 @dp_display_get_modes(ptr noundef %2, ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp slt i32 %call6, 1
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %call6) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end8.if.end19_crit_edge, label %if.then11

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then11:                                        ; preds = %if.end8
  %8 = call ptr @memset(ptr %drm_mode, i32 0, i32 112)
  call void @drm_mode_copy(ptr noundef nonnull %drm_mode, ptr noundef nonnull %call7.i.i) #4
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector, align 8
  %call13 = call ptr @drm_mode_duplicate(ptr noundef %10, ptr noundef nonnull %drm_mode) #4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 1
  %11 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %12 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 6
  %13 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay, align 2
  %conv16 = zext i16 %14 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv16) #4
  call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  call void @drm_mode_probed_add(ptr noundef nonnull %connector, ptr noundef nonnull %call13) #4
  br label %if.end19

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.7) #4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end17, %if.end8.if.end19_crit_edge
  %rc.0 = phi i32 [ %call6, %if.end17 ], [ %call6, %if.end8.if.end19_crit_edge ], [ 0, %if.else ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then15, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then7 ], [ %rc.0, %if.end19 ], [ 0, %if.then15 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %drm_mode) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_display = getelementptr inbounds %struct.dp_connector, ptr %connector, i32 0, i32 1
  %0 = ptrtoint ptr %dp_display to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_display, align 8
  %max_pclk_khz = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %max_pclk_khz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_pclk_khz, align 4
  %4 = add i32 %3, -675001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -675000, i32 %4)
  %5 = icmp ult i32 %4, -675000
  br i1 %5, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp5 = icmp ugt i32 %7, %3
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @dp_display_validate_mode(ptr noundef %1, i32 noundef %7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %lor.lhs.false3.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_display_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_display_validate_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_bridge_disable(ptr nocapture noundef readonly %drm_bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_display1 = getelementptr inbounds %struct.msm_dp_bridge, ptr %drm_bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dp_display1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_display1, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %drm_bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call = tail call i32 @msm_dp_display_pre_disable(ptr noundef %1, ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_bridge_post_disable(ptr nocapture noundef readonly %drm_bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_display1 = getelementptr inbounds %struct.msm_dp_bridge, ptr %drm_bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dp_display1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_display1, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %drm_bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call = tail call i32 @msm_dp_display_disable(ptr noundef %1, ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_bridge_mode_set(ptr nocapture noundef readonly %drm_bridge, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_display1 = getelementptr inbounds %struct.msm_dp_bridge, ptr %drm_bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dp_display1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_display1, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %drm_bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  tail call void @msm_dp_display_mode_set(ptr noundef %1, ptr noundef %3, ptr noundef %mode, ptr noundef %adjusted_mode) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_bridge_enable(ptr nocapture noundef readonly %drm_bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_display1 = getelementptr inbounds %struct.msm_dp_bridge, ptr %drm_bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dp_display1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_display1, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %drm_bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call = tail call i32 @msm_dp_display_enable(ptr noundef %1, ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dp_display_pre_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dp_display_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dp_display_mode_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dp_display_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 177, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 245, i32 3}
!4 = !{ptr @dp_connector_funcs, !5, !"dp_connector_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 126, i32 41}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 42, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @dp_connector_helper_funcs, !11, !"dp_connector_helper_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 135, i32 48}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 80, i32 4}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 89, i32 5}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 98, i32 3}
!18 = !{ptr @dp_bridge_ops, !19, !"dp_bridge_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dp/dp_drm.c", i32 219, i32 38}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
