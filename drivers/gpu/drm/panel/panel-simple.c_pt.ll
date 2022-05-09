; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-simple.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-simple.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panel_desc_dsi = type { %struct.panel_desc, i32, i32, i32 }
%struct.panel_desc = type { ptr, i32, ptr, i32, i32, %struct.anon.84, %struct.anon.85, i32, i32, i32 }
%struct.anon.84 = type { i32, i32 }
%struct.anon.85 = type { i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.panel_simple = type { %struct.drm_panel, i8, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.drm_display_mode, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_panel_simple__307_4383_panel_simple_init6 = internal global ptr @panel_simple_init, section ".initcall6.init", align 4
@panel_simple_dsi_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_simple_pm_ops, ptr null, ptr null }, ptr @panel_simple_dsi_probe, ptr @panel_simple_dsi_remove, ptr @panel_simple_dsi_shutdown }, [40 x i8] zeroinitializer }, align 32
@panel_simple_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @panel_simple_platform_probe, ptr @panel_simple_platform_remove, ptr @panel_simple_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.59, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @platform_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_simple_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_panel_simple_exit = internal global ptr @panel_simple_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [56 x i8] c"panel_simple.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [54 x i8] c"panel_simple.description=DRM Driver for Simple Panels\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [53 x i8] c"panel_simple.file=drivers/gpu/drm/panel/panel-simple\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [47 x i8] c"panel_simple.license=GPL and additional rights\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"panel-simple-dsi\00", [47 x i8] zeroinitializer }, align 32
@dsi_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b080uan01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b080uan01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,tv080wum-nl0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_tv080wum_nl0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,ld070wx3-sl01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_ld070wx3_sl01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lh500wx1-sd03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lh500wx1_sd03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panasonic,vvx10f004b00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @panasonic_vvx10f004b00 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,acx467akm-7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_acx467akm_7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"osddisplays,osd101t2045-53ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @osd101t2045_53ts }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@panel_simple_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_simple_suspend, ptr @panel_simple_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@auo_b080uan01 = internal constant { %struct.panel_desc_dsi, [60 x i8] } { %struct.panel_desc_dsi { %struct.panel_desc { ptr @auo_b080uan01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 108, i32 272 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 16 }, i32 1025, i32 0, i32 4 }, [60 x i8] zeroinitializer }, align 32
@boe_tv080wum_nl0 = internal constant { %struct.panel_desc_dsi, [60 x i8] } { %struct.panel_desc_dsi { %struct.panel_desc { ptr @boe_tv080wum_nl0_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 107, i32 172 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 16 }, i32 7, i32 0, i32 4 }, [60 x i8] zeroinitializer }, align 32
@lg_ld070wx3_sl01 = internal constant { %struct.panel_desc_dsi, [60 x i8] } { %struct.panel_desc_dsi { %struct.panel_desc { ptr @lg_ld070wx3_sl01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 94, i32 151 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 16 }, i32 1025, i32 0, i32 4 }, [60 x i8] zeroinitializer }, align 32
@lg_lh500wx1_sd03 = internal constant { %struct.panel_desc_dsi, [60 x i8] } { %struct.panel_desc_dsi { %struct.panel_desc { ptr @lg_lh500wx1_sd03_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 62, i32 110 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 16 }, i32 1, i32 0, i32 4 }, [60 x i8] zeroinitializer }, align 32
@panasonic_vvx10f004b00 = internal constant { %struct.panel_desc_dsi, [60 x i8] } { %struct.panel_desc_dsi { %struct.panel_desc { ptr @panasonic_vvx10f004b00_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 217, i32 136 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 16 }, i32 1029, i32 0, i32 4 }, [60 x i8] zeroinitializer }, align 32
@lg_acx467akm_7 = internal constant { %struct.panel_desc_dsi, [60 x i8] } { %struct.panel_desc_dsi { %struct.panel_desc { ptr @lg_acx467akm_7_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 62, i32 110 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 16 }, i32 0, i32 0, i32 4 }, [60 x i8] zeroinitializer }, align 32
@osd101t2045_53ts = internal constant { %struct.panel_desc_dsi, [60 x i8] } { %struct.panel_desc_dsi { %struct.panel_desc { ptr @osd101t2045_53ts_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 217, i32 136 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 16 }, i32 519, i32 0, i32 4 }, [60 x i8] zeroinitializer }, align 32
@auo_b080uan01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 154500, i16 1200, i16 1262, i16 1266, i16 1328, i16 0, i16 1920, i16 1929, i16 1931, i16 1939, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@boe_tv080wum_nl0_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 160000, i16 1200, i16 1320, i16 1340, i16 1361, i16 0, i16 1920, i16 1941, i16 1944, i16 1962, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg_ld070wx3_sl01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 71000, i16 800, i16 832, i16 833, i16 890, i16 0, i16 1280, i16 1308, i16 1309, i16 1323, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg_lh500wx1_sd03_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 67000, i16 720, i16 732, i16 736, i16 848, i16 0, i16 1280, i16 1288, i16 1292, i16 1304, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@panasonic_vvx10f004b00_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 157200, i16 1920, i16 2074, i16 2090, i16 2122, i16 0, i16 1200, i16 1217, i16 1219, i16 1235, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg_acx467akm_7_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 150000, i16 1080, i16 1082, i16 1084, i16 1086, i16 0, i16 1920, i16 1922, i16 1924, i16 1926, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@osd101t2045_53ts_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 154500, i16 1920, i16 2032, i16 2048, i16 2080, i16 0, i16 1200, i16 1216, i16 1218, i16 1234, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@panel_simple_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panel_simple_resume\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/panel/panel-simple.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panel_simple_resume._entry_ptr = internal global ptr @panel_simple_resume._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request GPIO: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"panel_simple_probe\00", [45 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr = internal global ptr @panel_simple_probe._entry, section ".printk_index", align 4
@panel_simple_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%pOF: failed to get orientation %d\0A\00", [60 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.12 = internal global ptr @panel_simple_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddc-i2c-bus\00", [20 x i8] zeroinitializer }, align 32
@panel_dpi = internal global { %struct.panel_desc, [40 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel-timing\00", [19 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.3, i32 601, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Specify missing connector_type\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.18 = internal global ptr @panel_simple_probe._entry.15, section ".printk_index", align 4
@panel_simple_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.3, i32 620, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"eDP panels moved to panel-edp\0A\00", [33 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.21 = internal global ptr @panel_simple_probe._entry.19, section ".printk_index", align 4
@panel_simple_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.3, i32 625, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Expected bpc in {6,8} but got: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.24 = internal global ptr @panel_simple_probe._entry.22, section ".printk_index", align 4
@panel_simple_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.3, i32 637, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected bus_flags(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.27 = internal global ptr @panel_simple_probe._entry.25, section ".printk_index", align 4
@panel_simple_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.9, ptr @.str.3, i32 639, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Specify missing bus_flags\0A\00", [37 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.30 = internal global ptr @panel_simple_probe._entry.28, section ".printk_index", align 4
@panel_simple_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.3, i32 641, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Specify missing bus_format\0A\00", [36 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.33 = internal global ptr @panel_simple_probe._entry.31, section ".printk_index", align 4
@panel_simple_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.3, i32 643, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.35 = internal global ptr @panel_simple_probe._entry.34, section ".printk_index", align 4
@panel_simple_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.9, ptr @.str.3, i32 646, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Specify a valid connector_type: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@panel_simple_probe._entry_ptr.38 = internal global ptr @panel_simple_probe._entry.36, section ".printk_index", align 4
@panel_simple_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @panel_simple_prepare, ptr @panel_simple_enable, ptr @panel_simple_disable, ptr @panel_simple_unprepare, ptr @panel_simple_get_modes, ptr @panel_simple_get_timings }, [40 x i8] zeroinitializer }, align 32
@panel_dpi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%pOF: no panel-timing node found for \22panel-dpi\22 binding\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"panel_dpi_probe\00", [16 x i8] zeroinitializer }, align 32
@panel_dpi_probe._entry_ptr = internal global ptr @panel_dpi_probe._entry, section ".printk_index", align 4
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"width-mm\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"height-mm\00", [22 x i8] zeroinitializer }, align 32
@panel_simple_parse_panel_timing_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 506, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Reject override mode: panel has a fixed mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"panel_simple_parse_panel_timing_node\00", [59 x i8] zeroinitializer }, align 32
@panel_simple_parse_panel_timing_node._entry_ptr = internal global ptr @panel_simple_parse_panel_timing_node._entry, section ".printk_index", align 4
@panel_simple_parse_panel_timing_node._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Reject override mode: no timings specified\0A\00", [52 x i8] zeroinitializer }, align 32
@panel_simple_parse_panel_timing_node._entry_ptr.47 = internal global ptr @panel_simple_parse_panel_timing_node._entry.45, section ".printk_index", align 4
@panel_simple_parse_panel_timing_node._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 538, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Reject override mode: No display_timing found\0A\00", [49 x i8] zeroinitializer }, align 32
@panel_simple_parse_panel_timing_node._entry_ptr.50 = internal global ptr @panel_simple_parse_panel_timing_node._entry.48, section ".printk_index", align 4
@panel_simple_get_non_edid_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add override mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"panel_simple_get_non_edid_modes\00", [32 x i8] zeroinitializer }, align 32
@panel_simple_get_non_edid_modes._entry_ptr = internal global ptr @panel_simple_get_non_edid_modes._entry, section ".printk_index", align 4
@panel_simple_get_timings_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add mode %ux%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"panel_simple_get_timings_modes\00", [33 x i8] zeroinitializer }, align 32
@panel_simple_get_timings_modes._entry_ptr = internal global ptr @panel_simple_get_timings_modes._entry, section ".printk_index", align 4
@panel_simple_get_display_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"panel_simple_get_display_modes\00", [33 x i8] zeroinitializer }, align 32
@panel_simple_get_display_modes._entry_ptr = internal global ptr @panel_simple_get_display_modes._entry, section ".printk_index", align 4
@panel_simple_dsi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 4341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panel_simple_dsi_remove\00", [40 x i8] zeroinitializer }, align 32
@panel_simple_dsi_remove._entry_ptr = internal global ptr @panel_simple_dsi_remove._entry, section ".printk_index", align 4
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel-simple\00", [19 x i8] zeroinitializer }, align 32
@platform_of_match = internal constant { [123 x %struct.of_device_id], [6036 x i8] } { [123 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ampire,am-1280800n3tzqw-t00h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ampire_am_1280800n3tzqw_t00h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ampire,am-480272h3tmqw-t01h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ampire_am_480272h3tmqw_t01h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ampire,am800480r3tmqwa1h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ampire_am800480r3tmqwa1h }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,rtsm-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_rtsm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"armadeus,st0700-adapt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armadeus_st0700_adapt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b101aw03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b101aw03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b101xtn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b101xtn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g070vvn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g070vvn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g101evn010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g101evn010 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g104sn02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g104sn02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g121ean01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g121ean01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g133han01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g133han01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g156xtn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g156xtn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g185han01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g185han01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,g190ean01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_g190ean01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,p320hvn03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_p320hvn03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,t215hvn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_t215hvn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"avic,tm070ddh03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @avic_tm070ddh03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bananapi,s070wv20-ct16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bananapi_s070wv20_ct16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,hv070wsa-100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_hv070wsa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdtech,s043wq26h-ct7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdtech_s043wq26h_ct7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdtech,s070pws19hp-fc21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdtech_s070pws19hp_fc21 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdtech,s070swv29hg-dc44\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdtech_s070swv29hg_dc44 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdtech,s070wv95-ct16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdtech_s070wv95_ct16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chefree,ch101olhlwh-002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chefree_ch101olhlwh_002 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chunghwa,claa070wp03xg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chunghwa_claa070wp03xg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chunghwa,claa101wa01a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chunghwa_claa101wa01a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chunghwa,claa101wb01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chunghwa_claa101wb01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dataimage,scf0700c48ggu18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dataimage_scf0700c48ggu18 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlc,dlc0700yzg-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dlc_dlc0700yzg_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlc,dlc1010gig\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dlc_dlc1010gig }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,et035012dm6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_et035012dm6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0350g0dh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0350g0dh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm043080dh6gp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm043080dh6gp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0430g0dh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0430g0dh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,et057090dhu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_et057090dhu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,et070080dh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0700g0dh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0700g0dh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0700g0dh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0700g0bdh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0700g0bdh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etm0700g0edh6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etm0700g0bdh6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,etmv570g2dhu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_etmv570g2dhu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eink,vb3300-kca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @eink_vb3300_kca }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"evervision,vgg804821\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @evervision_vgg804821 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"foxlink,fl500wvr00-a0t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @foxlink_fl500wvr00_a0t }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"frida,frd350h54004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @frida_frd350h54004 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"friendlyarm,hd702e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @friendlyarm_hd702e }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"giantplus,gpg482739qs5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @giantplus_gpg482739qs5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"giantplus,gpm940b0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @giantplus_gpm940b0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hannstar,hsd070pww1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hannstar_hsd070pww1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hannstar,hsd100pxn1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hannstar_hsd100pxn1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hit,tx23d38vm0caa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hitachi_tx23d38vm0caa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,at043tn24\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_at043tn24 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,at070tn92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_at070tn92 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g070y2-l01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g070y2_l01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g070y2-t02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g070y2_t02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g101ice-l01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g101ice_l01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g121i1-l01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g121i1_l01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,g121x1-l03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_g121x1_l03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,n156bge-l21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_n156bge_l21 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,zj070na-01p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_zj070na_01p }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"koe,tx14d24vm1bpa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @koe_tx14d24vm1bpa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"koe,tx26d202vm0bwa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @koe_tx26d202vm0bwa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"koe,tx31d200vm0baa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @koe_tx31d200vm0baa }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kyo,tcg121xglp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kyo_tcg121xglp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lemaker,bl035-rgb-002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lemaker_bl035_rgb_002 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lb070wv8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lb070wv8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logicpd,type28\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logicpd_type_28 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lt161010-2nhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lt161010_2nh }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lt161010-2nhr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lt161010_2nh }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lt170410-2whc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lt170410_2whc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lttd800480070-l2rt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lttd800480070_l2rt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"logictechno,lttd800480070-l6wh-rt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @logictechno_lttd800480070_l6wh_rt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mitsubishi,aa070mc01-ca1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mitsubishi_aa070mc01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"multi-inno,mi1010ait-1cp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @multi_inno_mi1010ait_1cp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nec,nl12880bc20-05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nec_nl12880bc20_05 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nec,nl4827hc19-05b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nec_nl4827hc19_05b }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"netron-dy,e231732\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @netron_dy_e231732 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"newhaven,nhd-4.3-480272ef-atxl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @newhaven_nhd_43_480272ef_atxl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nlt,nl192108ac18-02d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nlt_nl192108ac18_02d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvd,9128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nvd_9128 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"okaya,rs800480t-7x0gp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @okaya_rs800480t_7x0gp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"olimex,lcd-olinuxino-43-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @olimex_lcd_olinuxino_43ts }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ontat,yx700wv03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ontat_yx700wv03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ortustech,com37h3m05dtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ortustech_com37h3m }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ortustech,com37h3m99dtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ortustech_com37h3m }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ortustech,com43h4m85ulc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ortustech_com43h4m85ulc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"osddisplays,osd070t1718-19ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @osddisplays_osd070t1718_19ts }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pda,91-00156-a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pda_91_00156_a0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"powertip,ph800480t013-idf02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @powertip_ph800480t013_idf02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qiaodian,qd43003c0-40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qd43003c0_40 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qishenglong,gopher2b-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qishenglong_gopher2b_lcd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rocktech,rk070er9427\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rocktech_rk070er9427 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rocktech,rk101ii01d-ct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rocktech_rk101ii01d_ct }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,ltn101nt05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @samsung_ltn101nt05 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"satoz,sat050at40h12r2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @satoz_sat050at40h12r2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq035q7db03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_lq035q7db03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq070y3dg3b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_lq070y3dg3b }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq101k1ly04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_lq101k1ly04 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,ls020b1dd01d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_ls020b1dd01d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"shelly,sca07010-bfn-lnn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @shelly_sca07010_bfn_lnn }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"starry,kr070pe2t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @starry_kr070pe2t }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"team-source-display,tst043015cmhx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tsd_tst043015cmhx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tfc,s9700rtwv43tr-01b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tfc_s9700rtwv43tr_01b }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tianma,tm070jdhg30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tianma_tm070jdhg30 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tianma,tm070jvhg33\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tianma_tm070jvhg33 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tianma,tm070rvhg71\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tianma_tm070rvhg71 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,nspire-cx-lcd-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_nspire_cx_lcd_panel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,nspire-classic-lcd-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_nspire_classic_lcd_panel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,lt089ac29000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @toshiba_lt089ac29000 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tpk,f07a-0102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tpk_f07a_0102 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tpk,f10a-0102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tpk_f10a_0102 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_parallel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-1t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_parallel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-7t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_parallel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-11t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_lvds }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-19t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_lvds }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"urt,umsh-8596md-20t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @urt_umsh_8596md_parallel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vivax,tpc9150-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vivax_tpc9150_panel }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vxt,vl050-8048nt-c01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vl050_8048nt_c01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winstar,wf35ltiacd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @winstar_wf35ltiacd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"yes-optoelectronics,ytc700tlag-05-201c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @yes_optoelectronics_ytc700tlag_05_201c }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panel-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @panel_dpi }, %struct.of_device_id zeroinitializer], [6036 x i8] zeroinitializer }, align 32
@ampire_am_1280800n3tzqw_t00h = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @ampire_am_1280800n3tzqw_t00h_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 217, i32 136 }, %struct.anon.85 zeroinitializer, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@ampire_am_480272h3tmqw_t01h = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @ampire_am_480272h3tmqw_t01h_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 105, i32 67 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ampire_am800480r3tmqwa1h = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @ampire_am800480r3tmqwa1h_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4105, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@arm_rtsm = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @arm_rtsm_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 400, i32 300 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@armadeus_st0700_adapt = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @santek_st0700i5y_rbslw_f_timing, i32 1, i32 6, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 zeroinitializer, i32 4105, i32 6, i32 0 }, [40 x i8] zeroinitializer }, align 32
@auo_b101aw03 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @auo_b101aw03_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 223, i32 125 }, %struct.anon.85 zeroinitializer, i32 4112, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_b101xtn01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @auo_b101xtn01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 223, i32 125 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@auo_g070vvn01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @auo_g070vvn01_timings, i32 1, i32 8, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 { i32 200, i32 50, i32 50, i32 1000 }, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@auo_g101evn010 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @auo_g101evn010_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 216, i32 135 }, %struct.anon.85 zeroinitializer, i32 4112, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_g104sn02 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @auo_g104sn02_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 211, i32 158 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_g121ean01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @auo_g121ean01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 261, i32 163 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_g133han01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @auo_g133han01_timings, i32 1, i32 8, %struct.anon.84 { i32 293, i32 165 }, %struct.anon.85 { i32 200, i32 50, i32 50, i32 1000 }, i32 4114, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_g156xtn01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @auo_g156xtn01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 344, i32 194 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_g185han01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @auo_g185han01_timings, i32 1, i32 8, %struct.anon.84 { i32 409, i32 230 }, %struct.anon.85 { i32 50, i32 200, i32 110, i32 1000 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_g190ean01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @auo_g190ean01_timings, i32 1, i32 8, %struct.anon.84 { i32 376, i32 301 }, %struct.anon.85 { i32 50, i32 200, i32 110, i32 1000 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_p320hvn03 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @auo_p320hvn03_timings, i32 1, i32 8, %struct.anon.84 { i32 698, i32 393 }, %struct.anon.85 { i32 1, i32 450, i32 0, i32 500 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@auo_t215hvn01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @auo_t215hvn01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 430, i32 270 }, %struct.anon.85 { i32 0, i32 0, i32 5, i32 1000 }, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@avic_tm070ddh03 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @avic_tm070ddh03_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 154, i32 90 }, %struct.anon.85 { i32 20, i32 200, i32 200, i32 0 }, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@bananapi_s070wv20_ct16 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @bananapi_s070wv20_ct16_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@boe_hv070wsa = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @boe_hv070wsa_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 154, i32 90 }, %struct.anon.85 zeroinitializer, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@cdtech_s043wq26h_ct7 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @cdtech_s043wq26h_ct7_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 95, i32 54 }, %struct.anon.85 zeroinitializer, i32 0, i32 4, i32 0 }, [40 x i8] zeroinitializer }, align 32
@cdtech_s070pws19hp_fc21 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @cdtech_s070pws19hp_fc21_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 zeroinitializer, i32 4105, i32 6, i32 17 }, [40 x i8] zeroinitializer }, align 32
@cdtech_s070swv29hg_dc44 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @cdtech_s070swv29hg_dc44_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 zeroinitializer, i32 4105, i32 6, i32 17 }, [40 x i8] zeroinitializer }, align 32
@cdtech_s070wv95_ct16 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @cdtech_s070wv95_ct16_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 154, i32 85 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@chefree_ch101olhlwh_002 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @chefree_ch101olhlwh_002_timing, i32 1, i32 8, %struct.anon.84 { i32 217, i32 135 }, %struct.anon.85 { i32 0, i32 200, i32 200, i32 0 }, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@chunghwa_claa070wp03xg = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @chunghwa_claa070wp03xg_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 94, i32 150 }, %struct.anon.85 zeroinitializer, i32 4112, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@chunghwa_claa101wa01a = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @chunghwa_claa101wa01a_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 220, i32 120 }, %struct.anon.85 zeroinitializer, i32 4112, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@chunghwa_claa101wb01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @chunghwa_claa101wb01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 223, i32 125 }, %struct.anon.85 zeroinitializer, i32 4112, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@dataimage_scf0700c48ggu18 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @dataimage_scf0700c48ggu18_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 0 }, [40 x i8] zeroinitializer }, align 32
@dlc_dlc0700yzg_1 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @dlc_dlc0700yzg_1_timing, i32 1, i32 6, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 { i32 30, i32 200, i32 200, i32 0 }, i32 4112, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@dlc_dlc1010gig = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @dlc_dlc1010gig_timing, i32 1, i32 8, %struct.anon.84 { i32 216, i32 135 }, %struct.anon.85 { i32 60, i32 150, i32 100, i32 60 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@edt_et035012dm6 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @edt_et035012dm6_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 70, i32 52 }, %struct.anon.85 zeroinitializer, i32 4106, i32 9, i32 0 }, [40 x i8] zeroinitializer }, align 32
@edt_etm0350g0dh6 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @edt_etm0350g0dh6_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 70, i32 53 }, %struct.anon.85 zeroinitializer, i32 4106, i32 10, i32 17 }, [40 x i8] zeroinitializer }, align 32
@edt_etm043080dh6gp = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @edt_etm043080dh6gp_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 100, i32 65 }, %struct.anon.85 zeroinitializer, i32 4105, i32 0, i32 17 }, [40 x i8] zeroinitializer }, align 32
@edt_etm0430g0dh6 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @edt_etm0430g0dh6_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 95, i32 54 }, %struct.anon.85 zeroinitializer, i32 4105, i32 10, i32 17 }, [40 x i8] zeroinitializer }, align 32
@edt_et057090dhu = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @edt_et057090dhu_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 115, i32 86 }, %struct.anon.85 zeroinitializer, i32 4105, i32 10, i32 17 }, [40 x i8] zeroinitializer }, align 32
@edt_etm0700g0dh6 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @edt_etm0700g0dh6_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4105, i32 10, i32 17 }, [40 x i8] zeroinitializer }, align 32
@edt_etm0700g0bdh6 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @edt_etm0700g0dh6_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4105, i32 6, i32 17 }, [40 x i8] zeroinitializer }, align 32
@edt_etmv570g2dhu = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @edt_etmv570g2dhu_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 115, i32 86 }, %struct.anon.85 zeroinitializer, i32 4106, i32 10, i32 17 }, [40 x i8] zeroinitializer }, align 32
@eink_vb3300_kca = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @eink_vb3300_kca_timing, i32 1, i32 6, %struct.anon.84 { i32 157, i32 209 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 17 }, [40 x i8] zeroinitializer }, align 32
@evervision_vgg804821 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @evervision_vgg804821_timing, i32 1, i32 8, %struct.anon.84 { i32 108, i32 64 }, %struct.anon.85 zeroinitializer, i32 4106, i32 10, i32 0 }, [40 x i8] zeroinitializer }, align 32
@foxlink_fl500wvr00_a0t = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @foxlink_fl500wvr00_a0t_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 108, i32 65 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@frida_frd350h54004 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @frida_frd350h54004_modes, i32 2, ptr null, i32 0, i32 8, %struct.anon.84 { i32 77, i32 64 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 17 }, [40 x i8] zeroinitializer }, align 32
@friendlyarm_hd702e = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @friendlyarm_hd702e_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 94, i32 151 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@giantplus_gpg482739qs5 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @giantplus_gpg482739qs5_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 95, i32 54 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@giantplus_gpm940b0 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @giantplus_gpm940b0_timing, i32 1, i32 8, %struct.anon.84 { i32 60, i32 45 }, %struct.anon.85 zeroinitializer, i32 4124, i32 10, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hannstar_hsd070pww1 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @hannstar_hsd070pww1_timing, i32 1, i32 6, %struct.anon.84 { i32 151, i32 94 }, %struct.anon.85 zeroinitializer, i32 4112, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@hannstar_hsd100pxn1 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @hannstar_hsd100pxn1_timing, i32 1, i32 6, %struct.anon.84 { i32 203, i32 152 }, %struct.anon.85 zeroinitializer, i32 4112, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@hitachi_tx23d38vm0caa = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @hitachi_tx23d38vm0caa_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 195, i32 117 }, %struct.anon.85 { i32 0, i32 160, i32 160, i32 0 }, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@innolux_at043tn24 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @innolux_at043tn24_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 95, i32 54 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 0 }, [40 x i8] zeroinitializer }, align 32
@innolux_at070tn92 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @innolux_at070tn92_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@innolux_g070y2_l01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @innolux_g070y2_l01_timing, i32 1, i32 8, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 { i32 10, i32 100, i32 100, i32 800 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@innolux_g070y2_t02 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @innolux_g070y2_t02_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 152, i32 92 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 17 }, [40 x i8] zeroinitializer }, align 32
@innolux_g101ice_l01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @innolux_g101ice_l01_timing, i32 1, i32 8, %struct.anon.84 { i32 217, i32 135 }, %struct.anon.85 { i32 0, i32 200, i32 200, i32 0 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@innolux_g121i1_l01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @innolux_g121i1_l01_timing, i32 1, i32 6, %struct.anon.84 { i32 261, i32 163 }, %struct.anon.85 { i32 0, i32 200, i32 20, i32 0 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@innolux_g121x1_l03 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @innolux_g121x1_l03_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 246, i32 185 }, %struct.anon.85 { i32 0, i32 200, i32 400, i32 200 }, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@innolux_n156bge_l21 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @innolux_n156bge_l21_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 344, i32 193 }, %struct.anon.85 zeroinitializer, i32 4112, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@innolux_zj070na_01p = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @innolux_zj070na_01p_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 154, i32 90 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@koe_tx14d24vm1bpa = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @koe_tx14d24vm1bpa_timing, i32 1, i32 6, %struct.anon.84 { i32 115, i32 86 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@koe_tx26d202vm0bwa = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @koe_tx26d202vm0bwa_timing, i32 1, i32 8, %struct.anon.84 { i32 217, i32 136 }, %struct.anon.85 { i32 1000, i32 1000, i32 1000, i32 1000 }, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@koe_tx31d200vm0baa = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @koe_tx31d200vm0baa_timing, i32 1, i32 6, %struct.anon.84 { i32 292, i32 109 }, %struct.anon.85 zeroinitializer, i32 4112, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@kyo_tcg121xglp = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @kyo_tcg121xglp_timing, i32 1, i32 8, %struct.anon.84 { i32 246, i32 184 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@lemaker_bl035_rgb_002 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @lemaker_bl035_rgb_002_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 70, i32 52 }, %struct.anon.85 zeroinitializer, i32 4106, i32 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@lg_lb070wv8 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @lg_lb070wv8_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 151, i32 91 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@logicpd_type_28 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @logicpd_type_28_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 105, i32 67 }, %struct.anon.85 { i32 200, i32 200, i32 200, i32 200 }, i32 4106, i32 134, i32 17 }, [40 x i8] zeroinitializer }, align 32
@logictechno_lt161010_2nh = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @logictechno_lt161010_2nh_timing, i32 1, i32 0, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 zeroinitializer, i32 4105, i32 70, i32 17 }, [40 x i8] zeroinitializer }, align 32
@logictechno_lt170410_2whc = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @logictechno_lt170410_2whc_timing, i32 1, i32 0, %struct.anon.84 { i32 217, i32 136 }, %struct.anon.85 zeroinitializer, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@logictechno_lttd800480070_l2rt = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @logictechno_lttd800480070_l2rt_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 { i32 45, i32 100, i32 100, i32 45 }, i32 4106, i32 4, i32 17 }, [40 x i8] zeroinitializer }, align 32
@logictechno_lttd800480070_l6wh_rt = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @logictechno_lttd800480070_l6wh_rt_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 { i32 45, i32 100, i32 100, i32 45 }, i32 4106, i32 4, i32 17 }, [40 x i8] zeroinitializer }, align 32
@mitsubishi_aa070mc01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @mitsubishi_aa070mc01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 { i32 0, i32 200, i32 400, i32 200 }, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@multi_inno_mi1010ait_1cp = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @multi_inno_mi1010ait_1cp_timing, i32 1, i32 8, %struct.anon.84 { i32 217, i32 136 }, %struct.anon.85 { i32 0, i32 50, i32 50, i32 0 }, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@nec_nl12880bc20_05 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @nec_nl12880bc20_05_timing, i32 1, i32 8, %struct.anon.84 { i32 261, i32 163 }, %struct.anon.85 { i32 0, i32 50, i32 50, i32 0 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@nec_nl4827hc19_05b = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @nec_nl4827hc19_05b_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 95, i32 54 }, %struct.anon.85 zeroinitializer, i32 4106, i32 4, i32 0 }, [40 x i8] zeroinitializer }, align 32
@netron_dy_e231732 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @netron_dy_e231732_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 154, i32 87 }, %struct.anon.85 zeroinitializer, i32 4105, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@newhaven_nhd_43_480272ef_atxl = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @newhaven_nhd_43_480272ef_atxl_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 95, i32 54 }, %struct.anon.85 zeroinitializer, i32 4106, i32 70, i32 17 }, [40 x i8] zeroinitializer }, align 32
@nlt_nl192108ac18_02d = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @nlt_nl192108ac18_02d_timing, i32 1, i32 8, %struct.anon.84 { i32 344, i32 194 }, %struct.anon.85 { i32 0, i32 0, i32 0, i32 500 }, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@nvd_9128 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @nvd_9128_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 156, i32 88 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@okaya_rs800480t_7x0gp = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @okaya_rs800480t_7x0gp_timing, i32 1, i32 6, %struct.anon.84 { i32 154, i32 87 }, %struct.anon.85 { i32 41, i32 50, i32 50, i32 41 }, i32 4105, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@olimex_lcd_olinuxino_43ts = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @olimex_lcd_olinuxino_43ts_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 95, i32 54 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ontat_yx700wv03 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @ontat_yx700wv03_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 154, i32 83 }, %struct.anon.85 zeroinitializer, i32 4105, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ortustech_com37h3m = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @ortustech_com37h3m_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 56, i32 75 }, %struct.anon.85 zeroinitializer, i32 4106, i32 70, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ortustech_com43h4m85ulc = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @ortustech_com43h4m85ulc_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 56, i32 93 }, %struct.anon.85 zeroinitializer, i32 4105, i32 6, i32 17 }, [40 x i8] zeroinitializer }, align 32
@osddisplays_osd070t1718_19ts = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @osddisplays_osd070t1718_19ts_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4106, i32 70, i32 17 }, [40 x i8] zeroinitializer }, align 32
@pda_91_00156_a0 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @pda_91_00156_a0_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@powertip_ph800480t013_idf02 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @powertip_ph800480t013_idf02_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4106, i32 70, i32 17 }, [40 x i8] zeroinitializer }, align 32
@qd43003c0_40 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @qd43003c0_40_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 95, i32 53 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@qishenglong_gopher2b_lcd = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @qishenglong_gopher2b_lcd_modes, i32 2, ptr null, i32 0, i32 8, %struct.anon.84 { i32 95, i32 54 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 17 }, [40 x i8] zeroinitializer }, align 32
@rocktech_rk070er9427 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @rocktech_rk070er9427_timing, i32 1, i32 6, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 { i32 41, i32 50, i32 50, i32 41 }, i32 4105, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@rocktech_rk101ii01d_ct = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @rocktech_rk101ii01d_ct_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 217, i32 136 }, %struct.anon.85 { i32 50, i32 0, i32 50, i32 0 }, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@samsung_ltn101nt05 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @samsung_ltn101nt05_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 223, i32 125 }, %struct.anon.85 zeroinitializer, i32 4112, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@satoz_sat050at40h12r2 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @satoz_sat050at40h12r2_timing, i32 1, i32 8, %struct.anon.84 { i32 108, i32 65 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@sharp_lq035q7db03 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @sharp_lq035q7db03_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 54, i32 72 }, %struct.anon.85 zeroinitializer, i32 4105, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sharp_lq070y3dg3b = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @sharp_lq070y3dg3b_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4106, i32 70, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sharp_lq101k1ly04 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @sharp_lq101k1ly04_timing, i32 1, i32 8, %struct.anon.84 { i32 217, i32 136 }, %struct.anon.85 zeroinitializer, i32 4114, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@sharp_ls020b1dd01d = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @sharp_ls020b1dd01d_modes, i32 2, ptr null, i32 0, i32 6, %struct.anon.84 { i32 42, i32 28 }, %struct.anon.85 zeroinitializer, i32 4119, i32 266, i32 0 }, [40 x i8] zeroinitializer }, align 32
@shelly_sca07010_bfn_lnn = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @shelly_sca07010_bfn_lnn_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4105, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@starry_kr070pe2t = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @starry_kr070pe2t_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 152, i32 86 }, %struct.anon.85 zeroinitializer, i32 4106, i32 10, i32 17 }, [40 x i8] zeroinitializer }, align 32
@tsd_tst043015cmhx = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @tsd_tst043015cmhx_timing, i32 1, i32 8, %struct.anon.84 { i32 105, i32 67 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 0 }, [40 x i8] zeroinitializer }, align 32
@tfc_s9700rtwv43tr_01b = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @tfc_s9700rtwv43tr_01b_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 155, i32 90 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 0 }, [40 x i8] zeroinitializer }, align 32
@tianma_tm070jdhg30 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @tianma_tm070jdhg30_timing, i32 1, i32 8, %struct.anon.84 { i32 151, i32 95 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@tianma_tm070jvhg33 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @tianma_tm070jdhg30_timing, i32 1, i32 8, %struct.anon.84 { i32 150, i32 94 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@tianma_tm070rvhg71 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @tianma_tm070rvhg71_timing, i32 1, i32 8, %struct.anon.84 { i32 154, i32 86 }, %struct.anon.85 zeroinitializer, i32 4113, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@ti_nspire_cx_lcd_panel = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @ti_nspire_cx_lcd_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 65, i32 49 }, %struct.anon.85 zeroinitializer, i32 4106, i32 8, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ti_nspire_classic_lcd_panel = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @ti_nspire_classic_lcd_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 71, i32 53 }, %struct.anon.85 zeroinitializer, i32 8193, i32 4, i32 0 }, [40 x i8] zeroinitializer }, align 32
@toshiba_lt089ac29000 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @toshiba_lt089ac29000_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 194, i32 116 }, %struct.anon.85 zeroinitializer, i32 4114, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@tpk_f07a_0102 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @tpk_f07a_0102_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 0, i32 4, i32 0 }, [40 x i8] zeroinitializer }, align 32
@tpk_f10a_0102 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @tpk_f10a_0102_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.84 { i32 223, i32 125 }, %struct.anon.85 zeroinitializer, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@urt_umsh_8596md_parallel = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @urt_umsh_8596md_timing, i32 1, i32 6, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4105, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@urt_umsh_8596md_lvds = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr null, i32 0, ptr @urt_umsh_8596md_timing, i32 1, i32 6, %struct.anon.84 { i32 152, i32 91 }, %struct.anon.85 zeroinitializer, i32 4112, i32 0, i32 7 }, [40 x i8] zeroinitializer }, align 32
@vivax_tpc9150_panel = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @vivax_tpc9150_panel_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.84 { i32 200, i32 115 }, %struct.anon.85 zeroinitializer, i32 4112, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@vl050_8048nt_c01 = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @vl050_8048nt_c01_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 120, i32 76 }, %struct.anon.85 zeroinitializer, i32 4106, i32 6, i32 0 }, [40 x i8] zeroinitializer }, align 32
@winstar_wf35ltiacd = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @winstar_wf35ltiacd_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 70, i32 53 }, %struct.anon.85 zeroinitializer, i32 4106, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@yes_optoelectronics_ytc700tlag_05_201c = internal constant { %struct.panel_desc, [40 x i8] } { %struct.panel_desc { ptr @yes_optoelectronics_ytc700tlag_05_201c_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.84 { i32 154, i32 90 }, %struct.anon.85 zeroinitializer, i32 4113, i32 2, i32 7 }, [40 x i8] zeroinitializer }, align 32
@ampire_am_1280800n3tzqw_t00h_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 71100, i16 1280, i16 1320, i16 1400, i16 1440, i16 0, i16 800, i16 803, i16 813, i16 823, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ampire_am_480272h3tmqw_t01h_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 284, i16 286, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ampire_am800480r3tmqwa1h_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33333, i16 800, i16 800, i16 1055, i16 1055, i16 0, i16 480, i16 482, i16 527, i16 527, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@arm_rtsm_mode = internal constant { [1 x %struct.drm_display_mode], [48 x i8] } { [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 65000, i16 1024, i16 1048, i16 1184, i16 1344, i16 0, i16 768, i16 771, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@santek_st0700i5y_rbslw_f_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 26400000, i32 33300000, i32 46800000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 16, i32 210, i32 354 }, %struct.timing_entry { i32 45, i32 36, i32 6 }, %struct.timing_entry { i32 1, i32 10, i32 40 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 7, i32 22, i32 147 }, %struct.timing_entry { i32 22, i32 13, i32 3 }, %struct.timing_entry { i32 1, i32 10, i32 20 }, i32 101 }, [48 x i8] zeroinitializer }, align 32
@auo_b101aw03_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 51450, i16 1024, i16 1180, i16 1188, i16 1344, i16 0, i16 600, i16 616, i16 622, i16 638, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_b101xtn01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 72000, i16 1366, i16 1386, i16 1456, i16 1456, i16 0, i16 768, i16 782, i16 824, i16 824, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_g070vvn01_timings = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 33300000, i32 34209000, i32 45000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 20, i32 40, i32 200 }, %struct.timing_entry { i32 87, i32 40, i32 1 }, %struct.timing_entry { i32 1, i32 48, i32 87 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 5, i32 13, i32 200 }, %struct.timing_entry { i32 31, i32 31, i32 29 }, %struct.timing_entry { i32 1, i32 1, i32 3 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_g101evn010_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 68930, i16 1280, i16 1362, i16 1364, i16 1448, i16 0, i16 800, i16 808, i16 810, i16 816, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_g104sn02_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 40000, i16 800, i16 840, i16 1056, i16 1184, i16 0, i16 600, i16 610, i16 645, i16 647, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_g121ean01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 66700, i16 1280, i16 1338, i16 1346, i16 1416, i16 0, i16 800, i16 806, i16 810, i16 820, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_g133han01_timings = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 134000000, i32 141200000, i32 149000000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 39, i32 58, i32 77 }, %struct.timing_entry { i32 59, i32 88, i32 117 }, %struct.timing_entry { i32 28, i32 42, i32 56 }, %struct.timing_entry { i32 1080, i32 1080, i32 1080 }, %struct.timing_entry { i32 3, i32 8, i32 11 }, %struct.timing_entry { i32 5, i32 14, i32 19 }, %struct.timing_entry { i32 4, i32 14, i32 19 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_g156xtn01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 76000, i16 1366, i16 1399, i16 1466, i16 1560, i16 0, i16 768, i16 772, i16 776, i16 806, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_g185han01_timings = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 120000000, i32 144000000, i32 175000000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 36, i32 120, i32 148 }, %struct.timing_entry { i32 24, i32 88, i32 108 }, %struct.timing_entry { i32 20, i32 48, i32 64 }, %struct.timing_entry { i32 1080, i32 1080, i32 1080 }, %struct.timing_entry { i32 6, i32 10, i32 40 }, %struct.timing_entry { i32 2, i32 5, i32 20 }, %struct.timing_entry { i32 2, i32 5, i32 20 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_g190ean01_timings = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 90000000, i32 108000000, i32 135000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 126, i32 184, i32 1266 }, %struct.timing_entry { i32 84, i32 122, i32 844 }, %struct.timing_entry { i32 70, i32 102, i32 704 }, %struct.timing_entry { i32 1024, i32 1024, i32 1024 }, %struct.timing_entry { i32 4, i32 26, i32 76 }, %struct.timing_entry { i32 2, i32 8, i32 25 }, %struct.timing_entry { i32 2, i32 8, i32 25 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_p320hvn03_timings = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 106000000, i32 148500000, i32 164000000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 25, i32 50, i32 130 }, %struct.timing_entry { i32 25, i32 50, i32 130 }, %struct.timing_entry { i32 20, i32 40, i32 105 }, %struct.timing_entry { i32 1080, i32 1080, i32 1080 }, %struct.timing_entry { i32 8, i32 17, i32 150 }, %struct.timing_entry { i32 8, i32 17, i32 150 }, %struct.timing_entry { i32 4, i32 11, i32 100 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@auo_t215hvn01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 148800, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@avic_tm070ddh03_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 51200, i16 1024, i16 1184, i16 1188, i16 1344, i16 0, i16 600, i16 617, i16 618, i16 635, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@bananapi_s070wv20_ct16_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 30000, i16 800, i16 840, i16 888, i16 928, i16 0, i16 480, i16 493, i16 496, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@boe_hv070wsa_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 42105, i16 1024, i16 1054, i16 1084, i16 1114, i16 0, i16 600, i16 610, i16 620, i16 630, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cdtech_s043wq26h_ct7_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9000, i16 480, i16 485, i16 490, i16 530, i16 0, i16 272, i16 280, i16 288, i16 296, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cdtech_s070pws19hp_fc21_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 51200, i16 1024, i16 1184, i16 1204, i16 1344, i16 0, i16 600, i16 612, i16 615, i16 635, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cdtech_s070swv29hg_dc44_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33300, i16 800, i16 1010, i16 1012, i16 1056, i16 0, i16 480, i16 502, i16 504, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cdtech_s070wv95_ct16_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 35000, i16 800, i16 840, i16 880, i16 928, i16 0, i16 480, i16 509, i16 522, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@chefree_ch101olhlwh_002_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 68900000, i32 71100000, i32 73400000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 65, i32 80, i32 95 }, %struct.timing_entry { i32 64, i32 79, i32 94 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 7, i32 11, i32 14 }, %struct.timing_entry { i32 7, i32 11, i32 14 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@chunghwa_claa070wp03xg_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 66770, i16 800, i16 849, i16 882, i16 899, i16 0, i16 1280, i16 1281, i16 1288, i16 1303, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@chunghwa_claa101wa01a_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 72070, i16 1366, i16 1424, i16 1482, i16 1540, i16 0, i16 768, i16 772, i16 776, i16 780, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@chunghwa_claa101wb01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 69300, i16 1366, i16 1414, i16 1446, i16 1466, i16 0, i16 768, i16 784, i16 792, i16 808, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dataimage_scf0700c48ggu18_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33260, i16 800, i16 840, i16 968, i16 1056, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dlc_dlc0700yzg_1_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 45000000, i32 51200000, i32 57000000 }, %struct.timing_entry { i32 1024, i32 1024, i32 1024 }, %struct.timing_entry { i32 100, i32 106, i32 113 }, %struct.timing_entry { i32 100, i32 106, i32 113 }, %struct.timing_entry { i32 100, i32 108, i32 114 }, %struct.timing_entry { i32 600, i32 600, i32 600 }, %struct.timing_entry { i32 8, i32 11, i32 15 }, %struct.timing_entry { i32 8, i32 11, i32 15 }, %struct.timing_entry { i32 9, i32 13, i32 15 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@dlc_dlc1010gig_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 68900000, i32 71100000, i32 73400000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 43, i32 53, i32 63 }, %struct.timing_entry { i32 43, i32 53, i32 63 }, %struct.timing_entry { i32 44, i32 54, i32 64 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 8, i32 11 }, %struct.timing_entry { i32 5, i32 8, i32 11 }, %struct.timing_entry { i32 5, i32 7, i32 11 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@edt_et035012dm6_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 6500, i16 320, i16 340, i16 370, i16 408, i16 0, i16 240, i16 244, i16 248, i16 262, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@edt_etm0350g0dh6_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 6520, i16 320, i16 340, i16 408, i16 408, i16 0, i16 240, i16 244, i16 262, i16 262, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@edt_etm043080dh6gp_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 10870, i16 480, i16 488, i16 492, i16 533, i16 0, i16 288, i16 290, i16 294, i16 304, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@edt_etm0430g0dh6_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 284, i16 286, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@edt_et057090dhu_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 25175, i16 640, i16 656, i16 686, i16 800, i16 0, i16 480, i16 490, i16 493, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@edt_etm0700g0dh6_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33260, i16 800, i16 840, i16 968, i16 1056, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@edt_etmv570g2dhu_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 25175, i16 640, i16 640, i16 656, i16 800, i16 0, i16 480, i16 490, i16 493, i16 528, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@eink_vb3300_kca_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 40000000, i32 40000000, i32 40000000 }, %struct.timing_entry { i32 334, i32 334, i32 334 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1405, i32 1405, i32 1405 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 101 }, [48 x i8] zeroinitializer }, align 32
@evervision_vgg804821_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 27600000, i32 33300000, i32 50000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 40, i32 66, i32 70 }, %struct.timing_entry { i32 40, i32 67, i32 70 }, %struct.timing_entry { i32 40, i32 67, i32 70 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 6, i32 10, i32 10 }, %struct.timing_entry { i32 7, i32 11, i32 11 }, %struct.timing_entry { i32 7, i32 11, i32 11 }, i32 4266 }, [48 x i8] zeroinitializer }, align 32
@foxlink_fl500wvr00_a0t_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 32260, i16 800, i16 968, i16 1032, i16 1120, i16 0, i16 480, i16 517, i16 519, i16 527, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@frida_frd350h54004_modes = internal constant { [2 x %struct.drm_display_mode], [32 x i8] } { [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 6000, i16 320, i16 364, i16 380, i16 400, i16 0, i16 240, i16 242, i16 248, i16 250, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 5400, i16 320, i16 376, i16 392, i16 432, i16 0, i16 240, i16 242, i16 248, i16 250, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@friendlyarm_hd702e_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 67185, i16 800, i16 820, i16 844, i16 864, i16 0, i16 1280, i16 1284, i16 1292, i16 1296, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@giantplus_gpg482739qs5_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9000, i16 480, i16 485, i16 486, i16 526, i16 0, i16 272, i16 280, i16 281, i16 289, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@giantplus_gpm940b0_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 13500000, i32 27000000, i32 27500000 }, %struct.timing_entry { i32 320, i32 320, i32 320 }, %struct.timing_entry { i32 14, i32 686, i32 718 }, %struct.timing_entry { i32 50, i32 70, i32 255 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 240, i32 240, i32 240 }, %struct.timing_entry { i32 1, i32 1, i32 179 }, %struct.timing_entry { i32 1, i32 21, i32 31 }, %struct.timing_entry { i32 1, i32 1, i32 6 }, i32 5 }, [48 x i8] zeroinitializer }, align 32
@hannstar_hsd070pww1_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 64300000, i32 71100000, i32 82000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 1, i32 1, i32 10 }, %struct.timing_entry { i32 1, i32 1, i32 10 }, %struct.timing_entry { i32 58, i32 158, i32 661 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 1, i32 1, i32 10 }, %struct.timing_entry { i32 1, i32 1, i32 10 }, %struct.timing_entry { i32 1, i32 21, i32 203 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@hannstar_hsd100pxn1_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 55000000, i32 65000000, i32 75000000 }, %struct.timing_entry { i32 1024, i32 1024, i32 1024 }, %struct.timing_entry { i32 40, i32 40, i32 40 }, %struct.timing_entry { i32 220, i32 220, i32 220 }, %struct.timing_entry { i32 20, i32 60, i32 100 }, %struct.timing_entry { i32 768, i32 768, i32 768 }, %struct.timing_entry { i32 7, i32 7, i32 7 }, %struct.timing_entry { i32 21, i32 21, i32 21 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@hitachi_tx23d38vm0caa_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33333, i16 800, i16 885, i16 971, i16 1056, i16 0, i16 480, i16 496, i16 509, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_at043tn24_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 284, i16 286, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_at070tn92_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33333, i16 800, i16 1010, i16 1030, i16 1076, i16 0, i16 480, i16 502, i16 512, i16 535, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_g070y2_l01_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 28000000, i32 29500000, i32 32000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 61, i32 91, i32 141 }, %struct.timing_entry { i32 60, i32 90, i32 140 }, %struct.timing_entry { i32 12, i32 12, i32 12 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 4, i32 9, i32 30 }, %struct.timing_entry { i32 4, i32 8, i32 28 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@innolux_g070y2_t02_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33333, i16 800, i16 1010, i16 1030, i16 1076, i16 0, i16 480, i16 502, i16 512, i16 535, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_g101ice_l01_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 60400000, i32 71100000, i32 74700000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 41, i32 80, i32 100 }, %struct.timing_entry { i32 40, i32 79, i32 99 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 11, i32 14 }, %struct.timing_entry { i32 4, i32 11, i32 14 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@innolux_g121i1_l01_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 67450000, i32 71000000, i32 74550000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 40, i32 80, i32 160 }, %struct.timing_entry { i32 39, i32 79, i32 159 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 11, i32 100 }, %struct.timing_entry { i32 4, i32 11, i32 99 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_g121x1_l03_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 65000, i16 1024, i16 1024, i16 1025, i16 1345, i16 0, i16 768, i16 806, i16 807, i16 807, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_n156bge_l21_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 69300, i16 1366, i16 1382, i16 1416, i16 1466, i16 0, i16 768, i16 770, i16 776, i16 788, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_zj070na_01p_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 51501, i16 1024, i16 1152, i16 1216, i16 1344, i16 0, i16 600, i16 616, i16 620, i16 636, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@koe_tx14d24vm1bpa_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 5580000, i32 5850000, i32 6200000 }, %struct.timing_entry { i32 320, i32 320, i32 320 }, %struct.timing_entry { i32 30, i32 30, i32 30 }, %struct.timing_entry { i32 30, i32 30, i32 30 }, %struct.timing_entry { i32 1, i32 5, i32 17 }, %struct.timing_entry { i32 240, i32 240, i32 240 }, %struct.timing_entry { i32 6, i32 6, i32 6 }, %struct.timing_entry { i32 5, i32 5, i32 5 }, %struct.timing_entry { i32 1, i32 2, i32 11 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@koe_tx26d202vm0bwa_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 151820000, i32 156720000, i32 159780000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 105, i32 130, i32 142 }, %struct.timing_entry { i32 45, i32 70, i32 82 }, %struct.timing_entry { i32 30, i32 30, i32 30 }, %struct.timing_entry { i32 1200, i32 1200, i32 1200 }, %struct.timing_entry { i32 3, i32 5, i32 10 }, %struct.timing_entry { i32 2, i32 5, i32 10 }, %struct.timing_entry { i32 5, i32 5, i32 5 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@koe_tx31d200vm0baa_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 39600000, i32 43200000, i32 48000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 16, i32 36, i32 56 }, %struct.timing_entry { i32 16, i32 36, i32 56 }, %struct.timing_entry { i32 8, i32 8, i32 8 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 6, i32 21, i32 33 }, %struct.timing_entry { i32 6, i32 21, i32 33 }, %struct.timing_entry { i32 8, i32 8, i32 8 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@kyo_tcg121xglp_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 52000000, i32 65000000, i32 71000000 }, %struct.timing_entry { i32 1024, i32 1024, i32 1024 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 86, i32 124, i32 244 }, %struct.timing_entry { i32 768, i32 768, i32 768 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 6, i32 34, i32 73 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@lemaker_bl035_rgb_002_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 7000, i16 320, i16 340, i16 370, i16 408, i16 0, i16 240, i16 244, i16 247, i16 262, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg_lb070wv8_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33246, i16 800, i16 888, i16 968, i16 1056, i16 0, i16 480, i16 490, i16 515, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@logicpd_type_28_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9107, i16 480, i16 483, i16 525, i16 527, i16 0, i16 272, i16 274, i16 285, i16 288, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@logictechno_lt161010_2nh_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 26400000, i32 33300000, i32 46800000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 16, i32 210, i32 354 }, %struct.timing_entry { i32 46, i32 46, i32 46 }, %struct.timing_entry { i32 1, i32 20, i32 40 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 7, i32 22, i32 147 }, %struct.timing_entry { i32 23, i32 23, i32 23 }, %struct.timing_entry { i32 1, i32 10, i32 20 }, i32 2149 }, [48 x i8] zeroinitializer }, align 32
@logictechno_lt170410_2whc_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 68900000, i32 71100000, i32 73400000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 23, i32 60, i32 71 }, %struct.timing_entry { i32 23, i32 60, i32 71 }, %struct.timing_entry { i32 15, i32 40, i32 47 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 7, i32 10 }, %struct.timing_entry { i32 5, i32 7, i32 10 }, %struct.timing_entry { i32 6, i32 9, i32 12 }, i32 2149 }, [48 x i8] zeroinitializer }, align 32
@logictechno_lttd800480070_l2rt_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33000, i16 800, i16 912, i16 915, i16 1000, i16 0, i16 480, i16 518, i16 521, i16 550, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@logictechno_lttd800480070_l6wh_rt_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33000, i16 800, i16 954, i16 957, i16 1000, i16 0, i16 480, i16 527, i16 530, i16 550, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mitsubishi_aa070mc01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 30400, i16 800, i16 800, i16 801, i16 961, i16 0, i16 480, i16 480, i16 529, i16 529, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@multi_inno_mi1010ait_1cp_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 68900000, i32 70000000, i32 73400000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 30, i32 60, i32 71 }, %struct.timing_entry { i32 30, i32 60, i32 71 }, %struct.timing_entry { i32 10, i32 10, i32 48 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 10, i32 10 }, %struct.timing_entry { i32 5, i32 10, i32 10 }, %struct.timing_entry { i32 5, i32 6, i32 13 }, i32 37 }, [48 x i8] zeroinitializer }, align 32
@nec_nl12880bc20_05_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 67000000, i32 71000000, i32 75000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 2, i32 30, i32 30 }, %struct.timing_entry { i32 6, i32 100, i32 100 }, %struct.timing_entry { i32 2, i32 30, i32 30 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 5, i32 5, i32 5 }, %struct.timing_entry { i32 11, i32 11, i32 11 }, %struct.timing_entry { i32 7, i32 7, i32 7 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@nec_nl4827hc19_05b_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 10870, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 278, i16 280, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@netron_dy_e231732_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 66000, i16 1024, i16 1184, i16 1254, i16 1344, i16 0, i16 600, i16 727, i16 747, i16 750, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@newhaven_nhd_43_480272ef_atxl_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 523, i16 525, i16 0, i16 272, i16 274, i16 284, i16 286, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@nlt_nl192108ac18_02d_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 130000000, i32 148350000, i32 163000000 }, %struct.timing_entry { i32 1920, i32 1920, i32 1920 }, %struct.timing_entry { i32 80, i32 100, i32 100 }, %struct.timing_entry { i32 100, i32 120, i32 120 }, %struct.timing_entry { i32 50, i32 60, i32 60 }, %struct.timing_entry { i32 1080, i32 1080, i32 1080 }, %struct.timing_entry { i32 12, i32 30, i32 30 }, %struct.timing_entry { i32 4, i32 10, i32 10 }, %struct.timing_entry { i32 4, i32 5, i32 5 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@nvd_9128_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 29500, i16 800, i16 930, i16 1028, i16 1028, i16 0, i16 480, i16 490, i16 540, i16 540, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@okaya_rs800480t_7x0gp_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 30000000, i32 30000000, i32 40000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 40, i32 40, i32 40 }, %struct.timing_entry { i32 40, i32 40, i32 40 }, %struct.timing_entry { i32 1, i32 48, i32 48 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 13, i32 13, i32 13 }, %struct.timing_entry { i32 29, i32 29, i32 29 }, %struct.timing_entry { i32 3, i32 3, i32 3 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@olimex_lcd_olinuxino_43ts_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9000, i16 480, i16 485, i16 515, i16 525, i16 0, i16 272, i16 280, i16 285, i16 288, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ontat_yx700wv03_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 29500, i16 800, i16 824, i16 896, i16 992, i16 0, i16 480, i16 483, i16 493, i16 500, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ortustech_com37h3m_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 22230, i16 480, i16 520, i16 530, i16 570, i16 0, i16 640, i16 644, i16 646, i16 650, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ortustech_com43h4m85ulc_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 25000, i16 480, i16 490, i16 500, i16 515, i16 0, i16 800, i16 803, i16 806, i16 809, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@osddisplays_osd070t1718_19ts_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33000, i16 800, i16 1010, i16 1040, i16 1056, i16 0, i16 480, i16 502, i16 515, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pda_91_00156_a0_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33300, i16 800, i16 801, i16 865, i16 929, i16 0, i16 480, i16 481, i16 504, i16 526, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@powertip_ph800480t013_idf02_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 24750, i16 800, i16 854, i16 856, i16 900, i16 0, i16 480, i16 529, i16 531, i16 553, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@qd43003c0_40_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 9000, i16 480, i16 488, i16 492, i16 531, i16 0, i16 272, i16 276, i16 286, i16 288, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@qishenglong_gopher2b_lcd_modes = internal constant { [2 x %struct.drm_display_mode], [32 x i8] } { [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 10800, i16 480, i16 557, i16 598, i16 600, i16 0, i16 272, i16 288, i16 298, i16 300, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 10800, i16 480, i16 497, i16 538, i16 540, i16 0, i16 272, i16 388, i16 398, i16 400, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@rocktech_rk070er9427_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 26400000, i32 33300000, i32 46800000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 16, i32 210, i32 354 }, %struct.timing_entry { i32 46, i32 46, i32 46 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 7, i32 22, i32 147 }, %struct.timing_entry { i32 23, i32 23, i32 23 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@rocktech_rk101ii01d_ct_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 71100, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 800, i16 802, i16 807, i16 823, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@samsung_ltn101nt05_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 54030, i16 1024, i16 1048, i16 1184, i16 1344, i16 0, i16 600, i16 603, i16 609, i16 670, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@satoz_sat050at40h12r2_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 33300000, i32 33300000, i32 50000000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 16, i32 210, i32 354 }, %struct.timing_entry { i32 46, i32 46, i32 46 }, %struct.timing_entry { i32 1, i32 1, i32 40 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 7, i32 22, i32 147 }, %struct.timing_entry { i32 23, i32 23, i32 23 }, %struct.timing_entry { i32 1, i32 1, i32 20 }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sharp_lq035q7db03_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 5500, i16 240, i16 256, i16 263, i16 268, i16 0, i16 320, i16 329, i16 330, i16 337, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sharp_lq070y3dg3b_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33260, i16 800, i16 864, i16 992, i16 1056, i16 0, i16 480, i16 488, i16 490, i16 525, i16 0, i32 64, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sharp_lq101k1ly04_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 60000000, i32 65000000, i32 80000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 20, i32 20, i32 20 }, %struct.timing_entry { i32 20, i32 20, i32 20 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 4, i32 4, i32 4 }, %struct.timing_entry { i32 4, i32 4, i32 4 }, %struct.timing_entry { i32 4, i32 4, i32 4 }, i32 64 }, [48 x i8] zeroinitializer }, align 32
@sharp_ls020b1dd01d_modes = internal constant { [2 x %struct.drm_display_mode], [32 x i8] } { [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 3000, i16 240, i16 298, i16 299, i16 300, i16 0, i16 160, i16 184, i16 194, i16 200, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 3000, i16 240, i16 248, i16 249, i16 250, i16 0, i16 160, i16 184, i16 194, i16 200, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@shelly_sca07010_bfn_lnn_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33300, i16 800, i16 801, i16 865, i16 929, i16 0, i16 480, i16 481, i16 504, i16 526, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@starry_kr070pe2t_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33000, i16 800, i16 1009, i16 1010, i16 1055, i16 0, i16 480, i16 502, i16 503, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tsd_tst043015cmhx_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 5000000, i32 9000000, i32 12000000 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 4, i32 5, i32 65 }, %struct.timing_entry { i32 36, i32 40, i32 255 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, %struct.timing_entry { i32 272, i32 272, i32 272 }, %struct.timing_entry { i32 2, i32 8, i32 97 }, %struct.timing_entry { i32 3, i32 8, i32 31 }, %struct.timing_entry { i32 1, i32 1, i32 1 }, i32 101 }, [48 x i8] zeroinitializer }, align 32
@tfc_s9700rtwv43tr_01b_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 30000, i16 800, i16 839, i16 886, i16 925, i16 0, i16 480, i16 493, i16 495, i16 524, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tianma_tm070jdhg30_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 62600000, i32 68200000, i32 78100000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 15, i32 64, i32 159 }, %struct.timing_entry { i32 5, i32 5, i32 5 }, %struct.timing_entry { i32 1, i32 1, i32 256 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 3, i32 40, i32 99 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, %struct.timing_entry { i32 1, i32 1, i32 128 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@tianma_tm070rvhg71_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 27700000, i32 29200000, i32 39600000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 12, i32 40, i32 212 }, %struct.timing_entry { i32 88, i32 88, i32 88 }, %struct.timing_entry { i32 1, i32 1, i32 40 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 1, i32 13, i32 88 }, %struct.timing_entry { i32 32, i32 32, i32 32 }, %struct.timing_entry { i32 1, i32 1, i32 3 }, i32 32 }, [48 x i8] zeroinitializer }, align 32
@ti_nspire_cx_lcd_mode = internal constant { [1 x %struct.drm_display_mode], [48 x i8] } { [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 10000, i16 320, i16 370, i16 376, i16 414, i16 0, i16 240, i16 243, i16 244, i16 261, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@ti_nspire_classic_lcd_mode = internal constant { [1 x %struct.drm_display_mode], [48 x i8] } { [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 10000, i16 320, i16 326, i16 332, i16 338, i16 0, i16 240, i16 240, i16 241, i16 241, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@toshiba_lt089ac29000_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 79500, i16 1280, i16 1472, i16 1600, i16 1664, i16 0, i16 768, i16 788, i16 795, i16 798, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tpk_f07a_0102_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33260, i16 800, i16 840, i16 968, i16 1056, i16 0, i16 480, i16 490, i16 492, i16 525, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tpk_f10a_0102_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 45000, i16 1024, i16 1200, i16 1205, i16 1293, i16 0, i16 600, i16 620, i16 625, i16 650, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@urt_umsh_8596md_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 33260000, i32 33260000, i32 33260000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 41, i32 41, i32 41 }, %struct.timing_entry { i32 88, i32 88, i32 88 }, %struct.timing_entry { i32 71, i32 128, i32 128 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, %struct.timing_entry { i32 33, i32 33, i32 33 }, %struct.timing_entry { i32 2, i32 2, i32 2 }, i32 165 }, [48 x i8] zeroinitializer }, align 32
@vivax_tpc9150_panel_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 60000, i16 1024, i16 1184, i16 1284, i16 1344, i16 0, i16 600, i16 612, i16 622, i16 635, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vl050_8048nt_c01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 33333, i16 800, i16 1010, i16 1030, i16 1076, i16 0, i16 480, i16 502, i16 512, i16 535, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@winstar_wf35ltiacd_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 6410, i16 320, i16 340, i16 370, i16 408, i16 0, i16 240, i16 244, i16 247, i16 262, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@yes_optoelectronics_ytc700tlag_05_201c_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 51200, i16 1024, i16 1124, i16 1224, i16 1344, i16 0, i16 600, i16 610, i16 620, i16 635, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 7, i64 14, i64 16, i64 17]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"panel_simple_dsi_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4351, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant [29 x i8] c"panel_simple_platform_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4056, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4353, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"dsi_of_match\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4277, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"panel_simple_pm_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4050, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"auo_b080uan01\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4087, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"boe_tv080wum_nl0\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4116, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"lg_ld070wx3_sl01\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4145, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"lg_lh500wx1_sd03\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4173, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"panasonic_vvx10f004b00\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4201, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"lg_acx467akm_7\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4230, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"osd101t2045_53ts\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4259, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"auo_b080uan01_mode\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4075, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"boe_tv080wum_nl0_mode\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4103, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"lg_ld070wx3_sl01_mode\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4133, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"lg_lh500wx1_sd03_mode\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4161, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"panasonic_vvx10f004b00_mode\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4189, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"lg_acx467akm_7_mode\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4218, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"osd101t2045_53ts_mode\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4246, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 342, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 558, i32 42 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 562, i32 52 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 567, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 573, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 577, i32 39 }
@___asan_gen_.161 = private unnamed_addr constant [10 x i8] c"panel_dpi\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 446, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 593, i32 44 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 601, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 620, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 625, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 637, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 639, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 641, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 643, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 646, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"panel_simple_funcs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 437, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 469, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 477, i32 27 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 478, i32 27 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 506, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 510, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 538, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 243, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 176, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 206, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4341, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 4058, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant [18 x i8] c"platform_of_match\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3655, i32 34 }
@___asan_gen_.296 = private unnamed_addr constant [29 x i8] c"ampire_am_1280800n3tzqw_t00h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 720, i32 32 }
@___asan_gen_.299 = private unnamed_addr constant [28 x i8] c"ampire_am_480272h3tmqw_t01h\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 746, i32 32 }
@___asan_gen_.302 = private unnamed_addr constant [25 x i8] c"ampire_am800480r3tmqwa1h\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 770, i32 32 }
@___asan_gen_.305 = private unnamed_addr constant [9 x i8] c"arm_rtsm\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3644, i32 32 }
@___asan_gen_.308 = private unnamed_addr constant [22 x i8] c"armadeus_st0700_adapt\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 795, i32 32 }
@___asan_gen_.311 = private unnamed_addr constant [13 x i8] c"auo_b101aw03\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 819, i32 32 }
@___asan_gen_.314 = private unnamed_addr constant [14 x i8] c"auo_b101xtn01\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 845, i32 32 }
@___asan_gen_.317 = private unnamed_addr constant [14 x i8] c"auo_g070vvn01\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 867, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant [15 x i8] c"auo_g101evn010\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 895, i32 32 }
@___asan_gen_.323 = private unnamed_addr constant [13 x i8] c"auo_g104sn02\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 919, i32 32 }
@___asan_gen_.326 = private unnamed_addr constant [14 x i8] c"auo_g121ean01\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 943, i32 32 }
@___asan_gen_.329 = private unnamed_addr constant [14 x i8] c"auo_g133han01\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 967, i32 32 }
@___asan_gen_.332 = private unnamed_addr constant [14 x i8] c"auo_g156xtn01\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 997, i32 32 }
@___asan_gen_.335 = private unnamed_addr constant [14 x i8] c"auo_g185han01\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1021, i32 32 }
@___asan_gen_.338 = private unnamed_addr constant [14 x i8] c"auo_g190ean01\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1051, i32 32 }
@___asan_gen_.341 = private unnamed_addr constant [14 x i8] c"auo_p320hvn03\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1081, i32 32 }
@___asan_gen_.344 = private unnamed_addr constant [14 x i8] c"auo_t215hvn01\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1110, i32 32 }
@___asan_gen_.347 = private unnamed_addr constant [16 x i8] c"avic_tm070ddh03\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1136, i32 32 }
@___asan_gen_.350 = private unnamed_addr constant [23 x i8] c"bananapi_s070wv20_ct16\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1163, i32 32 }
@___asan_gen_.353 = private unnamed_addr constant [13 x i8] c"boe_hv070wsa\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1185, i32 32 }
@___asan_gen_.356 = private unnamed_addr constant [21 x i8] c"cdtech_s043wq26h_ct7\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1211, i32 32 }
@___asan_gen_.359 = private unnamed_addr constant [24 x i8] c"cdtech_s070pws19hp_fc21\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1236, i32 32 }
@___asan_gen_.362 = private unnamed_addr constant [24 x i8] c"cdtech_s070swv29hg_dc44\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1263, i32 32 }
@___asan_gen_.365 = private unnamed_addr constant [21 x i8] c"cdtech_s070wv95_ct16\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1289, i32 32 }
@___asan_gen_.368 = private unnamed_addr constant [24 x i8] c"chefree_ch101olhlwh_002\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1312, i32 32 }
@___asan_gen_.371 = private unnamed_addr constant [23 x i8] c"chunghwa_claa070wp03xg\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1342, i32 32 }
@___asan_gen_.374 = private unnamed_addr constant [22 x i8] c"chunghwa_claa101wa01a\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1367, i32 32 }
@___asan_gen_.377 = private unnamed_addr constant [21 x i8] c"chunghwa_claa101wb01\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1392, i32 32 }
@___asan_gen_.380 = private unnamed_addr constant [26 x i8] c"dataimage_scf0700c48ggu18\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1418, i32 32 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"dlc_dlc0700yzg_1\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1443, i32 32 }
@___asan_gen_.386 = private unnamed_addr constant [15 x i8] c"dlc_dlc1010gig\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1473, i32 32 }
@___asan_gen_.389 = private unnamed_addr constant [16 x i8] c"edt_et035012dm6\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1504, i32 32 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"edt_etm0350g0dh6\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1529, i32 32 }
@___asan_gen_.395 = private unnamed_addr constant [19 x i8] c"edt_etm043080dh6gp\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1560, i32 32 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"edt_etm0430g0dh6\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1585, i32 32 }
@___asan_gen_.401 = private unnamed_addr constant [16 x i8] c"edt_et057090dhu\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1611, i32 32 }
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"edt_etm0700g0dh6\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1637, i32 32 }
@___asan_gen_.407 = private unnamed_addr constant [18 x i8] c"edt_etm0700g0bdh6\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1650, i32 32 }
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"edt_etmv570g2dhu\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1676, i32 32 }
@___asan_gen_.413 = private unnamed_addr constant [16 x i8] c"eink_vb3300_kca\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1703, i32 32 }
@___asan_gen_.416 = private unnamed_addr constant [21 x i8] c"evervision_vgg804821\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1731, i32 32 }
@___asan_gen_.419 = private unnamed_addr constant [23 x i8] c"foxlink_fl500wvr00_a0t\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1755, i32 32 }
@___asan_gen_.422 = private unnamed_addr constant [19 x i8] c"frida_frd350h54004\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1793, i32 32 }
@___asan_gen_.425 = private unnamed_addr constant [19 x i8] c"friendlyarm_hd702e\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1819, i32 32 }
@___asan_gen_.428 = private unnamed_addr constant [23 x i8] c"giantplus_gpg482739qs5\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1840, i32 32 }
@___asan_gen_.431 = private unnamed_addr constant [19 x i8] c"giantplus_gpm940b0\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1864, i32 32 }
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c"hannstar_hsd070pww1\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1894, i32 32 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c"hannstar_hsd100pxn1\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1919, i32 32 }
@___asan_gen_.440 = private unnamed_addr constant [22 x i8] c"hitachi_tx23d38vm0caa\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1943, i32 32 }
@___asan_gen_.443 = private unnamed_addr constant [18 x i8] c"innolux_at043tn24\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1970, i32 32 }
@___asan_gen_.446 = private unnamed_addr constant [18 x i8] c"innolux_at070tn92\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1994, i32 32 }
@___asan_gen_.449 = private unnamed_addr constant [19 x i8] c"innolux_g070y2_l01\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2017, i32 32 }
@___asan_gen_.452 = private unnamed_addr constant [19 x i8] c"innolux_g070y2_t02\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2047, i32 32 }
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c"innolux_g101ice_l01\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2073, i32 32 }
@___asan_gen_.458 = private unnamed_addr constant [19 x i8] c"innolux_g121i1_l01\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2101, i32 32 }
@___asan_gen_.461 = private unnamed_addr constant [19 x i8] c"innolux_g121x1_l03\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2130, i32 32 }
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c"innolux_n156bge_l21\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2157, i32 32 }
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c"innolux_zj070na_01p\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2182, i32 32 }
@___asan_gen_.470 = private unnamed_addr constant [18 x i8] c"koe_tx14d24vm1bpa\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2205, i32 32 }
@___asan_gen_.473 = private unnamed_addr constant [19 x i8] c"koe_tx26d202vm0bwa\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2227, i32 32 }
@___asan_gen_.476 = private unnamed_addr constant [19 x i8] c"koe_tx31d200vm0baa\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2259, i32 32 }
@___asan_gen_.479 = private unnamed_addr constant [15 x i8] c"kyo_tcg121xglp\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2284, i32 32 }
@___asan_gen_.482 = private unnamed_addr constant [22 x i8] c"lemaker_bl035_rgb_002\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2308, i32 32 }
@___asan_gen_.485 = private unnamed_addr constant [12 x i8] c"lg_lb070wv8\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2331, i32 32 }
@___asan_gen_.488 = private unnamed_addr constant [16 x i8] c"logicpd_type_28\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2477, i32 32 }
@___asan_gen_.491 = private unnamed_addr constant [25 x i8] c"logictechno_lt161010_2nh\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2358, i32 32 }
@___asan_gen_.494 = private unnamed_addr constant [26 x i8] c"logictechno_lt170410_2whc\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2387, i32 32 }
@___asan_gen_.497 = private unnamed_addr constant [31 x i8] c"logictechno_lttd800480070_l2rt\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2412, i32 32 }
@___asan_gen_.500 = private unnamed_addr constant [34 x i8] c"logictechno_lttd800480070_l6wh_rt\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2444, i32 32 }
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c"mitsubishi_aa070mc01\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2510, i32 32 }
@___asan_gen_.506 = private unnamed_addr constant [25 x i8] c"multi_inno_mi1010ait_1cp\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2543, i32 32 }
@___asan_gen_.509 = private unnamed_addr constant [19 x i8] c"nec_nl12880bc20_05\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2572, i32 32 }
@___asan_gen_.512 = private unnamed_addr constant [19 x i8] c"nec_nl4827hc19_05b\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2601, i32 32 }
@___asan_gen_.515 = private unnamed_addr constant [18 x i8] c"netron_dy_e231732\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2625, i32 32 }
@___asan_gen_.518 = private unnamed_addr constant [30 x i8] c"newhaven_nhd_43_480272ef_atxl\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2648, i32 32 }
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c"nlt_nl192108ac18_02d\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2674, i32 32 }
@___asan_gen_.524 = private unnamed_addr constant [9 x i8] c"nvd_9128\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2701, i32 32 }
@___asan_gen_.527 = private unnamed_addr constant [22 x i8] c"okaya_rs800480t_7x0gp\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2726, i32 32 }
@___asan_gen_.530 = private unnamed_addr constant [26 x i8] c"olimex_lcd_olinuxino_43ts\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2755, i32 32 }
@___asan_gen_.533 = private unnamed_addr constant [16 x i8] c"ontat_yx700wv03\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2787, i32 32 }
@___asan_gen_.536 = private unnamed_addr constant [19 x i8] c"ortustech_com37h3m\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2811, i32 32 }
@___asan_gen_.539 = private unnamed_addr constant [24 x i8] c"ortustech_com43h4m85ulc\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2836, i32 32 }
@___asan_gen_.542 = private unnamed_addr constant [29 x i8] c"osddisplays_osd070t1718_19ts\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2862, i32 32 }
@___asan_gen_.545 = private unnamed_addr constant [16 x i8] c"pda_91_00156_a0\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2888, i32 32 }
@___asan_gen_.548 = private unnamed_addr constant [28 x i8] c"powertip_ph800480t013_idf02\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2910, i32 32 }
@___asan_gen_.551 = private unnamed_addr constant [13 x i8] c"qd43003c0_40\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2936, i32 32 }
@___asan_gen_.554 = private unnamed_addr constant [25 x i8] c"qishenglong_gopher2b_lcd\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2974, i32 32 }
@___asan_gen_.557 = private unnamed_addr constant [21 x i8] c"rocktech_rk070er9427\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3000, i32 32 }
@___asan_gen_.560 = private unnamed_addr constant [23 x i8] c"rocktech_rk101ii01d_ct\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3029, i32 32 }
@___asan_gen_.563 = private unnamed_addr constant [19 x i8] c"samsung_ltn101nt05\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3057, i32 32 }
@___asan_gen_.566 = private unnamed_addr constant [22 x i8] c"satoz_sat050at40h12r2\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3082, i32 32 }
@___asan_gen_.569 = private unnamed_addr constant [18 x i8] c"sharp_lq035q7db03\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3132, i32 32 }
@___asan_gen_.572 = private unnamed_addr constant [18 x i8] c"sharp_lq070y3dg3b\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3107, i32 32 }
@___asan_gen_.575 = private unnamed_addr constant [18 x i8] c"sharp_lq101k1ly04\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3156, i32 32 }
@___asan_gen_.578 = private unnamed_addr constant [19 x i8] c"sharp_ls020b1dd01d\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3195, i32 32 }
@___asan_gen_.581 = private unnamed_addr constant [24 x i8] c"shelly_sca07010_bfn_lnn\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3221, i32 32 }
@___asan_gen_.584 = private unnamed_addr constant [17 x i8] c"starry_kr070pe2t\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3243, i32 32 }
@___asan_gen_.587 = private unnamed_addr constant [18 x i8] c"tsd_tst043015cmhx\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3271, i32 32 }
@___asan_gen_.590 = private unnamed_addr constant [22 x i8] c"tfc_s9700rtwv43tr_01b\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3295, i32 32 }
@___asan_gen_.593 = private unnamed_addr constant [19 x i8] c"tianma_tm070jdhg30\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3320, i32 32 }
@___asan_gen_.596 = private unnamed_addr constant [19 x i8] c"tianma_tm070jvhg33\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3332, i32 32 }
@___asan_gen_.599 = private unnamed_addr constant [19 x i8] c"tianma_tm070rvhg71\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3357, i32 32 }
@___asan_gen_.602 = private unnamed_addr constant [23 x i8] c"ti_nspire_cx_lcd_panel\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3384, i32 32 }
@___asan_gen_.605 = private unnamed_addr constant [28 x i8] c"ti_nspire_classic_lcd_panel\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3411, i32 32 }
@___asan_gen_.608 = private unnamed_addr constant [21 x i8] c"toshiba_lt089ac29000\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3437, i32 32 }
@___asan_gen_.611 = private unnamed_addr constant [14 x i8] c"tpk_f07a_0102\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3461, i32 32 }
@___asan_gen_.614 = private unnamed_addr constant [14 x i8] c"tpk_f10a_0102\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3483, i32 32 }
@___asan_gen_.617 = private unnamed_addr constant [25 x i8] c"urt_umsh_8596md_parallel\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3518, i32 32 }
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c"urt_umsh_8596md_lvds\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3506, i32 32 }
@___asan_gen_.623 = private unnamed_addr constant [20 x i8] c"vivax_tpc9150_panel\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3541, i32 32 }
@___asan_gen_.626 = private unnamed_addr constant [17 x i8] c"vl050_8048nt_c01\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3567, i32 32 }
@___asan_gen_.629 = private unnamed_addr constant [19 x i8] c"winstar_wf35ltiacd\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3592, i32 32 }
@___asan_gen_.632 = private unnamed_addr constant [39 x i8] c"yes_optoelectronics_ytc700tlag_05_201c\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3616, i32 32 }
@___asan_gen_.635 = private unnamed_addr constant [34 x i8] c"ampire_am_1280800n3tzqw_t00h_mode\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 707, i32 38 }
@___asan_gen_.638 = private unnamed_addr constant [33 x i8] c"ampire_am_480272h3tmqw_t01h_mode\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 733, i32 38 }
@___asan_gen_.641 = private unnamed_addr constant [30 x i8] c"ampire_am800480r3tmqwa1h_mode\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 757, i32 38 }
@___asan_gen_.644 = private unnamed_addr constant [14 x i8] c"arm_rtsm_mode\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3629, i32 38 }
@___asan_gen_.647 = private unnamed_addr constant [32 x i8] c"santek_st0700i5y_rbslw_f_timing\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 781, i32 36 }
@___asan_gen_.650 = private unnamed_addr constant [18 x i8] c"auo_b101aw03_mode\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 807, i32 38 }
@___asan_gen_.653 = private unnamed_addr constant [19 x i8] c"auo_b101xtn01_mode\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 832, i32 38 }
@___asan_gen_.656 = private unnamed_addr constant [22 x i8] c"auo_g070vvn01_timings\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 855, i32 36 }
@___asan_gen_.659 = private unnamed_addr constant [20 x i8] c"auo_g101evn010_mode\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 883, i32 38 }
@___asan_gen_.662 = private unnamed_addr constant [18 x i8] c"auo_g104sn02_mode\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 907, i32 38 }
@___asan_gen_.665 = private unnamed_addr constant [19 x i8] c"auo_g121ean01_mode\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 931, i32 38 }
@___asan_gen_.668 = private unnamed_addr constant [22 x i8] c"auo_g133han01_timings\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 955, i32 36 }
@___asan_gen_.671 = private unnamed_addr constant [19 x i8] c"auo_g156xtn01_mode\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 985, i32 38 }
@___asan_gen_.674 = private unnamed_addr constant [22 x i8] c"auo_g185han01_timings\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1009, i32 36 }
@___asan_gen_.677 = private unnamed_addr constant [22 x i8] c"auo_g190ean01_timings\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1039, i32 36 }
@___asan_gen_.680 = private unnamed_addr constant [22 x i8] c"auo_p320hvn03_timings\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1069, i32 36 }
@___asan_gen_.683 = private unnamed_addr constant [19 x i8] c"auo_t215hvn01_mode\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1098, i32 38 }
@___asan_gen_.686 = private unnamed_addr constant [21 x i8] c"avic_tm070ddh03_mode\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1124, i32 38 }
@___asan_gen_.689 = private unnamed_addr constant [28 x i8] c"bananapi_s070wv20_ct16_mode\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1151, i32 38 }
@___asan_gen_.692 = private unnamed_addr constant [18 x i8] c"boe_hv070wsa_mode\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1173, i32 38 }
@___asan_gen_.695 = private unnamed_addr constant [26 x i8] c"cdtech_s043wq26h_ct7_mode\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1198, i32 38 }
@___asan_gen_.698 = private unnamed_addr constant [29 x i8] c"cdtech_s070pws19hp_fc21_mode\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1223, i32 38 }
@___asan_gen_.701 = private unnamed_addr constant [29 x i8] c"cdtech_s070swv29hg_dc44_mode\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1250, i32 38 }
@___asan_gen_.704 = private unnamed_addr constant [26 x i8] c"cdtech_s070wv95_ct16_mode\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1276, i32 38 }
@___asan_gen_.707 = private unnamed_addr constant [31 x i8] c"chefree_ch101olhlwh_002_timing\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1299, i32 36 }
@___asan_gen_.710 = private unnamed_addr constant [28 x i8] c"chunghwa_claa070wp03xg_mode\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1329, i32 38 }
@___asan_gen_.713 = private unnamed_addr constant [27 x i8] c"chunghwa_claa101wa01a_mode\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1355, i32 38 }
@___asan_gen_.716 = private unnamed_addr constant [26 x i8] c"chunghwa_claa101wb01_mode\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1380, i32 38 }
@___asan_gen_.719 = private unnamed_addr constant [31 x i8] c"dataimage_scf0700c48ggu18_mode\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1405, i32 38 }
@___asan_gen_.722 = private unnamed_addr constant [24 x i8] c"dlc_dlc0700yzg_1_timing\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1430, i32 36 }
@___asan_gen_.725 = private unnamed_addr constant [22 x i8] c"dlc_dlc1010gig_timing\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1460, i32 36 }
@___asan_gen_.728 = private unnamed_addr constant [21 x i8] c"edt_et035012dm6_mode\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1491, i32 38 }
@___asan_gen_.731 = private unnamed_addr constant [22 x i8] c"edt_etm0350g0dh6_mode\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1516, i32 38 }
@___asan_gen_.734 = private unnamed_addr constant [24 x i8] c"edt_etm043080dh6gp_mode\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1542, i32 38 }
@___asan_gen_.737 = private unnamed_addr constant [22 x i8] c"edt_etm0430g0dh6_mode\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1572, i32 38 }
@___asan_gen_.740 = private unnamed_addr constant [21 x i8] c"edt_et057090dhu_mode\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1598, i32 38 }
@___asan_gen_.743 = private unnamed_addr constant [22 x i8] c"edt_etm0700g0dh6_mode\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1624, i32 38 }
@___asan_gen_.746 = private unnamed_addr constant [22 x i8] c"edt_etmv570g2dhu_mode\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1663, i32 38 }
@___asan_gen_.749 = private unnamed_addr constant [23 x i8] c"eink_vb3300_kca_timing\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1689, i32 36 }
@___asan_gen_.752 = private unnamed_addr constant [28 x i8] c"evervision_vgg804821_timing\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1716, i32 36 }
@___asan_gen_.755 = private unnamed_addr constant [28 x i8] c"foxlink_fl500wvr00_a0t_mode\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1743, i32 38 }
@___asan_gen_.758 = private unnamed_addr constant [25 x i8] c"frida_frd350h54004_modes\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1766, i32 38 }
@___asan_gen_.761 = private unnamed_addr constant [24 x i8] c"friendlyarm_hd702e_mode\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1806, i32 38 }
@___asan_gen_.764 = private unnamed_addr constant [28 x i8] c"giantplus_gpg482739qs5_mode\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1828, i32 38 }
@___asan_gen_.767 = private unnamed_addr constant [26 x i8] c"giantplus_gpm940b0_timing\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1851, i32 36 }
@___asan_gen_.770 = private unnamed_addr constant [27 x i8] c"hannstar_hsd070pww1_timing\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1876, i32 36 }
@___asan_gen_.773 = private unnamed_addr constant [27 x i8] c"hannstar_hsd100pxn1_timing\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1906, i32 36 }
@___asan_gen_.776 = private unnamed_addr constant [27 x i8] c"hitachi_tx23d38vm0caa_mode\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1931, i32 38 }
@___asan_gen_.779 = private unnamed_addr constant [23 x i8] c"innolux_at043tn24_mode\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1957, i32 38 }
@___asan_gen_.782 = private unnamed_addr constant [23 x i8] c"innolux_at070tn92_mode\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 1982, i32 38 }
@___asan_gen_.785 = private unnamed_addr constant [26 x i8] c"innolux_g070y2_l01_timing\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2004, i32 36 }
@___asan_gen_.788 = private unnamed_addr constant [24 x i8] c"innolux_g070y2_t02_mode\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2035, i32 38 }
@___asan_gen_.791 = private unnamed_addr constant [27 x i8] c"innolux_g101ice_l01_timing\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2060, i32 36 }
@___asan_gen_.794 = private unnamed_addr constant [26 x i8] c"innolux_g121i1_l01_timing\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2089, i32 36 }
@___asan_gen_.797 = private unnamed_addr constant [24 x i8] c"innolux_g121x1_l03_mode\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2117, i32 38 }
@___asan_gen_.800 = private unnamed_addr constant [25 x i8] c"innolux_n156bge_l21_mode\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2145, i32 38 }
@___asan_gen_.803 = private unnamed_addr constant [25 x i8] c"innolux_zj070na_01p_mode\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2170, i32 38 }
@___asan_gen_.806 = private unnamed_addr constant [25 x i8] c"koe_tx14d24vm1bpa_timing\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2192, i32 36 }
@___asan_gen_.809 = private unnamed_addr constant [26 x i8] c"koe_tx26d202vm0bwa_timing\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2215, i32 36 }
@___asan_gen_.812 = private unnamed_addr constant [26 x i8] c"koe_tx31d200vm0baa_timing\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2246, i32 36 }
@___asan_gen_.815 = private unnamed_addr constant [22 x i8] c"kyo_tcg121xglp_timing\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2271, i32 36 }
@___asan_gen_.818 = private unnamed_addr constant [27 x i8] c"lemaker_bl035_rgb_002_mode\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2296, i32 38 }
@___asan_gen_.821 = private unnamed_addr constant [17 x i8] c"lg_lb070wv8_mode\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2319, i32 38 }
@___asan_gen_.824 = private unnamed_addr constant [21 x i8] c"logicpd_type_28_mode\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2463, i32 38 }
@___asan_gen_.827 = private unnamed_addr constant [32 x i8] c"logictechno_lt161010_2nh_timing\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2343, i32 36 }
@___asan_gen_.830 = private unnamed_addr constant [33 x i8] c"logictechno_lt170410_2whc_timing\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2372, i32 36 }
@___asan_gen_.833 = private unnamed_addr constant [36 x i8] c"logictechno_lttd800480070_l2rt_mode\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2399, i32 38 }
@___asan_gen_.836 = private unnamed_addr constant [39 x i8] c"logictechno_lttd800480070_l6wh_rt_mode\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2431, i32 38 }
@___asan_gen_.839 = private unnamed_addr constant [26 x i8] c"mitsubishi_aa070mc01_mode\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2497, i32 38 }
@___asan_gen_.842 = private unnamed_addr constant [32 x i8] c"multi_inno_mi1010ait_1cp_timing\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2529, i32 36 }
@___asan_gen_.845 = private unnamed_addr constant [26 x i8] c"nec_nl12880bc20_05_timing\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2560, i32 36 }
@___asan_gen_.848 = private unnamed_addr constant [24 x i8] c"nec_nl4827hc19_05b_mode\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2588, i32 38 }
@___asan_gen_.851 = private unnamed_addr constant [23 x i8] c"netron_dy_e231732_mode\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2613, i32 38 }
@___asan_gen_.854 = private unnamed_addr constant [35 x i8] c"newhaven_nhd_43_480272ef_atxl_mode\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2635, i32 38 }
@___asan_gen_.857 = private unnamed_addr constant [28 x i8] c"nlt_nl192108ac18_02d_timing\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2662, i32 36 }
@___asan_gen_.860 = private unnamed_addr constant [14 x i8] c"nvd_9128_mode\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2689, i32 38 }
@___asan_gen_.863 = private unnamed_addr constant [29 x i8] c"okaya_rs800480t_7x0gp_timing\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2713, i32 36 }
@___asan_gen_.866 = private unnamed_addr constant [31 x i8] c"olimex_lcd_olinuxino_43ts_mode\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2743, i32 38 }
@___asan_gen_.869 = private unnamed_addr constant [21 x i8] c"ontat_yx700wv03_mode\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2770, i32 38 }
@___asan_gen_.872 = private unnamed_addr constant [24 x i8] c"ortustech_com37h3m_mode\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2798, i32 38 }
@___asan_gen_.875 = private unnamed_addr constant [29 x i8] c"ortustech_com43h4m85ulc_mode\00", align 1
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2824, i32 38 }
@___asan_gen_.878 = private unnamed_addr constant [34 x i8] c"osddisplays_osd070t1718_19ts_mode\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2849, i32 38 }
@___asan_gen_.881 = private unnamed_addr constant [21 x i8] c"pda_91_00156_a0_mode\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2876, i32 38 }
@___asan_gen_.884 = private unnamed_addr constant [33 x i8] c"powertip_ph800480t013_idf02_mode\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2898, i32 38 }
@___asan_gen_.887 = private unnamed_addr constant [18 x i8] c"qd43003c0_40_mode\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2924, i32 38 }
@___asan_gen_.890 = private unnamed_addr constant [31 x i8] c"qishenglong_gopher2b_lcd_modes\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2947, i32 38 }
@___asan_gen_.893 = private unnamed_addr constant [28 x i8] c"rocktech_rk070er9427_timing\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 2987, i32 36 }
@___asan_gen_.896 = private unnamed_addr constant [28 x i8] c"rocktech_rk101ii01d_ct_mode\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3017, i32 38 }
@___asan_gen_.899 = private unnamed_addr constant [24 x i8] c"samsung_ltn101nt05_mode\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3045, i32 38 }
@___asan_gen_.902 = private unnamed_addr constant [29 x i8] c"satoz_sat050at40h12r2_timing\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3070, i32 36 }
@___asan_gen_.905 = private unnamed_addr constant [23 x i8] c"sharp_lq035q7db03_mode\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3120, i32 38 }
@___asan_gen_.908 = private unnamed_addr constant [23 x i8] c"sharp_lq070y3dg3b_mode\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3094, i32 38 }
@___asan_gen_.911 = private unnamed_addr constant [25 x i8] c"sharp_lq101k1ly04_timing\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3143, i32 36 }
@___asan_gen_.914 = private unnamed_addr constant [25 x i8] c"sharp_ls020b1dd01d_modes\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3168, i32 38 }
@___asan_gen_.917 = private unnamed_addr constant [29 x i8] c"shelly_sca07010_bfn_lnn_mode\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3209, i32 38 }
@___asan_gen_.920 = private unnamed_addr constant [22 x i8] c"starry_kr070pe2t_mode\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3231, i32 38 }
@___asan_gen_.923 = private unnamed_addr constant [25 x i8] c"tsd_tst043015cmhx_timing\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3256, i32 36 }
@___asan_gen_.926 = private unnamed_addr constant [27 x i8] c"tfc_s9700rtwv43tr_01b_mode\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3283, i32 38 }
@___asan_gen_.929 = private unnamed_addr constant [26 x i8] c"tianma_tm070jdhg30_timing\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3307, i32 36 }
@___asan_gen_.932 = private unnamed_addr constant [26 x i8] c"tianma_tm070rvhg71_timing\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3344, i32 36 }
@___asan_gen_.935 = private unnamed_addr constant [22 x i8] c"ti_nspire_cx_lcd_mode\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3369, i32 38 }
@___asan_gen_.938 = private unnamed_addr constant [27 x i8] c"ti_nspire_classic_lcd_mode\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3396, i32 38 }
@___asan_gen_.941 = private unnamed_addr constant [26 x i8] c"toshiba_lt089ac29000_mode\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3425, i32 38 }
@___asan_gen_.944 = private unnamed_addr constant [19 x i8] c"tpk_f07a_0102_mode\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3449, i32 38 }
@___asan_gen_.947 = private unnamed_addr constant [19 x i8] c"tpk_f10a_0102_mode\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3471, i32 38 }
@___asan_gen_.950 = private unnamed_addr constant [23 x i8] c"urt_umsh_8596md_timing\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3492, i32 36 }
@___asan_gen_.953 = private unnamed_addr constant [25 x i8] c"vivax_tpc9150_panel_mode\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3529, i32 38 }
@___asan_gen_.956 = private unnamed_addr constant [22 x i8] c"vl050_8048nt_c01_mode\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3554, i32 38 }
@___asan_gen_.959 = private unnamed_addr constant [24 x i8] c"winstar_wf35ltiacd_mode\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3579, i32 38 }
@___asan_gen_.962 = private unnamed_addr constant [44 x i8] c"yes_optoelectronics_ytc700tlag_05_201c_mode\00", align 1
@___asan_gen_.963 = private constant [40 x i8] c"../drivers/gpu/drm/panel/panel-simple.c\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.963, i32 3603, i32 38 }
@llvm.compiler.used = appending global [327 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_panel_simple_exit, ptr @__initcall__kmod_panel_simple__307_4383_panel_simple_init6, ptr @panel_dpi_probe._entry, ptr @panel_dpi_probe._entry_ptr, ptr @panel_simple_dsi_remove._entry, ptr @panel_simple_dsi_remove._entry_ptr, ptr @panel_simple_exit, ptr @panel_simple_get_display_modes._entry, ptr @panel_simple_get_display_modes._entry_ptr, ptr @panel_simple_get_non_edid_modes._entry, ptr @panel_simple_get_non_edid_modes._entry_ptr, ptr @panel_simple_get_timings_modes._entry, ptr @panel_simple_get_timings_modes._entry_ptr, ptr @panel_simple_parse_panel_timing_node._entry, ptr @panel_simple_parse_panel_timing_node._entry.45, ptr @panel_simple_parse_panel_timing_node._entry.48, ptr @panel_simple_parse_panel_timing_node._entry_ptr, ptr @panel_simple_parse_panel_timing_node._entry_ptr.47, ptr @panel_simple_parse_panel_timing_node._entry_ptr.50, ptr @panel_simple_probe._entry, ptr @panel_simple_probe._entry.10, ptr @panel_simple_probe._entry.15, ptr @panel_simple_probe._entry.19, ptr @panel_simple_probe._entry.22, ptr @panel_simple_probe._entry.25, ptr @panel_simple_probe._entry.28, ptr @panel_simple_probe._entry.31, ptr @panel_simple_probe._entry.34, ptr @panel_simple_probe._entry.36, ptr @panel_simple_probe._entry_ptr, ptr @panel_simple_probe._entry_ptr.12, ptr @panel_simple_probe._entry_ptr.18, ptr @panel_simple_probe._entry_ptr.21, ptr @panel_simple_probe._entry_ptr.24, ptr @panel_simple_probe._entry_ptr.27, ptr @panel_simple_probe._entry_ptr.30, ptr @panel_simple_probe._entry_ptr.33, ptr @panel_simple_probe._entry_ptr.35, ptr @panel_simple_probe._entry_ptr.38, ptr @panel_simple_resume._entry, ptr @panel_simple_resume._entry_ptr, ptr @panel_simple_dsi_driver, ptr @panel_simple_platform_driver, ptr @.str, ptr @dsi_of_match, ptr @panel_simple_pm_ops, ptr @auo_b080uan01, ptr @boe_tv080wum_nl0, ptr @lg_ld070wx3_sl01, ptr @lg_lh500wx1_sd03, ptr @panasonic_vvx10f004b00, ptr @lg_acx467akm_7, ptr @osd101t2045_53ts, ptr @auo_b080uan01_mode, ptr @boe_tv080wum_nl0_mode, ptr @lg_ld070wx3_sl01_mode, ptr @lg_lh500wx1_sd03_mode, ptr @panasonic_vvx10f004b00_mode, ptr @lg_acx467akm_7_mode, ptr @osd101t2045_53ts_mode, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @panel_dpi, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.37, ptr @panel_simple_funcs, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @platform_of_match, ptr @ampire_am_1280800n3tzqw_t00h, ptr @ampire_am_480272h3tmqw_t01h, ptr @ampire_am800480r3tmqwa1h, ptr @arm_rtsm, ptr @armadeus_st0700_adapt, ptr @auo_b101aw03, ptr @auo_b101xtn01, ptr @auo_g070vvn01, ptr @auo_g101evn010, ptr @auo_g104sn02, ptr @auo_g121ean01, ptr @auo_g133han01, ptr @auo_g156xtn01, ptr @auo_g185han01, ptr @auo_g190ean01, ptr @auo_p320hvn03, ptr @auo_t215hvn01, ptr @avic_tm070ddh03, ptr @bananapi_s070wv20_ct16, ptr @boe_hv070wsa, ptr @cdtech_s043wq26h_ct7, ptr @cdtech_s070pws19hp_fc21, ptr @cdtech_s070swv29hg_dc44, ptr @cdtech_s070wv95_ct16, ptr @chefree_ch101olhlwh_002, ptr @chunghwa_claa070wp03xg, ptr @chunghwa_claa101wa01a, ptr @chunghwa_claa101wb01, ptr @dataimage_scf0700c48ggu18, ptr @dlc_dlc0700yzg_1, ptr @dlc_dlc1010gig, ptr @edt_et035012dm6, ptr @edt_etm0350g0dh6, ptr @edt_etm043080dh6gp, ptr @edt_etm0430g0dh6, ptr @edt_et057090dhu, ptr @edt_etm0700g0dh6, ptr @edt_etm0700g0bdh6, ptr @edt_etmv570g2dhu, ptr @eink_vb3300_kca, ptr @evervision_vgg804821, ptr @foxlink_fl500wvr00_a0t, ptr @frida_frd350h54004, ptr @friendlyarm_hd702e, ptr @giantplus_gpg482739qs5, ptr @giantplus_gpm940b0, ptr @hannstar_hsd070pww1, ptr @hannstar_hsd100pxn1, ptr @hitachi_tx23d38vm0caa, ptr @innolux_at043tn24, ptr @innolux_at070tn92, ptr @innolux_g070y2_l01, ptr @innolux_g070y2_t02, ptr @innolux_g101ice_l01, ptr @innolux_g121i1_l01, ptr @innolux_g121x1_l03, ptr @innolux_n156bge_l21, ptr @innolux_zj070na_01p, ptr @koe_tx14d24vm1bpa, ptr @koe_tx26d202vm0bwa, ptr @koe_tx31d200vm0baa, ptr @kyo_tcg121xglp, ptr @lemaker_bl035_rgb_002, ptr @lg_lb070wv8, ptr @logicpd_type_28, ptr @logictechno_lt161010_2nh, ptr @logictechno_lt170410_2whc, ptr @logictechno_lttd800480070_l2rt, ptr @logictechno_lttd800480070_l6wh_rt, ptr @mitsubishi_aa070mc01, ptr @multi_inno_mi1010ait_1cp, ptr @nec_nl12880bc20_05, ptr @nec_nl4827hc19_05b, ptr @netron_dy_e231732, ptr @newhaven_nhd_43_480272ef_atxl, ptr @nlt_nl192108ac18_02d, ptr @nvd_9128, ptr @okaya_rs800480t_7x0gp, ptr @olimex_lcd_olinuxino_43ts, ptr @ontat_yx700wv03, ptr @ortustech_com37h3m, ptr @ortustech_com43h4m85ulc, ptr @osddisplays_osd070t1718_19ts, ptr @pda_91_00156_a0, ptr @powertip_ph800480t013_idf02, ptr @qd43003c0_40, ptr @qishenglong_gopher2b_lcd, ptr @rocktech_rk070er9427, ptr @rocktech_rk101ii01d_ct, ptr @samsung_ltn101nt05, ptr @satoz_sat050at40h12r2, ptr @sharp_lq035q7db03, ptr @sharp_lq070y3dg3b, ptr @sharp_lq101k1ly04, ptr @sharp_ls020b1dd01d, ptr @shelly_sca07010_bfn_lnn, ptr @starry_kr070pe2t, ptr @tsd_tst043015cmhx, ptr @tfc_s9700rtwv43tr_01b, ptr @tianma_tm070jdhg30, ptr @tianma_tm070jvhg33, ptr @tianma_tm070rvhg71, ptr @ti_nspire_cx_lcd_panel, ptr @ti_nspire_classic_lcd_panel, ptr @toshiba_lt089ac29000, ptr @tpk_f07a_0102, ptr @tpk_f10a_0102, ptr @urt_umsh_8596md_parallel, ptr @urt_umsh_8596md_lvds, ptr @vivax_tpc9150_panel, ptr @vl050_8048nt_c01, ptr @winstar_wf35ltiacd, ptr @yes_optoelectronics_ytc700tlag_05_201c, ptr @ampire_am_1280800n3tzqw_t00h_mode, ptr @ampire_am_480272h3tmqw_t01h_mode, ptr @ampire_am800480r3tmqwa1h_mode, ptr @arm_rtsm_mode, ptr @santek_st0700i5y_rbslw_f_timing, ptr @auo_b101aw03_mode, ptr @auo_b101xtn01_mode, ptr @auo_g070vvn01_timings, ptr @auo_g101evn010_mode, ptr @auo_g104sn02_mode, ptr @auo_g121ean01_mode, ptr @auo_g133han01_timings, ptr @auo_g156xtn01_mode, ptr @auo_g185han01_timings, ptr @auo_g190ean01_timings, ptr @auo_p320hvn03_timings, ptr @auo_t215hvn01_mode, ptr @avic_tm070ddh03_mode, ptr @bananapi_s070wv20_ct16_mode, ptr @boe_hv070wsa_mode, ptr @cdtech_s043wq26h_ct7_mode, ptr @cdtech_s070pws19hp_fc21_mode, ptr @cdtech_s070swv29hg_dc44_mode, ptr @cdtech_s070wv95_ct16_mode, ptr @chefree_ch101olhlwh_002_timing, ptr @chunghwa_claa070wp03xg_mode, ptr @chunghwa_claa101wa01a_mode, ptr @chunghwa_claa101wb01_mode, ptr @dataimage_scf0700c48ggu18_mode, ptr @dlc_dlc0700yzg_1_timing, ptr @dlc_dlc1010gig_timing, ptr @edt_et035012dm6_mode, ptr @edt_etm0350g0dh6_mode, ptr @edt_etm043080dh6gp_mode, ptr @edt_etm0430g0dh6_mode, ptr @edt_et057090dhu_mode, ptr @edt_etm0700g0dh6_mode, ptr @edt_etmv570g2dhu_mode, ptr @eink_vb3300_kca_timing, ptr @evervision_vgg804821_timing, ptr @foxlink_fl500wvr00_a0t_mode, ptr @frida_frd350h54004_modes, ptr @friendlyarm_hd702e_mode, ptr @giantplus_gpg482739qs5_mode, ptr @giantplus_gpm940b0_timing, ptr @hannstar_hsd070pww1_timing, ptr @hannstar_hsd100pxn1_timing, ptr @hitachi_tx23d38vm0caa_mode, ptr @innolux_at043tn24_mode, ptr @innolux_at070tn92_mode, ptr @innolux_g070y2_l01_timing, ptr @innolux_g070y2_t02_mode, ptr @innolux_g101ice_l01_timing, ptr @innolux_g121i1_l01_timing, ptr @innolux_g121x1_l03_mode, ptr @innolux_n156bge_l21_mode, ptr @innolux_zj070na_01p_mode, ptr @koe_tx14d24vm1bpa_timing, ptr @koe_tx26d202vm0bwa_timing, ptr @koe_tx31d200vm0baa_timing, ptr @kyo_tcg121xglp_timing, ptr @lemaker_bl035_rgb_002_mode, ptr @lg_lb070wv8_mode, ptr @logicpd_type_28_mode, ptr @logictechno_lt161010_2nh_timing, ptr @logictechno_lt170410_2whc_timing, ptr @logictechno_lttd800480070_l2rt_mode, ptr @logictechno_lttd800480070_l6wh_rt_mode, ptr @mitsubishi_aa070mc01_mode, ptr @multi_inno_mi1010ait_1cp_timing, ptr @nec_nl12880bc20_05_timing, ptr @nec_nl4827hc19_05b_mode, ptr @netron_dy_e231732_mode, ptr @newhaven_nhd_43_480272ef_atxl_mode, ptr @nlt_nl192108ac18_02d_timing, ptr @nvd_9128_mode, ptr @okaya_rs800480t_7x0gp_timing, ptr @olimex_lcd_olinuxino_43ts_mode, ptr @ontat_yx700wv03_mode, ptr @ortustech_com37h3m_mode, ptr @ortustech_com43h4m85ulc_mode, ptr @osddisplays_osd070t1718_19ts_mode, ptr @pda_91_00156_a0_mode, ptr @powertip_ph800480t013_idf02_mode, ptr @qd43003c0_40_mode, ptr @qishenglong_gopher2b_lcd_modes, ptr @rocktech_rk070er9427_timing, ptr @rocktech_rk101ii01d_ct_mode, ptr @samsung_ltn101nt05_mode, ptr @satoz_sat050at40h12r2_timing, ptr @sharp_lq035q7db03_mode, ptr @sharp_lq070y3dg3b_mode, ptr @sharp_lq101k1ly04_timing, ptr @sharp_ls020b1dd01d_modes, ptr @shelly_sca07010_bfn_lnn_mode, ptr @starry_kr070pe2t_mode, ptr @tsd_tst043015cmhx_timing, ptr @tfc_s9700rtwv43tr_01b_mode, ptr @tianma_tm070jdhg30_timing, ptr @tianma_tm070rvhg71_timing, ptr @ti_nspire_cx_lcd_mode, ptr @ti_nspire_classic_lcd_mode, ptr @toshiba_lt089ac29000_mode, ptr @tpk_f07a_0102_mode, ptr @tpk_f10a_0102_mode, ptr @urt_umsh_8596md_timing, ptr @vivax_tpc9150_panel_mode, ptr @vl050_8048nt_c01_mode, ptr @winstar_wf35ltiacd_mode, ptr @yes_optoelectronics_ytc700tlag_05_201c_mode], section "llvm.metadata"
@0 = internal global [301 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_dsi_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b080uan01 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_tv080wum_nl0 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_ld070wx3_sl01 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lh500wx1_sd03 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panasonic_vvx10f004b00 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_acx467akm_7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd101t2045_53ts to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b080uan01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_tv080wum_nl0_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_ld070wx3_sl01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lh500wx1_sd03_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panasonic_vvx10f004b00_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_acx467akm_7_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd101t2045_53ts_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_dpi to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_dpi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_parse_panel_timing_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_parse_panel_timing_node._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_parse_panel_timing_node._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_get_non_edid_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_get_timings_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_get_display_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_simple_dsi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_of_match to i32), i32 24108, i32 30144, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ampire_am_1280800n3tzqw_t00h to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ampire_am_480272h3tmqw_t01h to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ampire_am800480r3tmqwa1h to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_rtsm to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armadeus_st0700_adapt to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b101aw03 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b101xtn01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g070vvn01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g101evn010 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g104sn02 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g121ean01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g133han01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g156xtn01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g185han01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g190ean01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_p320hvn03 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_t215hvn01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avic_tm070ddh03 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bananapi_s070wv20_ct16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_hv070wsa to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdtech_s043wq26h_ct7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdtech_s070pws19hp_fc21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdtech_s070swv29hg_dc44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdtech_s070wv95_ct16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chefree_ch101olhlwh_002 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunghwa_claa070wp03xg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunghwa_claa101wa01a to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunghwa_claa101wb01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataimage_scf0700c48ggu18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlc_dlc0700yzg_1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlc_dlc1010gig to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_et035012dm6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm0350g0dh6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm043080dh6gp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm0430g0dh6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_et057090dhu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm0700g0dh6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm0700g0bdh6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etmv570g2dhu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eink_vb3300_kca to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evervision_vgg804821 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foxlink_fl500wvr00_a0t to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frida_frd350h54004 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friendlyarm_hd702e to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @giantplus_gpg482739qs5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @giantplus_gpm940b0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hannstar_hsd070pww1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hannstar_hsd100pxn1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hitachi_tx23d38vm0caa to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_at043tn24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_at070tn92 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g070y2_l01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g070y2_t02 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g101ice_l01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g121i1_l01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g121x1_l03 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_n156bge_l21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_zj070na_01p to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koe_tx14d24vm1bpa to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koe_tx26d202vm0bwa to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koe_tx31d200vm0baa to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyo_tcg121xglp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lemaker_bl035_rgb_002 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lb070wv8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logicpd_type_28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logictechno_lt161010_2nh to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logictechno_lt170410_2whc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logictechno_lttd800480070_l2rt to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logictechno_lttd800480070_l6wh_rt to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mitsubishi_aa070mc01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_inno_mi1010ait_1cp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nec_nl12880bc20_05 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nec_nl4827hc19_05b to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netron_dy_e231732 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @newhaven_nhd_43_480272ef_atxl to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlt_nl192108ac18_02d to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvd_9128 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @okaya_rs800480t_7x0gp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olimex_lcd_olinuxino_43ts to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ontat_yx700wv03 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ortustech_com37h3m to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ortustech_com43h4m85ulc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osddisplays_osd070t1718_19ts to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_91_00156_a0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powertip_ph800480t013_idf02 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qd43003c0_40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qishenglong_gopher2b_lcd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocktech_rk070er9427 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocktech_rk101ii01d_ct to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ltn101nt05 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satoz_sat050at40h12r2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_lq035q7db03 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_lq070y3dg3b to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_lq101k1ly04 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_ls020b1dd01d to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shelly_sca07010_bfn_lnn to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starry_kr070pe2t to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsd_tst043015cmhx to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfc_s9700rtwv43tr_01b to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_tm070jdhg30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_tm070jvhg33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_tm070rvhg71 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_nspire_cx_lcd_panel to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_nspire_classic_lcd_panel to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshiba_lt089ac29000 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_f07a_0102 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_f10a_0102 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urt_umsh_8596md_parallel to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urt_umsh_8596md_lvds to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivax_tpc9150_panel to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl050_8048nt_c01 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @winstar_wf35ltiacd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yes_optoelectronics_ytc700tlag_05_201c to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ampire_am_1280800n3tzqw_t00h_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ampire_am_480272h3tmqw_t01h_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ampire_am800480r3tmqwa1h_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_rtsm_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @santek_st0700i5y_rbslw_f_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b101aw03_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_b101xtn01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g070vvn01_timings to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g101evn010_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g104sn02_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g121ean01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g133han01_timings to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g156xtn01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g185han01_timings to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_g190ean01_timings to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_p320hvn03_timings to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auo_t215hvn01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avic_tm070ddh03_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bananapi_s070wv20_ct16_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boe_hv070wsa_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdtech_s043wq26h_ct7_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdtech_s070pws19hp_fc21_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdtech_s070swv29hg_dc44_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdtech_s070wv95_ct16_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chefree_ch101olhlwh_002_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunghwa_claa070wp03xg_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunghwa_claa101wa01a_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunghwa_claa101wb01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataimage_scf0700c48ggu18_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlc_dlc0700yzg_1_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlc_dlc1010gig_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_et035012dm6_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm0350g0dh6_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm043080dh6gp_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm0430g0dh6_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_et057090dhu_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etm0700g0dh6_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_etmv570g2dhu_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eink_vb3300_kca_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evervision_vgg804821_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foxlink_fl500wvr00_a0t_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frida_frd350h54004_modes to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @friendlyarm_hd702e_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @giantplus_gpg482739qs5_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @giantplus_gpm940b0_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hannstar_hsd070pww1_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hannstar_hsd100pxn1_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hitachi_tx23d38vm0caa_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_at043tn24_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_at070tn92_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g070y2_l01_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g070y2_t02_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g101ice_l01_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g121i1_l01_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_g121x1_l03_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_n156bge_l21_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_zj070na_01p_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koe_tx14d24vm1bpa_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koe_tx26d202vm0bwa_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @koe_tx31d200vm0baa_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyo_tcg121xglp_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lemaker_bl035_rgb_002_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_lb070wv8_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logicpd_type_28_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logictechno_lt161010_2nh_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logictechno_lt170410_2whc_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logictechno_lttd800480070_l2rt_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logictechno_lttd800480070_l6wh_rt_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mitsubishi_aa070mc01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_inno_mi1010ait_1cp_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nec_nl12880bc20_05_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nec_nl4827hc19_05b_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netron_dy_e231732_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @newhaven_nhd_43_480272ef_atxl_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlt_nl192108ac18_02d_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvd_9128_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @okaya_rs800480t_7x0gp_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olimex_lcd_olinuxino_43ts_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ontat_yx700wv03_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ortustech_com37h3m_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ortustech_com43h4m85ulc_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osddisplays_osd070t1718_19ts_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pda_91_00156_a0_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powertip_ph800480t013_idf02_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qd43003c0_40_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qishenglong_gopher2b_lcd_modes to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocktech_rk070er9427_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocktech_rk101ii01d_ct_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_ltn101nt05_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @satoz_sat050at40h12r2_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_lq035q7db03_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_lq070y3dg3b_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_lq101k1ly04_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_ls020b1dd01d_modes to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shelly_sca07010_bfn_lnn_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starry_kr070pe2t_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsd_tst043015cmhx_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfc_s9700rtwv43tr_01b_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_tm070jdhg30_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_tm070rvhg71_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_nspire_cx_lcd_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_nspire_classic_lcd_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshiba_lt089ac29000_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_f07a_0102_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpk_f10a_0102_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @urt_umsh_8596md_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivax_tpc9150_panel_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl050_8048nt_c01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @winstar_wf35ltiacd_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yes_optoelectronics_ytc700tlag_05_201c_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @panel_simple_platform_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @panel_simple_dsi_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err_did_platform_register, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_did_platform_register:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_simple_platform_driver) #7
  br label %cleanup

cleanup:                                          ; preds = %err_did_platform_register, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_did_platform_register ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @panel_simple_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @panel_simple_dsi_driver) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_simple_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_dsi_probe(ptr noundef %dsi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @dsi_of_match, ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call3 = tail call fastcc i32 @panel_simple_probe(ptr noundef %dev, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.panel_desc_dsi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mode_flags, align 8
  %format = getelementptr inbounds %struct.panel_desc_dsi, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format, align 4
  %format6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %9 = ptrtoint ptr %format6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %format6, align 4
  %lanes = getelementptr inbounds %struct.panel_desc_dsi, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lanes, align 4
  %lanes7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %12 = ptrtoint ptr %lanes7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %lanes7, align 8
  %call8 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.then10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.then10 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_dsi_remove(ptr noundef %dsi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #7
  %call2.i = tail call i32 @drm_panel_disable(ptr noundef %1) #7
  %call4.i = tail call i32 @drm_panel_unprepare(ptr noundef %1) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  %ddc.i = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.panel_simple_remove.exit_crit_edge, label %if.then.i

if.end.panel_simple_remove.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_remove.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev6.i) #7
  br label %panel_simple_remove.exit

panel_simple_remove.exit:                         ; preds = %if.then.i, %if.end.panel_simple_remove.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_simple_dsi_shutdown(ptr nocapture noundef readonly %dsi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @drm_panel_disable(ptr noundef %1) #7
  %call3.i = tail call i32 @drm_panel_unprepare(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enable_gpio = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  %supply = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %5) #7
  %call2 = tail call i64 @ktime_get() #7
  %unprepared_time = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %unprepared_time to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call2, ptr %unprepared_time, align 8
  %edid = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edid, align 8
  tail call void @kfree(ptr noundef %8) #7
  %9 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %edid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %desc = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %unprepare = getelementptr inbounds %struct.panel_desc, ptr %3, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %unprepare to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unprepare, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.panel_simple_wait.exit_crit_edge, label %if.end.i

entry.panel_simple_wait.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_wait.exit

if.end.i:                                         ; preds = %entry
  %unprepared_time = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %unprepared_time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %unprepared_time, align 8
  %conv.i = zext i32 %5 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000000
  %add.i = add i64 %7, %mul.i.i
  %call1.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call1.i)
  %cmp.i.i.i = icmp sgt i64 %add.i, %call1.i
  br i1 %cmp.i.i.i, label %if.then3.i, label %if.end.i.panel_simple_wait.exit_crit_edge

if.end.i.panel_simple_wait.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_wait.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i64 %add.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %8 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #7
  %9 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %8) #11, !srcloc !611
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %8, i64 %9, i32 0) #11, !srcloc !612
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %11 = trunc i64 %cond213.i.i.i to i32
  %conv6.i = add i32 %11, 1
  tail call void @msleep(i32 noundef %conv6.i) #7
  br label %panel_simple_wait.exit

panel_simple_wait.exit:                           ; preds = %if.then3.i, %if.end.i.panel_simple_wait.exit_crit_edge, %entry.panel_simple_wait.exit_crit_edge
  %supply = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %panel_simple_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %panel_simple_wait.exit
  %enable_gpio = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #7
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 8
  %delay3 = getelementptr inbounds %struct.panel_desc, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %delay3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef %19) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %call9 = tail call i64 @ktime_get() #7
  %prepared_time = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %prepared_time to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call9, ptr %prepared_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @panel_simple_probe(ptr noundef %dev, ptr noundef %desc) unnamed_addr #3 align 64 {
entry:
  %vm.i362 = alloca %struct.videomode, align 4
  %bus_flags.i = alloca i32, align 4
  %vm.i = alloca %struct.videomode, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %dt = alloca %struct.display_timing, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %dt) #7
  %0 = call ptr @memset(ptr %dt, i32 255, i32 112)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 184, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %enabled, align 8
  %prepared_time = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %prepared_time to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %prepared_time, align 8
  %desc1 = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %desc, ptr %desc1, align 8
  %call2 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  %supply = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %supply, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 3) #7
  %enable_gpio = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %enable_gpio, align 4
  %cmp.i356 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i356, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end8
  %cmp.not = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then12.cleanup_crit_edge, label %do.end

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %7) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %orientation = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 11
  %call18 = tail call i32 @of_drm_get_panel_orientation(ptr noundef %9, ptr noundef %orientation) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %11, i32 noundef %call18) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %12 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i357 = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i357)
  %tobool.not.i = icmp eq i32 %call.i357, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.end36

of_parse_phandle.exit:                            ; preds = %if.end25
  %13 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool28.not = icmp eq ptr %14, null
  br i1 %tobool28.not, label %of_parse_phandle.exit.if.end36_crit_edge, label %if.then29

of_parse_phandle.exit.if.end36_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then29:                                        ; preds = %of_parse_phandle.exit
  %call30 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %14) #7
  %ddc31 = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %ddc31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %ddc31, align 8
  call void @of_node_put(ptr noundef nonnull %14) #7
  %16 = ptrtoint ptr %ddc31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddc31, align 8
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %if.then29.cleanup_crit_edge, label %if.then29.if.end36_crit_edge

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.then29.if.end36_crit_edge, %of_parse_phandle.exit.if.end36_crit_edge, %of_parse_phandle.exit.thread
  %cmp37 = icmp eq ptr %desc, @panel_dpi
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_flags.i) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm.i) #7
  %18 = call ptr @memset(ptr %vm.i, i32 255, i32 36)
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #7
  %tobool.not.i358 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i358, label %if.then38.panel_dpi_probe.exit.thread_crit_edge, label %if.end.i359

if.then38.panel_dpi_probe.exit.thread_crit_edge:  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_dpi_probe.exit.thread

if.end.i359:                                      ; preds = %if.then38
  %call.i36.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #7
  %tobool2.not.i = icmp eq ptr %call.i36.i, null
  br i1 %tobool2.not.i, label %if.end.i359.panel_dpi_probe.exit.thread_crit_edge, label %if.end4.i

if.end.i359.panel_dpi_probe.exit.thread_crit_edge: ; preds = %if.end.i359
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_dpi_probe.exit.thread

if.end4.i:                                        ; preds = %if.end.i359
  %call5.i = call i32 @of_get_display_timing(ptr noundef %20, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i36.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i360 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i360, label %do.end.i, label %if.end42

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %20) #10
  br label %panel_dpi_probe.exit.thread

panel_dpi_probe.exit.thread:                      ; preds = %do.end.i, %if.end.i359.panel_dpi_probe.exit.thread_crit_edge, %if.then38.panel_dpi_probe.exit.thread_crit_edge
  %retval.0.i361.ph = phi i32 [ -12, %if.end.i359.panel_dpi_probe.exit.thread_crit_edge ], [ -12, %if.then38.panel_dpi_probe.exit.thread_crit_edge ], [ %call5.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_flags.i) #7
  br label %free_ddc

if.end42:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %timings.i = getelementptr inbounds %struct.panel_desc, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %timings.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i36.i, ptr %timings.i, align 4
  %num_timings.i = getelementptr inbounds %struct.panel_desc, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %num_timings.i, align 4
  %size.i = getelementptr inbounds %struct.panel_desc, ptr %call.i.i, i32 0, i32 5
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.41, ptr noundef %size.i, i32 noundef 1, i32 noundef 0) #7
  %height.i = getelementptr inbounds %struct.panel_desc, ptr %call.i.i, i32 0, i32 5, i32 1
  %call.i.i37.i = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.42, ptr noundef %height.i, i32 noundef 1, i32 noundef 0) #7
  %23 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bus_flags.i, align 4
  %flags.i = getelementptr inbounds %struct.display_timing, ptr %call.i36.i, i32 0, i32 9
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %flags11.i = getelementptr inbounds %struct.videomode, ptr %vm.i, i32 0, i32 9
  %26 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %flags11.i, align 4
  call void @drm_bus_flags_from_videomode(ptr noundef nonnull %vm.i, ptr noundef nonnull %bus_flags.i) #7
  %27 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus_flags.i, align 4
  %bus_flags12.i = getelementptr inbounds %struct.panel_desc, ptr %call.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %bus_flags12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %bus_flags12.i, align 4
  %connector_type.i = getelementptr inbounds %struct.panel_desc, ptr %call.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %connector_type.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 17, ptr %connector_type.i, align 4
  %31 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %desc1, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_flags.i) #7
  br label %if.end49

if.else:                                          ; preds = %if.end36
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call45 = call i32 @of_get_display_timing(ptr noundef %33, ptr noundef nonnull @.str.14, ptr noundef nonnull %dt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %if.else
  %34 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc1, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm.i362) #7
  %36 = call ptr @memset(ptr %vm.i362, i32 255, i32 40)
  %num_modes.i = getelementptr inbounds %struct.panel_desc, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i363 = icmp eq i32 %38, 0
  br i1 %tobool.not.i363, label %if.end26.i, label %if.then47.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge, !prof !613

if.then47.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_parse_panel_timing_node.exit.sink.split

if.end26.i:                                       ; preds = %if.then47
  %num_timings.i365 = getelementptr inbounds %struct.panel_desc, ptr %35, i32 0, i32 3
  %39 = ptrtoint ptr %num_timings.i365 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_timings.i365, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool28.not.i = icmp eq i32 %40, 0
  br i1 %tobool28.not.i, label %if.end26.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge, label %for.body.lr.ph.i, !prof !614

if.end26.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_parse_panel_timing_node.exit.sink.split

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %timings.i366 = getelementptr inbounds %struct.panel_desc, ptr %35, i32 0, i32 2
  %41 = ptrtoint ptr %timings.i366 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %timings.i366, align 4
  %typ.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %typ.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %typ.i, align 4
  %typ75.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 2, i32 1
  %typ86.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 3, i32 1
  %typ97.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 4, i32 1
  %typ108.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 5, i32 1
  %typ119.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 6, i32 1
  %typ130.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 7, i32 1
  %typ141.i = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 8, i32 1
  %flags.i367 = getelementptr inbounds %struct.display_timing, ptr %dt, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0261.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %hactive69.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 1
  %45 = ptrtoint ptr %hactive69.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hactive69.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp70.not.i = icmp ult i32 %44, %46
  br i1 %cmp70.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %max.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 1, i32 2
  %47 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %48)
  %cmp74.not.i = icmp ugt i32 %44, %48
  br i1 %cmp74.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %49 = ptrtoint ptr %typ75.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %typ75.i, align 4
  %hfront_porch76.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 2
  %51 = ptrtoint ptr %hfront_porch76.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hfront_porch76.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp78.not.i = icmp ult i32 %50, %52
  br i1 %cmp78.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %land.lhs.true79.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true79.i:                                ; preds = %lor.lhs.false.i
  %max83.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 2, i32 2
  %53 = ptrtoint ptr %max83.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %54)
  %cmp84.not.i = icmp ugt i32 %50, %54
  br i1 %cmp84.not.i, label %land.lhs.true79.i.for.inc.i_crit_edge, label %lor.lhs.false85.i

land.lhs.true79.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false85.i:                                ; preds = %land.lhs.true79.i
  %55 = ptrtoint ptr %typ86.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %typ86.i, align 4
  %hback_porch87.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 3
  %57 = ptrtoint ptr %hback_porch87.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hback_porch87.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp89.not.i = icmp ult i32 %56, %58
  br i1 %cmp89.not.i, label %lor.lhs.false85.i.for.inc.i_crit_edge, label %land.lhs.true90.i

lor.lhs.false85.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true90.i:                                ; preds = %lor.lhs.false85.i
  %max94.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 3, i32 2
  %59 = ptrtoint ptr %max94.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max94.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %60)
  %cmp95.not.i = icmp ugt i32 %56, %60
  br i1 %cmp95.not.i, label %land.lhs.true90.i.for.inc.i_crit_edge, label %lor.lhs.false96.i

land.lhs.true90.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false96.i:                                ; preds = %land.lhs.true90.i
  %61 = ptrtoint ptr %typ97.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %typ97.i, align 4
  %hsync_len98.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 4
  %63 = ptrtoint ptr %hsync_len98.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hsync_len98.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp100.not.i = icmp ult i32 %62, %64
  br i1 %cmp100.not.i, label %lor.lhs.false96.i.for.inc.i_crit_edge, label %land.lhs.true101.i

lor.lhs.false96.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true101.i:                               ; preds = %lor.lhs.false96.i
  %max105.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 4, i32 2
  %65 = ptrtoint ptr %max105.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max105.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %66)
  %cmp106.not.i = icmp ugt i32 %62, %66
  br i1 %cmp106.not.i, label %land.lhs.true101.i.for.inc.i_crit_edge, label %lor.lhs.false107.i

land.lhs.true101.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false107.i:                               ; preds = %land.lhs.true101.i
  %67 = ptrtoint ptr %typ108.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %typ108.i, align 4
  %vactive109.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 5
  %69 = ptrtoint ptr %vactive109.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vactive109.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp111.not.i = icmp ult i32 %68, %70
  br i1 %cmp111.not.i, label %lor.lhs.false107.i.for.inc.i_crit_edge, label %land.lhs.true112.i

lor.lhs.false107.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true112.i:                               ; preds = %lor.lhs.false107.i
  %max116.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 5, i32 2
  %71 = ptrtoint ptr %max116.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max116.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %72)
  %cmp117.not.i = icmp ugt i32 %68, %72
  br i1 %cmp117.not.i, label %land.lhs.true112.i.for.inc.i_crit_edge, label %lor.lhs.false118.i

land.lhs.true112.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false118.i:                               ; preds = %land.lhs.true112.i
  %73 = ptrtoint ptr %typ119.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %typ119.i, align 4
  %vfront_porch120.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 6
  %75 = ptrtoint ptr %vfront_porch120.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vfront_porch120.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp122.not.i = icmp ult i32 %74, %76
  br i1 %cmp122.not.i, label %lor.lhs.false118.i.for.inc.i_crit_edge, label %land.lhs.true123.i

lor.lhs.false118.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true123.i:                               ; preds = %lor.lhs.false118.i
  %max127.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 6, i32 2
  %77 = ptrtoint ptr %max127.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max127.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %78)
  %cmp128.not.i = icmp ugt i32 %74, %78
  br i1 %cmp128.not.i, label %land.lhs.true123.i.for.inc.i_crit_edge, label %lor.lhs.false129.i

land.lhs.true123.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false129.i:                               ; preds = %land.lhs.true123.i
  %79 = ptrtoint ptr %typ130.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %typ130.i, align 4
  %vback_porch131.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 7
  %81 = ptrtoint ptr %vback_porch131.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vback_porch131.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp133.not.i = icmp ult i32 %80, %82
  br i1 %cmp133.not.i, label %lor.lhs.false129.i.for.inc.i_crit_edge, label %land.lhs.true134.i

lor.lhs.false129.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true134.i:                               ; preds = %lor.lhs.false129.i
  %max138.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 7, i32 2
  %83 = ptrtoint ptr %max138.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max138.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %84)
  %cmp139.not.i = icmp ugt i32 %80, %84
  br i1 %cmp139.not.i, label %land.lhs.true134.i.for.inc.i_crit_edge, label %lor.lhs.false140.i

land.lhs.true134.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false140.i:                               ; preds = %land.lhs.true134.i
  %85 = ptrtoint ptr %typ141.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %typ141.i, align 4
  %vsync_len142.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 8
  %87 = ptrtoint ptr %vsync_len142.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vsync_len142.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp144.not.i = icmp ult i32 %86, %88
  br i1 %cmp144.not.i, label %lor.lhs.false140.i.for.inc.i_crit_edge, label %land.lhs.true145.i

lor.lhs.false140.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true145.i:                               ; preds = %lor.lhs.false140.i
  %max149.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 8, i32 2
  %89 = ptrtoint ptr %max149.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max149.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %90)
  %cmp150.not.i = icmp ugt i32 %86, %90
  br i1 %cmp150.not.i, label %land.lhs.true145.i.for.inc.i_crit_edge, label %if.end152.i

land.lhs.true145.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end152.i:                                      ; preds = %land.lhs.true145.i
  %91 = ptrtoint ptr %flags.i367 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i367, align 4
  %flags153.i = getelementptr %struct.display_timing, ptr %42, i32 %i.0261.i, i32 9
  %93 = ptrtoint ptr %flags153.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags153.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp154.not.i = icmp eq i32 %92, %94
  br i1 %cmp154.not.i, label %cleanup.i, label %if.end152.i.for.inc.i_crit_edge

if.end152.i.for.inc.i_crit_edge:                  ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @videomode_from_timing(ptr noundef nonnull %dt, ptr noundef nonnull %vm.i362) #7
  %override_mode.i = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 10
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %vm.i362, ptr noundef %override_mode.i) #7
  %type.i = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 10, i32 28
  %95 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %type.i, align 2
  %97 = or i8 %96, 72
  store i8 %97, ptr %type.i, align 2
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end152.i.for.inc.i_crit_edge, %land.lhs.true145.i.for.inc.i_crit_edge, %lor.lhs.false140.i.for.inc.i_crit_edge, %land.lhs.true134.i.for.inc.i_crit_edge, %lor.lhs.false129.i.for.inc.i_crit_edge, %land.lhs.true123.i.for.inc.i_crit_edge, %lor.lhs.false118.i.for.inc.i_crit_edge, %land.lhs.true112.i.for.inc.i_crit_edge, %lor.lhs.false107.i.for.inc.i_crit_edge, %land.lhs.true101.i.for.inc.i_crit_edge, %lor.lhs.false96.i.for.inc.i_crit_edge, %land.lhs.true90.i.for.inc.i_crit_edge, %lor.lhs.false85.i.for.inc.i_crit_edge, %land.lhs.true79.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0261.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.i
  %type161.i = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 10, i32 28
  %98 = ptrtoint ptr %type161.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %type161.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool162.not.i = icmp eq i8 %99, 0
  br i1 %tobool162.not.i, label %for.end.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge, label %for.end.i.panel_simple_parse_panel_timing_node.exit_crit_edge, !prof !614

for.end.i.panel_simple_parse_panel_timing_node.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_parse_panel_timing_node.exit

for.end.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_parse_panel_timing_node.exit.sink.split

panel_simple_parse_panel_timing_node.exit.sink.split: ; preds = %for.end.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge, %if.end26.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge, %if.then47.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge
  %.sink = phi i32 [ 505, %if.then47.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge ], [ 509, %if.end26.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge ], [ 537, %for.end.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge ]
  %.str.43.sink = phi ptr [ @.str.43, %if.then47.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge ], [ @.str.46, %if.end26.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge ], [ @.str.49, %for.end.i.panel_simple_parse_panel_timing_node.exit.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.43.sink) #10
  br label %panel_simple_parse_panel_timing_node.exit

panel_simple_parse_panel_timing_node.exit:        ; preds = %panel_simple_parse_panel_timing_node.exit.sink.split, %for.end.i.panel_simple_parse_panel_timing_node.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i362) #7
  br label %if.end49

if.end49:                                         ; preds = %panel_simple_parse_panel_timing_node.exit, %if.else.if.end49_crit_edge, %if.end42
  %desc.addr.0 = phi ptr [ %call.i.i, %if.end42 ], [ %desc, %if.else.if.end49_crit_edge ], [ %desc, %panel_simple_parse_panel_timing_node.exit ]
  %connector_type50 = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 9
  %100 = ptrtoint ptr %connector_type50 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %connector_type50, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i32 %101, label %do.end245 [
    i32 0, label %do.end53
    i32 7, label %sw.bb54
    i32 14, label %do.end192
    i32 16, label %sw.bb193
    i32 17, label %sw.bb205
  ]

do.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end49
  %bus_flags55 = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 8
  %103 = ptrtoint ptr %bus_flags55 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bus_flags55, align 4
  %and = and i32 %104, -52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %sw.bb54.if.end74_crit_edge, label %do.end68, !prof !613

sw.bb54.if.end74_crit_edge:                       ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.end68:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 609, i32 noundef 9, ptr noundef null) #7
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %sw.bb54.if.end74_crit_edge
  %bus_format = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 7
  %105 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bus_format, align 4
  %.off354 = add i32 %106, -4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off354)
  %switch355 = icmp ult i32 %.off354, 3
  br i1 %switch355, label %if.end74.if.end108_crit_edge, label %do.end102.critedge

if.end74.if.end108_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

do.end102.critedge:                               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 612, i32 noundef 9, ptr noundef null) #7
  %107 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr = load i32, ptr %bus_format, align 4
  br label %if.end108

if.end108:                                        ; preds = %do.end102.critedge, %if.end74.if.end108_crit_edge
  %108 = phi i32 [ %106, %if.end74.if.end108_crit_edge ], [ %.pr, %do.end102.critedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4112, i32 %108)
  %cmp118 = icmp eq i32 %108, 4112
  br i1 %cmp118, label %land.rhs119, label %if.end108.if.end143_crit_edge

if.end108.if.end143_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

land.rhs119:                                      ; preds = %if.end108
  %bpc = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 4
  %109 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bpc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %110)
  %cmp120.not = icmp eq i32 %110, 6
  br i1 %cmp120.not, label %land.rhs119.if.end143_crit_edge, label %do.end137, !prof !613

land.rhs119.if.end143_crit_edge:                  ; preds = %land.rhs119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

do.end137:                                        ; preds = %land.rhs119
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 614, i32 noundef 9, ptr noundef null) #7
  br label %if.end143

if.end143:                                        ; preds = %do.end137, %land.rhs119.if.end143_crit_edge, %if.end108.if.end143_crit_edge
  %111 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bus_format, align 4
  %.off = add i32 %112, -4113
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.rhs156, label %if.end143.sw.epilog_crit_edge

if.end143.sw.epilog_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.rhs156:                                      ; preds = %if.end143
  %bpc157 = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 4
  %113 = ptrtoint ptr %bpc157 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bpc157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %114)
  %cmp158.not = icmp eq i32 %114, 8
  br i1 %cmp158.not, label %land.rhs156.sw.epilog_crit_edge, label %do.end175, !prof !613

land.rhs156.sw.epilog_crit_edge:                  ; preds = %land.rhs156
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end175:                                        ; preds = %land.rhs156
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 617, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

do.end192:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %free_ddc

sw.bb193:                                         ; preds = %if.end49
  %bpc194 = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 4
  %115 = ptrtoint ptr %bpc194 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bpc194, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %116, label %do.end202 [
    i32 6, label %sw.bb193.sw.epilog_crit_edge
    i32 8, label %sw.bb193.sw.epilog_crit_edge372
  ]

sw.bb193.sw.epilog_crit_edge372:                  ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb193.sw.epilog_crit_edge:                     ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end202:                                        ; preds = %sw.bb193
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %116) #10
  br label %sw.epilog

sw.bb205:                                         ; preds = %if.end49
  %bus_flags206 = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 8
  %118 = ptrtoint ptr %bus_flags206 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bus_flags206, align 4
  %and207 = and i32 %119, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %sw.bb205.if.end216_crit_edge, label %do.end212

sw.bb205.if.end216_crit_edge:                     ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

do.end212:                                        ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %and207) #10
  br label %if.end216

if.end216:                                        ; preds = %do.end212, %sw.bb205.if.end216_crit_edge
  %120 = ptrtoint ptr %bus_flags206 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bus_flags206, align 4
  %and218 = and i32 %121, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %do.end223, label %if.end216.if.end224_crit_edge

if.end216.if.end224_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

do.end223:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29) #10
  br label %if.end224

if.end224:                                        ; preds = %do.end223, %if.end216.if.end224_crit_edge
  %bus_format225 = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 7
  %122 = ptrtoint ptr %bus_format225 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bus_format225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp226 = icmp eq i32 %123, 0
  br i1 %cmp226, label %do.end230, label %if.end224.if.end231_crit_edge

if.end224.if.end231_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

do.end230:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32) #10
  br label %if.end231

if.end231:                                        ; preds = %do.end230, %if.end224.if.end231_crit_edge
  %bpc232 = getelementptr inbounds %struct.panel_desc, ptr %desc.addr.0, i32 0, i32 4
  %124 = ptrtoint ptr %bpc232 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bpc232, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %125, label %do.end240 [
    i32 6, label %if.end231.sw.epilog_crit_edge
    i32 8, label %if.end231.sw.epilog_crit_edge373
  ]

if.end231.sw.epilog_crit_edge373:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end231.sw.epilog_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end240:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %125) #10
  br label %sw.epilog

do.end245:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %101) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end245, %do.end240, %if.end231.sw.epilog_crit_edge, %if.end231.sw.epilog_crit_edge373, %do.end202, %sw.bb193.sw.epilog_crit_edge, %sw.bb193.sw.epilog_crit_edge372, %do.end175, %land.rhs156.sw.epilog_crit_edge, %if.end143.sw.epilog_crit_edge, %do.end53
  %connector_type.0 = phi i32 [ 17, %do.end245 ], [ 17, %do.end240 ], [ 17, %if.end231.sw.epilog_crit_edge ], [ 16, %do.end202 ], [ 16, %sw.bb193.sw.epilog_crit_edge ], [ 17, %do.end53 ], [ 7, %if.end143.sw.epilog_crit_edge ], [ 7, %do.end175 ], [ 7, %land.rhs156.sw.epilog_crit_edge ], [ 16, %sw.bb193.sw.epilog_crit_edge372 ], [ 17, %if.end231.sw.epilog_crit_edge373 ]
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %127 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @panel_simple_funcs, i32 noundef %connector_type.0) #7
  %call248 = call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.end251, label %disable_pm_runtime

if.end251:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_panel_add(ptr noundef nonnull %call.i) #7
  br label %cleanup

disable_pm_runtime:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %free_ddc

free_ddc:                                         ; preds = %disable_pm_runtime, %do.end192, %panel_dpi_probe.exit.thread
  %err.0 = phi i32 [ %call248, %disable_pm_runtime ], [ -22, %do.end192 ], [ %retval.0.i361.ph, %panel_dpi_probe.exit.thread ]
  %ddc253 = getelementptr inbounds %struct.panel_simple, ptr %call.i, i32 0, i32 7
  %128 = ptrtoint ptr %ddc253 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ddc253, align 8
  %tobool254.not = icmp eq ptr %129, null
  br i1 %tobool254.not, label %free_ddc.cleanup_crit_edge, label %if.then255

free_ddc.cleanup_crit_edge:                       ; preds = %free_ddc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then255:                                       ; preds = %free_ddc
  call void @__sanitizer_cov_trace_pc() #9
  %dev257 = getelementptr inbounds %struct.i2c_adapter, ptr %129, i32 0, i32 9
  call void @put_device(ptr noundef %dev257) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then255, %free_ddc.cleanup_crit_edge, %if.end251, %if.then29.cleanup_crit_edge, %do.end23, %do.end, %if.then12.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then5 ], [ %call18, %do.end23 ], [ 0, %if.end251 ], [ -12, %entry.cleanup_crit_edge ], [ %7, %do.end ], [ -517, %if.then12.cleanup_crit_edge ], [ -517, %if.then29.cleanup_crit_edge ], [ %err.0, %if.then255 ], [ %err.0, %free_ddc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %dt) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_drm_get_panel_orientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_display_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bus_flags_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videomode_from_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_prepare(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 1, !range !615
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %call.i12 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %prepared, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_enable(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !615
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %enable = getelementptr inbounds %struct.panel_desc, ptr %3, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef %5) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_disable(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !615
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %disable = getelementptr inbounds %struct.panel_desc, ptr %3, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef %5) #7
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
define internal i32 @panel_simple_unprepare(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 1, !range !615
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %panel, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp = icmp slt i32 %call.i11, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %prepared, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_get_modes(ptr noundef %panel, ptr noundef %connector) #3 align 64 {
entry:
  %vm.i.i = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 7
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %edid = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 9
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end, label %if.then.if.then9_crit_edge

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc, align 8
  %call5 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %7) #7
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %edid, align 8
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.then.if.then9_crit_edge
  %9 = phi ptr [ %call5, %if.end.if.then9_crit_edge ], [ %5, %if.then.if.then9_crit_edge ]
  %call11 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %9) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %num.0 = phi i32 [ %call11, %if.then9 ], [ 0, %if.end.if.end12_crit_edge ]
  %10 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel, align 4
  %call.i35 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i35, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %panel, align 4
  %call.i36 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #7
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %entry.if.end16_crit_edge
  %num.1 = phi i32 [ %num.0, %if.end12 ], [ 0, %entry.if.end16_crit_edge ]
  %override_mode.i = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 10
  %desc.i = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 5
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i, align 8
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %if.end16.panel_simple_get_non_edid_modes.exit_crit_edge, label %if.end.i

if.end16.panel_simple_get_non_edid_modes.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_get_non_edid_modes.exit

if.end.i:                                         ; preds = %if.end16
  %type.i = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 10, i32 28
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.then3.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then3.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %connector, align 8
  %call.i37 = tail call ptr @drm_mode_duplicate(ptr noundef %20, ptr noundef %override_mode.i) #7
  %tobool5.not.i = icmp eq ptr %call.i37, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.i37) #7
  br label %if.end14.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %panel, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.51) #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %if.end.i.land.lhs.true.i_crit_edge
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc.i, align 8
  %num_timings.i = getelementptr inbounds %struct.panel_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_timings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not.i = icmp eq i32 %26, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.for.body.i.i_crit_edge

land.lhs.true.i.for.body.i.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.body.i.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %land.lhs.true.i.for.body.i.i_crit_edge
  %27 = phi ptr [ %49, %cleanup.i.i.for.body.i.i_crit_edge ], [ %24, %land.lhs.true.i.for.body.i.i_crit_edge ]
  %num.037.i.i = phi i32 [ %num.1.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %land.lhs.true.i.for.body.i.i_crit_edge ]
  %i.035.i.i = phi i32 [ %inc16.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %land.lhs.true.i.for.body.i.i_crit_edge ]
  %timings.i.i = getelementptr inbounds %struct.panel_desc, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %timings.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %timings.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.display_timing, ptr %29, i32 %i.035.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm.i.i) #7
  %30 = call ptr @memset(ptr %vm.i.i, i32 255, i32 40)
  call void @videomode_from_timing(ptr noundef %arrayidx.i.i, ptr noundef nonnull %vm.i.i) #7
  %31 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connector, align 8
  %call.i.i = call ptr @drm_mode_create(ptr noundef %32) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %panel, align 8
  %typ.i.i = getelementptr %struct.display_timing, ptr %29, i32 %i.035.i.i, i32 1, i32 1
  %35 = ptrtoint ptr %typ.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %typ.i.i, align 4
  %typ3.i.i = getelementptr %struct.display_timing, ptr %29, i32 %i.035.i.i, i32 5, i32 1
  %37 = ptrtoint ptr %typ3.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %typ3.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.53, i32 noundef %36, i32 noundef %38) #10
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %vm.i.i, ptr noundef nonnull %call.i.i) #7
  %type.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %call.i.i, i32 0, i32 28
  %39 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type.i.i, align 2
  %41 = or i8 %40, 64
  store i8 %41, ptr %type.i.i, align 2
  %42 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc.i, align 8
  %num_timings6.i.i = getelementptr inbounds %struct.panel_desc, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %num_timings6.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_timings6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp7.i.i = icmp eq i32 %45, 1
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end.i.i.if.end14.i.i_crit_edge

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = or i8 %40, 72
  %47 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %type.i.i, align 2
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.i.i) #7
  %inc.i.i = add i32 %num.037.i.i, 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end14.i.i, %do.end.i.i
  %num.1.i.i = phi i32 [ %inc.i.i, %if.end14.i.i ], [ %num.037.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i.i) #7
  %inc16.i.i = add nuw i32 %i.035.i.i, 1
  %48 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc.i, align 8
  %num_timings.i.i = getelementptr inbounds %struct.panel_desc, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %num_timings.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_timings.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc16.i.i, %51
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.if.end14.i_crit_edge

cleanup.i.i.if.end14.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end14.i:                                       ; preds = %cleanup.i.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %if.then6.i
  %num.1.i = phi i32 [ 0, %land.lhs.true.i.if.end14.i_crit_edge ], [ 1, %if.then6.i ], [ %num.1.i.i, %cleanup.i.i.if.end14.i_crit_edge ]
  %52 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc.i, align 8
  %num_timings16.i = getelementptr inbounds %struct.panel_desc, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %num_timings16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_timings16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool17.not.i = icmp eq i32 %55, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end37.i_crit_edge, label %land.rhs.i

if.end14.i.if.end37.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

land.rhs.i:                                       ; preds = %if.end14.i
  %num_modes.i = getelementptr inbounds %struct.panel_desc, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool19.not.i = icmp eq i32 %57, 0
  br i1 %tobool19.not.i, label %land.rhs.i.if.end37.i_crit_edge, label %do.end31.i, !prof !613

land.rhs.i.if.end37.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

do.end31.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 257, i32 noundef 9, ptr noundef null) #7
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end31.i, %land.rhs.i.if.end37.i_crit_edge, %if.end14.i.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1.i)
  %cmp44.i = icmp eq i32 %num.1.i, 0
  br i1 %cmp44.i, label %if.then45.i, label %if.end37.i.if.end47.i_crit_edge

if.end37.i.if.end47.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then45.i:                                      ; preds = %if.end37.i
  %58 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc.i, align 8
  %num_modes35.i.i = getelementptr inbounds %struct.panel_desc, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %num_modes35.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_modes35.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp36.not.i.i = icmp eq i32 %61, 0
  br i1 %cmp36.not.i.i, label %if.then45.i.if.end47.i_crit_edge, label %if.then45.i.for.body.i98.i_crit_edge

if.then45.i.for.body.i98.i_crit_edge:             ; preds = %if.then45.i
  br label %for.body.i98.i

if.then45.i.if.end47.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

for.body.i98.i:                                   ; preds = %cleanup.i105.i.for.body.i98.i_crit_edge, %if.then45.i.for.body.i98.i_crit_edge
  %62 = phi ptr [ %83, %cleanup.i105.i.for.body.i98.i_crit_edge ], [ %59, %if.then45.i.for.body.i98.i_crit_edge ]
  %num.039.i.i = phi i32 [ %num.1.i103.i, %cleanup.i105.i.for.body.i98.i_crit_edge ], [ 0, %if.then45.i.for.body.i98.i_crit_edge ]
  %i.037.i.i = phi i32 [ %inc17.i.i, %cleanup.i105.i.for.body.i98.i_crit_edge ], [ 0, %if.then45.i.for.body.i98.i_crit_edge ]
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %arrayidx.i95.i = getelementptr %struct.drm_display_mode, ptr %64, i32 %i.037.i.i
  %65 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %connector, align 8
  %call.i96.i = call ptr @drm_mode_duplicate(ptr noundef %66, ptr noundef %arrayidx.i95.i) #7
  %tobool.not.i97.i = icmp eq ptr %call.i96.i, null
  br i1 %tobool.not.i97.i, label %do.end.i99.i, label %if.end.i101.i

do.end.i99.i:                                     ; preds = %for.body.i98.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %panel, align 8
  %hdisplay.i.i = getelementptr %struct.drm_display_mode, ptr %64, i32 %i.037.i.i, i32 1
  %69 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %hdisplay.i.i, align 4
  %conv.i.i = zext i16 %70 to i32
  %vdisplay.i.i = getelementptr %struct.drm_display_mode, ptr %64, i32 %i.037.i.i, i32 6
  %71 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vdisplay.i.i, align 2
  %conv3.i.i = zext i16 %72 to i32
  %call4.i.i = call i32 @drm_mode_vrefresh(ptr noundef %arrayidx.i95.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.55, i32 noundef %conv.i.i, i32 noundef %conv3.i.i, i32 noundef %call4.i.i) #10
  br label %cleanup.i105.i

if.end.i101.i:                                    ; preds = %for.body.i98.i
  %type.i100.i = getelementptr inbounds %struct.drm_display_mode, ptr %call.i96.i, i32 0, i32 28
  %73 = ptrtoint ptr %type.i100.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %type.i100.i, align 2
  %75 = or i8 %74, 64
  store i8 %75, ptr %type.i100.i, align 2
  %76 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %desc.i, align 8
  %num_modes8.i.i = getelementptr inbounds %struct.panel_desc, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %num_modes8.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_modes8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp9.i.i = icmp eq i32 %79, 1
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end.i101.i.if.end16.i.i_crit_edge

if.end.i101.i.if.end16.i.i_crit_edge:             ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = or i8 %74, 72
  %81 = ptrtoint ptr %type.i100.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %type.i100.i, align 2
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then11.i.i, %if.end.i101.i.if.end16.i.i_crit_edge
  call void @drm_mode_set_name(ptr noundef nonnull %call.i96.i) #7
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.i96.i) #7
  %inc.i102.i = add i32 %num.039.i.i, 1
  br label %cleanup.i105.i

cleanup.i105.i:                                   ; preds = %if.end16.i.i, %do.end.i99.i
  %num.1.i103.i = phi i32 [ %inc.i102.i, %if.end16.i.i ], [ %num.039.i.i, %do.end.i99.i ]
  %inc17.i.i = add nuw i32 %i.037.i.i, 1
  %82 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %desc.i, align 8
  %num_modes.i.i = getelementptr inbounds %struct.panel_desc, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %num_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_modes.i.i, align 4
  %cmp.i104.i = icmp ult i32 %inc17.i.i, %85
  br i1 %cmp.i104.i, label %cleanup.i105.i.for.body.i98.i_crit_edge, label %cleanup.i105.i.if.end47.i_crit_edge

cleanup.i105.i.if.end47.i_crit_edge:              ; preds = %cleanup.i105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

cleanup.i105.i.for.body.i98.i_crit_edge:          ; preds = %cleanup.i105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i98.i

if.end47.i:                                       ; preds = %cleanup.i105.i.if.end47.i_crit_edge, %if.then45.i.if.end47.i_crit_edge, %if.end37.i.if.end47.i_crit_edge
  %num.2.i = phi i32 [ %num.1.i, %if.end37.i.if.end47.i_crit_edge ], [ 0, %if.then45.i.if.end47.i_crit_edge ], [ %num.1.i103.i, %cleanup.i105.i.if.end47.i_crit_edge ]
  %86 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc.i, align 8
  %bpc.i = getelementptr inbounds %struct.panel_desc, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bpc.i, align 4
  %display_info.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %bpc49.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %90 = ptrtoint ptr %bpc49.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %bpc49.i, align 8
  %91 = load ptr, ptr %desc.i, align 8
  %size.i = getelementptr inbounds %struct.panel_desc, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size.i, align 4
  %94 = ptrtoint ptr %display_info.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %display_info.i, align 8
  %95 = load ptr, ptr %desc.i, align 8
  %height.i = getelementptr inbounds %struct.panel_desc, ptr %95, i32 0, i32 5, i32 1
  %96 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %height.i, align 4
  %height_mm.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %98 = ptrtoint ptr %height_mm.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %height_mm.i, align 4
  %99 = load ptr, ptr %desc.i, align 8
  %bus_format.i = getelementptr inbounds %struct.panel_desc, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %bus_format.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bus_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool56.not.i = icmp eq i32 %101, 0
  br i1 %tobool56.not.i, label %if.end47.i.if.end62.i_crit_edge, label %if.then57.i

if.end47.i.if.end62.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then57.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %call61.i = call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info.i, ptr noundef %bus_format.i, i32 noundef 1) #7
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then57.i, %if.end47.i.if.end62.i_crit_edge
  %102 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %desc.i, align 8
  %bus_flags.i = getelementptr inbounds %struct.panel_desc, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bus_flags.i, align 4
  %bus_flags65.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %106 = ptrtoint ptr %bus_flags65.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %bus_flags65.i, align 8
  br label %panel_simple_get_non_edid_modes.exit

panel_simple_get_non_edid_modes.exit:             ; preds = %if.end62.i, %if.end16.panel_simple_get_non_edid_modes.exit_crit_edge
  %retval.0.i = phi i32 [ %num.2.i, %if.end62.i ], [ 0, %if.end16.panel_simple_get_non_edid_modes.exit_crit_edge ]
  %add18 = add i32 %retval.0.i, %num.1
  %orientation = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 11
  %107 = ptrtoint ptr %orientation to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %orientation, align 4
  %call19 = call i32 @drm_connector_set_panel_orientation(ptr noundef %connector, i32 noundef %108) #7
  ret i32 %add18
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_get_timings(ptr nocapture noundef readonly %panel, i32 noundef %num_timings, ptr noundef writeonly %timings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.panel_simple, ptr %panel, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
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
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

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
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_platform_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @platform_of_match, ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call2 = tail call fastcc i32 @panel_simple_probe(ptr noundef %dev, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_simple_platform_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #7
  %call2.i = tail call i32 @drm_panel_disable(ptr noundef %1) #7
  %call4.i = tail call i32 @drm_panel_unprepare(ptr noundef %1) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %ddc.i = getelementptr inbounds %struct.panel_simple, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.panel_simple_remove.exit_crit_edge, label %if.then.i

entry.panel_simple_remove.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %panel_simple_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev6.i) #7
  br label %panel_simple_remove.exit

panel_simple_remove.exit:                         ; preds = %if.then.i, %entry.panel_simple_remove.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panel_simple_platform_shutdown(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @drm_panel_disable(ptr noundef %1) #7
  %call3.i = tail call i32 @drm_panel_unprepare(ptr noundef %1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 301)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 301)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600}
!llvm.module.flags = !{!602, !603, !604, !605, !606, !607, !608, !609}
!llvm.ident = !{!610}

!0 = !{ptr @__initcall__kmod_panel_simple__307_4383_panel_simple_init6, !1, !"__initcall__kmod_panel_simple__307_4383_panel_simple_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4383, i32 1}
!2 = !{ptr @__exitcall_panel_simple_exit, !3, !"__exitcall_panel_simple_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4392, i32 1}
!4 = !{ptr @__UNIQUE_ID_author308, !5, !"__UNIQUE_ID_author308", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4394, i32 1}
!6 = !{ptr @__UNIQUE_ID_description309, !7, !"__UNIQUE_ID_description309", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4395, i32 1}
!8 = !{ptr @__UNIQUE_ID_file310, !9, !"__UNIQUE_ID_file310", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4396, i32 1}
!10 = !{ptr @__UNIQUE_ID_license311, !9, !"__UNIQUE_ID_license311", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4353, i32 11}
!13 = !{ptr @panel_simple_dsi_driver, !14, !"panel_simple_dsi_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4351, i32 31}
!15 = !{ptr @dsi_of_match, !16, !"dsi_of_match", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4277, i32 34}
!17 = !{ptr @auo_b080uan01, !18, !"auo_b080uan01", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4087, i32 36}
!19 = !{ptr @auo_b080uan01_mode, !20, !"auo_b080uan01_mode", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4075, i32 38}
!21 = !{ptr @boe_tv080wum_nl0, !22, !"boe_tv080wum_nl0", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4116, i32 36}
!23 = !{ptr @boe_tv080wum_nl0_mode, !24, !"boe_tv080wum_nl0_mode", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4103, i32 38}
!25 = !{ptr @lg_ld070wx3_sl01, !26, !"lg_ld070wx3_sl01", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4145, i32 36}
!27 = !{ptr @lg_ld070wx3_sl01_mode, !28, !"lg_ld070wx3_sl01_mode", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4133, i32 38}
!29 = !{ptr @lg_lh500wx1_sd03, !30, !"lg_lh500wx1_sd03", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4173, i32 36}
!31 = !{ptr @lg_lh500wx1_sd03_mode, !32, !"lg_lh500wx1_sd03_mode", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4161, i32 38}
!33 = !{ptr @panasonic_vvx10f004b00, !34, !"panasonic_vvx10f004b00", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4201, i32 36}
!35 = !{ptr @panasonic_vvx10f004b00_mode, !36, !"panasonic_vvx10f004b00_mode", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4189, i32 38}
!37 = !{ptr @lg_acx467akm_7, !38, !"lg_acx467akm_7", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4230, i32 36}
!39 = !{ptr @lg_acx467akm_7_mode, !40, !"lg_acx467akm_7_mode", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4218, i32 38}
!41 = !{ptr @osd101t2045_53ts, !42, !"osd101t2045_53ts", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4259, i32 36}
!43 = !{ptr @osd101t2045_53ts_mode, !44, !"osd101t2045_53ts_mode", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4246, i32 38}
!45 = !{ptr @panel_simple_pm_ops, !46, !"panel_simple_pm_ops", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4050, i32 32}
!47 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 342, i32 3}
!49 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @panel_simple_resume._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @panel_simple_resume._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 558, i32 42}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 562, i32 52}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 567, i32 4}
!61 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @panel_simple_probe._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @panel_simple_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 573, i32 3}
!66 = !{ptr @panel_simple_probe._entry.10, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @panel_simple_probe._entry_ptr.12, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 577, i32 39}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 593, i32 44}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 601, i32 3}
!74 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @panel_simple_probe._entry.15, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @panel_simple_probe._entry_ptr.18, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 620, i32 3}
!79 = !{ptr @panel_simple_probe._entry.19, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @panel_simple_probe._entry_ptr.21, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 625, i32 4}
!83 = !{ptr @panel_simple_probe._entry.22, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @panel_simple_probe._entry_ptr.24, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 637, i32 4}
!87 = !{ptr @panel_simple_probe._entry.25, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @panel_simple_probe._entry_ptr.27, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 639, i32 4}
!91 = !{ptr @panel_simple_probe._entry.28, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @panel_simple_probe._entry_ptr.30, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 641, i32 4}
!95 = !{ptr @panel_simple_probe._entry.31, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @panel_simple_probe._entry_ptr.33, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @panel_simple_probe._entry.34, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 643, i32 4}
!99 = !{ptr @panel_simple_probe._entry_ptr.35, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 646, i32 3}
!102 = !{ptr @panel_simple_probe._entry.36, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @panel_simple_probe._entry_ptr.38, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @panel_dpi, !105, !"panel_dpi", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 446, i32 26}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 469, i32 3}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @panel_dpi_probe._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @panel_dpi_probe._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 477, i32 27}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 478, i32 27}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 506, i32 3}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @panel_simple_parse_panel_timing_node._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @panel_simple_parse_panel_timing_node._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 510, i32 3}
!122 = !{ptr @panel_simple_parse_panel_timing_node._entry.45, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @panel_simple_parse_panel_timing_node._entry_ptr.47, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 538, i32 3}
!126 = !{ptr @panel_simple_parse_panel_timing_node._entry.48, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @panel_simple_parse_panel_timing_node._entry_ptr.50, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @panel_simple_funcs, !129, !"panel_simple_funcs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 437, i32 37}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 243, i32 4}
!132 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @panel_simple_get_non_edid_modes._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @panel_simple_get_non_edid_modes._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 176, i32 4}
!137 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @panel_simple_get_timings_modes._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @panel_simple_get_timings_modes._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 206, i32 4}
!142 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @panel_simple_get_display_modes._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @panel_simple_get_display_modes._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4341, i32 3}
!147 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @panel_simple_dsi_remove._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @panel_simple_dsi_remove._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4058, i32 11}
!152 = !{ptr @panel_simple_platform_driver, !153, !"panel_simple_platform_driver", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 4056, i32 31}
!154 = !{ptr @platform_of_match, !155, !"platform_of_match", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3655, i32 34}
!156 = !{ptr @ampire_am_1280800n3tzqw_t00h, !157, !"ampire_am_1280800n3tzqw_t00h", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 720, i32 32}
!158 = !{ptr @ampire_am_1280800n3tzqw_t00h_mode, !159, !"ampire_am_1280800n3tzqw_t00h_mode", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 707, i32 38}
!160 = !{ptr @ampire_am_480272h3tmqw_t01h, !161, !"ampire_am_480272h3tmqw_t01h", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 746, i32 32}
!162 = !{ptr @ampire_am_480272h3tmqw_t01h_mode, !163, !"ampire_am_480272h3tmqw_t01h_mode", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 733, i32 38}
!164 = !{ptr @ampire_am800480r3tmqwa1h, !165, !"ampire_am800480r3tmqwa1h", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 770, i32 32}
!166 = !{ptr @ampire_am800480r3tmqwa1h_mode, !167, !"ampire_am800480r3tmqwa1h_mode", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 757, i32 38}
!168 = !{ptr @arm_rtsm, !169, !"arm_rtsm", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3644, i32 32}
!170 = !{ptr @arm_rtsm_mode, !171, !"arm_rtsm_mode", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3629, i32 38}
!172 = !{ptr @armadeus_st0700_adapt, !173, !"armadeus_st0700_adapt", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 795, i32 32}
!174 = !{ptr @santek_st0700i5y_rbslw_f_timing, !175, !"santek_st0700i5y_rbslw_f_timing", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 781, i32 36}
!176 = !{ptr @auo_b101aw03, !177, !"auo_b101aw03", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 819, i32 32}
!178 = !{ptr @auo_b101aw03_mode, !179, !"auo_b101aw03_mode", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 807, i32 38}
!180 = !{ptr @auo_b101xtn01, !181, !"auo_b101xtn01", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 845, i32 32}
!182 = !{ptr @auo_b101xtn01_mode, !183, !"auo_b101xtn01_mode", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 832, i32 38}
!184 = !{ptr @auo_g070vvn01, !185, !"auo_g070vvn01", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 867, i32 32}
!186 = !{ptr @auo_g070vvn01_timings, !187, !"auo_g070vvn01_timings", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 855, i32 36}
!188 = !{ptr @auo_g101evn010, !189, !"auo_g101evn010", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 895, i32 32}
!190 = !{ptr @auo_g101evn010_mode, !191, !"auo_g101evn010_mode", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 883, i32 38}
!192 = !{ptr @auo_g104sn02, !193, !"auo_g104sn02", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 919, i32 32}
!194 = !{ptr @auo_g104sn02_mode, !195, !"auo_g104sn02_mode", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 907, i32 38}
!196 = !{ptr @auo_g121ean01, !197, !"auo_g121ean01", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 943, i32 32}
!198 = !{ptr @auo_g121ean01_mode, !199, !"auo_g121ean01_mode", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 931, i32 38}
!200 = !{ptr @auo_g133han01, !201, !"auo_g133han01", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 967, i32 32}
!202 = !{ptr @auo_g133han01_timings, !203, !"auo_g133han01_timings", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 955, i32 36}
!204 = !{ptr @auo_g156xtn01, !205, !"auo_g156xtn01", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 997, i32 32}
!206 = !{ptr @auo_g156xtn01_mode, !207, !"auo_g156xtn01_mode", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 985, i32 38}
!208 = !{ptr @auo_g185han01, !209, !"auo_g185han01", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1021, i32 32}
!210 = !{ptr @auo_g185han01_timings, !211, !"auo_g185han01_timings", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1009, i32 36}
!212 = !{ptr @auo_g190ean01, !213, !"auo_g190ean01", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1051, i32 32}
!214 = !{ptr @auo_g190ean01_timings, !215, !"auo_g190ean01_timings", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1039, i32 36}
!216 = !{ptr @auo_p320hvn03, !217, !"auo_p320hvn03", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1081, i32 32}
!218 = !{ptr @auo_p320hvn03_timings, !219, !"auo_p320hvn03_timings", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1069, i32 36}
!220 = !{ptr @auo_t215hvn01, !221, !"auo_t215hvn01", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1110, i32 32}
!222 = !{ptr @auo_t215hvn01_mode, !223, !"auo_t215hvn01_mode", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1098, i32 38}
!224 = !{ptr @avic_tm070ddh03, !225, !"avic_tm070ddh03", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1136, i32 32}
!226 = !{ptr @avic_tm070ddh03_mode, !227, !"avic_tm070ddh03_mode", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1124, i32 38}
!228 = !{ptr @bananapi_s070wv20_ct16, !229, !"bananapi_s070wv20_ct16", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1163, i32 32}
!230 = !{ptr @bananapi_s070wv20_ct16_mode, !231, !"bananapi_s070wv20_ct16_mode", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1151, i32 38}
!232 = !{ptr @boe_hv070wsa, !233, !"boe_hv070wsa", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1185, i32 32}
!234 = !{ptr @boe_hv070wsa_mode, !235, !"boe_hv070wsa_mode", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1173, i32 38}
!236 = !{ptr @cdtech_s043wq26h_ct7, !237, !"cdtech_s043wq26h_ct7", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1211, i32 32}
!238 = !{ptr @cdtech_s043wq26h_ct7_mode, !239, !"cdtech_s043wq26h_ct7_mode", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1198, i32 38}
!240 = !{ptr @cdtech_s070pws19hp_fc21, !241, !"cdtech_s070pws19hp_fc21", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1236, i32 32}
!242 = !{ptr @cdtech_s070pws19hp_fc21_mode, !243, !"cdtech_s070pws19hp_fc21_mode", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1223, i32 38}
!244 = !{ptr @cdtech_s070swv29hg_dc44, !245, !"cdtech_s070swv29hg_dc44", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1263, i32 32}
!246 = !{ptr @cdtech_s070swv29hg_dc44_mode, !247, !"cdtech_s070swv29hg_dc44_mode", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1250, i32 38}
!248 = !{ptr @cdtech_s070wv95_ct16, !249, !"cdtech_s070wv95_ct16", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1289, i32 32}
!250 = !{ptr @cdtech_s070wv95_ct16_mode, !251, !"cdtech_s070wv95_ct16_mode", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1276, i32 38}
!252 = !{ptr @chefree_ch101olhlwh_002, !253, !"chefree_ch101olhlwh_002", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1312, i32 32}
!254 = !{ptr @chefree_ch101olhlwh_002_timing, !255, !"chefree_ch101olhlwh_002_timing", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1299, i32 36}
!256 = !{ptr @chunghwa_claa070wp03xg, !257, !"chunghwa_claa070wp03xg", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1342, i32 32}
!258 = !{ptr @chunghwa_claa070wp03xg_mode, !259, !"chunghwa_claa070wp03xg_mode", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1329, i32 38}
!260 = !{ptr @chunghwa_claa101wa01a, !261, !"chunghwa_claa101wa01a", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1367, i32 32}
!262 = !{ptr @chunghwa_claa101wa01a_mode, !263, !"chunghwa_claa101wa01a_mode", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1355, i32 38}
!264 = !{ptr @chunghwa_claa101wb01, !265, !"chunghwa_claa101wb01", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1392, i32 32}
!266 = !{ptr @chunghwa_claa101wb01_mode, !267, !"chunghwa_claa101wb01_mode", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1380, i32 38}
!268 = !{ptr @dataimage_scf0700c48ggu18, !269, !"dataimage_scf0700c48ggu18", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1418, i32 32}
!270 = !{ptr @dataimage_scf0700c48ggu18_mode, !271, !"dataimage_scf0700c48ggu18_mode", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1405, i32 38}
!272 = !{ptr @dlc_dlc0700yzg_1, !273, !"dlc_dlc0700yzg_1", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1443, i32 32}
!274 = !{ptr @dlc_dlc0700yzg_1_timing, !275, !"dlc_dlc0700yzg_1_timing", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1430, i32 36}
!276 = !{ptr @dlc_dlc1010gig, !277, !"dlc_dlc1010gig", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1473, i32 32}
!278 = !{ptr @dlc_dlc1010gig_timing, !279, !"dlc_dlc1010gig_timing", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1460, i32 36}
!280 = !{ptr @edt_et035012dm6, !281, !"edt_et035012dm6", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1504, i32 32}
!282 = !{ptr @edt_et035012dm6_mode, !283, !"edt_et035012dm6_mode", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1491, i32 38}
!284 = !{ptr @edt_etm0350g0dh6, !285, !"edt_etm0350g0dh6", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1529, i32 32}
!286 = !{ptr @edt_etm0350g0dh6_mode, !287, !"edt_etm0350g0dh6_mode", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1516, i32 38}
!288 = !{ptr @edt_etm043080dh6gp, !289, !"edt_etm043080dh6gp", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1560, i32 32}
!290 = !{ptr @edt_etm043080dh6gp_mode, !291, !"edt_etm043080dh6gp_mode", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1542, i32 38}
!292 = !{ptr @edt_etm0430g0dh6, !293, !"edt_etm0430g0dh6", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1585, i32 32}
!294 = !{ptr @edt_etm0430g0dh6_mode, !295, !"edt_etm0430g0dh6_mode", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1572, i32 38}
!296 = !{ptr @edt_et057090dhu, !297, !"edt_et057090dhu", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1611, i32 32}
!298 = !{ptr @edt_et057090dhu_mode, !299, !"edt_et057090dhu_mode", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1598, i32 38}
!300 = !{ptr @edt_etm0700g0dh6, !301, !"edt_etm0700g0dh6", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1637, i32 32}
!302 = !{ptr @edt_etm0700g0dh6_mode, !303, !"edt_etm0700g0dh6_mode", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1624, i32 38}
!304 = !{ptr @edt_etm0700g0bdh6, !305, !"edt_etm0700g0bdh6", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1650, i32 32}
!306 = !{ptr @edt_etmv570g2dhu, !307, !"edt_etmv570g2dhu", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1676, i32 32}
!308 = !{ptr @edt_etmv570g2dhu_mode, !309, !"edt_etmv570g2dhu_mode", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1663, i32 38}
!310 = !{ptr @eink_vb3300_kca, !311, !"eink_vb3300_kca", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1703, i32 32}
!312 = !{ptr @eink_vb3300_kca_timing, !313, !"eink_vb3300_kca_timing", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1689, i32 36}
!314 = !{ptr @evervision_vgg804821, !315, !"evervision_vgg804821", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1731, i32 32}
!316 = !{ptr @evervision_vgg804821_timing, !317, !"evervision_vgg804821_timing", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1716, i32 36}
!318 = !{ptr @foxlink_fl500wvr00_a0t, !319, !"foxlink_fl500wvr00_a0t", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1755, i32 32}
!320 = !{ptr @foxlink_fl500wvr00_a0t_mode, !321, !"foxlink_fl500wvr00_a0t_mode", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1743, i32 38}
!322 = !{ptr @frida_frd350h54004, !323, !"frida_frd350h54004", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1793, i32 32}
!324 = !{ptr @frida_frd350h54004_modes, !325, !"frida_frd350h54004_modes", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1766, i32 38}
!326 = !{ptr @friendlyarm_hd702e, !327, !"friendlyarm_hd702e", i1 false, i1 false}
!327 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1819, i32 32}
!328 = !{ptr @friendlyarm_hd702e_mode, !329, !"friendlyarm_hd702e_mode", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1806, i32 38}
!330 = !{ptr @giantplus_gpg482739qs5, !331, !"giantplus_gpg482739qs5", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1840, i32 32}
!332 = !{ptr @giantplus_gpg482739qs5_mode, !333, !"giantplus_gpg482739qs5_mode", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1828, i32 38}
!334 = !{ptr @giantplus_gpm940b0, !335, !"giantplus_gpm940b0", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1864, i32 32}
!336 = !{ptr @giantplus_gpm940b0_timing, !337, !"giantplus_gpm940b0_timing", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1851, i32 36}
!338 = !{ptr @hannstar_hsd070pww1, !339, !"hannstar_hsd070pww1", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1894, i32 32}
!340 = !{ptr @hannstar_hsd070pww1_timing, !341, !"hannstar_hsd070pww1_timing", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1876, i32 36}
!342 = !{ptr @hannstar_hsd100pxn1, !343, !"hannstar_hsd100pxn1", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1919, i32 32}
!344 = !{ptr @hannstar_hsd100pxn1_timing, !345, !"hannstar_hsd100pxn1_timing", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1906, i32 36}
!346 = !{ptr @hitachi_tx23d38vm0caa, !347, !"hitachi_tx23d38vm0caa", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1943, i32 32}
!348 = !{ptr @hitachi_tx23d38vm0caa_mode, !349, !"hitachi_tx23d38vm0caa_mode", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1931, i32 38}
!350 = !{ptr @innolux_at043tn24, !351, !"innolux_at043tn24", i1 false, i1 false}
!351 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1970, i32 32}
!352 = !{ptr @innolux_at043tn24_mode, !353, !"innolux_at043tn24_mode", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1957, i32 38}
!354 = !{ptr @innolux_at070tn92, !355, !"innolux_at070tn92", i1 false, i1 false}
!355 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1994, i32 32}
!356 = !{ptr @innolux_at070tn92_mode, !357, !"innolux_at070tn92_mode", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 1982, i32 38}
!358 = !{ptr @innolux_g070y2_l01, !359, !"innolux_g070y2_l01", i1 false, i1 false}
!359 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2017, i32 32}
!360 = !{ptr @innolux_g070y2_l01_timing, !361, !"innolux_g070y2_l01_timing", i1 false, i1 false}
!361 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2004, i32 36}
!362 = !{ptr @innolux_g070y2_t02, !363, !"innolux_g070y2_t02", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2047, i32 32}
!364 = !{ptr @innolux_g070y2_t02_mode, !365, !"innolux_g070y2_t02_mode", i1 false, i1 false}
!365 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2035, i32 38}
!366 = !{ptr @innolux_g101ice_l01, !367, !"innolux_g101ice_l01", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2073, i32 32}
!368 = !{ptr @innolux_g101ice_l01_timing, !369, !"innolux_g101ice_l01_timing", i1 false, i1 false}
!369 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2060, i32 36}
!370 = !{ptr @innolux_g121i1_l01, !371, !"innolux_g121i1_l01", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2101, i32 32}
!372 = !{ptr @innolux_g121i1_l01_timing, !373, !"innolux_g121i1_l01_timing", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2089, i32 36}
!374 = !{ptr @innolux_g121x1_l03, !375, !"innolux_g121x1_l03", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2130, i32 32}
!376 = !{ptr @innolux_g121x1_l03_mode, !377, !"innolux_g121x1_l03_mode", i1 false, i1 false}
!377 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2117, i32 38}
!378 = !{ptr @innolux_n156bge_l21, !379, !"innolux_n156bge_l21", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2157, i32 32}
!380 = !{ptr @innolux_n156bge_l21_mode, !381, !"innolux_n156bge_l21_mode", i1 false, i1 false}
!381 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2145, i32 38}
!382 = !{ptr @innolux_zj070na_01p, !383, !"innolux_zj070na_01p", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2182, i32 32}
!384 = !{ptr @innolux_zj070na_01p_mode, !385, !"innolux_zj070na_01p_mode", i1 false, i1 false}
!385 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2170, i32 38}
!386 = !{ptr @koe_tx14d24vm1bpa, !387, !"koe_tx14d24vm1bpa", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2205, i32 32}
!388 = !{ptr @koe_tx14d24vm1bpa_timing, !389, !"koe_tx14d24vm1bpa_timing", i1 false, i1 false}
!389 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2192, i32 36}
!390 = !{ptr @koe_tx26d202vm0bwa, !391, !"koe_tx26d202vm0bwa", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2227, i32 32}
!392 = !{ptr @koe_tx26d202vm0bwa_timing, !393, !"koe_tx26d202vm0bwa_timing", i1 false, i1 false}
!393 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2215, i32 36}
!394 = !{ptr @koe_tx31d200vm0baa, !395, !"koe_tx31d200vm0baa", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2259, i32 32}
!396 = !{ptr @koe_tx31d200vm0baa_timing, !397, !"koe_tx31d200vm0baa_timing", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2246, i32 36}
!398 = !{ptr @kyo_tcg121xglp, !399, !"kyo_tcg121xglp", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2284, i32 32}
!400 = !{ptr @kyo_tcg121xglp_timing, !401, !"kyo_tcg121xglp_timing", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2271, i32 36}
!402 = !{ptr @lemaker_bl035_rgb_002, !403, !"lemaker_bl035_rgb_002", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2308, i32 32}
!404 = !{ptr @lemaker_bl035_rgb_002_mode, !405, !"lemaker_bl035_rgb_002_mode", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2296, i32 38}
!406 = !{ptr @lg_lb070wv8, !407, !"lg_lb070wv8", i1 false, i1 false}
!407 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2331, i32 32}
!408 = !{ptr @lg_lb070wv8_mode, !409, !"lg_lb070wv8_mode", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2319, i32 38}
!410 = !{ptr @logicpd_type_28, !411, !"logicpd_type_28", i1 false, i1 false}
!411 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2477, i32 32}
!412 = !{ptr @logicpd_type_28_mode, !413, !"logicpd_type_28_mode", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2463, i32 38}
!414 = !{ptr @logictechno_lt161010_2nh, !415, !"logictechno_lt161010_2nh", i1 false, i1 false}
!415 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2358, i32 32}
!416 = !{ptr @logictechno_lt161010_2nh_timing, !417, !"logictechno_lt161010_2nh_timing", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2343, i32 36}
!418 = !{ptr @logictechno_lt170410_2whc, !419, !"logictechno_lt170410_2whc", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2387, i32 32}
!420 = !{ptr @logictechno_lt170410_2whc_timing, !421, !"logictechno_lt170410_2whc_timing", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2372, i32 36}
!422 = !{ptr @logictechno_lttd800480070_l2rt, !423, !"logictechno_lttd800480070_l2rt", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2412, i32 32}
!424 = !{ptr @logictechno_lttd800480070_l2rt_mode, !425, !"logictechno_lttd800480070_l2rt_mode", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2399, i32 38}
!426 = !{ptr @logictechno_lttd800480070_l6wh_rt, !427, !"logictechno_lttd800480070_l6wh_rt", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2444, i32 32}
!428 = !{ptr @logictechno_lttd800480070_l6wh_rt_mode, !429, !"logictechno_lttd800480070_l6wh_rt_mode", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2431, i32 38}
!430 = !{ptr @mitsubishi_aa070mc01, !431, !"mitsubishi_aa070mc01", i1 false, i1 false}
!431 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2510, i32 32}
!432 = !{ptr @mitsubishi_aa070mc01_mode, !433, !"mitsubishi_aa070mc01_mode", i1 false, i1 false}
!433 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2497, i32 38}
!434 = !{ptr @multi_inno_mi1010ait_1cp, !435, !"multi_inno_mi1010ait_1cp", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2543, i32 32}
!436 = !{ptr @multi_inno_mi1010ait_1cp_timing, !437, !"multi_inno_mi1010ait_1cp_timing", i1 false, i1 false}
!437 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2529, i32 36}
!438 = !{ptr @nec_nl12880bc20_05, !439, !"nec_nl12880bc20_05", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2572, i32 32}
!440 = !{ptr @nec_nl12880bc20_05_timing, !441, !"nec_nl12880bc20_05_timing", i1 false, i1 false}
!441 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2560, i32 36}
!442 = !{ptr @nec_nl4827hc19_05b, !443, !"nec_nl4827hc19_05b", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2601, i32 32}
!444 = !{ptr @nec_nl4827hc19_05b_mode, !445, !"nec_nl4827hc19_05b_mode", i1 false, i1 false}
!445 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2588, i32 38}
!446 = !{ptr @netron_dy_e231732, !447, !"netron_dy_e231732", i1 false, i1 false}
!447 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2625, i32 32}
!448 = !{ptr @netron_dy_e231732_mode, !449, !"netron_dy_e231732_mode", i1 false, i1 false}
!449 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2613, i32 38}
!450 = !{ptr @newhaven_nhd_43_480272ef_atxl, !451, !"newhaven_nhd_43_480272ef_atxl", i1 false, i1 false}
!451 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2648, i32 32}
!452 = !{ptr @newhaven_nhd_43_480272ef_atxl_mode, !453, !"newhaven_nhd_43_480272ef_atxl_mode", i1 false, i1 false}
!453 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2635, i32 38}
!454 = !{ptr @nlt_nl192108ac18_02d, !455, !"nlt_nl192108ac18_02d", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2674, i32 32}
!456 = !{ptr @nlt_nl192108ac18_02d_timing, !457, !"nlt_nl192108ac18_02d_timing", i1 false, i1 false}
!457 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2662, i32 36}
!458 = !{ptr @nvd_9128, !459, !"nvd_9128", i1 false, i1 false}
!459 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2701, i32 32}
!460 = !{ptr @nvd_9128_mode, !461, !"nvd_9128_mode", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2689, i32 38}
!462 = !{ptr @okaya_rs800480t_7x0gp, !463, !"okaya_rs800480t_7x0gp", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2726, i32 32}
!464 = !{ptr @okaya_rs800480t_7x0gp_timing, !465, !"okaya_rs800480t_7x0gp_timing", i1 false, i1 false}
!465 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2713, i32 36}
!466 = !{ptr @olimex_lcd_olinuxino_43ts, !467, !"olimex_lcd_olinuxino_43ts", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2755, i32 32}
!468 = !{ptr @olimex_lcd_olinuxino_43ts_mode, !469, !"olimex_lcd_olinuxino_43ts_mode", i1 false, i1 false}
!469 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2743, i32 38}
!470 = !{ptr @ontat_yx700wv03, !471, !"ontat_yx700wv03", i1 false, i1 false}
!471 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2787, i32 32}
!472 = !{ptr @ontat_yx700wv03_mode, !473, !"ontat_yx700wv03_mode", i1 false, i1 false}
!473 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2770, i32 38}
!474 = !{ptr @ortustech_com37h3m, !475, !"ortustech_com37h3m", i1 false, i1 false}
!475 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2811, i32 32}
!476 = !{ptr @ortustech_com37h3m_mode, !477, !"ortustech_com37h3m_mode", i1 false, i1 false}
!477 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2798, i32 38}
!478 = !{ptr @ortustech_com43h4m85ulc, !479, !"ortustech_com43h4m85ulc", i1 false, i1 false}
!479 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2836, i32 32}
!480 = !{ptr @ortustech_com43h4m85ulc_mode, !481, !"ortustech_com43h4m85ulc_mode", i1 false, i1 false}
!481 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2824, i32 38}
!482 = !{ptr @osddisplays_osd070t1718_19ts, !483, !"osddisplays_osd070t1718_19ts", i1 false, i1 false}
!483 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2862, i32 32}
!484 = !{ptr @osddisplays_osd070t1718_19ts_mode, !485, !"osddisplays_osd070t1718_19ts_mode", i1 false, i1 false}
!485 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2849, i32 38}
!486 = !{ptr @pda_91_00156_a0, !487, !"pda_91_00156_a0", i1 false, i1 false}
!487 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2888, i32 32}
!488 = !{ptr @pda_91_00156_a0_mode, !489, !"pda_91_00156_a0_mode", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2876, i32 38}
!490 = !{ptr @powertip_ph800480t013_idf02, !491, !"powertip_ph800480t013_idf02", i1 false, i1 false}
!491 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2910, i32 32}
!492 = !{ptr @powertip_ph800480t013_idf02_mode, !493, !"powertip_ph800480t013_idf02_mode", i1 false, i1 false}
!493 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2898, i32 38}
!494 = !{ptr @qd43003c0_40, !495, !"qd43003c0_40", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2936, i32 32}
!496 = !{ptr @qd43003c0_40_mode, !497, !"qd43003c0_40_mode", i1 false, i1 false}
!497 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2924, i32 38}
!498 = !{ptr @qishenglong_gopher2b_lcd, !499, !"qishenglong_gopher2b_lcd", i1 false, i1 false}
!499 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2974, i32 32}
!500 = !{ptr @qishenglong_gopher2b_lcd_modes, !501, !"qishenglong_gopher2b_lcd_modes", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2947, i32 38}
!502 = !{ptr @rocktech_rk070er9427, !503, !"rocktech_rk070er9427", i1 false, i1 false}
!503 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3000, i32 32}
!504 = !{ptr @rocktech_rk070er9427_timing, !505, !"rocktech_rk070er9427_timing", i1 false, i1 false}
!505 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 2987, i32 36}
!506 = !{ptr @rocktech_rk101ii01d_ct, !507, !"rocktech_rk101ii01d_ct", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3029, i32 32}
!508 = !{ptr @rocktech_rk101ii01d_ct_mode, !509, !"rocktech_rk101ii01d_ct_mode", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3017, i32 38}
!510 = !{ptr @samsung_ltn101nt05, !511, !"samsung_ltn101nt05", i1 false, i1 false}
!511 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3057, i32 32}
!512 = !{ptr @samsung_ltn101nt05_mode, !513, !"samsung_ltn101nt05_mode", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3045, i32 38}
!514 = !{ptr @satoz_sat050at40h12r2, !515, !"satoz_sat050at40h12r2", i1 false, i1 false}
!515 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3082, i32 32}
!516 = !{ptr @satoz_sat050at40h12r2_timing, !517, !"satoz_sat050at40h12r2_timing", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3070, i32 36}
!518 = !{ptr @sharp_lq035q7db03, !519, !"sharp_lq035q7db03", i1 false, i1 false}
!519 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3132, i32 32}
!520 = !{ptr @sharp_lq035q7db03_mode, !521, !"sharp_lq035q7db03_mode", i1 false, i1 false}
!521 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3120, i32 38}
!522 = !{ptr @sharp_lq070y3dg3b, !523, !"sharp_lq070y3dg3b", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3107, i32 32}
!524 = !{ptr @sharp_lq070y3dg3b_mode, !525, !"sharp_lq070y3dg3b_mode", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3094, i32 38}
!526 = !{ptr @sharp_lq101k1ly04, !527, !"sharp_lq101k1ly04", i1 false, i1 false}
!527 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3156, i32 32}
!528 = !{ptr @sharp_lq101k1ly04_timing, !529, !"sharp_lq101k1ly04_timing", i1 false, i1 false}
!529 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3143, i32 36}
!530 = !{ptr @sharp_ls020b1dd01d, !531, !"sharp_ls020b1dd01d", i1 false, i1 false}
!531 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3195, i32 32}
!532 = !{ptr @sharp_ls020b1dd01d_modes, !533, !"sharp_ls020b1dd01d_modes", i1 false, i1 false}
!533 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3168, i32 38}
!534 = !{ptr @shelly_sca07010_bfn_lnn, !535, !"shelly_sca07010_bfn_lnn", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3221, i32 32}
!536 = !{ptr @shelly_sca07010_bfn_lnn_mode, !537, !"shelly_sca07010_bfn_lnn_mode", i1 false, i1 false}
!537 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3209, i32 38}
!538 = !{ptr @starry_kr070pe2t, !539, !"starry_kr070pe2t", i1 false, i1 false}
!539 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3243, i32 32}
!540 = !{ptr @starry_kr070pe2t_mode, !541, !"starry_kr070pe2t_mode", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3231, i32 38}
!542 = !{ptr @tsd_tst043015cmhx, !543, !"tsd_tst043015cmhx", i1 false, i1 false}
!543 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3271, i32 32}
!544 = !{ptr @tsd_tst043015cmhx_timing, !545, !"tsd_tst043015cmhx_timing", i1 false, i1 false}
!545 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3256, i32 36}
!546 = !{ptr @tfc_s9700rtwv43tr_01b, !547, !"tfc_s9700rtwv43tr_01b", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3295, i32 32}
!548 = !{ptr @tfc_s9700rtwv43tr_01b_mode, !549, !"tfc_s9700rtwv43tr_01b_mode", i1 false, i1 false}
!549 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3283, i32 38}
!550 = !{ptr @tianma_tm070jdhg30, !551, !"tianma_tm070jdhg30", i1 false, i1 false}
!551 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3320, i32 32}
!552 = !{ptr @tianma_tm070jdhg30_timing, !553, !"tianma_tm070jdhg30_timing", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3307, i32 36}
!554 = !{ptr @tianma_tm070jvhg33, !555, !"tianma_tm070jvhg33", i1 false, i1 false}
!555 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3332, i32 32}
!556 = !{ptr @tianma_tm070rvhg71, !557, !"tianma_tm070rvhg71", i1 false, i1 false}
!557 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3357, i32 32}
!558 = !{ptr @tianma_tm070rvhg71_timing, !559, !"tianma_tm070rvhg71_timing", i1 false, i1 false}
!559 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3344, i32 36}
!560 = !{ptr @ti_nspire_cx_lcd_panel, !561, !"ti_nspire_cx_lcd_panel", i1 false, i1 false}
!561 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3384, i32 32}
!562 = !{ptr @ti_nspire_cx_lcd_mode, !563, !"ti_nspire_cx_lcd_mode", i1 false, i1 false}
!563 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3369, i32 38}
!564 = !{ptr @ti_nspire_classic_lcd_panel, !565, !"ti_nspire_classic_lcd_panel", i1 false, i1 false}
!565 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3411, i32 32}
!566 = !{ptr @ti_nspire_classic_lcd_mode, !567, !"ti_nspire_classic_lcd_mode", i1 false, i1 false}
!567 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3396, i32 38}
!568 = !{ptr @toshiba_lt089ac29000, !569, !"toshiba_lt089ac29000", i1 false, i1 false}
!569 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3437, i32 32}
!570 = !{ptr @toshiba_lt089ac29000_mode, !571, !"toshiba_lt089ac29000_mode", i1 false, i1 false}
!571 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3425, i32 38}
!572 = !{ptr @tpk_f07a_0102, !573, !"tpk_f07a_0102", i1 false, i1 false}
!573 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3461, i32 32}
!574 = !{ptr @tpk_f07a_0102_mode, !575, !"tpk_f07a_0102_mode", i1 false, i1 false}
!575 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3449, i32 38}
!576 = !{ptr @tpk_f10a_0102, !577, !"tpk_f10a_0102", i1 false, i1 false}
!577 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3483, i32 32}
!578 = !{ptr @tpk_f10a_0102_mode, !579, !"tpk_f10a_0102_mode", i1 false, i1 false}
!579 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3471, i32 38}
!580 = !{ptr @urt_umsh_8596md_parallel, !581, !"urt_umsh_8596md_parallel", i1 false, i1 false}
!581 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3518, i32 32}
!582 = !{ptr @urt_umsh_8596md_timing, !583, !"urt_umsh_8596md_timing", i1 false, i1 false}
!583 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3492, i32 36}
!584 = !{ptr @urt_umsh_8596md_lvds, !585, !"urt_umsh_8596md_lvds", i1 false, i1 false}
!585 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3506, i32 32}
!586 = !{ptr @vivax_tpc9150_panel, !587, !"vivax_tpc9150_panel", i1 false, i1 false}
!587 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3541, i32 32}
!588 = !{ptr @vivax_tpc9150_panel_mode, !589, !"vivax_tpc9150_panel_mode", i1 false, i1 false}
!589 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3529, i32 38}
!590 = !{ptr @vl050_8048nt_c01, !591, !"vl050_8048nt_c01", i1 false, i1 false}
!591 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3567, i32 32}
!592 = !{ptr @vl050_8048nt_c01_mode, !593, !"vl050_8048nt_c01_mode", i1 false, i1 false}
!593 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3554, i32 38}
!594 = !{ptr @winstar_wf35ltiacd, !595, !"winstar_wf35ltiacd", i1 false, i1 false}
!595 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3592, i32 32}
!596 = !{ptr @winstar_wf35ltiacd_mode, !597, !"winstar_wf35ltiacd_mode", i1 false, i1 false}
!597 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3579, i32 38}
!598 = !{ptr @yes_optoelectronics_ytc700tlag_05_201c, !599, !"yes_optoelectronics_ytc700tlag_05_201c", i1 false, i1 false}
!599 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3616, i32 32}
!600 = !{ptr @yes_optoelectronics_ytc700tlag_05_201c_mode, !601, !"yes_optoelectronics_ytc700tlag_05_201c_mode", i1 false, i1 false}
!601 = !{!"../drivers/gpu/drm/panel/panel-simple.c", i32 3603, i32 38}
!602 = !{i32 1, !"wchar_size", i32 2}
!603 = !{i32 1, !"min_enum_size", i32 4}
!604 = !{i32 8, !"branch-target-enforcement", i32 0}
!605 = !{i32 8, !"sign-return-address", i32 0}
!606 = !{i32 8, !"sign-return-address-all", i32 0}
!607 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!608 = !{i32 7, !"uwtable", i32 1}
!609 = !{i32 7, !"frame-pointer", i32 2}
!610 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!611 = !{i64 581221, i64 581248}
!612 = !{i64 581916, i64 581943, i64 581976, i64 581997, i64 582024, i64 582050}
!613 = !{!"branch_weights", i32 2000, i32 1}
!614 = !{!"branch_weights", i32 1, i32 2000}
!615 = !{i8 0, i8 2}
