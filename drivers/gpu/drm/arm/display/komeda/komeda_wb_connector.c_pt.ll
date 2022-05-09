; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.komeda_kms_dev = type { %struct.drm_device, i32, [2 x %struct.komeda_crtc] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
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
%struct.anon.85 = type { i32, ptr }
%struct.komeda_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.komeda_wb_connector = type { %struct.drm_writeback_connector, ptr }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
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
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.komeda_layer = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range, i32, i32, i32, i32, ptr }
%struct.komeda_component = type { %struct.drm_private_obj, ptr, [32 x i8], ptr, i32, i32, i8, i8, i32, i32, ptr }
%struct.malidp_range = type { i32, i32 }
%struct.komeda_improc = type { %struct.komeda_component, i32, i32, i8 }
%struct.komeda_data_flow_cfg = type { %struct.komeda_component_output, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i8, i8, i8 }
%struct.komeda_component_output = type { ptr, i8 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@komeda_wb_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @komeda_wb_connector_detect, ptr null, ptr @komeda_wb_connector_fill_modes, ptr null, ptr null, ptr null, ptr @komeda_wb_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@komeda_wb_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @komeda_wb_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@komeda_wb_conn_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @komeda_wb_connector_get_modes, ptr null, ptr @komeda_wb_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Cannot write the composition result out on a inactive CRTC.\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"komeda_wb_connector_funcs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 129, i32 41 }
@___asan_gen_.4 = private unnamed_addr constant [31 x i8] c"komeda_wb_encoder_helper_funcs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 78, i32 46 }
@___asan_gen_.7 = private unnamed_addr constant [28 x i8] c"komeda_wb_conn_helper_funcs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 105, i32 48 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [60 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 50, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @komeda_wb_connector_funcs, ptr @komeda_wb_encoder_helper_funcs, ptr @komeda_wb_conn_helper_funcs, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_wb_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_wb_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_wb_conn_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_kms_add_wb_connectors(ptr noundef %kms, ptr nocapture noundef readnone %mdev) local_unnamed_addr #0 align 64 {
entry:
  %n_formats.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %n_crtcs = getelementptr inbounds %struct.komeda_kms_dev, ptr %kms, i32 0, i32 1
  %0 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %kms, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_formats.i) #7
  %4 = ptrtoint ptr %n_formats.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %n_formats.i, align 4
  %master.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.011, i32 1
  %5 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master.i, align 8
  %wb_layer.i = getelementptr inbounds %struct.komeda_pipeline, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %wb_layer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wb_layer.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1264) #10
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.komeda_wb_connector_add.exit_crit_edge, label %if.end3.i

if.end.i.komeda_wb_connector_add.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_wb_connector_add.exit

if.end3.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master.i, align 8
  %wb_layer5.i = getelementptr inbounds %struct.komeda_pipeline, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %wb_layer5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wb_layer5.i, align 4
  %wb_layer6.i = getelementptr inbounds %struct.komeda_wb_connector, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %wb_layer6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %wb_layer6.i, align 8
  %index.i.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.011, i32 0, i32 8
  %15 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %16
  %possible_crtcs.i = getelementptr inbounds %struct.drm_writeback_connector, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl.i, ptr %possible_crtcs.i, align 4
  %fmt_tbl.i = getelementptr inbounds %struct.komeda_dev, ptr %3, i32 0, i32 3
  %layer_type.i = getelementptr inbounds %struct.komeda_layer, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %layer_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %layer_type.i, align 4
  %call11.i = call ptr @komeda_get_layer_fourcc_list(ptr noundef %fmt_tbl.i, i32 noundef %19, ptr noundef nonnull %n_formats.i) #7
  %20 = ptrtoint ptr %n_formats.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_formats.i, align 4
  %call13.i = call i32 @drm_writeback_connector_init(ptr noundef %kms, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @komeda_wb_connector_funcs, ptr noundef nonnull @komeda_wb_encoder_helper_funcs, ptr noundef %call11.i, i32 noundef %21) #7
  call void @komeda_put_fourcc_list(ptr noundef %call11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %komeda_wb_connector_add.exit

if.end16.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %helper_private.i.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 35
  %22 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @komeda_wb_conn_helper_funcs, ptr %helper_private.i.i, align 4
  %23 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master.i, align 8
  %improc.i = getelementptr inbounds %struct.komeda_pipeline, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %improc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %improc.i, align 4
  %supported_color_depths.i = getelementptr inbounds %struct.komeda_improc, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %supported_color_depths.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %supported_color_depths.i, align 4
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false) #7, !range !17
  %sub.i.i = sub nsw i32 31, %29
  %bpc.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 20, i32 2
  %30 = ptrtoint ptr %bpc.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i.i, ptr %bpc.i, align 8
  %31 = ptrtoint ptr %improc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %improc.i, align 4
  %supported_color_formats.i = getelementptr inbounds %struct.komeda_improc, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %supported_color_formats.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %supported_color_formats.i, align 4
  %color_formats.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 20, i32 5
  %35 = ptrtoint ptr %color_formats.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %color_formats.i, align 4
  %wb_conn24.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.011, i32 4
  %36 = ptrtoint ptr %wb_conn24.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i.i, ptr %wb_conn24.i, align 4
  br label %for.inc

komeda_wb_connector_add.exit:                     ; preds = %if.then15.i, %if.end.i.komeda_wb_connector_add.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.then15.i ], [ -12, %if.end.i.komeda_wb_connector_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_formats.i) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end16.i, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_formats.i) #7
  %inc = add nuw nsw i32 %i.011, 1
  %37 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_crtcs, align 4
  %cmp = icmp slt i32 %inc, %38
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %komeda_wb_connector_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %komeda_wb_connector_add.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_get_layer_fourcc_list(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_writeback_connector_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_put_fourcc_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @komeda_wb_connector_detect(ptr nocapture noundef readnone %connector, i1 noundef zeroext %force) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @komeda_wb_connector_fill_modes(ptr nocapture noundef readnone %connector, i32 noundef %maxX, i32 noundef %maxY) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_wb_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_cleanup(ptr noundef %connector) #7
  tail call void @kfree(ptr noundef %connector) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_wb_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr noundef %crtc_st, ptr noundef %conn_st) #0 align 64 {
entry:
  %dflow = alloca %struct.komeda_data_flow_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %writeback_job1 = getelementptr inbounds %struct.drm_connector_state, ptr %conn_st, i32 0, i32 14
  %0 = ptrtoint ptr %writeback_job1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %writeback_job1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dflow) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_st, i32 0, i32 2
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %conn_st to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn_st, align 4
  %wb_layer11 = getelementptr inbounds %struct.komeda_wb_connector, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wb_layer11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb_layer11, align 8
  %connectors_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_st, i32 0, i32 3
  %8 = ptrtoint ptr %connectors_changed to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %connectors_changed, align 2
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %bf.cast.not = icmp eq i8 %9, 0
  br i1 %bf.cast.not, label %if.end4.if.end17_crit_edge, label %land.lhs.true

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end4
  %state.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_st, i32 0, i32 20
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i, align 4
  %12 = ptrtoint ptr %crtc_st to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc_st, align 4
  %crtcs.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtcs.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i.i, align 4
  %old_state.i.i = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %17, i32 2
  %18 = ptrtoint ptr %old_state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %old_state.i.i, align 8
  %connector_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_st, i32 0, i32 5
  %20 = ptrtoint ptr %connector_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %connector_mask.i, align 4
  %connector_mask1.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %connector_mask1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connector_mask1.i, align 4
  %xor.i = xor i32 %23, %21
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 9
  %24 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %xor.i)
  %cmp.i = icmp eq i32 %shl.i, %xor.i
  br i1 %cmp.i, label %if.then13, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear16 = and i8 %bf.load, -17
  %26 = ptrtoint ptr %connectors_changed to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.clear16, ptr %connectors_changed, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  %27 = ptrtoint ptr %writeback_job1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %writeback_job1, align 4
  %fb1.i = getelementptr inbounds %struct.drm_writeback_job, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb1.i, align 4
  %31 = call ptr @memset(ptr %dflow, i32 0, i32 56)
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %30, i32 0, i32 9
  %32 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width.i, align 8
  %out_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %34 = ptrtoint ptr %out_w.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %out_w.i, align 4
  %height.i = getelementptr inbounds %struct.drm_framebuffer, ptr %30, i32 0, i32 10
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height.i, align 4
  %out_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %37 = ptrtoint ptr %out_h.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %out_h.i, align 4
  %in_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %in_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  call void @pipeline_composition_size(ptr noundef %crtc_st, ptr noundef %in_w.i, ptr noundef %in_h.i) #7
  %pipeline.i = getelementptr inbounds %struct.komeda_component, ptr %7, i32 0, i32 1
  %38 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pipeline.i, align 4
  %compiz.i = getelementptr inbounds %struct.komeda_pipeline, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %compiz.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %compiz.i, align 4
  %42 = ptrtoint ptr %dflow to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %dflow, align 4
  %pixel_blend_mode.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 17
  %43 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %pixel_blend_mode.i, align 4
  %rot.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 15
  %44 = ptrtoint ptr %rot.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %rot.i, align 4
  call void @komeda_complete_data_flow_cfg(ptr noundef %7, ptr noundef nonnull %dflow, ptr noundef %30) #7
  %en_split = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 19
  %45 = ptrtoint ptr %en_split to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load22 = load i8, ptr %en_split, align 2
  %46 = and i8 %bf.load22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool25.not = icmp eq i8 %46, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 @komeda_build_wb_split_data_flow(ptr noundef %7, ptr noundef %conn_st, ptr noundef %crtc_st, ptr noundef nonnull %dflow) #7
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 @komeda_build_wb_data_flow(ptr noundef %7, ptr noundef %conn_st, ptr noundef %crtc_st, ptr noundef nonnull %dflow) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then26, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ %call27, %if.then26 ], [ %call28, %if.else ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dflow) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_build_wb_split_data_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_build_wb_data_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipeline_composition_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_complete_data_flow_cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @komeda_wb_connector_get_modes(ptr nocapture noundef readnone %connector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @komeda_wb_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %4 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vdisplay, align 2
  %conv3 = zext i16 %5 to i32
  %min_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 23
  %6 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp sgt i32 %7, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 25
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp5 = icmp slt i32 %9, %conv
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %min_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 24
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv3)
  %cmp7 = icmp sgt i32 %11, %conv3
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %lor.lhs.false9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %max_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 26
  %12 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv3)
  %cmp10 = icmp slt i32 %13, %conv3
  %spec.select = select i1 %cmp10, i32 19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 18, %lor.lhs.false.cleanup_crit_edge ], [ 18, %entry.cleanup_crit_edge ], [ 19, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @komeda_wb_connector_funcs, !1, !"komeda_wb_connector_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c", i32 129, i32 41}
!2 = !{ptr @komeda_wb_encoder_helper_funcs, !3, !"komeda_wb_encoder_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c", i32 78, i32 46}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c", i32 50, i32 3}
!6 = !{ptr @komeda_wb_conn_helper_funcs, !7, !"komeda_wb_conn_helper_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c", i32 105, i32 48}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i32 0, i32 33}
!18 = !{i8 0, i8 2}
