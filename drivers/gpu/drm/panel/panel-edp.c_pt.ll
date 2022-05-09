; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-edp.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-edp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dp_aux_ep_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.edp_panel_entry = type { i32, ptr, ptr }
%struct.panel_desc = type { ptr, i32, ptr, i32, i32, %struct.anon.88, %struct.panel_delay }
%struct.anon.88 = type { i32, i32 }
%struct.panel_delay = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dp_aux_ep_device = type { %struct.device, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.panel_edp = type { %struct.drm_panel, i8, i8, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.drm_display_mode, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_panel_edp__311_1885_panel_edp_init6 = internal global ptr @panel_edp_init, section ".initcall6.init", align 4
@panel_edp_dp_aux_ep_driver = internal global { %struct.dp_aux_ep_driver, [40 x i8] } { %struct.dp_aux_ep_driver { ptr @panel_edp_dp_aux_ep_probe, ptr @panel_edp_dp_aux_ep_remove, ptr @panel_edp_dp_aux_ep_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @platform_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_edp_pm_ops, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@panel_edp_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @panel_edp_platform_probe, ptr @panel_edp_platform_remove, ptr @panel_edp_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.72, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @platform_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_edp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_panel_edp_exit = internal global ptr @panel_edp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [53 x i8] c"panel_edp.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [55 x i8] c"panel_edp.description=DRM Driver for Simple eDP Panels\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [47 x i8] c"panel_edp.file=drivers/gpu/drm/panel/panel-edp\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [44 x i8] c"panel_edp.license=GPL and additional rights\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panel-simple-dp-aux\00", [44 x i8] zeroinitializer }, align 32
@platform_of_match = internal constant { [30 x %struct.of_device_id], [1448 x i8] } { [30 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edp-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b101ean01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b101ean01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b116xa01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b116xak01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b116xw03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b116xw03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b133han05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b133han05 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b133htn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b133htn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b133xtn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b133xtn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b140han06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b140han06 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv101wxmn51\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv101wxmn51 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv110wtm-n61\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv110wtm_n61 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv133fhm-n61\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv133fhm_n61 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv133fhm-n62\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv133fhm_n61 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv140fhmn49\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv140fhmn49 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,n116bca-ea1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_n116bca_ea1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,n116bge\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_n116bge }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,n125hce-gn1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_n125hce_gn1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,p120zdg-bf1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_p120zdg_bf1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ivo,m133nwf4-r0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ivo_m133nwf4_r0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kingdisplay,kd116n21-30nv-a010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kingdisplay_kd116n21_30nv_a010 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lp079qx1-sp0v\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lp079qx1_sp0v }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lp097qx1-spa1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lp097qx1_spa1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lp120up1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lp120up1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lp129qe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lp129qe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"neweast,wjfh116008a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @neweast_wjfh116008a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,lsn122dl01-c01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @samsung_lsn122dl01_c01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,ltn140at29-301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @samsung_ltn140at29_301 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,ld-d5116z01b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_ld_d5116z01b }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq123p1jx31\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_lq123p1jx31 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"starry,kr122ea0sra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @starry_kr122ea0sra }, %struct.of_device_id zeroinitializer], [1448 x i8] zeroinitializer }, align 32
@panel_edp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_edp_suspend, ptr @panel_edp_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no-hpd\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@panel_edp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 786, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request GPIO: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"panel_edp_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/panel/panel-edp.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panel_edp_probe._entry_ptr = internal global ptr @panel_edp_probe._entry, section ".printk_index", align 4
@panel_edp_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 792, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%pOF: failed to get orientation %d\0A\00", [60 x i8] zeroinitializer }, align 32
@panel_edp_probe._entry_ptr.11 = internal global ptr @panel_edp_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddc-i2c-bus\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel-timing\00", [19 x i8] zeroinitializer }, align 32
@panel_edp_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @panel_edp_prepare, ptr @panel_edp_enable, ptr @panel_edp_disable, ptr @panel_edp_unprepare, ptr @panel_edp_get_modes, ptr @panel_edp_get_timings }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edp-panel\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Couldn't detect panel nor find a fallback\0A\00", [53 x i8] zeroinitializer }, align 32
@panel_edp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 838, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Expected bpc in {6,8,10} but got: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@panel_edp_probe._entry_ptr.19 = internal global ptr @panel_edp_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpd\00", [28 x i8] zeroinitializer }, align 32
@panel_edp_get_hpd_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 409, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get 'hpd' GPIO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panel_edp_get_hpd_gpio\00", [41 x i8] zeroinitializer }, align 32
@panel_edp_get_hpd_gpio._entry_ptr = internal global ptr @panel_edp_get_hpd_gpio._entry, section ".printk_index", align 4
@panel_edp_parse_panel_timing_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 630, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Reject override mode: panel has a fixed mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"panel_edp_parse_panel_timing_node\00", [62 x i8] zeroinitializer }, align 32
@panel_edp_parse_panel_timing_node._entry_ptr = internal global ptr @panel_edp_parse_panel_timing_node._entry, section ".printk_index", align 4
@panel_edp_parse_panel_timing_node._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.6, i32 634, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Reject override mode: no timings specified\0A\00", [52 x i8] zeroinitializer }, align 32
@panel_edp_parse_panel_timing_node._entry_ptr.27 = internal global ptr @panel_edp_parse_panel_timing_node._entry.25, section ".printk_index", align 4
@panel_edp_parse_panel_timing_node._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.6, i32 662, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Reject override mode: No display_timing found\0A\00", [49 x i8] zeroinitializer }, align 32
@panel_edp_parse_panel_timing_node._entry_ptr.30 = internal global ptr @panel_edp_parse_panel_timing_node._entry.28, section ".printk_index", align 4
@panel_edp_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 584, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No display modes\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panel_edp_get_modes\00", [44 x i8] zeroinitializer }, align 32
@panel_edp_get_modes._entry_ptr = internal global ptr @panel_edp_get_modes._entry, section ".printk_index", align 4
@panel_edp_get_non_edid_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 317, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add override mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"panel_edp_get_non_edid_modes\00", [35 x i8] zeroinitializer }, align 32
@panel_edp_get_non_edid_modes._entry_ptr = internal global ptr @panel_edp_get_non_edid_modes._entry, section ".printk_index", align 4
@panel_edp_get_timings_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 251, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add mode %ux%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"panel_edp_get_timings_modes\00", [36 x i8] zeroinitializer }, align 32
@panel_edp_get_timings_modes._entry_ptr = internal global ptr @panel_edp_get_timings_modes._entry, section ".printk_index", align 4
@panel_edp_get_display_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 282, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"panel_edp_get_display_modes\00", [36 x i8] zeroinitializer }, align 32
@panel_edp_get_display_modes._entry_ptr = internal global ptr @panel_edp_get_display_modes._entry, section ".printk_index", align 4
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hpd-reliable-delay-ms\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hpd-absent-delay-ms\00", [44 x i8] zeroinitializer }, align 32
@generic_edp_panel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 696, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't power on panel to read EDID: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"generic_edp_panel_probe\00", [40 x i8] zeroinitializer }, align 32
@generic_edp_panel_probe._entry_ptr = internal global ptr @generic_edp_panel_probe._entry, section ".printk_index", align 4
@generic_edp_panel_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.6, i32 702, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't identify panel via EDID\0A\00", [62 x i8] zeroinitializer }, align 32
@generic_edp_panel_probe._entry_ptr.45 = internal global ptr @generic_edp_panel_probe._entry.43, section ".printk_index", align 4
@generic_edp_panel_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.6, i32 718, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unknown panel %s %#06x, using conservative timings\0A\00", [44 x i8] zeroinitializer }, align 32
@generic_edp_panel_probe._entry_ptr.48 = internal global ptr @generic_edp_panel_probe._entry.46, section ".printk_index", align 4
@generic_edp_panel_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.6, i32 739, ptr @.str.51, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Detected %s %s (%#06x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@generic_edp_panel_probe._entry_ptr.52 = internal global ptr @generic_edp_panel_probe._entry.49, section ".printk_index", align 4
@edp_panels = internal constant { [10 x %struct.edp_panel_entry], [40 x i8] } { [10 x %struct.edp_panel_entry] [%struct.edp_panel_entry { i32 112148572, ptr getelementptr (i8, ptr @auo_b116xak01, i64 28), ptr @.str.53 }, %struct.edp_panel_entry { i32 112157020, ptr @delay_200_500_e50, ptr @.str.54 }, %struct.edp_panel_entry { i32 166004614, ptr @delay_200_500_p2e80, ptr @.str.55 }, %struct.edp_panel_entry { i32 166004689, ptr getelementptr (i8, ptr @boe_nv133fhm_n61, i64 28), ptr @.str.56 }, %struct.edp_panel_entry { i32 166004781, ptr getelementptr (i8, ptr @boe_nv133fhm_n61, i64 28), ptr @.str.57 }, %struct.edp_panel_entry { i32 166005133, ptr getelementptr (i8, ptr @boe_nv110wtm_n61, i64 28), ptr @.str.58 }, %struct.edp_panel_entry { i32 229511500, ptr getelementptr (i8, ptr @innolux_n116bca_ea1, i64 28), ptr @.str.59 }, %struct.edp_panel_entry { i32 746718756, ptr getelementptr (i8, ptr @kingdisplay_kd116n21_30nv_a010, i64 28), ptr @.str.60 }, %struct.edp_panel_entry { i32 1292899660, ptr @delay_200_500_p2e100, ptr @.str.61 }, %struct.edp_panel_entry zeroinitializer], [40 x i8] zeroinitializer }, align 32
@auo_b116xak01 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @auo_b116xak01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 256, i32 144 }, %struct.panel_delay { i32 0, i32 200, i32 0, i32 0, i32 0, i32 0 } }, [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"B116XAK01\00", [22 x i8] zeroinitializer }, align 32
@delay_200_500_e50 = internal constant { %struct.panel_delay, [40 x i8] } { %struct.panel_delay { i32 0, i32 200, i32 0, i32 50, i32 0, i32 500 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"B116XAN06.1\00", [20 x i8] zeroinitializer }, align 32
@delay_200_500_p2e80 = internal constant { %struct.panel_delay, [40 x i8] } { %struct.panel_delay { i32 0, i32 200, i32 80, i32 0, i32 0, i32 500 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NV116WHM-T01\00", [19 x i8] zeroinitializer }, align 32
@boe_nv133fhm_n61 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @boe_nv133fhm_n61_modes, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 294, i32 165 }, %struct.panel_delay { i32 15, i32 200, i32 0, i32 0, i32 0, i32 500 } }, [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NV133FHM-N61\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NV133FHM-N62\00", [19 x i8] zeroinitializer }, align 32
@boe_nv110wtm_n61 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @boe_nv110wtm_n61_modes, i32 2, ptr null, i32 0, i32 8, %struct.anon.88 { i32 233, i32 155 }, %struct.panel_delay { i32 0, i32 200, i32 80, i32 50, i32 0, i32 500 } }, [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NV110WTM-N61\00", [19 x i8] zeroinitializer }, align 32
@innolux_n116bca_ea1 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @innolux_n116bca_ea1_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 256, i32 144 }, %struct.panel_delay { i32 0, i32 200, i32 80, i32 0, i32 0, i32 500 } }, [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"N116BCA-EA1\00", [20 x i8] zeroinitializer }, align 32
@kingdisplay_kd116n21_30nv_a010 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @kingdisplay_kd116n21_30nv_a010_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 256, i32 144 }, %struct.panel_delay { i32 0, i32 200, i32 0, i32 0, i32 0, i32 0 } }, [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"116N21-30NV-A010\00", [47 x i8] zeroinitializer }, align 32
@delay_200_500_p2e100 = internal constant { %struct.panel_delay, [40 x i8] } { %struct.panel_delay { i32 0, i32 200, i32 100, i32 0, i32 0, i32 500 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LQ116M1JW10\00", [20 x i8] zeroinitializer }, align 32
@auo_b116xak01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 69300, i16 1366, i16 1414, i16 1446, i16 1456, i16 0, i16 768, i16 772, i16 778, i16 793, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@boe_nv133fhm_n61_modes = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 147840, i16 1920, i16 1968, i16 2000, i16 2200, i16 0, i16 1080, i16 1083, i16 1089, i16 1120, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@boe_nv110wtm_n61_modes = internal constant { [2 x %struct.drm_display_mode], [32 x i8] } { [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 207800, i16 2160, i16 2208, i16 2240, i16 2340, i16 0, i16 1440, i16 1443, i16 1449, i16 1480, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 138500, i16 2160, i16 2208, i16 2240, i16 2340, i16 0, i16 1440, i16 1443, i16 1449, i16 1480, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@innolux_n116bca_ea1_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 76420, i16 1366, i16 1502, i16 1532, i16 1592, i16 0, i16 768, i16 776, i16 788, i16 800, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@kingdisplay_kd116n21_30nv_a010_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 81000, i16 1366, i16 1406, i16 1438, i16 1500, i16 0, i16 768, i16 773, i16 778, i16 900, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_b101ean01 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @auo_b101ean01_timing, i32 1, i32 6, %struct.anon.88 { i32 217, i32 136 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@auo_b116xw03 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @auo_b116xw03_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 256, i32 144 }, %struct.panel_delay { i32 0, i32 0, i32 0, i32 400, i32 0, i32 0 } }, [44 x i8] zeroinitializer }, align 32
@auo_b133han05 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @auo_b133han05_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.88 { i32 293, i32 165 }, %struct.panel_delay { i32 100, i32 0, i32 0, i32 20, i32 0, i32 50 } }, [44 x i8] zeroinitializer }, align 32
@auo_b133htn01 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @auo_b133htn01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 293, i32 165 }, %struct.panel_delay { i32 105, i32 0, i32 0, i32 20, i32 0, i32 50 } }, [44 x i8] zeroinitializer }, align 32
@auo_b133xtn01 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @auo_b133xtn01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 293, i32 165 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@auo_b140han06 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @auo_b140han06_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.88 { i32 309, i32 174 }, %struct.panel_delay { i32 100, i32 0, i32 0, i32 20, i32 0, i32 50 } }, [44 x i8] zeroinitializer }, align 32
@boe_nv101wxmn51 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @boe_nv101wxmn51_modes, i32 2, ptr null, i32 0, i32 8, %struct.anon.88 { i32 217, i32 136 }, %struct.panel_delay { i32 210, i32 0, i32 0, i32 50, i32 0, i32 160 } }, [44 x i8] zeroinitializer }, align 32
@boe_nv140fhmn49 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @boe_nv140fhmn49_modes, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 309, i32 174 }, %struct.panel_delay { i32 210, i32 0, i32 0, i32 50, i32 0, i32 160 } }, [44 x i8] zeroinitializer }, align 32
@innolux_n116bge = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @innolux_n116bge_timing, i32 1, i32 6, %struct.anon.88 { i32 256, i32 144 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@innolux_n125hce_gn1 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @innolux_n125hce_gn1_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.88 { i32 276, i32 155 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@innolux_p120zdg_bf1 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @innolux_p120zdg_bf1_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.88 { i32 254, i32 169 }, %struct.panel_delay { i32 0, i32 200, i32 0, i32 0, i32 0, i32 500 } }, [44 x i8] zeroinitializer }, align 32
@ivo_m133nwf4_r0 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @ivo_m133nwf4_r0_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.88 { i32 294, i32 165 }, %struct.panel_delay { i32 0, i32 200, i32 0, i32 0, i32 0, i32 500 } }, [44 x i8] zeroinitializer }, align 32
@lg_lp079qx1_sp0v = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @lg_lp079qx1_sp0v_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.88 { i32 129, i32 171 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@lg_lp097qx1_spa1 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @lg_lp097qx1_spa1_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.88 { i32 208, i32 147 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@lg_lp120up1 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @lg_lp120up1_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.88 { i32 267, i32 183 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@lg_lp129qe = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @lg_lp129qe_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.88 { i32 272, i32 181 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@neweast_wjfh116008a = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @neweast_wjfh116008a_modes, i32 2, ptr null, i32 0, i32 6, %struct.anon.88 { i32 260, i32 150 }, %struct.panel_delay { i32 110, i32 0, i32 0, i32 20, i32 0, i32 500 } }, [44 x i8] zeroinitializer }, align 32
@samsung_lsn122dl01_c01 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @samsung_lsn122dl01_c01_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.88 { i32 263, i32 164 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@samsung_ltn140at29_301 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @samsung_ltn140at29_301_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.88 { i32 320, i32 187 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sharp_ld_d5116z01b = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @sharp_ld_d5116z01b_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.88 { i32 260, i32 120 }, %struct.panel_delay zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@sharp_lq123p1jx31 = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @sharp_lq123p1jx31_timing, i32 1, i32 8, %struct.anon.88 { i32 259, i32 173 }, %struct.panel_delay { i32 110, i32 0, i32 0, i32 50, i32 0, i32 550 } }, [44 x i8] zeroinitializer }, align 32
@starry_kr122ea0sra = internal constant { %struct.panel_desc, [44 x i8] } { %struct.panel_desc { ptr @starry_kr122ea0sra_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.88 { i32 263, i32 164 }, %struct.panel_delay { i32 210, i32 0, i32 0, i32 50, i32 0, i32 510 } }, [44 x i8] zeroinitializer }, align 32
@auo_b101ean01_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 65300000, i32 72500000, i32 75000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 18, i32 119, i32 119 }, %struct.timing_entry { i32 21, i32 21, i32 21 }, %struct.timing_entry { i32 32, i32 32, i32 32 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 4, i32 4, i32 4 }, %struct.timing_entry { i32 8, i32 8, i32 8 }, %struct.timing_entry { i32 18, i32 20, i32 20 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_b116xw03_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 70589, i16 1366, i16 1406, i16 1446, i16 1478, i16 0, i16 768, i16 778, i16 790, i16 796, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_b133han05_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 142600, i16 1920, i16 1978, i16 2020, i16 2080, i16 0, i16 1080, i16 1083, i16 1088, i16 1142, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_b133htn01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 150660, i16 1920, i16 2092, i16 2172, i16 2232, i16 0, i16 1080, i16 1105, i16 1115, i16 1125, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_b133xtn01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 69500, i16 1366, i16 1414, i16 1446, i16 1466, i16 0, i16 768, i16 771, i16 777, i16 790, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_b140han06_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 141000, i16 1920, i16 1936, i16 1952, i16 2104, i16 0, i16 1080, i16 1083, i16 1097, i16 1116, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@boe_nv101wxmn51_modes = internal constant { [2 x %struct.drm_display_mode], [32 x i8] } { [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 71900, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 800, i16 803, i16 808, i16 832, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 57500, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 800, i16 803, i16 808, i16 832, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@boe_nv140fhmn49_modes = internal constant { [1 x %struct.drm_display_mode], [48 x i8] } { [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 148500, i16 1920, i16 1968, i16 2000, i16 2200, i16 0, i16 1080, i16 1083, i16 1088, i16 1125, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@innolux_n116bge_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 72600000, i32 76420000, i32 80240000 }, %struct.timing_entry { i32 1366, i32 1366, i32 1366 }, %struct.timing_entry { i32 136, i32 136, i32 136 }, %struct.timing_entry { i32 60, i32 60, i32 60 }, %struct.timing_entry { i32 30, i32 30, i32 30 }, %struct.timing_entry { i32 768, i32 768, i32 768 }, %struct.timing_entry { i32 8, i32 8, i32 8 }, %struct.timing_entry { i32 12, i32 12, i32 12 }, %struct.timing_entry { i32 12, i32 12, i32 12 }, i32 5 }, [48 x i8] zeroinitializer }, align 32
@innolux_n125hce_gn1_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 162000, i16 1920, i16 1960, i16 2000, i16 2080, i16 0, i16 1080, i16 1084, i16 1088, i16 1112, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_p120zdg_bf1_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 206016, i16 2160, i16 2208, i16 2240, i16 2320, i16 0, i16 1440, i16 1443, i16 1453, i16 1480, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ivo_m133nwf4_r0_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 138778, i16 1920, i16 1944, i16 1992, i16 2080, i16 0, i16 1080, i16 1083, i16 1095, i16 1112, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg_lp079qx1_sp0v_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 200000, i16 1536, i16 1548, i16 1564, i16 1612, i16 0, i16 2048, i16 2056, i16 2060, i16 2068, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg_lp097qx1_spa1_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 205210, i16 2048, i16 2198, i16 2203, i16 2208, i16 0, i16 1536, i16 1539, i16 1540, i16 1549, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg_lp120up1_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 162300, i16 1920, i16 1960, i16 2000, i16 2080, i16 0, i16 1280, i16 1284, i16 1288, i16 1300, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg_lp129qe_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 285250, i16 2560, i16 2608, i16 2640, i16 2720, i16 0, i16 1700, i16 1703, i16 1713, i16 1749, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@neweast_wjfh116008a_modes = internal constant { [2 x %struct.drm_display_mode], [32 x i8] } { [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 138500, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1080, i16 1083, i16 1088, i16 1111, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 110920, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1080, i16 1083, i16 1088, i16 1111, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@samsung_lsn122dl01_c01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 271560, i16 2560, i16 2608, i16 2640, i16 2720, i16 0, i16 1600, i16 1602, i16 1607, i16 1664, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@samsung_ltn140at29_301_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 76300, i16 1366, i16 1430, i16 1478, i16 1606, i16 0, i16 768, i16 770, i16 775, i16 792, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sharp_ld_d5116z01b_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 168480, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1280, i16 1283, i16 1293, i16 1350, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sharp_lq123p1jx31_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 252750000, i32 252750000, i32 266604720 }, %struct.timing_entry { i32 2400, i32 2400, i32 2400 }, %struct.timing_entry { i32 48, i32 48, i32 48 }, %struct.timing_entry { i32 80, i32 80, i32 84 }, %struct.timing_entry { i32 32, i32 32, i32 32 }, %struct.timing_entry { i32 1600, i32 1600, i32 1600 }, %struct.timing_entry { i32 3, i32 3, i32 3 }, %struct.timing_entry { i32 33, i32 33, i32 120 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, i32 5 }, [48 x i8] zeroinitializer }, align 32
@starry_kr122ea0sra_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 147000, i16 1920, i16 1936, i16 1952, i16 1984, i16 0, i16 1200, i16 1215, i16 1217, i16 1235, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@panel_edp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.6, i32 492, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Prepare timeout after %d tries\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"panel_edp_resume\00", [47 x i8] zeroinitializer }, align 32
@panel_edp_resume._entry_ptr = internal global ptr @panel_edp_resume._entry, section ".printk_index", align 4
@panel_edp_resume._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.6, i32 494, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Prepare needed %d retries\0A\00", [37 x i8] zeroinitializer }, align 32
@panel_edp_resume._entry_ptr.66 = internal global ptr @panel_edp_resume._entry.64, section ".printk_index", align 4
@panel_edp_prepare_once._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.6, i32 429, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panel_edp_prepare_once\00", [41 x i8] zeroinitializer }, align 32
@panel_edp_prepare_once._entry_ptr = internal global ptr @panel_edp_prepare_once._entry, section ".printk_index", align 4
@panel_edp_prepare_once._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.6, i32 456, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error waiting for hpd GPIO: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@panel_edp_prepare_once._entry_ptr.71 = internal global ptr @panel_edp_prepare_once._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"panel-edp\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 8, i64 10]
@__sancov_gen_cov_switch_values.73 = internal global [11 x i64] [i64 9, i64 32, i64 112148572, i64 112157020, i64 166004614, i64 166004689, i64 166004781, i64 166005133, i64 229511500, i64 746718756, i64 1292899660]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"panel_edp_dp_aux_ep_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1855, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant [26 x i8] c"panel_edp_platform_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1823, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1857, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"platform_of_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1636, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"panel_edp_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1817, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 770, i32 54 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 777, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 781, i32 52 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 786, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 792, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 796, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 807, i32 43 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"panel_edp_funcs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 609, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 828, i32 44 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 832, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 838, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 404, i32 45 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 409, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 630, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 634, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 662, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 584, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 317, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 250, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 280, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 688, i32 37 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 690, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 696, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 702, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 716, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 738, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [11 x i8] c"edp_panels\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1763, i32 37 }
@___asan_gen_.255 = private unnamed_addr constant [14 x i8] c"auo_b116xak01\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 926, i32 32 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1764, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [18 x i8] c"delay_200_500_e50\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1742, i32 33 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1765, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c"delay_200_500_p2e80\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1730, i32 33 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1767, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"boe_nv133fhm_n61\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1167, i32 32 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1768, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1769, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"boe_nv110wtm_n61\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1136, i32 32 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1770, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c"innolux_n116bca_ea1\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1236, i32 32 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1772, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [31 x i8] c"kingdisplay_kd116n21_30nv_a010\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1373, i32 32 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1774, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [21 x i8] c"delay_200_500_p2e100\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1736, i32 33 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1776, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [19 x i8] c"auo_b116xak01_mode\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 913, i32 38 }
@___asan_gen_.309 = private unnamed_addr constant [23 x i8] c"boe_nv133fhm_n61_modes\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1153, i32 38 }
@___asan_gen_.312 = private unnamed_addr constant [23 x i8] c"boe_nv110wtm_n61_modes\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1109, i32 38 }
@___asan_gen_.315 = private unnamed_addr constant [25 x i8] c"innolux_n116bca_ea1_mode\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1223, i32 38 }
@___asan_gen_.318 = private unnamed_addr constant [36 x i8] c"kingdisplay_kd116n21_30nv_a010_mode\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1360, i32 38 }
@___asan_gen_.321 = private unnamed_addr constant [14 x i8] c"auo_b101ean01\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 903, i32 32 }
@___asan_gen_.324 = private unnamed_addr constant [13 x i8] c"auo_b116xw03\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 952, i32 32 }
@___asan_gen_.327 = private unnamed_addr constant [14 x i8] c"auo_b133han05\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 977, i32 32 }
@___asan_gen_.330 = private unnamed_addr constant [14 x i8] c"auo_b133htn01\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1004, i32 32 }
@___asan_gen_.333 = private unnamed_addr constant [14 x i8] c"auo_b133xtn01\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1031, i32 32 }
@___asan_gen_.336 = private unnamed_addr constant [14 x i8] c"auo_b140han06\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1053, i32 32 }
@___asan_gen_.339 = private unnamed_addr constant [16 x i8] c"boe_nv101wxmn51\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1093, i32 32 }
@___asan_gen_.342 = private unnamed_addr constant [16 x i8] c"boe_nv140fhmn49\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1207, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant [16 x i8] c"innolux_n116bge\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1274, i32 32 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c"innolux_n125hce_gn1\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1296, i32 32 }
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c"innolux_p120zdg_bf1\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1319, i32 32 }
@___asan_gen_.354 = private unnamed_addr constant [16 x i8] c"ivo_m133nwf4_r0\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1346, i32 32 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"lg_lp079qx1_sp0v\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1399, i32 32 }
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c"lg_lp097qx1_spa1\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1420, i32 32 }
@___asan_gen_.363 = private unnamed_addr constant [12 x i8] c"lg_lp120up1\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1441, i32 32 }
@___asan_gen_.366 = private unnamed_addr constant [11 x i8] c"lg_lp129qe\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1463, i32 32 }
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c"neweast_wjfh116008a\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1499, i32 32 }
@___asan_gen_.372 = private unnamed_addr constant [23 x i8] c"samsung_lsn122dl01_c01\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1526, i32 32 }
@___asan_gen_.375 = private unnamed_addr constant [23 x i8] c"samsung_ltn140at29_301\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1547, i32 32 }
@___asan_gen_.378 = private unnamed_addr constant [19 x i8] c"sharp_ld_d5116z01b\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1570, i32 32 }
@___asan_gen_.381 = private unnamed_addr constant [18 x i8] c"sharp_lq123p1jx31\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1593, i32 32 }
@___asan_gen_.384 = private unnamed_addr constant [19 x i8] c"starry_kr122ea0sra\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1621, i32 32 }
@___asan_gen_.387 = private unnamed_addr constant [21 x i8] c"auo_b101ean01_timing\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 891, i32 36 }
@___asan_gen_.390 = private unnamed_addr constant [18 x i8] c"auo_b116xw03_mode\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 939, i32 38 }
@___asan_gen_.393 = private unnamed_addr constant [19 x i8] c"auo_b133han05_mode\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 965, i32 38 }
@___asan_gen_.396 = private unnamed_addr constant [19 x i8] c"auo_b133htn01_mode\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 992, i32 38 }
@___asan_gen_.399 = private unnamed_addr constant [19 x i8] c"auo_b133xtn01_mode\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1019, i32 38 }
@___asan_gen_.402 = private unnamed_addr constant [19 x i8] c"auo_b140han06_mode\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1041, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant [22 x i8] c"boe_nv101wxmn51_modes\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1068, i32 38 }
@___asan_gen_.408 = private unnamed_addr constant [22 x i8] c"boe_nv140fhmn49_modes\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1193, i32 38 }
@___asan_gen_.411 = private unnamed_addr constant [23 x i8] c"innolux_n116bge_timing\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1261, i32 36 }
@___asan_gen_.414 = private unnamed_addr constant [25 x i8] c"innolux_n125hce_gn1_mode\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1284, i32 38 }
@___asan_gen_.417 = private unnamed_addr constant [25 x i8] c"innolux_p120zdg_bf1_mode\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1306, i32 38 }
@___asan_gen_.420 = private unnamed_addr constant [21 x i8] c"ivo_m133nwf4_r0_mode\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1333, i32 38 }
@___asan_gen_.423 = private unnamed_addr constant [22 x i8] c"lg_lp079qx1_sp0v_mode\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1386, i32 38 }
@___asan_gen_.426 = private unnamed_addr constant [22 x i8] c"lg_lp097qx1_spa1_mode\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1408, i32 38 }
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"lg_lp120up1_mode\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1429, i32 38 }
@___asan_gen_.432 = private unnamed_addr constant [16 x i8] c"lg_lp129qe_mode\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1451, i32 38 }
@___asan_gen_.435 = private unnamed_addr constant [26 x i8] c"neweast_wjfh116008a_modes\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1473, i32 38 }
@___asan_gen_.438 = private unnamed_addr constant [28 x i8] c"samsung_lsn122dl01_c01_mode\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1514, i32 38 }
@___asan_gen_.441 = private unnamed_addr constant [28 x i8] c"samsung_ltn140at29_301_mode\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1535, i32 38 }
@___asan_gen_.444 = private unnamed_addr constant [24 x i8] c"sharp_ld_d5116z01b_mode\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1557, i32 38 }
@___asan_gen_.447 = private unnamed_addr constant [25 x i8] c"sharp_lq123p1jx31_timing\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1580, i32 36 }
@___asan_gen_.450 = private unnamed_addr constant [24 x i8] c"starry_kr122ea0sra_mode\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1608, i32 38 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 492, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 494, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 429, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 455, i32 5 }
@___asan_gen_.483 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.484 = private constant [37 x i8] c"../drivers/gpu/drm/panel/panel-edp.c\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1825, i32 11 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_panel_edp_exit, ptr @__initcall__kmod_panel_edp__311_1885_panel_edp_init6, ptr @generic_edp_panel_probe._entry, ptr @generic_edp_panel_probe._entry.43, ptr @generic_edp_panel_probe._entry.46, ptr @generic_edp_panel_probe._entry.49, ptr @generic_edp_panel_probe._entry_ptr, ptr @generic_edp_panel_probe._entry_ptr.45, ptr @generic_edp_panel_probe._entry_ptr.48, ptr @generic_edp_panel_probe._entry_ptr.52, ptr @panel_edp_exit, ptr @panel_edp_get_display_modes._entry, ptr @panel_edp_get_display_modes._entry_ptr, ptr @panel_edp_get_hpd_gpio._entry, ptr @panel_edp_get_hpd_gpio._entry_ptr, ptr @panel_edp_get_modes._entry, ptr @panel_edp_get_modes._entry_ptr, ptr @panel_edp_get_non_edid_modes._entry, ptr @panel_edp_get_non_edid_modes._entry_ptr, ptr @panel_edp_get_timings_modes._entry, ptr @panel_edp_get_timings_modes._entry_ptr, ptr @panel_edp_parse_panel_timing_node._entry, ptr @panel_edp_parse_panel_timing_node._entry.25, ptr @panel_edp_parse_panel_timing_node._entry.28, ptr @panel_edp_parse_panel_timing_node._entry_ptr, ptr @panel_edp_parse_panel_timing_node._entry_ptr.27, ptr @panel_edp_parse_panel_timing_node._entry_ptr.30, ptr @panel_edp_prepare_once._entry, ptr @panel_edp_prepare_once._entry.69, ptr @panel_edp_prepare_once._entry_ptr, ptr @panel_edp_prepare_once._entry_ptr.71, ptr @panel_edp_probe._entry, ptr @panel_edp_probe._entry.16, ptr @panel_edp_probe._entry.9, ptr @panel_edp_probe._entry_ptr, ptr @panel_edp_probe._entry_ptr.11, ptr @panel_edp_probe._entry_ptr.19, ptr @panel_edp_resume._entry, ptr @panel_edp_resume._entry.64, ptr @panel_edp_resume._entry_ptr, ptr @panel_edp_resume._entry_ptr.66, ptr @panel_edp_dp_aux_ep_driver, ptr @panel_edp_platform_driver, ptr @.str, ptr @platform_of_match, ptr @panel_edp_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @panel_edp_funcs, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @edp_panels, ptr @auo_b116xak01, ptr @.str.53, ptr @delay_200_500_e50, ptr @.str.54, ptr @delay_200_500_p2e80, ptr @.str.55, ptr @boe_nv133fhm_n61, ptr @.str.56, ptr @.str.57, ptr @boe_nv110wtm_n61, ptr @.str.58, ptr @innolux_n116bca_ea1, ptr @.str.59, ptr @kingdisplay_kd116n21_30nv_a010, ptr @.str.60, ptr @delay_200_500_p2e100, ptr @.str.61, ptr @auo_b116xak01_mode, ptr @boe_nv133fhm_n61_modes, ptr @boe_nv110wtm_n61_modes, ptr @innolux_n116bca_ea1_mode, ptr @kingdisplay_kd116n21_30nv_a010_mode, ptr @auo_b101ean01, ptr @auo_b116xw03, ptr @auo_b133han05, ptr @auo_b133htn01, ptr @auo_b133xtn01, ptr @auo_b140han06, ptr @boe_nv101wxmn51, ptr @boe_nv140fhmn49, ptr @innolux_n116bge, ptr @innolux_n125hce_gn1, ptr @innolux_p120zdg_bf1, ptr @ivo_m133nwf4_r0, ptr @lg_lp079qx1_sp0v, ptr @lg_lp097qx1_spa1, ptr @lg_lp120up1, ptr @lg_lp129qe, ptr @neweast_wjfh116008a, ptr @samsung_lsn122dl01_c01, ptr @samsung_ltn140at29_301, ptr @sharp_ld_d5116z01b, ptr @sharp_lq123p1jx31, ptr @starry_kr122ea0sra, ptr @auo_b101ean01_timing, ptr @auo_b116xw03_mode, ptr @auo_b133han05_mode, ptr @auo_b133htn01_mode, ptr @auo_b133xtn01_mode, ptr @auo_b140han06_mode, ptr @boe_nv101wxmn51_modes, ptr @boe_nv140fhmn49_modes, ptr @innolux_n116bge_timing, ptr @innolux_n125hce_gn1_mode, ptr @innolux_p120zdg_bf1_mode, ptr @ivo_m133nwf4_r0_mode, ptr @lg_lp079qx1_sp0v_mode, ptr @lg_lp097qx1_spa1_mode, ptr @lg_lp120up1_mode, ptr @lg_lp129qe_mode, ptr @neweast_wjfh116008a_modes, ptr @samsung_lsn122dl01_c01_mode, ptr @samsung_ltn140at29_301_mode, ptr @sharp_ld_d5116z01b_mode, ptr @sharp_lq123p1jx31_timing, ptr @starry_kr122ea0sra_mode, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_dp_aux_ep_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_of_match to i32), i32 5880, i32 7328, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_get_hpd_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_parse_panel_timing_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_parse_panel_timing_node._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_parse_panel_timing_node._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_get_non_edid_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_get_timings_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_get_display_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_edp_panel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_edp_panel_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_edp_panel_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_edp_panel_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edp_panels to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b116xak01 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_200_500_e50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_200_500_p2e80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_nv133fhm_n61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_nv110wtm_n61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_n116bca_ea1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kingdisplay_kd116n21_30nv_a010 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_200_500_p2e100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b116xak01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_nv133fhm_n61_modes to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_nv110wtm_n61_modes to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_n116bca_ea1_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kingdisplay_kd116n21_30nv_a010_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b101ean01 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b116xw03 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b133han05 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b133htn01 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b133xtn01 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b140han06 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_nv101wxmn51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_nv140fhmn49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_n116bge to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_n125hce_gn1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p120zdg_bf1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivo_m133nwf4_r0 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lp079qx1_sp0v to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lp097qx1_spa1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lp120up1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lp129qe to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neweast_wjfh116008a to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_lsn122dl01_c01 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ltn140at29_301 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_ld_d5116z01b to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_lq123p1jx31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starry_kr122ea0sra to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b101ean01_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b116xw03_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b133han05_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b133htn01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b133xtn01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b140han06_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_nv101wxmn51_modes to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_nv140fhmn49_modes to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_n116bge_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_n125hce_gn1_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p120zdg_bf1_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivo_m133nwf4_r0_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lp079qx1_sp0v_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lp097qx1_spa1_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lp120up1_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lp129qe_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neweast_wjfh116008a_modes to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_lsn122dl01_c01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ltn140at29_301_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_ld_d5116z01b_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_lq123p1jx31_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starry_kr122ea0sra_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_resume._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_prepare_once._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_edp_prepare_once._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @panel_edp_platform_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__dp_aux_dp_driver_register(ptr noundef nonnull @panel_edp_dp_aux_ep_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err_did_platform_register, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_did_platform_register:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_edp_platform_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %err_did_platform_register, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_did_platform_register ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @panel_edp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dp_aux_dp_driver_unregister(ptr noundef nonnull @panel_edp_dp_aux_ep_driver) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_edp_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_dp_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dp_aux_dp_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_dp_aux_ep_probe(ptr noundef %aux_ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %aux_ep, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @platform_of_match, ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %aux = getelementptr inbounds %struct.dp_aux_ep_device, ptr %aux_ep, i32 0, i32 1
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 8
  %call2 = tail call fastcc i32 @panel_edp_probe(ptr noundef %aux_ep, ptr noundef %3, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_edp_dp_aux_ep_remove(ptr noundef %aux_ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @panel_edp_remove(ptr noundef %aux_ep)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_edp_dp_aux_ep_shutdown(ptr nocapture noundef readonly %aux_ep) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %aux_ep, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @drm_panel_disable(ptr noundef %1) #8
  %call3.i = tail call i32 @drm_panel_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @panel_edp_probe(ptr noundef %dev, ptr noundef %desc, ptr noundef %aux) unnamed_addr #3 align 64 {
entry:
  %vm.i = alloca %struct.videomode, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %dt = alloca %struct.display_timing, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %dt) #8
  %0 = call ptr @memset(ptr %dt, i32 255, i32 112)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 192, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %enabled, align 8
  %prepared_time = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %prepared_time to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %prepared_time, align 8
  %desc1 = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %desc, ptr %desc1, align 8
  %aux2 = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %aux2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %aux, ptr %aux2, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i199 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i199, null
  %no_hpd = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %tobool.i to i8
  %7 = ptrtoint ptr %no_hpd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %no_hpd, align 1
  br i1 %tobool.i, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %call.i200 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef 1) #8
  %hpd_gpio.i = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i200, ptr %hpd_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i200, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %if.then6
  %cmp.not.i = icmp eq ptr %call.i200, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then.i.cleanup_crit_edge, label %panel_edp_get_hpd_gpio.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

panel_edp_get_hpd_gpio.exit:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i200 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %9) #11
  br label %cleanup

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %supply = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %supply, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 3) #8
  %enable_gpio = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %enable_gpio, align 8
  %cmp.i201 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end18
  %cmp.not = icmp eq ptr %call19, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then22.cleanup_crit_edge, label %do.end

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %13) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %orientation = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 14
  %call29 = tail call i32 @of_drm_get_panel_orientation(ptr noundef %15, ptr noundef %orientation) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %17, i32 noundef %call29) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %18 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i202 = call i32 @__of_parse_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.else

of_parse_phandle.exit:                            ; preds = %if.end36
  %19 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool39.not = icmp eq ptr %20, null
  br i1 %tobool39.not, label %of_parse_phandle.exit.if.else_crit_edge, label %if.then40

of_parse_phandle.exit.if.else_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then40:                                        ; preds = %of_parse_phandle.exit
  %call41 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %20) #8
  %ddc42 = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %ddc42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call41, ptr %ddc42, align 8
  call void @of_node_put(ptr noundef nonnull %20) #8
  %22 = ptrtoint ptr %ddc42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddc42, align 8
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %if.then40.cleanup_crit_edge, label %if.then40.if.end52_crit_edge

if.then40.if.end52_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %of_parse_phandle.exit.if.else_crit_edge, %of_parse_phandle.exit.thread
  %tobool47.not = icmp eq ptr %aux, null
  br i1 %tobool47.not, label %if.else.if.end52_crit_edge, label %if.then48

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ddc49 = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 1
  %ddc50 = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %ddc50 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ddc49, ptr %ddc50, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.else.if.end52_crit_edge, %if.then40.if.end52_crit_edge
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call54 = call i32 @of_get_display_timing(ptr noundef %26, ptr noundef nonnull @.str.13, ptr noundef nonnull %dt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end52.if.end57_crit_edge

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %if.end52
  %27 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc1, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm.i) #8
  %29 = call ptr @memset(ptr %vm.i, i32 255, i32 40)
  %num_modes.i = getelementptr inbounds %struct.panel_desc, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i204 = icmp eq i32 %31, 0
  br i1 %tobool.not.i204, label %if.end26.i, label %if.then56.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge, !prof !279

if.then56.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge: ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_parse_panel_timing_node.exit.sink.split

if.end26.i:                                       ; preds = %if.then56
  %num_timings.i = getelementptr inbounds %struct.panel_desc, ptr %28, i32 0, i32 3
  %32 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_timings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool28.not.i = icmp eq i32 %33, 0
  br i1 %tobool28.not.i, label %if.end26.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge, label %for.body.lr.ph.i, !prof !280

if.end26.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_parse_panel_timing_node.exit.sink.split

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %timings.i = getelementptr inbounds %struct.panel_desc, ptr %28, i32 0, i32 2
  %34 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %timings.i, align 4
  %typ.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %typ.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %typ.i, align 4
  %typ75.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 2, i32 1
  %typ86.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 3, i32 1
  %typ97.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 4, i32 1
  %typ108.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 5, i32 1
  %typ119.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 6, i32 1
  %typ130.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 7, i32 1
  %typ141.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 8, i32 1
  %flags.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0261.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %hactive69.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 1
  %38 = ptrtoint ptr %hactive69.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hactive69.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp70.not.i = icmp ult i32 %37, %39
  br i1 %cmp70.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %max.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 1, i32 2
  %40 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %41)
  %cmp74.not.i = icmp ugt i32 %37, %41
  br i1 %cmp74.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %42 = ptrtoint ptr %typ75.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %typ75.i, align 4
  %hfront_porch76.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 2
  %44 = ptrtoint ptr %hfront_porch76.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hfront_porch76.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp78.not.i = icmp ult i32 %43, %45
  br i1 %cmp78.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %land.lhs.true79.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true79.i:                                ; preds = %lor.lhs.false.i
  %max83.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 2, i32 2
  %46 = ptrtoint ptr %max83.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %47)
  %cmp84.not.i = icmp ugt i32 %43, %47
  br i1 %cmp84.not.i, label %land.lhs.true79.i.for.inc.i_crit_edge, label %lor.lhs.false85.i

land.lhs.true79.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false85.i:                                ; preds = %land.lhs.true79.i
  %48 = ptrtoint ptr %typ86.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %typ86.i, align 4
  %hback_porch87.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 3
  %50 = ptrtoint ptr %hback_porch87.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hback_porch87.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp89.not.i = icmp ult i32 %49, %51
  br i1 %cmp89.not.i, label %lor.lhs.false85.i.for.inc.i_crit_edge, label %land.lhs.true90.i

lor.lhs.false85.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true90.i:                                ; preds = %lor.lhs.false85.i
  %max94.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 3, i32 2
  %52 = ptrtoint ptr %max94.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max94.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %53)
  %cmp95.not.i = icmp ugt i32 %49, %53
  br i1 %cmp95.not.i, label %land.lhs.true90.i.for.inc.i_crit_edge, label %lor.lhs.false96.i

land.lhs.true90.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false96.i:                                ; preds = %land.lhs.true90.i
  %54 = ptrtoint ptr %typ97.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %typ97.i, align 4
  %hsync_len98.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 4
  %56 = ptrtoint ptr %hsync_len98.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hsync_len98.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp100.not.i = icmp ult i32 %55, %57
  br i1 %cmp100.not.i, label %lor.lhs.false96.i.for.inc.i_crit_edge, label %land.lhs.true101.i

lor.lhs.false96.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true101.i:                               ; preds = %lor.lhs.false96.i
  %max105.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 4, i32 2
  %58 = ptrtoint ptr %max105.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max105.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %59)
  %cmp106.not.i = icmp ugt i32 %55, %59
  br i1 %cmp106.not.i, label %land.lhs.true101.i.for.inc.i_crit_edge, label %lor.lhs.false107.i

land.lhs.true101.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false107.i:                               ; preds = %land.lhs.true101.i
  %60 = ptrtoint ptr %typ108.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %typ108.i, align 4
  %vactive109.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 5
  %62 = ptrtoint ptr %vactive109.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vactive109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp111.not.i = icmp ult i32 %61, %63
  br i1 %cmp111.not.i, label %lor.lhs.false107.i.for.inc.i_crit_edge, label %land.lhs.true112.i

lor.lhs.false107.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true112.i:                               ; preds = %lor.lhs.false107.i
  %max116.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 5, i32 2
  %64 = ptrtoint ptr %max116.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max116.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %65)
  %cmp117.not.i = icmp ugt i32 %61, %65
  br i1 %cmp117.not.i, label %land.lhs.true112.i.for.inc.i_crit_edge, label %lor.lhs.false118.i

land.lhs.true112.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false118.i:                               ; preds = %land.lhs.true112.i
  %66 = ptrtoint ptr %typ119.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %typ119.i, align 4
  %vfront_porch120.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 6
  %68 = ptrtoint ptr %vfront_porch120.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vfront_porch120.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp122.not.i = icmp ult i32 %67, %69
  br i1 %cmp122.not.i, label %lor.lhs.false118.i.for.inc.i_crit_edge, label %land.lhs.true123.i

lor.lhs.false118.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true123.i:                               ; preds = %lor.lhs.false118.i
  %max127.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 6, i32 2
  %70 = ptrtoint ptr %max127.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max127.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %71)
  %cmp128.not.i = icmp ugt i32 %67, %71
  br i1 %cmp128.not.i, label %land.lhs.true123.i.for.inc.i_crit_edge, label %lor.lhs.false129.i

land.lhs.true123.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false129.i:                               ; preds = %land.lhs.true123.i
  %72 = ptrtoint ptr %typ130.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %typ130.i, align 4
  %vback_porch131.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 7
  %74 = ptrtoint ptr %vback_porch131.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vback_porch131.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp133.not.i = icmp ult i32 %73, %75
  br i1 %cmp133.not.i, label %lor.lhs.false129.i.for.inc.i_crit_edge, label %land.lhs.true134.i

lor.lhs.false129.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true134.i:                               ; preds = %lor.lhs.false129.i
  %max138.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 7, i32 2
  %76 = ptrtoint ptr %max138.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max138.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %77)
  %cmp139.not.i = icmp ugt i32 %73, %77
  br i1 %cmp139.not.i, label %land.lhs.true134.i.for.inc.i_crit_edge, label %lor.lhs.false140.i

land.lhs.true134.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false140.i:                               ; preds = %land.lhs.true134.i
  %78 = ptrtoint ptr %typ141.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %typ141.i, align 4
  %vsync_len142.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 8
  %80 = ptrtoint ptr %vsync_len142.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vsync_len142.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp144.not.i = icmp ult i32 %79, %81
  br i1 %cmp144.not.i, label %lor.lhs.false140.i.for.inc.i_crit_edge, label %land.lhs.true145.i

lor.lhs.false140.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false140.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true145.i:                               ; preds = %lor.lhs.false140.i
  %max149.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 8, i32 2
  %82 = ptrtoint ptr %max149.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max149.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %83)
  %cmp150.not.i = icmp ugt i32 %79, %83
  br i1 %cmp150.not.i, label %land.lhs.true145.i.for.inc.i_crit_edge, label %if.end152.i

land.lhs.true145.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end152.i:                                      ; preds = %land.lhs.true145.i
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i, align 4
  %flags153.i = getelementptr %struct.display_timing, ptr %35, i32 %i.0261.i, i32 9
  %86 = ptrtoint ptr %flags153.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags153.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp154.not.i = icmp eq i32 %85, %87
  br i1 %cmp154.not.i, label %cleanup.i, label %if.end152.i.for.inc.i_crit_edge

if.end152.i.for.inc.i_crit_edge:                  ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @videomode_from_timing(ptr noundef nonnull %dt, ptr noundef nonnull %vm.i) #8
  %override_mode.i = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 13
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %vm.i, ptr noundef %override_mode.i) #8
  %type.i = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 13, i32 28
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %type.i, align 2
  %90 = or i8 %89, 72
  store i8 %90, ptr %type.i, align 2
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end152.i.for.inc.i_crit_edge, %land.lhs.true145.i.for.inc.i_crit_edge, %lor.lhs.false140.i.for.inc.i_crit_edge, %land.lhs.true134.i.for.inc.i_crit_edge, %lor.lhs.false129.i.for.inc.i_crit_edge, %land.lhs.true123.i.for.inc.i_crit_edge, %lor.lhs.false118.i.for.inc.i_crit_edge, %land.lhs.true112.i.for.inc.i_crit_edge, %lor.lhs.false107.i.for.inc.i_crit_edge, %land.lhs.true101.i.for.inc.i_crit_edge, %lor.lhs.false96.i.for.inc.i_crit_edge, %land.lhs.true90.i.for.inc.i_crit_edge, %lor.lhs.false85.i.for.inc.i_crit_edge, %land.lhs.true79.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0261.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %33
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.i
  %type161.i = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 13, i32 28
  %91 = ptrtoint ptr %type161.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %type161.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool162.not.i = icmp eq i8 %92, 0
  br i1 %tobool162.not.i, label %for.end.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge, label %for.end.i.panel_edp_parse_panel_timing_node.exit_crit_edge, !prof !280

for.end.i.panel_edp_parse_panel_timing_node.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_parse_panel_timing_node.exit

for.end.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_parse_panel_timing_node.exit.sink.split

panel_edp_parse_panel_timing_node.exit.sink.split: ; preds = %for.end.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge, %if.end26.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge, %if.then56.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge
  %.sink = phi i32 [ 629, %if.then56.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge ], [ 633, %if.end26.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge ], [ 661, %for.end.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge ]
  %.str.23.sink = phi ptr [ @.str.23, %if.then56.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge ], [ @.str.26, %if.end26.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge ], [ @.str.29, %for.end.i.panel_edp_parse_panel_timing_node.exit.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.23.sink) #11
  br label %panel_edp_parse_panel_timing_node.exit

panel_edp_parse_panel_timing_node.exit:           ; preds = %panel_edp_parse_panel_timing_node.exit.sink.split, %for.end.i.panel_edp_parse_panel_timing_node.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i) #8
  br label %if.end57

if.end57:                                         ; preds = %panel_edp_parse_panel_timing_node.exit, %if.end52.if.end57_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %93 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @panel_edp_funcs, i32 noundef 14) #8
  %call59 = call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end57.err_finished_ddc_init_crit_edge

if.end57.err_finished_ddc_init_crit_edge:         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_finished_ddc_init

if.end62:                                         ; preds = %if.end57
  call void @pm_runtime_enable(ptr noundef %dev) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %94 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %of_node, align 8
  %call64 = call i32 @of_device_is_compatible(ptr noundef %95, ptr noundef nonnull @.str.14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.else73, label %if.then66

if.then66:                                        ; preds = %if.end62
  %call67 = call fastcc i32 @generic_edp_panel_probe(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then66.if.end86_crit_edge, label %if.then69

if.then66.if.end86_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call67, ptr noundef nonnull @.str.15) #8
  br label %err_finished_pm_runtime

if.else73:                                        ; preds = %if.end62
  %bpc = getelementptr inbounds %struct.panel_desc, ptr %desc, i32 0, i32 4
  %96 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bpc, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %97, label %do.end83 [
    i32 6, label %if.else73.if.end86_crit_edge
    i32 8, label %if.else73.if.end86_crit_edge216
    i32 10, label %if.else73.if.end86_crit_edge217
  ]

if.else73.if.end86_crit_edge217:                  ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.else73.if.end86_crit_edge216:                  ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.else73.if.end86_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.end83:                                         ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %97) #11
  br label %if.end86

if.end86:                                         ; preds = %do.end83, %if.else73.if.end86_crit_edge, %if.else73.if.end86_crit_edge216, %if.else73.if.end86_crit_edge217, %if.then66.if.end86_crit_edge
  %backlight = getelementptr inbounds %struct.drm_panel, ptr %call.i, i32 0, i32 1
  %99 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %backlight, align 4
  %tobool88.not = icmp eq ptr %100, null
  br i1 %tobool88.not, label %land.lhs.true89, label %if.end86.if.end101_crit_edge

if.end86.if.end101_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

land.lhs.true89:                                  ; preds = %if.end86
  %101 = ptrtoint ptr %aux2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %aux2, align 4
  %tobool91.not = icmp eq ptr %102, null
  br i1 %tobool91.not, label %land.lhs.true89.if.end101_crit_edge, label %if.then92

land.lhs.true89.if.end101_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then92:                                        ; preds = %land.lhs.true89
  %call.i206 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %103 = ptrtoint ptr %aux2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %aux2, align 4
  %call96 = call i32 @drm_panel_dp_aux_backlight(ptr noundef nonnull %call.i, ptr noundef %104) #8
  %call.i207 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %105 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store volatile i64 %call.i207, ptr %last_busy.i, align 8
  %call.i208 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool98.not = icmp eq i32 %call96, 0
  br i1 %tobool98.not, label %if.then92.if.end101_crit_edge, label %if.then92.err_finished_pm_runtime_crit_edge

if.then92.err_finished_pm_runtime_crit_edge:      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_finished_pm_runtime

if.then92.if.end101_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %if.then92.if.end101_crit_edge, %land.lhs.true89.if.end101_crit_edge, %if.end86.if.end101_crit_edge
  call void @drm_panel_add(ptr noundef nonnull %call.i) #8
  br label %cleanup

err_finished_pm_runtime:                          ; preds = %if.then92.err_finished_pm_runtime_crit_edge, %if.then69
  %err.0 = phi i32 [ %call67, %if.then69 ], [ %call96, %if.then92.err_finished_pm_runtime_crit_edge ]
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %err_finished_ddc_init

err_finished_ddc_init:                            ; preds = %err_finished_pm_runtime, %if.end57.err_finished_ddc_init_crit_edge
  %err.1 = phi i32 [ %call59, %if.end57.err_finished_ddc_init_crit_edge ], [ %err.0, %err_finished_pm_runtime ]
  %ddc103 = getelementptr inbounds %struct.panel_edp, ptr %call.i, i32 0, i32 8
  %106 = ptrtoint ptr %ddc103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ddc103, align 8
  %tobool104.not = icmp eq ptr %107, null
  br i1 %tobool104.not, label %err_finished_ddc_init.cleanup_crit_edge, label %land.lhs.true105

err_finished_ddc_init.cleanup_crit_edge:          ; preds = %err_finished_ddc_init
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true105:                                 ; preds = %err_finished_ddc_init
  %108 = ptrtoint ptr %aux2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %aux2, align 4
  %tobool107.not = icmp ne ptr %109, null
  %ddc110 = getelementptr inbounds %struct.drm_dp_aux, ptr %109, i32 0, i32 1
  %cmp111.not = icmp eq ptr %107, %ddc110
  %or.cond = select i1 %tobool107.not, i1 %cmp111.not, i1 false
  br i1 %or.cond, label %land.lhs.true105.cleanup_crit_edge, label %if.then112

land.lhs.true105.cleanup_crit_edge:               ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then112:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  %dev114 = getelementptr inbounds %struct.i2c_adapter, ptr %107, i32 0, i32 9
  call void @put_device(ptr noundef %dev114) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %land.lhs.true105.cleanup_crit_edge, %err_finished_ddc_init.cleanup_crit_edge, %if.end101, %if.then40.cleanup_crit_edge, %do.end34, %do.end, %if.then22.cleanup_crit_edge, %if.then15, %panel_edp_get_hpd_gpio.exit, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then15 ], [ %call29, %do.end34 ], [ 0, %if.end101 ], [ -12, %entry.cleanup_crit_edge ], [ %9, %panel_edp_get_hpd_gpio.exit ], [ %13, %do.end ], [ -517, %if.then22.cleanup_crit_edge ], [ -517, %if.then40.cleanup_crit_edge ], [ %err.1, %land.lhs.true105.cleanup_crit_edge ], [ %err.1, %if.then112 ], [ %err.1, %err_finished_ddc_init.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %dt) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_drm_get_panel_orientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_display_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_edp_panel_probe(ptr noundef %dev, ptr nocapture noundef %panel) unnamed_addr #3 align 64 {
entry:
  %vend = alloca [4 x i8], align 4
  %reliable_ms = alloca i32, align 4
  %absent_ms = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vend) #8
  %0 = getelementptr inbounds [4 x i8], ptr %vend, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %vend, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %vend, i32 0, i32 3
  %3 = ptrtoint ptr %vend to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %vend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reliable_ms) #8
  %4 = ptrtoint ptr %reliable_ms to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %reliable_ms, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %absent_ms) #8
  %5 = ptrtoint ptr %absent_ms to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %absent_ms, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc1 = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 6
  %6 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %desc1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef nonnull %reliable_ms, i32 noundef 1, i32 noundef 0) #8
  %9 = ptrtoint ptr %reliable_ms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reliable_ms, align 4
  %delay = getelementptr inbounds %struct.panel_desc, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %delay, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i91 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.40, ptr noundef nonnull %absent_ms, i32 noundef 1, i32 noundef 0) #8
  %14 = ptrtoint ptr %absent_ms to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %absent_ms, align 4
  %16 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %delay, align 4
  %call.i92 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp = icmp slt i32 %call.i92, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call.i92) #11
  br label %exit

if.end9:                                          ; preds = %if.end
  %ddc = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 8
  %17 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddc, align 8
  %call10 = call i32 @drm_edid_get_panel_id(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #11
  br label %exit

if.end16:                                         ; preds = %if.end9
  %shr.i = lshr i32 %call10, 26
  %19 = trunc i32 %shr.i to i8
  %20 = and i8 %19, 31
  %conv2.i = or i8 %20, 64
  %21 = ptrtoint ptr %vend to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv2.i, ptr %vend, align 4
  %shr3.i = lshr i32 %call10, 21
  %22 = trunc i32 %shr3.i to i8
  %23 = and i8 %22, 31
  %conv6.i = or i8 %23, 64
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6.i, ptr %0, align 1
  %shr8.i = lshr i32 %call10, 16
  %25 = trunc i32 %shr8.i to i8
  %26 = and i8 %25, 31
  %conv11.i = or i8 %26, 64
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv11.i, ptr %1, align 2
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %2, align 1
  %call17 = call fastcc ptr @find_edp_panel(i32 noundef %call10)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end31, label %do.end54, !prof !280

do.end31:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 715, i32 noundef 9, ptr noundef null) #8
  %conv = and i32 %call10, 65535
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull %vend, i32 noundef %conv) #11
  %unprepare = getelementptr inbounds %struct.panel_desc, ptr %call.i, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %unprepare to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2000, ptr %unprepare, align 4
  %enable = getelementptr inbounds %struct.panel_desc, ptr %call.i, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 200, ptr %enable, align 4
  br label %exit

do.end54:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.edp_panel_entry, ptr %call17, i32 0, i32 2
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %conv56 = and i32 %call10, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull %vend, ptr noundef %32, i32 noundef %conv56) #11
  %delay58 = getelementptr inbounds %struct.edp_panel_entry, ptr %call17, i32 0, i32 1
  %33 = ptrtoint ptr %delay58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %delay58, align 4
  %35 = call ptr @memcpy(ptr %delay, ptr %34, i32 24)
  br label %exit

exit:                                             ; preds = %do.end54, %do.end31, %do.end15, %do.end
  %ret.0 = phi i32 [ %call.i92, %do.end ], [ -5, %do.end15 ], [ 0, %do.end54 ], [ 0, %do.end31 ]
  %call.i93 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %36 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store volatile i64 %call.i93, ptr %last_busy.i, align 8
  %call.i94 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %absent_ms) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reliable_ms) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vend) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_dp_aux_backlight(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videomode_from_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_prepare(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 2, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %call.i12 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %prepared, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_enable(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 6
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %enable = getelementptr inbounds %struct.panel_desc, ptr %3, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable, align 4
  %prepare_to_enable = getelementptr inbounds %struct.panel_desc, ptr %3, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %prepare_to_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prepare_to_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %hpd_gpio = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 11
  %8 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hpd_gpio, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true6:                                   ; preds = %land.lhs.true
  %no_hpd = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 2
  %10 = ptrtoint ptr %no_hpd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %no_hpd, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true6.if.end12_crit_edge

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  br label %if.then14

if.end12:                                         ; preds = %land.lhs.true6.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.end12.if.then14_crit_edge

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.then8
  %delay.036 = phi i32 [ %5, %if.end12.if.then14_crit_edge ], [ %12, %if.then8 ]
  tail call void @msleep(i32 noundef %delay.036) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc, align 8
  %prepare_to_enable18 = getelementptr inbounds %struct.panel_desc, ptr %14, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %prepare_to_enable18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prepare_to_enable18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end15.panel_edp_wait.exit_crit_edge, label %if.end.i

if.end15.panel_edp_wait.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_wait.exit

if.end.i:                                         ; preds = %if.end15
  %prepared_time = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 4
  %17 = ptrtoint ptr %prepared_time to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %prepared_time, align 8
  %conv.i = zext i32 %16 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000000
  %add.i = add i64 %18, %mul.i.i
  %call1.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call1.i)
  %cmp.i.i.i = icmp sgt i64 %add.i, %call1.i
  br i1 %cmp.i.i.i, label %if.then3.i, label %if.end.i.panel_edp_wait.exit_crit_edge

if.end.i.panel_edp_wait.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_wait.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i64 %add.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %19 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %20 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %19) #12, !srcloc !282
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %19, i64 %20, i32 0) #12, !srcloc !283
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %21, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %22 = trunc i64 %cond213.i.i.i to i32
  %conv6.i = add i32 %22, 1
  tail call void @msleep(i32 noundef %conv6.i) #8
  br label %panel_edp_wait.exit

panel_edp_wait.exit:                              ; preds = %if.then3.i, %if.end.i.panel_edp_wait.exit_crit_edge, %if.end15.panel_edp_wait.exit_crit_edge
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %panel_edp_wait.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_disable(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 6
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %disable = getelementptr inbounds %struct.panel_desc, ptr %3, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef %5) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_unprepare(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 2, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %panel, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp = icmp slt i32 %call.i11, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %prepared, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_get_modes(ptr noundef %panel, ptr noundef %connector) #3 align 64 {
entry:
  %vm.i.i = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 8
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %edid = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 12
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end, label %if.then.if.then9_crit_edge

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc, align 8
  %call5 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %7) #8
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %edid, align 8
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.then.if.then9_crit_edge
  %9 = phi ptr [ %call5, %if.end.if.then9_crit_edge ], [ %5, %if.then.if.then9_crit_edge ]
  %call11 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %9) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %num.0 = phi i32 [ %call11, %if.then9 ], [ 0, %if.end.if.end12_crit_edge ]
  %10 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel, align 4
  %call.i48 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i48, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %panel, align 4
  %call.i49 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #8
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %entry.if.end16_crit_edge
  %num.1 = phi i32 [ %num.0, %if.end12 ], [ 0, %entry.if.end16_crit_edge ]
  %desc = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 6
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 8
  %num_timings = getelementptr inbounds %struct.panel_desc, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.end16.if.then20_crit_edge

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end16
  %num_modes = getelementptr inbounds %struct.panel_desc, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_modes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %if.else, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  %override_mode.i = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 13
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %if.then20.panel_edp_get_non_edid_modes.exit_crit_edge, label %if.end.i

if.then20.panel_edp_get_non_edid_modes.exit_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_get_non_edid_modes.exit

if.end.i:                                         ; preds = %if.then20
  %type.i = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 13, i32 28
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.then3.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then3.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %connector, align 8
  %call.i50 = tail call ptr @drm_mode_duplicate(ptr noundef %24, ptr noundef %override_mode.i) #8
  %tobool5.not.i = icmp eq ptr %call.i50, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.i50) #8
  br label %if.end14.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %panel, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.33) #11
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %if.end.i.land.lhs.true.i_crit_edge
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc, align 8
  %num_timings.i = getelementptr inbounds %struct.panel_desc, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_timings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool11.not.i = icmp eq i32 %30, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.for.body.i.i_crit_edge

land.lhs.true.i.for.body.i.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.body.i.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %land.lhs.true.i.for.body.i.i_crit_edge
  %31 = phi ptr [ %53, %cleanup.i.i.for.body.i.i_crit_edge ], [ %28, %land.lhs.true.i.for.body.i.i_crit_edge ]
  %num.037.i.i = phi i32 [ %num.1.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %land.lhs.true.i.for.body.i.i_crit_edge ]
  %i.035.i.i = phi i32 [ %inc16.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %land.lhs.true.i.for.body.i.i_crit_edge ]
  %timings.i.i = getelementptr inbounds %struct.panel_desc, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %timings.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %timings.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.display_timing, ptr %33, i32 %i.035.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm.i.i) #8
  %34 = call ptr @memset(ptr %vm.i.i, i32 255, i32 40)
  call void @videomode_from_timing(ptr noundef %arrayidx.i.i, ptr noundef nonnull %vm.i.i) #8
  %35 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %connector, align 8
  %call.i.i = call ptr @drm_mode_create(ptr noundef %36) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %panel, align 8
  %typ.i.i = getelementptr %struct.display_timing, ptr %33, i32 %i.035.i.i, i32 1, i32 1
  %39 = ptrtoint ptr %typ.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %typ.i.i, align 4
  %typ3.i.i = getelementptr %struct.display_timing, ptr %33, i32 %i.035.i.i, i32 5, i32 1
  %41 = ptrtoint ptr %typ3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %typ3.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.35, i32 noundef %40, i32 noundef %42) #11
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %vm.i.i, ptr noundef nonnull %call.i.i) #8
  %type.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %call.i.i, i32 0, i32 28
  %43 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type.i.i, align 2
  %45 = or i8 %44, 64
  store i8 %45, ptr %type.i.i, align 2
  %46 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %desc, align 8
  %num_timings6.i.i = getelementptr inbounds %struct.panel_desc, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %num_timings6.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_timings6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp7.i.i = icmp eq i32 %49, 1
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end.i.i.if.end14.i.i_crit_edge

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = or i8 %44, 72
  %51 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %type.i.i, align 2
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.i.i) #8
  %inc.i.i = add i32 %num.037.i.i, 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end14.i.i, %do.end.i.i
  %num.1.i.i = phi i32 [ %inc.i.i, %if.end14.i.i ], [ %num.037.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i.i) #8
  %inc16.i.i = add nuw i32 %i.035.i.i, 1
  %52 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc, align 8
  %num_timings.i.i = getelementptr inbounds %struct.panel_desc, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %num_timings.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_timings.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc16.i.i, %55
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.if.end14.i_crit_edge

cleanup.i.i.if.end14.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end14.i:                                       ; preds = %cleanup.i.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %if.then6.i
  %num.1.i = phi i32 [ 0, %land.lhs.true.i.if.end14.i_crit_edge ], [ 1, %if.then6.i ], [ %num.1.i.i, %cleanup.i.i.if.end14.i_crit_edge ]
  %56 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc, align 8
  %num_timings16.i = getelementptr inbounds %struct.panel_desc, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %num_timings16.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_timings16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool17.not.i = icmp eq i32 %59, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end37.i_crit_edge, label %land.rhs.i

if.end14.i.if.end37.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

land.rhs.i:                                       ; preds = %if.end14.i
  %num_modes.i = getelementptr inbounds %struct.panel_desc, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool19.not.i = icmp eq i32 %61, 0
  br i1 %tobool19.not.i, label %land.rhs.i.if.end37.i_crit_edge, label %do.end31.i, !prof !279

land.rhs.i.if.end37.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

do.end31.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 331, i32 noundef 9, ptr noundef null) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end31.i, %land.rhs.i.if.end37.i_crit_edge, %if.end14.i.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1.i)
  %cmp44.i = icmp eq i32 %num.1.i, 0
  br i1 %cmp44.i, label %if.then45.i, label %if.end37.i.if.end47.i_crit_edge

if.end37.i.if.end47.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then45.i:                                      ; preds = %if.end37.i
  %62 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc, align 8
  %num_modes35.i.i = getelementptr inbounds %struct.panel_desc, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %num_modes35.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_modes35.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp36.not.i.i = icmp eq i32 %65, 0
  br i1 %cmp36.not.i.i, label %if.then45.i.if.end47.i_crit_edge, label %if.then45.i.for.body.i82.i_crit_edge

if.then45.i.for.body.i82.i_crit_edge:             ; preds = %if.then45.i
  br label %for.body.i82.i

if.then45.i.if.end47.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

for.body.i82.i:                                   ; preds = %cleanup.i89.i.for.body.i82.i_crit_edge, %if.then45.i.for.body.i82.i_crit_edge
  %66 = phi ptr [ %87, %cleanup.i89.i.for.body.i82.i_crit_edge ], [ %63, %if.then45.i.for.body.i82.i_crit_edge ]
  %num.039.i.i = phi i32 [ %num.1.i87.i, %cleanup.i89.i.for.body.i82.i_crit_edge ], [ 0, %if.then45.i.for.body.i82.i_crit_edge ]
  %i.037.i.i = phi i32 [ %inc17.i.i, %cleanup.i89.i.for.body.i82.i_crit_edge ], [ 0, %if.then45.i.for.body.i82.i_crit_edge ]
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %arrayidx.i79.i = getelementptr %struct.drm_display_mode, ptr %68, i32 %i.037.i.i
  %69 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %connector, align 8
  %call.i80.i = call ptr @drm_mode_duplicate(ptr noundef %70, ptr noundef %arrayidx.i79.i) #8
  %tobool.not.i81.i = icmp eq ptr %call.i80.i, null
  br i1 %tobool.not.i81.i, label %do.end.i83.i, label %if.end.i85.i

do.end.i83.i:                                     ; preds = %for.body.i82.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %panel, align 8
  %hdisplay.i.i = getelementptr %struct.drm_display_mode, ptr %68, i32 %i.037.i.i, i32 1
  %73 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hdisplay.i.i, align 4
  %conv.i.i = zext i16 %74 to i32
  %vdisplay.i.i = getelementptr %struct.drm_display_mode, ptr %68, i32 %i.037.i.i, i32 6
  %75 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vdisplay.i.i, align 2
  %conv3.i.i = zext i16 %76 to i32
  %call4.i.i = call i32 @drm_mode_vrefresh(ptr noundef %arrayidx.i79.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.37, i32 noundef %conv.i.i, i32 noundef %conv3.i.i, i32 noundef %call4.i.i) #11
  br label %cleanup.i89.i

if.end.i85.i:                                     ; preds = %for.body.i82.i
  %type.i84.i = getelementptr inbounds %struct.drm_display_mode, ptr %call.i80.i, i32 0, i32 28
  %77 = ptrtoint ptr %type.i84.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %type.i84.i, align 2
  %79 = or i8 %78, 64
  store i8 %79, ptr %type.i84.i, align 2
  %80 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %desc, align 8
  %num_modes8.i.i = getelementptr inbounds %struct.panel_desc, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %num_modes8.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_modes8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp9.i.i = icmp eq i32 %83, 1
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end.i85.i.if.end16.i.i_crit_edge

if.end.i85.i.if.end16.i.i_crit_edge:              ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = or i8 %78, 72
  %85 = ptrtoint ptr %type.i84.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %type.i84.i, align 2
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then11.i.i, %if.end.i85.i.if.end16.i.i_crit_edge
  call void @drm_mode_set_name(ptr noundef nonnull %call.i80.i) #8
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.i80.i) #8
  %inc.i86.i = add i32 %num.039.i.i, 1
  br label %cleanup.i89.i

cleanup.i89.i:                                    ; preds = %if.end16.i.i, %do.end.i83.i
  %num.1.i87.i = phi i32 [ %inc.i86.i, %if.end16.i.i ], [ %num.039.i.i, %do.end.i83.i ]
  %inc17.i.i = add nuw i32 %i.037.i.i, 1
  %86 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc, align 8
  %num_modes.i.i = getelementptr inbounds %struct.panel_desc, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %num_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_modes.i.i, align 4
  %cmp.i88.i = icmp ult i32 %inc17.i.i, %89
  br i1 %cmp.i88.i, label %cleanup.i89.i.for.body.i82.i_crit_edge, label %cleanup.i89.i.if.end47.i_crit_edge

cleanup.i89.i.if.end47.i_crit_edge:               ; preds = %cleanup.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

cleanup.i89.i.for.body.i82.i_crit_edge:           ; preds = %cleanup.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i82.i

if.end47.i:                                       ; preds = %cleanup.i89.i.if.end47.i_crit_edge, %if.then45.i.if.end47.i_crit_edge, %if.end37.i.if.end47.i_crit_edge
  %num.2.i = phi i32 [ %num.1.i, %if.end37.i.if.end47.i_crit_edge ], [ 0, %if.then45.i.if.end47.i_crit_edge ], [ %num.1.i87.i, %cleanup.i89.i.if.end47.i_crit_edge ]
  %90 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %desc, align 8
  %bpc.i = getelementptr inbounds %struct.panel_desc, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bpc.i, align 4
  %display_info.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %bpc49.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %94 = ptrtoint ptr %bpc49.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %bpc49.i, align 8
  %95 = load ptr, ptr %desc, align 8
  %size.i = getelementptr inbounds %struct.panel_desc, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size.i, align 4
  %98 = ptrtoint ptr %display_info.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %display_info.i, align 8
  %99 = load ptr, ptr %desc, align 8
  %height.i = getelementptr inbounds %struct.panel_desc, ptr %99, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %height.i, align 4
  %height_mm.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %102 = ptrtoint ptr %height_mm.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %height_mm.i, align 4
  br label %panel_edp_get_non_edid_modes.exit

panel_edp_get_non_edid_modes.exit:                ; preds = %if.end47.i, %if.then20.panel_edp_get_non_edid_modes.exit_crit_edge
  %retval.0.i = phi i32 [ %num.2.i, %if.end47.i ], [ 0, %if.then20.panel_edp_get_non_edid_modes.exit_crit_edge ]
  %add22 = add i32 %retval.0.i, %num.1
  br label %if.end27

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %tobool23.not = icmp eq i32 %num.1, 0
  br i1 %tobool23.not, label %do.end, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %panel, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.31) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.else.if.end27_crit_edge, %panel_edp_get_non_edid_modes.exit
  %num.2 = phi i32 [ %add22, %panel_edp_get_non_edid_modes.exit ], [ %num.1, %if.else.if.end27_crit_edge ], [ 0, %do.end ]
  %orientation = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 14
  %105 = ptrtoint ptr %orientation to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %orientation, align 4
  %call28 = call i32 @drm_connector_set_panel_orientation(ptr noundef %connector, i32 noundef %106) #8
  ret i32 %num.2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_get_timings(ptr nocapture noundef readonly %panel, i32 noundef %num_timings, ptr noundef writeonly %timings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.panel_edp, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %num_timings1 = getelementptr inbounds %struct.panel_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_timings1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_timings1, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %num_timings)
  %tobool.not = icmp ne ptr %timings, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp520 = icmp ne i32 %4, 0
  %or.cond = select i1 %tobool.not, i1 %cmp520, i1 false
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.display_timing, ptr %timings, i32 %i.021
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 8
  %timings7 = getelementptr inbounds %struct.panel_desc, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %timings7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %timings7, align 4
  %arrayidx8 = getelementptr %struct.display_timing, ptr %8, i32 %i.021
  %9 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx8, i32 112)
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.body.if.end9_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %for.body.if.end9_crit_edge, %entry.if.end9_crit_edge
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 8
  %num_timings11 = getelementptr inbounds %struct.panel_desc, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %num_timings11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_timings11, align 4
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_panel_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_get_panel_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_edp_panel(i32 noundef %panel_id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %panel_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %panel_id, label %for.inc.8 [
    i32 112148572, label %entry.cleanup_crit_edge
    i32 112157020, label %cleanup.fold.split
    i32 166004614, label %cleanup.fold.split11
    i32 166004689, label %cleanup.fold.split12
    i32 166004781, label %cleanup.fold.split13
    i32 166005133, label %cleanup.fold.split14
    i32 229511500, label %cleanup.fold.split15
    i32 746718756, label %cleanup.fold.split16
    i32 1292899660, label %cleanup.fold.split17
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.8:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split, %for.inc.8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @edp_panels, %entry.cleanup_crit_edge ], [ null, %for.inc.8 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 2), %cleanup.fold.split11 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 3), %cleanup.fold.split12 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 4), %cleanup.fold.split13 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 5), %cleanup.fold.split14 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 6), %cleanup.fold.split15 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 7), %cleanup.fold.split16 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 8), %cleanup.fold.split17 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @panel_edp_remove(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #8
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #8
  %call4 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %ddc = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %aux = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 4
  %tobool5.not = icmp ne ptr %5, null
  %ddc8 = getelementptr inbounds %struct.drm_dp_aux, ptr %5, i32 0, i32 1
  %cmp.not = icmp eq ptr %3, %ddc8
  %or.cond = select i1 %tobool5.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %edid = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edid, align 8
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %edid, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enable_gpio = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  %supply = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %5) #8
  %call2 = tail call i64 @ktime_get() #8
  %unprepared_time = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %unprepared_time to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call2, ptr %unprepared_time, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %unprepared_time.i = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 5
  %desc.i = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 6
  %supply.i = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 7
  %enable_gpio.i = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 10
  %no_hpd.i = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 2
  %hpd_gpio.i = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %try.027 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 8
  %unprepare.i = getelementptr inbounds %struct.panel_desc, ptr %5, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %unprepare.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unprepare.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.body.panel_edp_wait.exit.i_crit_edge, label %if.end.i.i

for.body.panel_edp_wait.exit.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_wait.exit.i

if.end.i.i:                                       ; preds = %for.body
  %8 = ptrtoint ptr %unprepared_time.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %unprepared_time.i, align 8
  %conv.i.i = zext i32 %7 to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i, 1000000
  %add.i.i = add i64 %9, %mul.i.i.i
  %call1.i.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %call1.i.i)
  %cmp.i.i.i.i = icmp sgt i64 %add.i.i, %call1.i.i
  br i1 %cmp.i.i.i.i, label %if.then3.i.i, label %if.end.i.i.panel_edp_wait.exit.i_crit_edge

if.end.i.i.panel_edp_wait.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %panel_edp_wait.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i64 %add.i.i, %call1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %10 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #8
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %10) #12, !srcloc !282
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %10, i64 %11, i32 0) #12, !srcloc !283
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 18
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %13 = trunc i64 %cond213.i.i.i.i to i32
  %conv6.i.i = add i32 %13, 1
  tail call void @msleep(i32 noundef %conv6.i.i) #8
  br label %panel_edp_wait.exit.i

panel_edp_wait.exit.i:                            ; preds = %if.then3.i.i, %if.end.i.i.panel_edp_wait.exit.i_crit_edge, %for.body.panel_edp_wait.exit.i_crit_edge
  %14 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %supply.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %panel_edp_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.67, i32 noundef %call.i) #11
  br label %panel_edp_prepare_once.exit

if.end.i:                                         ; preds = %panel_edp_wait.exit.i
  %16 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable_gpio.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 1) #8
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc.i, align 8
  %delay4.i = getelementptr inbounds %struct.panel_desc, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %delay4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay4.i, align 4
  %22 = ptrtoint ptr %no_hpd.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %no_hpd.i, align 1, !range !281
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %hpd_absent.i = getelementptr inbounds %struct.panel_desc, ptr %19, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %hpd_absent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hpd_absent.i, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %21, i32 %25) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then5.i, %if.end.i.if.end9.i_crit_edge
  %delay.0.i = phi i32 [ %26, %if.then5.i ], [ %21, %if.end.i.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay.0.i)
  %tobool10.not.i = icmp eq i32 %delay.0.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end12.i_crit_edge, label %if.then11.i

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef %delay.0.i) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end9.i.if.end12.i_crit_edge
  %27 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hpd_gpio.i, align 4
  %tobool13.not.i = icmp eq ptr %28, null
  br i1 %tobool13.not.i, label %if.end12.i.for.end.thread_crit_edge, label %if.then14.i

if.end12.i.for.end.thread_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.then14.i:                                      ; preds = %if.end12.i
  %29 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc.i, align 8
  %hpd_absent17.i = getelementptr inbounds %struct.panel_desc, ptr %30, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %hpd_absent17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hpd_absent17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool18.not.i = icmp eq i32 %32, 0
  %mul.i = mul i32 %32, 1000
  %hpd_wait_us.0.i = select i1 %tobool18.not.i, i32 2000000, i32 %mul.i
  %conv.i = zext i32 %hpd_wait_us.0.i to i64
  %call24.i = tail call i64 @ktime_get() #8
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000
  %add.i120.i = add i64 %mul.i.i, %call24.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 449) #8
  %33 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hpd_gpio.i, align 4
  %call40122.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40122.i)
  %tobool41.not123.i = icmp eq i32 %call40122.i, 0
  br i1 %tobool41.not123.i, label %if.end43.lr.ph.i, label %if.then14.i.for.end.i_crit_edge

if.then14.i.for.end.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end43.lr.ph.i:                                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hpd_wait_us.0.i)
  %tobool44.not.i = icmp eq i32 %hpd_wait_us.0.i, 0
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then54.i.if.end43.i_crit_edge, %if.end43.lr.ph.i
  br i1 %tobool44.not.i, label %if.end43.i.if.then54.i_crit_edge, label %land.lhs.true.i

if.end43.i.if.then54.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i

land.lhs.true.i:                                  ; preds = %if.end43.i
  %call45.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call45.i, i64 %add.i120.i)
  %cmp3.i.i = icmp sgt i64 %call45.i, %add.i120.i
  br i1 %cmp3.i.i, label %if.then49.i, label %land.lhs.true.i.if.then54.i_crit_edge

land.lhs.true.i.if.then54.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.i

if.then49.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hpd_gpio.i, align 4
  %call51.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %36) #8
  br label %for.end.i

if.then54.i:                                      ; preds = %land.lhs.true.i.if.then54.i_crit_edge, %if.end43.i.if.then54.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %37 = ptrtoint ptr %hpd_gpio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hpd_gpio.i, align 4
  %call40.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %38) #8
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.then54.i.if.end43.i_crit_edge, label %if.then54.i.for.end.i_crit_edge

if.then54.i.for.end.i_crit_edge:                  ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then54.i.if.end43.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

for.end.i:                                        ; preds = %if.then54.i.for.end.i_crit_edge, %if.then49.i, %if.then14.i.for.end.i_crit_edge
  %hpd_asserted.0.i = phi i32 [ %call51.i, %if.then49.i ], [ %call40122.i, %if.then14.i.for.end.i_crit_edge ], [ %call40.i, %if.then54.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hpd_asserted.0.i)
  %tobool57.not.i = icmp eq i32 %hpd_asserted.0.i, 0
  %cond58.i = select i1 %tobool57.not.i, i32 -110, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hpd_asserted.0.i)
  %cmp59.i = icmp slt i32 %hpd_asserted.0.i, 0
  %spec.select.i = select i1 %cmp59.i, i32 %hpd_asserted.0.i, i32 %cond58.i
  %39 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %spec.select.i, label %do.end70.i [
    i32 0, label %for.end.i.for.end.thread_crit_edge
    i32 -110, label %for.end.i.error.i_crit_edge
  ]

for.end.i.error.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i

for.end.i.for.end.thread_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

do.end70.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.70, i32 noundef %spec.select.i) #11
  br label %error.i

for.end.thread:                                   ; preds = %for.end.i.for.end.thread_crit_edge, %if.end12.i.for.end.thread_crit_edge
  %call74.i = tail call i64 @ktime_get() #8
  %prepared_time.i = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %prepared_time.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call74.i, ptr %prepared_time.i, align 8
  br label %if.else

error.i:                                          ; preds = %do.end70.i, %for.end.i.error.i_crit_edge
  %41 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %enable_gpio.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %42, i32 noundef 0) #8
  %43 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %supply.i, align 4
  %call77.i = tail call i32 @regulator_disable(ptr noundef %44) #8
  %call78.i = tail call i64 @ktime_get() #8
  %45 = ptrtoint ptr %unprepared_time.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %call78.i, ptr %unprepared_time.i, align 8
  br label %panel_edp_prepare_once.exit

panel_edp_prepare_once.exit:                      ; preds = %error.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %spec.select.i, %error.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %retval.0.i)
  %cmp2.not = icmp eq i32 %retval.0.i, -110
  br i1 %cmp2.not, label %for.inc, label %panel_edp_prepare_once.exit.if.else_crit_edge

panel_edp_prepare_once.exit.if.else_crit_edge:    ; preds = %panel_edp_prepare_once.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.inc:                                          ; preds = %panel_edp_prepare_once.exit
  %inc = add nuw nsw i32 %try.027, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef 5) #11
  br label %if.end10

if.else:                                          ; preds = %panel_edp_prepare_once.exit.if.else_crit_edge, %for.end.thread
  %ret.124 = phi i32 [ 0, %for.end.thread ], [ %retval.0.i, %panel_edp_prepare_once.exit.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try.027)
  %tobool.not = icmp eq i32 %try.027, 0
  br i1 %tobool.not, label %if.else.if.end10_crit_edge, label %do.end8

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %try.027) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.else.if.end10_crit_edge, %do.end
  %ret.123 = phi i32 [ %ret.124, %if.else.if.end10_crit_edge ], [ %ret.124, %do.end8 ], [ -110, %do.end ]
  ret i32 %ret.123
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_platform_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef getelementptr inbounds ([30 x %struct.of_device_id], ptr @platform_of_match, i32 0, i32 1), ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call2 = tail call fastcc i32 @panel_edp_probe(ptr noundef %dev, ptr noundef %3, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_edp_platform_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @panel_edp_remove(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_edp_platform_shutdown(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @drm_panel_disable(ptr noundef %1) #8
  %call3.i = tail call i32 @drm_panel_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268}
!llvm.module.flags = !{!270, !271, !272, !273, !274, !275, !276, !277}
!llvm.ident = !{!278}

!0 = !{ptr @__initcall__kmod_panel_edp__311_1885_panel_edp_init6, !1, !"__initcall__kmod_panel_edp__311_1885_panel_edp_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1885, i32 1}
!2 = !{ptr @__exitcall_panel_edp_exit, !3, !"__exitcall_panel_edp_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1892, i32 1}
!4 = !{ptr @__UNIQUE_ID_author312, !5, !"__UNIQUE_ID_author312", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1894, i32 1}
!6 = !{ptr @__UNIQUE_ID_description313, !7, !"__UNIQUE_ID_description313", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1895, i32 1}
!8 = !{ptr @__UNIQUE_ID_file314, !9, !"__UNIQUE_ID_file314", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1896, i32 1}
!10 = !{ptr @__UNIQUE_ID_license315, !9, !"__UNIQUE_ID_license315", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1857, i32 11}
!13 = !{ptr @panel_edp_dp_aux_ep_driver, !14, !"panel_edp_dp_aux_ep_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1855, i32 32}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 770, i32 54}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 777, i32 42}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 781, i32 52}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 786, i32 4}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @panel_edp_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @panel_edp_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 792, i32 3}
!31 = !{ptr @panel_edp_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @panel_edp_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 796, i32 39}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 807, i32 43}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 828, i32 44}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 832, i32 11}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 838, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @panel_edp_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @panel_edp_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 404, i32 45}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 409, i32 4}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @panel_edp_get_hpd_gpio._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @panel_edp_get_hpd_gpio._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 630, i32 3}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @panel_edp_parse_panel_timing_node._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @panel_edp_parse_panel_timing_node._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 634, i32 3}
!60 = !{ptr @panel_edp_parse_panel_timing_node._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @panel_edp_parse_panel_timing_node._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 662, i32 3}
!64 = !{ptr @panel_edp_parse_panel_timing_node._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @panel_edp_parse_panel_timing_node._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @panel_edp_funcs, !67, !"panel_edp_funcs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 609, i32 37}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 584, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @panel_edp_get_modes._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @panel_edp_get_modes._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 317, i32 4}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @panel_edp_get_non_edid_modes._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @panel_edp_get_non_edid_modes._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 250, i32 4}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @panel_edp_get_timings_modes._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @panel_edp_get_timings_modes._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 280, i32 4}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @panel_edp_get_display_modes._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @panel_edp_get_display_modes._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 688, i32 37}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 690, i32 37}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 696, i32 3}
!94 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @generic_edp_panel_probe._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @generic_edp_panel_probe._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 702, i32 3}
!99 = !{ptr @generic_edp_panel_probe._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @generic_edp_panel_probe._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 716, i32 3}
!103 = !{ptr @generic_edp_panel_probe._entry.46, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @generic_edp_panel_probe._entry_ptr.48, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 738, i32 3}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @generic_edp_panel_probe._entry.49, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @generic_edp_panel_probe._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1764, i32 2}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1765, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1767, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1768, i32 2}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1769, i32 2}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1770, i32 2}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1772, i32 2}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1774, i32 2}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1776, i32 2}
!128 = !{ptr @edp_panels, !129, !"edp_panels", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1763, i32 37}
!130 = !{ptr @auo_b116xak01, !131, !"auo_b116xak01", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 926, i32 32}
!132 = !{ptr @auo_b116xak01_mode, !133, !"auo_b116xak01_mode", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 913, i32 38}
!134 = !{ptr @delay_200_500_e50, !135, !"delay_200_500_e50", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1742, i32 33}
!136 = !{ptr @delay_200_500_p2e80, !137, !"delay_200_500_p2e80", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1730, i32 33}
!138 = !{ptr @boe_nv133fhm_n61, !139, !"boe_nv133fhm_n61", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1167, i32 32}
!140 = !{ptr @boe_nv133fhm_n61_modes, !141, !"boe_nv133fhm_n61_modes", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1153, i32 38}
!142 = !{ptr @boe_nv110wtm_n61, !143, !"boe_nv110wtm_n61", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1136, i32 32}
!144 = !{ptr @boe_nv110wtm_n61_modes, !145, !"boe_nv110wtm_n61_modes", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1109, i32 38}
!146 = !{ptr @innolux_n116bca_ea1, !147, !"innolux_n116bca_ea1", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1236, i32 32}
!148 = !{ptr @innolux_n116bca_ea1_mode, !149, !"innolux_n116bca_ea1_mode", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1223, i32 38}
!150 = !{ptr @kingdisplay_kd116n21_30nv_a010, !151, !"kingdisplay_kd116n21_30nv_a010", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1373, i32 32}
!152 = !{ptr @kingdisplay_kd116n21_30nv_a010_mode, !153, !"kingdisplay_kd116n21_30nv_a010_mode", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1360, i32 38}
!154 = !{ptr @delay_200_500_p2e100, !155, !"delay_200_500_p2e100", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1736, i32 33}
!156 = !{ptr @platform_of_match, !157, !"platform_of_match", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1636, i32 34}
!158 = !{ptr @auo_b101ean01, !159, !"auo_b101ean01", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 903, i32 32}
!160 = !{ptr @auo_b101ean01_timing, !161, !"auo_b101ean01_timing", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 891, i32 36}
!162 = !{ptr @auo_b116xw03, !163, !"auo_b116xw03", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 952, i32 32}
!164 = !{ptr @auo_b116xw03_mode, !165, !"auo_b116xw03_mode", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 939, i32 38}
!166 = !{ptr @auo_b133han05, !167, !"auo_b133han05", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 977, i32 32}
!168 = !{ptr @auo_b133han05_mode, !169, !"auo_b133han05_mode", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 965, i32 38}
!170 = !{ptr @auo_b133htn01, !171, !"auo_b133htn01", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1004, i32 32}
!172 = !{ptr @auo_b133htn01_mode, !173, !"auo_b133htn01_mode", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 992, i32 38}
!174 = !{ptr @auo_b133xtn01, !175, !"auo_b133xtn01", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1031, i32 32}
!176 = !{ptr @auo_b133xtn01_mode, !177, !"auo_b133xtn01_mode", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1019, i32 38}
!178 = !{ptr @auo_b140han06, !179, !"auo_b140han06", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1053, i32 32}
!180 = !{ptr @auo_b140han06_mode, !181, !"auo_b140han06_mode", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1041, i32 38}
!182 = !{ptr @boe_nv101wxmn51, !183, !"boe_nv101wxmn51", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1093, i32 32}
!184 = !{ptr @boe_nv101wxmn51_modes, !185, !"boe_nv101wxmn51_modes", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1068, i32 38}
!186 = !{ptr @boe_nv140fhmn49, !187, !"boe_nv140fhmn49", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1207, i32 32}
!188 = !{ptr @boe_nv140fhmn49_modes, !189, !"boe_nv140fhmn49_modes", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1193, i32 38}
!190 = !{ptr @innolux_n116bge, !191, !"innolux_n116bge", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1274, i32 32}
!192 = !{ptr @innolux_n116bge_timing, !193, !"innolux_n116bge_timing", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1261, i32 36}
!194 = !{ptr @innolux_n125hce_gn1, !195, !"innolux_n125hce_gn1", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1296, i32 32}
!196 = !{ptr @innolux_n125hce_gn1_mode, !197, !"innolux_n125hce_gn1_mode", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1284, i32 38}
!198 = !{ptr @innolux_p120zdg_bf1, !199, !"innolux_p120zdg_bf1", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1319, i32 32}
!200 = !{ptr @innolux_p120zdg_bf1_mode, !201, !"innolux_p120zdg_bf1_mode", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1306, i32 38}
!202 = !{ptr @ivo_m133nwf4_r0, !203, !"ivo_m133nwf4_r0", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1346, i32 32}
!204 = !{ptr @ivo_m133nwf4_r0_mode, !205, !"ivo_m133nwf4_r0_mode", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1333, i32 38}
!206 = !{ptr @lg_lp079qx1_sp0v, !207, !"lg_lp079qx1_sp0v", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1399, i32 32}
!208 = !{ptr @lg_lp079qx1_sp0v_mode, !209, !"lg_lp079qx1_sp0v_mode", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1386, i32 38}
!210 = !{ptr @lg_lp097qx1_spa1, !211, !"lg_lp097qx1_spa1", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1420, i32 32}
!212 = !{ptr @lg_lp097qx1_spa1_mode, !213, !"lg_lp097qx1_spa1_mode", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1408, i32 38}
!214 = !{ptr @lg_lp120up1, !215, !"lg_lp120up1", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1441, i32 32}
!216 = !{ptr @lg_lp120up1_mode, !217, !"lg_lp120up1_mode", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1429, i32 38}
!218 = !{ptr @lg_lp129qe, !219, !"lg_lp129qe", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1463, i32 32}
!220 = !{ptr @lg_lp129qe_mode, !221, !"lg_lp129qe_mode", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1451, i32 38}
!222 = !{ptr @neweast_wjfh116008a, !223, !"neweast_wjfh116008a", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1499, i32 32}
!224 = !{ptr @neweast_wjfh116008a_modes, !225, !"neweast_wjfh116008a_modes", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1473, i32 38}
!226 = !{ptr @samsung_lsn122dl01_c01, !227, !"samsung_lsn122dl01_c01", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1526, i32 32}
!228 = !{ptr @samsung_lsn122dl01_c01_mode, !229, !"samsung_lsn122dl01_c01_mode", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1514, i32 38}
!230 = !{ptr @samsung_ltn140at29_301, !231, !"samsung_ltn140at29_301", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1547, i32 32}
!232 = !{ptr @samsung_ltn140at29_301_mode, !233, !"samsung_ltn140at29_301_mode", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1535, i32 38}
!234 = !{ptr @sharp_ld_d5116z01b, !235, !"sharp_ld_d5116z01b", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1570, i32 32}
!236 = !{ptr @sharp_ld_d5116z01b_mode, !237, !"sharp_ld_d5116z01b_mode", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1557, i32 38}
!238 = !{ptr @sharp_lq123p1jx31, !239, !"sharp_lq123p1jx31", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1593, i32 32}
!240 = !{ptr @sharp_lq123p1jx31_timing, !241, !"sharp_lq123p1jx31_timing", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1580, i32 36}
!242 = !{ptr @starry_kr122ea0sra, !243, !"starry_kr122ea0sra", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1621, i32 32}
!244 = !{ptr @starry_kr122ea0sra_mode, !245, !"starry_kr122ea0sra_mode", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1608, i32 38}
!246 = !{ptr @panel_edp_pm_ops, !247, !"panel_edp_pm_ops", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1817, i32 32}
!248 = !{ptr @.str.62, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 492, i32 3}
!250 = !{ptr @.str.63, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @panel_edp_resume._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @panel_edp_resume._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.65, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 494, i32 3}
!255 = !{ptr @panel_edp_resume._entry.64, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @panel_edp_resume._entry_ptr.66, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.67, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 429, i32 3}
!259 = !{ptr @.str.68, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @panel_edp_prepare_once._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @panel_edp_prepare_once._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.70, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 455, i32 5}
!264 = !{ptr @panel_edp_prepare_once._entry.69, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @panel_edp_prepare_once._entry_ptr.71, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.72, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1825, i32 11}
!268 = !{ptr @panel_edp_platform_driver, !269, !"panel_edp_platform_driver", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/panel/panel-edp.c", i32 1823, i32 31}
!270 = !{i32 1, !"wchar_size", i32 2}
!271 = !{i32 1, !"min_enum_size", i32 4}
!272 = !{i32 8, !"branch-target-enforcement", i32 0}
!273 = !{i32 8, !"sign-return-address", i32 0}
!274 = !{i32 8, !"sign-return-address-all", i32 0}
!275 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!276 = !{i32 7, !"uwtable", i32 1}
!277 = !{i32 7, !"frame-pointer", i32 2}
!278 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!279 = !{!"branch_weights", i32 2000, i32 1}
!280 = !{!"branch_weights", i32 1, i32 2000}
!281 = !{i8 0, i8 2}
!282 = !{i64 519436, i64 519463}
!283 = !{i64 520131, i64 520158, i64 520191, i64 520212, i64 520239, i64 520265}
