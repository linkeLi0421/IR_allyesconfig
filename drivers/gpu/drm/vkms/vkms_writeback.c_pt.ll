; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vkms/vkms_writeback.c_pt.bc'
source_filename = "../drivers/gpu/drm/vkms/vkms_writeback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vkms_device = type { %struct.drm_device, ptr, %struct.vkms_output, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
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
%struct.anon.87 = type { i32, ptr }
%struct.vkms_output = type { %struct.drm_crtc, %struct.drm_encoder, %struct.drm_connector, %struct.drm_writeback_connector, %struct.hrtimer, i64, ptr, ptr, %struct.spinlock, i8, ptr, %struct.spinlock }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.vkms_crtc_state = type { %struct.drm_crtc_state, %struct.work_struct, i32, ptr, ptr, i8, i8, i64, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vkms_writeback_job = type { [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }
%struct.dma_buf_map = type { %union.anon.84, i8 }
%union.anon.84 = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@vkms_wb_conn_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @vkms_wb_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vkms_wb_atomic_commit, ptr @vkms_wb_prepare_job, ptr @vkms_wb_cleanup_job }, [56 x i8] zeroinitializer }, align 32
@vkms_wb_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vkms_wb_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vkms_wb_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@vkms_wb_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713112], [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vmap failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid framebuffer size %ux%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid pixel format %p4cc\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [26 x i8] c"vkms_wb_conn_helper_funcs\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 132, i32 48 }
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"vkms_wb_connector_funcs\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 19, i32 41 }
@___asan_gen_.9 = private unnamed_addr constant [29 x i8] c"vkms_wb_encoder_helper_funcs\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 53, i32 46 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"vkms_wb_formats\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 15, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 80, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 39, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [41 x i8] c"../drivers/gpu/drm/vkms/vkms_writeback.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 45, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @vkms_wb_conn_helper_funcs, ptr @vkms_wb_connector_funcs, ptr @vkms_wb_encoder_helper_funcs, ptr @vkms_wb_formats, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_wb_conn_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_wb_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_wb_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_wb_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vkms_enable_writeback_connector(ptr noundef %vkmsdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %wb_connector = getelementptr inbounds %struct.vkms_device, ptr %vkmsdev, i32 0, i32 2, i32 3
  %possible_crtcs = getelementptr inbounds %struct.vkms_device, ptr %vkmsdev, i32 0, i32 2, i32 3, i32 1, i32 6
  %0 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %possible_crtcs, align 4
  %helper_private.i = getelementptr inbounds %struct.vkms_device, ptr %vkmsdev, i32 0, i32 2, i32 3, i32 0, i32 35
  %1 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vkms_wb_conn_helper_funcs, ptr %helper_private.i, align 4
  %call = tail call i32 @drm_writeback_connector_init(ptr noundef %vkmsdev, ptr noundef %wb_connector, ptr noundef nonnull @vkms_wb_connector_funcs, ptr noundef nonnull @vkms_wb_encoder_helper_funcs, ptr noundef nonnull @vkms_wb_formats, i32 noundef 1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_writeback_connector_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_wb_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %max_width = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 26
  %4 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_height, align 4
  %call = tail call i32 @drm_add_modes_noedid(ptr noundef %connector, i32 noundef %3, i32 noundef %5) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_wb_atomic_commit(ptr nocapture noundef readonly %conn, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %if.end.i, label %entry.drm_atomic_get_new_connector_state.exit_crit_edge

entry.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_atomic_get_new_connector_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i, %entry.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %8 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn, align 8
  %state2 = getelementptr inbounds %struct.vkms_device, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 52
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge, label %if.end

drm_atomic_get_new_connector_state.exit.cleanup_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  %composer_state = getelementptr inbounds %struct.vkms_device, ptr %9, i32 0, i32 2, i32 10
  %12 = ptrtoint ptr %composer_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %composer_state, align 8
  %output1 = getelementptr inbounds %struct.vkms_device, ptr %9, i32 0, i32 2
  %wb_connector = getelementptr inbounds %struct.vkms_device, ptr %9, i32 0, i32 2, i32 3
  tail call void @vkms_set_composer(ptr noundef %output1, i1 noundef zeroext true) #3
  %composer_lock = getelementptr inbounds %struct.vkms_device, ptr %9, i32 0, i32 2, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %composer_lock) #3
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %writeback_job, align 4
  %priv = getelementptr inbounds %struct.drm_writeback_job, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %active_writeback = getelementptr inbounds %struct.vkms_crtc_state, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %active_writeback to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %active_writeback, align 8
  %wb_pending = getelementptr inbounds %struct.vkms_crtc_state, ptr %13, i32 0, i32 6
  %19 = ptrtoint ptr %wb_pending to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %wb_pending, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %composer_lock) #3
  tail call void @drm_writeback_queue_job(ptr noundef %wb_connector, ptr noundef %retval.0.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_wb_prepare_job(ptr nocapture noundef readnone %wb_connector, ptr nocapture noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_writeback_job, ptr %job, i32 0, i32 4
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #6
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb, align 4
  %data = getelementptr inbounds %struct.vkms_writeback_job, ptr %call7.i.i, i32 0, i32 1
  %call6 = tail call i32 @drm_gem_fb_vmap(ptr noundef %4, ptr noundef nonnull %call7.i.i, ptr noundef %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call6) #3
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %priv = getelementptr inbounds %struct.drm_writeback_job, ptr %job, i32 0, i32 6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_wb_cleanup_job(ptr nocapture noundef readnone %connector, ptr nocapture noundef readonly %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_writeback_job, ptr %job, i32 0, i32 4
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %priv = getelementptr inbounds %struct.drm_writeback_job, ptr %job, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @drm_gem_fb_vunmap(ptr noundef nonnull %1, ptr noundef %3) #3
  %4 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %output = getelementptr inbounds %struct.vkms_device, ptr %7, i32 0, i32 2
  tail call void @vkms_set_composer(ptr noundef %output, i1 noundef zeroext false) #3
  tail call void @kfree(ptr noundef %3) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vkms_set_composer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_queue_job(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_vmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_wb_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef readonly %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 14
  %0 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %writeback_job, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb3 = getelementptr inbounds %struct.drm_writeback_job, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb3, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %lor.lhs.false8, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

lor.lhs.false8:                                   ; preds = %if.end
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %conv9 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv9)
  %cmp10.not = icmp eq i32 %9, %conv9
  br i1 %cmp10.not, label %if.end15, label %lor.lhs.false8.if.then12_crit_edge

lor.lhs.false8.if.then12_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false8.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %height14 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %13) #3
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %format, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713112, i32 %17)
  %cmp17.not = icmp eq i32 %17, 875713112
  br i1 %cmp17.not, label %if.end15.cleanup_crit_edge, label %if.then19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef %15) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end15.cleanup_crit_edge, %if.then12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then12 ], [ -22, %if.then19 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!0 = !{ptr @vkms_wb_conn_helper_funcs, !1, !"vkms_wb_conn_helper_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vkms/vkms_writeback.c", i32 132, i32 48}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vkms/vkms_writeback.c", i32 80, i32 3}
!4 = !{ptr @vkms_wb_connector_funcs, !5, !"vkms_wb_connector_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vkms/vkms_writeback.c", i32 19, i32 41}
!6 = !{ptr @vkms_wb_encoder_helper_funcs, !7, !"vkms_wb_encoder_helper_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vkms/vkms_writeback.c", i32 53, i32 46}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vkms/vkms_writeback.c", i32 39, i32 3}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vkms/vkms_writeback.c", i32 45, i32 3}
!12 = !{ptr @vkms_wb_formats, !13, !"vkms_wb_formats", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vkms/vkms_writeback.c", i32 15, i32 18}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
