; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c_pt.bc'
source_filename = "../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,panel\00", [22 x i8] zeroinitializer }, align 32
@fsl_dcu_drm_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @fsl_dcu_drm_connector_get_modes, ptr null, ptr @fsl_dcu_drm_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 118, i32 45 }
@___asan_gen_.4 = private unnamed_addr constant [28 x i8] c"fsl_dcu_drm_connector_funcs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 47, i32 41 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"connector_helper_funcs\00", align 1
@___asan_gen_.8 = private constant [45 x i8] c"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 72, i32 48 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @fsl_dcu_drm_connector_funcs, ptr @connector_helper_funcs], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_dcu_drm_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_dcu_drm_encoder_create(ptr noundef %fsl_dev, ptr nocapture noundef readnone %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %possible_crtcs = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %possible_crtcs, align 4
  %tcon = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 6
  %1 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tcon, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fsl_tcon_bypass_enable(ptr noundef nonnull %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %encoder1 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 10
  %drm = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 8
  %3 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drm, align 8
  %call = tail call i32 @drm_simple_encoder_init(ptr noundef %4, ptr noundef %encoder1, i32 noundef 3) #5
  %5 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_tcon_bypass_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_dcu_create_outputs(ptr noundef %fsl_dev) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %panel = alloca ptr, align 4
  %bridge = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #5
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge) #5
  %1 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge, align 4, !annotation !15
  %np = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 1
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %if.end13

of_parse_phandle.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %of_parse_phandle.exit.if.end13_crit_edge, label %if.then

of_parse_phandle.exit.if.end13_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %of_parse_phandle.exit
  %call1 = call ptr @of_drm_find_panel(ptr noundef nonnull %6) #5
  %panel2 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %panel2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %panel2, align 4
  call void @of_node_put(ptr noundef nonnull %6) #5
  %8 = ptrtoint ptr %panel2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %panel2, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %encoder1.i = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 10
  %connector2.i = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 11
  %encoder4.i = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %encoder4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %encoder1.i, ptr %encoder4.i, align 8
  %drm.i = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 8
  %12 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drm.i, align 8
  %call.i41 = call i32 @drm_connector_init(ptr noundef %13, ptr noundef %connector2.i, ptr noundef nonnull @fsl_dcu_drm_connector_funcs, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %if.end.cleanup_crit_edge, label %if.end.i43

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i43:                                       ; preds = %if.end
  %helper_private.i.i = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 11, i32 0, i32 35
  %14 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @connector_helper_funcs, ptr %helper_private.i.i, align 4
  %call5.i = call i32 @drm_connector_register(ptr noundef %connector2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i43.err_cleanup.i_crit_edge, label %if.end8.i

if.end.i43.err_cleanup.i_crit_edge:               ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_cleanup.i

if.end8.i:                                        ; preds = %if.end.i43
  %call9.i = call i32 @drm_connector_attach_encoder(ptr noundef %connector2.i, ptr noundef %encoder1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %err_sysfs.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_sysfs.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_connector_unregister(ptr noundef %connector2.i) #5
  br label %err_cleanup.i

err_cleanup.i:                                    ; preds = %err_sysfs.i, %if.end.i43.err_cleanup.i_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.end.i43.err_cleanup.i_crit_edge ], [ %call9.i, %err_sysfs.i ]
  call void @drm_connector_cleanup(ptr noundef %connector2.i) #5
  br label %cleanup

if.end13:                                         ; preds = %of_parse_phandle.exit.if.end13_crit_edge, %of_parse_phandle.exit.thread
  %15 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %np, align 4
  %call15 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %16, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef nonnull %bridge) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %panel, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end18
  %panel22 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 11, i32 2
  %19 = ptrtoint ptr %panel22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %panel22, align 4
  %encoder1.i45 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 10
  %connector2.i46 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 11
  %encoder4.i47 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %encoder4.i47 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %encoder1.i45, ptr %encoder4.i47, align 8
  %drm.i48 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 8
  %21 = ptrtoint ptr %drm.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drm.i48, align 8
  %call.i49 = call i32 @drm_connector_init(ptr noundef %22, ptr noundef %connector2.i46, ptr noundef nonnull @fsl_dcu_drm_connector_funcs, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp.i50 = icmp slt i32 %call.i49, 0
  br i1 %cmp.i50, label %if.then20.cleanup_crit_edge, label %if.end.i54

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i54:                                       ; preds = %if.then20
  %helper_private.i.i51 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 11, i32 0, i32 35
  %23 = ptrtoint ptr %helper_private.i.i51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @connector_helper_funcs, ptr %helper_private.i.i51, align 4
  %call5.i52 = call i32 @drm_connector_register(ptr noundef %connector2.i46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i52)
  %cmp6.i53 = icmp slt i32 %call5.i52, 0
  br i1 %cmp6.i53, label %if.end.i54.err_cleanup.i60_crit_edge, label %if.end8.i57

if.end.i54.err_cleanup.i60_crit_edge:             ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_cleanup.i60

if.end8.i57:                                      ; preds = %if.end.i54
  %call9.i55 = call i32 @drm_connector_attach_encoder(ptr noundef %connector2.i46, ptr noundef %encoder1.i45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i55)
  %cmp10.i56 = icmp slt i32 %call9.i55, 0
  br i1 %cmp10.i56, label %err_sysfs.i58, label %if.end8.i57.cleanup_crit_edge

if.end8.i57.cleanup_crit_edge:                    ; preds = %if.end8.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_sysfs.i58:                                    ; preds = %if.end8.i57
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_connector_unregister(ptr noundef %connector2.i46) #5
  br label %err_cleanup.i60

err_cleanup.i60:                                  ; preds = %err_sysfs.i58, %if.end.i54.err_cleanup.i60_crit_edge
  %ret.0.i59 = phi i32 [ %call5.i52, %if.end.i54.err_cleanup.i60_crit_edge ], [ %call9.i55, %err_sysfs.i58 ]
  call void @drm_connector_cleanup(ptr noundef %connector2.i46) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %encoder = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %fsl_dev, i32 0, i32 10
  %24 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bridge, align 4
  %call25 = call i32 @drm_bridge_attach(ptr noundef %encoder, ptr noundef %25, ptr noundef null, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %err_cleanup.i60, %if.end8.i57.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %err_cleanup.i, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %10, %if.then6 ], [ %call25, %if.end24 ], [ %call15, %if.end13.cleanup_crit_edge ], [ %ret.0.i, %err_cleanup.i ], [ %call.i41, %if.end.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ], [ %ret.0.i59, %err_cleanup.i60 ], [ %call.i49, %if.then20.cleanup_crit_edge ], [ 0, %if.end8.i57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #5
  tail call void @drm_connector_cleanup(ptr noundef %connector) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr inbounds %struct.fsl_dcu_drm_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %call1 = tail call i32 @drm_panel_get_modes(ptr noundef %1, ptr noundef %connector) #5
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_dcu_drm_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readonly %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  %2 = and i16 %1, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp ne i16 %2, 0
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c", i32 118, i32 45}
!2 = !{ptr @fsl_dcu_drm_connector_funcs, !3, !"fsl_dcu_drm_connector_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c", i32 47, i32 41}
!4 = !{ptr @connector_helper_funcs, !5, !"connector_helper_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c", i32 72, i32 48}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
