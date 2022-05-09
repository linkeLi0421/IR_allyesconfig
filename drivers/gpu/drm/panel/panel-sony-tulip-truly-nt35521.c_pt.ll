; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
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
%struct.truly_nt35521 = type { %struct.drm_panel, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }

@__initcall__kmod_panel_sony_tulip_truly_nt35521__302_548_truly_nt35521_driver_init6 = internal global ptr @truly_nt35521_driver_init, section ".initcall6.init", align 4
@truly_nt35521_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @truly_nt35521_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @truly_nt35521_probe, ptr @truly_nt35521_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_truly_nt35521_driver_exit = internal global ptr @truly_nt35521_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [71 x i8] c"panel_sony_tulip_truly_nt35521.author=Shawn Guo <shawn.guo@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [89 x i8] c"panel_sony_tulip_truly_nt35521.description=DRM driver for Sony Tulip Truly NT35521 panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [89 x i8] c"panel_sony_tulip_truly_nt35521.file=drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [46 x i8] c"panel_sony_tulip_truly_nt35521.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panel-truly-nt35521\00", [44 x i8] zeroinitializer }, align 32
@truly_nt35521_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,tulip-truly-nt35521\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"positive5\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"negative5\00", [22 x i8] zeroinitializer }, align 32
@truly_nt35521_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 477, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"truly_nt35521_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@truly_nt35521_probe._entry_ptr = internal global ptr @truly_nt35521_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get reset-gpios\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backlight\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get backlight-gpios\0A\00", [33 x i8] zeroinitializer }, align 32
@truly_nt35521_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @truly_nt35521_prepare, ptr @truly_nt35521_enable, ptr @truly_nt35521_disable, ptr @truly_nt35521_unprepare, ptr @truly_nt35521_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create backlight\0A\00", [36 x i8] zeroinitializer }, align 32
@truly_nt35521_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 512, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to attach to DSI host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@truly_nt35521_probe._entry_ptr.15 = internal global ptr @truly_nt35521_probe._entry.13, section ".printk_index", align 4
@truly_nt35521_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"truly_nt35521_prepare\00", [42 x i8] zeroinitializer }, align 32
@truly_nt35521_prepare._entry_ptr = internal global ptr @truly_nt35521_prepare._entry, section ".printk_index", align 4
@truly_nt35521_prepare._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 320, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize panel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@truly_nt35521_prepare._entry_ptr.20 = internal global ptr @truly_nt35521_prepare._entry.18, section ".printk_index", align 4
@truly_nt35521_on.d = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\FF\AAU\A5\80", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"o\11\00", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F7 \00", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"o\01", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B1!", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\BD\01\A0\10\08\01", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\B8\01\02\0C\02", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BB\11\11", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BC\00\00", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B6\02", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\01", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B0\09\09", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B1\09\09", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BC\8C\00", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BD\8C\00", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\CA\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C0\04", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\BE\B5", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B355", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B4%%", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B9CC", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BA$$", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\02", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\EE\03", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B0\00\B2\00\B3\00\B6\00\C3\00\CE\00\E1\00\F3\01\11", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B1\01.\01\\\01\82\01\C3\01\FE\02\00\027\02w", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B2\02\A1\02\D7\02\FE\03,\03K\03c\03\8F\03\90", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\B3\03\96\03\98", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B4\00\81\00\8B\00\9C\00\A9\00\B5\00\CB\00\DF\01\02", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B5\01\1F\01Q\01z\01\BF\01\FA\01\FC\024\02v", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B6\02\9F\02\D7\02\FC\03,\03J\03c\03\8F\03\A2", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\B7\03\B8\03\BA", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B8\00\01\00\02\00\0E\00*\00A\00g\00\87\00\B9", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\B9\00\E2\01\22\01T\01\A3\01\E6\01\E7\02$\02g", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\BA\02\93\02\CD\02\F6\031\03l\03\E9\03\EF\03\F4", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\BB\03\F6\03\F7", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\03", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B0\22\00", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B1\22\00", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\B2\05\00`\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\B3\05\00`\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\B4\05\00`\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\B5\05\00`\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\BAS\00`\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\BBS\00`\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\BCS\00`\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\BDS\00`\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C0\004\00\00", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C1\00\004\00", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C2\00\004\00", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C3\00\004\00", [27 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.72 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C4`", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C5\C0", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.74 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C6\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C7\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\05", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B0\17\06", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B1\17\06", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B2\17\06", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B3\17\06", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B4\17\06", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B5\17\06", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B6\17\06", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B7\17\06", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.85 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B8\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B9\00\03", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BA\00\00", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BB\02\03", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BC\02\03", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\BD\03\03\00\03\03", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.91 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C0\0B", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C1\09", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.93 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C2\A6", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.94 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C3\05", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.95 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C4\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.96 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C5\02", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.97 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C6\22", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.98 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C7\03", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C8\07 ", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C9\03 ", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CA\01`", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CB\01`", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\CC\00\00\02", [28 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\CD\00\00\02", [28 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\CE\00\00\02", [28 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\CF\00\00\02", [28 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\D1\00\05\01\07\10", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\D2\10\05\05\03\10", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\D3 \00C\07\10", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\D40\00C\07\10", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\D0\00\00\00\00\00\00\00", [24 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.112 = internal constant { <{ i8, [11 x i8] }>, [20 x i8] } { <{ i8, [11 x i8] }> <{ i8 -43, [11 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.113 = internal constant { <{ i8, [11 x i8] }>, [20 x i8] } { <{ i8, [11 x i8] }> <{ i8 -42, [11 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.114 = internal constant { <{ i8, [11 x i8] }>, [20 x i8] } { <{ i8, [11 x i8] }> <{ i8 -41, [11 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\D8\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.116 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E5\06", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.117 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E6\06", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.118 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E7\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.119 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E8\06", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.120 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E9\06", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.121 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\EA\06", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.122 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\EB\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.123 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\EC\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.124 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\ED0", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\06", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B011", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B111", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B2-.", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B314", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B4)*", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.131 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B5\12\10", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B6\18\16", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.133 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B7\00\02", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.134 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B8\081", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B911", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BA11", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BB1\08", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.138 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BC\03\01", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BD\17\19", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.140 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BE\11\13", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\BF*)", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.142 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C041", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.143 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C1.-", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.144 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C211", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.145 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C311", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.146 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C411", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C511", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.148 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C6.-", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.149 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C714", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.150 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C8)*", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.151 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C9\17\19", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.152 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CA\11\13", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.153 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CB\03\01", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CC\081", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.155 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CD11", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.156 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CE11", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.157 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CF1\08", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.158 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D0\00\02", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D1\12\10", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.160 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D2\18\16", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.161 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D3*)", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.162 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D441", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D5-.", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D611", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.165 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\D711", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.166 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\E511", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.167 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\E611", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\D8\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\D9\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.170 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E7\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.171 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"o\02", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.172 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F7G", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.173 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"o\0A", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.174 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F7\02", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.175 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"o\17", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.176 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F4`", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.177 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"o\01", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.178 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F9F", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.179 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"o\11", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.180 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F3\01", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.181 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.182 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\D9\02\03\00", [28 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.184 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B1l!", [29 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\00\00", [26 x i8] zeroinitializer }, align 32
@truly_nt35521_on.d.188 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.5, i32 259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"truly_nt35521_on\00", [47 x i8] zeroinitializer }, align 32
@truly_nt35521_on._entry_ptr = internal global ptr @truly_nt35521_on._entry, section ".printk_index", align 4
@truly_nt35521_on._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.5, i32 266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@truly_nt35521_on._entry_ptr.193 = internal global ptr @truly_nt35521_on._entry.191, section ".printk_index", align 4
@truly_nt35521_on.d.194 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S$", [30 x i8] zeroinitializer }, align 32
@truly_nt35521_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.5, i32 340, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to un-initialize panel: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"truly_nt35521_unprepare\00", [40 x i8] zeroinitializer }, align 32
@truly_nt35521_unprepare._entry_ptr = internal global ptr @truly_nt35521_unprepare._entry, section ".printk_index", align 4
@truly_nt35521_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.5, i32 286, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"truly_nt35521_off\00", [46 x i8] zeroinitializer }, align 32
@truly_nt35521_off._entry_ptr = internal global ptr @truly_nt35521_off._entry, section ".printk_index", align 4
@truly_nt35521_off._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.5, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@truly_nt35521_off._entry_ptr.201 = internal global ptr @truly_nt35521_off._entry.199, section ".printk_index", align 4
@truly_nt35521_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 85657, i16 720, i16 952, i16 972, i16 1084, i16 0, i16 1280, i16 1298, i16 1299, i16 1317, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 65, i16 116, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__const.truly_nt35521_create_backlight.props = private unnamed_addr constant %struct.backlight_properties { i32 255, i32 255, i32 0, i32 0, i32 1, i32 0, i32 0 }, align 4
@truly_nt35521_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @truly_nt35521_bl_update_status, ptr @truly_nt35521_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@truly_nt35521_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.5, i32 527, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"truly_nt35521_remove\00", [43 x i8] zeroinitializer }, align 32
@truly_nt35521_remove._entry_ptr = internal global ptr @truly_nt35521_remove._entry, section ".printk_index", align 4
@___asan_gen_.204 = private unnamed_addr constant [21 x i8] c"truly_nt35521_driver\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 540, i32 31 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 544, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [23 x i8] c"truly_nt35521_of_match\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 534, i32 34 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 472, i32 28 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 473, i32 28 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 477, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 481, i32 40 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 484, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 486, i32 39 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 489, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant [26 x i8] c"truly_nt35521_panel_funcs\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 409, i32 37 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 506, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 512, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 312, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 320, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 62, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 63, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 64, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 65, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 66, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 67, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 68, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 69, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 70, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 71, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 72, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 73, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 74, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 75, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 76, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 77, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 78, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 79, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 80, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 81, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 82, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 83, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 84, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 85, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 86, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 87, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 90, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 93, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 96, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 97, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 100, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 103, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 106, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 107, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 110, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 113, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 116, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 117, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 118, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 119, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 120, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 121, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 122, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 123, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 124, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 125, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 126, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 127, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 128, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 129, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 130, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 131, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 132, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 133, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 134, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 135, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 136, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 137, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 138, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 139, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 140, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 141, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 142, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 143, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 144, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 145, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 146, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 147, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 148, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 149, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 150, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 151, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 152, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 153, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 154, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 155, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 156, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 157, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 158, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 159, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 160, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 161, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 162, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 163, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 164, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 165, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 166, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 167, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 168, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 169, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 170, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 171, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 173, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 176, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 179, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 182, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 183, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 184, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 185, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 186, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 187, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 188, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 189, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 190, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 191, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 192, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 193, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 194, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 195, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 196, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 197, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 198, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 199, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 200, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 201, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 202, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 203, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 204, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 205, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 206, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 207, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 208, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 209, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 210, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 211, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 212, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 213, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 214, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 215, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 216, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 217, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 218, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 219, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 220, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 221, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 222, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 223, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 224, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 225, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 226, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 227, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 228, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 229, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 230, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 231, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 232, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 233, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 234, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 235, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 236, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 237, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 238, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 239, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 240, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 241, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 242, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 243, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 244, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 245, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 246, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 247, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 248, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 249, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 250, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 251, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 252, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 253, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 254, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 255, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 259, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 266, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 271, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 340, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 286, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 293, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant [19 x i8] c"truly_nt35521_mode\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 376, i32 38 }
@___asan_gen_.828 = private unnamed_addr constant [21 x i8] c"truly_nt35521_bl_ops\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 443, i32 35 }
@___asan_gen_.831 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.837 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.838 = private constant [58 x i8] c"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.838, i32 527, i32 3 }
@llvm.compiler.used = appending global [229 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_truly_nt35521_driver_exit, ptr @__initcall__kmod_panel_sony_tulip_truly_nt35521__302_548_truly_nt35521_driver_init6, ptr @truly_nt35521_driver_exit, ptr @truly_nt35521_off._entry, ptr @truly_nt35521_off._entry.199, ptr @truly_nt35521_off._entry_ptr, ptr @truly_nt35521_off._entry_ptr.201, ptr @truly_nt35521_on._entry, ptr @truly_nt35521_on._entry.191, ptr @truly_nt35521_on._entry_ptr, ptr @truly_nt35521_on._entry_ptr.193, ptr @truly_nt35521_prepare._entry, ptr @truly_nt35521_prepare._entry.18, ptr @truly_nt35521_prepare._entry_ptr, ptr @truly_nt35521_prepare._entry_ptr.20, ptr @truly_nt35521_probe._entry, ptr @truly_nt35521_probe._entry.13, ptr @truly_nt35521_probe._entry_ptr, ptr @truly_nt35521_probe._entry_ptr.15, ptr @truly_nt35521_remove._entry, ptr @truly_nt35521_remove._entry_ptr, ptr @truly_nt35521_unprepare._entry, ptr @truly_nt35521_unprepare._entry_ptr, ptr @truly_nt35521_driver, ptr @.str, ptr @truly_nt35521_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @truly_nt35521_panel_funcs, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @truly_nt35521_on.d, ptr @truly_nt35521_on.d.21, ptr @truly_nt35521_on.d.22, ptr @truly_nt35521_on.d.23, ptr @truly_nt35521_on.d.24, ptr @truly_nt35521_on.d.25, ptr @truly_nt35521_on.d.26, ptr @truly_nt35521_on.d.27, ptr @truly_nt35521_on.d.28, ptr @truly_nt35521_on.d.29, ptr @truly_nt35521_on.d.30, ptr @truly_nt35521_on.d.31, ptr @truly_nt35521_on.d.32, ptr @truly_nt35521_on.d.33, ptr @truly_nt35521_on.d.34, ptr @truly_nt35521_on.d.35, ptr @truly_nt35521_on.d.36, ptr @truly_nt35521_on.d.37, ptr @truly_nt35521_on.d.38, ptr @truly_nt35521_on.d.39, ptr @truly_nt35521_on.d.40, ptr @truly_nt35521_on.d.41, ptr @truly_nt35521_on.d.42, ptr @truly_nt35521_on.d.43, ptr @truly_nt35521_on.d.44, ptr @truly_nt35521_on.d.45, ptr @truly_nt35521_on.d.46, ptr @truly_nt35521_on.d.47, ptr @truly_nt35521_on.d.48, ptr @truly_nt35521_on.d.49, ptr @truly_nt35521_on.d.50, ptr @truly_nt35521_on.d.51, ptr @truly_nt35521_on.d.52, ptr @truly_nt35521_on.d.53, ptr @truly_nt35521_on.d.54, ptr @truly_nt35521_on.d.55, ptr @truly_nt35521_on.d.56, ptr @truly_nt35521_on.d.57, ptr @truly_nt35521_on.d.58, ptr @truly_nt35521_on.d.59, ptr @truly_nt35521_on.d.60, ptr @truly_nt35521_on.d.61, ptr @truly_nt35521_on.d.62, ptr @truly_nt35521_on.d.63, ptr @truly_nt35521_on.d.64, ptr @truly_nt35521_on.d.65, ptr @truly_nt35521_on.d.66, ptr @truly_nt35521_on.d.67, ptr @truly_nt35521_on.d.68, ptr @truly_nt35521_on.d.69, ptr @truly_nt35521_on.d.70, ptr @truly_nt35521_on.d.71, ptr @truly_nt35521_on.d.72, ptr @truly_nt35521_on.d.73, ptr @truly_nt35521_on.d.74, ptr @truly_nt35521_on.d.75, ptr @truly_nt35521_on.d.76, ptr @truly_nt35521_on.d.77, ptr @truly_nt35521_on.d.78, ptr @truly_nt35521_on.d.79, ptr @truly_nt35521_on.d.80, ptr @truly_nt35521_on.d.81, ptr @truly_nt35521_on.d.82, ptr @truly_nt35521_on.d.83, ptr @truly_nt35521_on.d.84, ptr @truly_nt35521_on.d.85, ptr @truly_nt35521_on.d.86, ptr @truly_nt35521_on.d.87, ptr @truly_nt35521_on.d.88, ptr @truly_nt35521_on.d.89, ptr @truly_nt35521_on.d.90, ptr @truly_nt35521_on.d.91, ptr @truly_nt35521_on.d.92, ptr @truly_nt35521_on.d.93, ptr @truly_nt35521_on.d.94, ptr @truly_nt35521_on.d.95, ptr @truly_nt35521_on.d.96, ptr @truly_nt35521_on.d.97, ptr @truly_nt35521_on.d.98, ptr @truly_nt35521_on.d.99, ptr @truly_nt35521_on.d.100, ptr @truly_nt35521_on.d.101, ptr @truly_nt35521_on.d.102, ptr @truly_nt35521_on.d.103, ptr @truly_nt35521_on.d.104, ptr @truly_nt35521_on.d.105, ptr @truly_nt35521_on.d.106, ptr @truly_nt35521_on.d.107, ptr @truly_nt35521_on.d.108, ptr @truly_nt35521_on.d.109, ptr @truly_nt35521_on.d.110, ptr @truly_nt35521_on.d.111, ptr @truly_nt35521_on.d.112, ptr @truly_nt35521_on.d.113, ptr @truly_nt35521_on.d.114, ptr @truly_nt35521_on.d.115, ptr @truly_nt35521_on.d.116, ptr @truly_nt35521_on.d.117, ptr @truly_nt35521_on.d.118, ptr @truly_nt35521_on.d.119, ptr @truly_nt35521_on.d.120, ptr @truly_nt35521_on.d.121, ptr @truly_nt35521_on.d.122, ptr @truly_nt35521_on.d.123, ptr @truly_nt35521_on.d.124, ptr @truly_nt35521_on.d.125, ptr @truly_nt35521_on.d.126, ptr @truly_nt35521_on.d.127, ptr @truly_nt35521_on.d.128, ptr @truly_nt35521_on.d.129, ptr @truly_nt35521_on.d.130, ptr @truly_nt35521_on.d.131, ptr @truly_nt35521_on.d.132, ptr @truly_nt35521_on.d.133, ptr @truly_nt35521_on.d.134, ptr @truly_nt35521_on.d.135, ptr @truly_nt35521_on.d.136, ptr @truly_nt35521_on.d.137, ptr @truly_nt35521_on.d.138, ptr @truly_nt35521_on.d.139, ptr @truly_nt35521_on.d.140, ptr @truly_nt35521_on.d.141, ptr @truly_nt35521_on.d.142, ptr @truly_nt35521_on.d.143, ptr @truly_nt35521_on.d.144, ptr @truly_nt35521_on.d.145, ptr @truly_nt35521_on.d.146, ptr @truly_nt35521_on.d.147, ptr @truly_nt35521_on.d.148, ptr @truly_nt35521_on.d.149, ptr @truly_nt35521_on.d.150, ptr @truly_nt35521_on.d.151, ptr @truly_nt35521_on.d.152, ptr @truly_nt35521_on.d.153, ptr @truly_nt35521_on.d.154, ptr @truly_nt35521_on.d.155, ptr @truly_nt35521_on.d.156, ptr @truly_nt35521_on.d.157, ptr @truly_nt35521_on.d.158, ptr @truly_nt35521_on.d.159, ptr @truly_nt35521_on.d.160, ptr @truly_nt35521_on.d.161, ptr @truly_nt35521_on.d.162, ptr @truly_nt35521_on.d.163, ptr @truly_nt35521_on.d.164, ptr @truly_nt35521_on.d.165, ptr @truly_nt35521_on.d.166, ptr @truly_nt35521_on.d.167, ptr @truly_nt35521_on.d.168, ptr @truly_nt35521_on.d.169, ptr @truly_nt35521_on.d.170, ptr @truly_nt35521_on.d.171, ptr @truly_nt35521_on.d.172, ptr @truly_nt35521_on.d.173, ptr @truly_nt35521_on.d.174, ptr @truly_nt35521_on.d.175, ptr @truly_nt35521_on.d.176, ptr @truly_nt35521_on.d.177, ptr @truly_nt35521_on.d.178, ptr @truly_nt35521_on.d.179, ptr @truly_nt35521_on.d.180, ptr @truly_nt35521_on.d.181, ptr @truly_nt35521_on.d.182, ptr @truly_nt35521_on.d.183, ptr @truly_nt35521_on.d.184, ptr @truly_nt35521_on.d.185, ptr @truly_nt35521_on.d.186, ptr @truly_nt35521_on.d.187, ptr @truly_nt35521_on.d.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @truly_nt35521_on.d.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @truly_nt35521_mode, ptr @truly_nt35521_bl_ops, ptr @.str.202, ptr @.str.203], section "llvm.metadata"
@0 = internal global [212 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_prepare._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.72 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.74 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.85 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.91 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.93 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.94 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.95 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.96 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.97 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.98 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.116 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.117 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.118 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.119 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.120 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.121 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.122 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.123 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.124 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.131 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.133 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.134 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.138 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.140 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.142 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.143 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.144 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.145 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.146 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.148 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.149 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.150 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.151 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.152 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.153 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.155 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.156 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.157 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.158 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.160 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.161 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.162 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.165 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.166 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.167 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.170 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.171 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.172 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.173 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.174 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.175 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.176 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.177 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.178 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.179 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.180 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.181 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.182 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.184 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.188 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_on.d.194 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_off._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @truly_nt35521_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @truly_nt35521_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @truly_nt35521_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @truly_nt35521_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.truly_nt35521, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx3 = getelementptr %struct.truly_nt35521, ptr %call.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.2, ptr %arrayidx3, align 4
  %call6 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call6) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 7) #6
  %reset_gpio = getelementptr inbounds %struct.truly_nt35521, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call9 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 3) #6
  %blen_gpio = getelementptr inbounds %struct.truly_nt35521, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %blen_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call17, ptr %blen_gpio, align 4
  %cmp.i86 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call17 to i32
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %dsi25 = getelementptr inbounds %struct.truly_nt35521, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dsi25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dsi, ptr %dsi25, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %10 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1555, ptr %mode_flags, align 8
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @truly_nt35521_panel_funcs, i32 noundef 16) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #6
  %11 = call ptr @memcpy(ptr %props.i, ptr @__const.truly_nt35521_create_backlight.props, i32 28)
  %init_name.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end24.truly_nt35521_create_backlight.exit_crit_edge

if.end24.truly_nt35521_create_backlight.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %truly_nt35521_create_backlight.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  br label %truly_nt35521_create_backlight.exit

truly_nt35521_create_backlight.exit:              ; preds = %if.end.i.i, %if.end24.truly_nt35521_create_backlight.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.end24.truly_nt35521_create_backlight.exit_crit_edge ]
  %call2.i = call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef %retval.0.i.i, ptr noundef %dev1, ptr noundef %dsi, ptr noundef nonnull @truly_nt35521_bl_ops, ptr noundef nonnull %props.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #6
  %backlight = getelementptr inbounds %struct.drm_panel, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2.i, ptr %backlight, align 4
  %cmp.i87 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then31, label %if.end36

if.then31:                                        ; preds = %truly_nt35521_create_backlight.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call2.i to i32
  %call35 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %17, ptr noundef nonnull @.str.12) #6
  br label %cleanup

if.end36:                                         ; preds = %truly_nt35521_create_backlight.exit
  call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  %call38 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call38) #9
  call void @drm_panel_remove(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end36.cleanup_crit_edge, %if.then31, %if.then20, %if.then12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %call15, %if.then12 ], [ %call23, %if.then20 ], [ %call35, %if.then31 ], [ %call38, %do.end43 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.202, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call2) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reset_gpio.i = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 3
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 150) #6
  %10 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi, align 4
  %dev2.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 1
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_flags.i, align 8
  %or.i = or i32 %13, 2048
  store i32 %or.i, ptr %mode_flags.i, align 8
  %call.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end4.do.end10_crit_edge, label %do.body4.i

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body4.i:                                       ; preds = %if.end4
  %call6.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.21, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.body4.i.do.end10_crit_edge, label %do.body15.i

do.body4.i.do.end10_crit_edge:                    ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body15.i:                                      ; preds = %do.body4.i
  %call17.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.22, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %do.body15.i.do.end10_crit_edge, label %do.body26.i

do.body15.i.do.end10_crit_edge:                   ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body26.i:                                      ; preds = %do.body15.i
  %call28.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.23, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %do.body26.i.do.end10_crit_edge, label %do.body37.i

do.body26.i.do.end10_crit_edge:                   ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body37.i:                                      ; preds = %do.body26.i
  %call39.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.24, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %do.body37.i.do.end10_crit_edge, label %do.body48.i

do.body37.i.do.end10_crit_edge:                   ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body48.i:                                      ; preds = %do.body37.i
  %call50.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.25, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %do.body48.i.do.end10_crit_edge, label %do.body59.i

do.body48.i.do.end10_crit_edge:                   ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body59.i:                                      ; preds = %do.body48.i
  %call61.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.26, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 0
  br i1 %cmp62.i, label %do.body59.i.do.end10_crit_edge, label %do.body70.i

do.body59.i.do.end10_crit_edge:                   ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body70.i:                                      ; preds = %do.body59.i
  %call72.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.27, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.i = icmp slt i32 %call72.i, 0
  br i1 %cmp73.i, label %do.body70.i.do.end10_crit_edge, label %do.body81.i

do.body70.i.do.end10_crit_edge:                   ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body81.i:                                      ; preds = %do.body70.i
  %call83.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.28, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp84.i = icmp slt i32 %call83.i, 0
  br i1 %cmp84.i, label %do.body81.i.do.end10_crit_edge, label %do.body92.i

do.body81.i.do.end10_crit_edge:                   ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body92.i:                                      ; preds = %do.body81.i
  %call94.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.29, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp95.i = icmp slt i32 %call94.i, 0
  br i1 %cmp95.i, label %do.body92.i.do.end10_crit_edge, label %do.body103.i

do.body92.i.do.end10_crit_edge:                   ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body103.i:                                     ; preds = %do.body92.i
  %call105.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.30, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %cmp106.i = icmp slt i32 %call105.i, 0
  br i1 %cmp106.i, label %do.body103.i.do.end10_crit_edge, label %do.body114.i

do.body103.i.do.end10_crit_edge:                  ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body114.i:                                     ; preds = %do.body103.i
  %call116.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.31, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %cmp117.i = icmp slt i32 %call116.i, 0
  br i1 %cmp117.i, label %do.body114.i.do.end10_crit_edge, label %do.body125.i

do.body114.i.do.end10_crit_edge:                  ; preds = %do.body114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body125.i:                                     ; preds = %do.body114.i
  %call127.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.32, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %cmp128.i = icmp slt i32 %call127.i, 0
  br i1 %cmp128.i, label %do.body125.i.do.end10_crit_edge, label %do.body136.i

do.body125.i.do.end10_crit_edge:                  ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body136.i:                                     ; preds = %do.body125.i
  %call138.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.33, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %cmp139.i = icmp slt i32 %call138.i, 0
  br i1 %cmp139.i, label %do.body136.i.do.end10_crit_edge, label %do.body147.i

do.body136.i.do.end10_crit_edge:                  ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body147.i:                                     ; preds = %do.body136.i
  %call149.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.34, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %cmp150.i = icmp slt i32 %call149.i, 0
  br i1 %cmp150.i, label %do.body147.i.do.end10_crit_edge, label %do.body158.i

do.body147.i.do.end10_crit_edge:                  ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body158.i:                                     ; preds = %do.body147.i
  %call160.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.35, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160.i)
  %cmp161.i = icmp slt i32 %call160.i, 0
  br i1 %cmp161.i, label %do.body158.i.do.end10_crit_edge, label %do.body169.i

do.body158.i.do.end10_crit_edge:                  ; preds = %do.body158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body169.i:                                     ; preds = %do.body158.i
  %call171.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.36, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %cmp172.i = icmp slt i32 %call171.i, 0
  br i1 %cmp172.i, label %do.body169.i.do.end10_crit_edge, label %do.body180.i

do.body169.i.do.end10_crit_edge:                  ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body180.i:                                     ; preds = %do.body169.i
  %call182.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.37, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %cmp183.i = icmp slt i32 %call182.i, 0
  br i1 %cmp183.i, label %do.body180.i.do.end10_crit_edge, label %do.body191.i

do.body180.i.do.end10_crit_edge:                  ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body191.i:                                     ; preds = %do.body180.i
  %call193.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.38, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.i)
  %cmp194.i = icmp slt i32 %call193.i, 0
  br i1 %cmp194.i, label %do.body191.i.do.end10_crit_edge, label %do.body202.i

do.body191.i.do.end10_crit_edge:                  ; preds = %do.body191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body202.i:                                     ; preds = %do.body191.i
  %call204.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.39, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204.i)
  %cmp205.i = icmp slt i32 %call204.i, 0
  br i1 %cmp205.i, label %do.body202.i.do.end10_crit_edge, label %do.body213.i

do.body202.i.do.end10_crit_edge:                  ; preds = %do.body202.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body213.i:                                     ; preds = %do.body202.i
  %call215.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.40, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215.i)
  %cmp216.i = icmp slt i32 %call215.i, 0
  br i1 %cmp216.i, label %do.body213.i.do.end10_crit_edge, label %do.body224.i

do.body213.i.do.end10_crit_edge:                  ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body224.i:                                     ; preds = %do.body213.i
  %call226.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.41, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226.i)
  %cmp227.i = icmp slt i32 %call226.i, 0
  br i1 %cmp227.i, label %do.body224.i.do.end10_crit_edge, label %do.body235.i

do.body224.i.do.end10_crit_edge:                  ; preds = %do.body224.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body235.i:                                     ; preds = %do.body224.i
  %call237.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.42, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237.i)
  %cmp238.i = icmp slt i32 %call237.i, 0
  br i1 %cmp238.i, label %do.body235.i.do.end10_crit_edge, label %do.body246.i

do.body235.i.do.end10_crit_edge:                  ; preds = %do.body235.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body246.i:                                     ; preds = %do.body235.i
  %call248.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.43, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248.i)
  %cmp249.i = icmp slt i32 %call248.i, 0
  br i1 %cmp249.i, label %do.body246.i.do.end10_crit_edge, label %do.body257.i

do.body246.i.do.end10_crit_edge:                  ; preds = %do.body246.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body257.i:                                     ; preds = %do.body246.i
  %call259.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.44, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259.i)
  %cmp260.i = icmp slt i32 %call259.i, 0
  br i1 %cmp260.i, label %do.body257.i.do.end10_crit_edge, label %do.body268.i

do.body257.i.do.end10_crit_edge:                  ; preds = %do.body257.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body268.i:                                     ; preds = %do.body257.i
  %call270.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.45, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270.i)
  %cmp271.i = icmp slt i32 %call270.i, 0
  br i1 %cmp271.i, label %do.body268.i.do.end10_crit_edge, label %do.body279.i

do.body268.i.do.end10_crit_edge:                  ; preds = %do.body268.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body279.i:                                     ; preds = %do.body268.i
  %call281.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.46, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281.i)
  %cmp282.i = icmp slt i32 %call281.i, 0
  br i1 %cmp282.i, label %do.body279.i.do.end10_crit_edge, label %do.body290.i

do.body279.i.do.end10_crit_edge:                  ; preds = %do.body279.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body290.i:                                     ; preds = %do.body279.i
  %call292.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.47, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292.i)
  %cmp293.i = icmp slt i32 %call292.i, 0
  br i1 %cmp293.i, label %do.body290.i.do.end10_crit_edge, label %do.body301.i

do.body290.i.do.end10_crit_edge:                  ; preds = %do.body290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body301.i:                                     ; preds = %do.body290.i
  %call303.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.48, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303.i)
  %cmp304.i = icmp slt i32 %call303.i, 0
  br i1 %cmp304.i, label %do.body301.i.do.end10_crit_edge, label %do.body312.i

do.body301.i.do.end10_crit_edge:                  ; preds = %do.body301.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body312.i:                                     ; preds = %do.body301.i
  %call314.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.49, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314.i)
  %cmp315.i = icmp slt i32 %call314.i, 0
  br i1 %cmp315.i, label %do.body312.i.do.end10_crit_edge, label %do.body323.i

do.body312.i.do.end10_crit_edge:                  ; preds = %do.body312.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body323.i:                                     ; preds = %do.body312.i
  %call325.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.50, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325.i)
  %cmp326.i = icmp slt i32 %call325.i, 0
  br i1 %cmp326.i, label %do.body323.i.do.end10_crit_edge, label %do.body334.i

do.body323.i.do.end10_crit_edge:                  ; preds = %do.body323.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body334.i:                                     ; preds = %do.body323.i
  %call336.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.51, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336.i)
  %cmp337.i = icmp slt i32 %call336.i, 0
  br i1 %cmp337.i, label %do.body334.i.do.end10_crit_edge, label %do.body345.i

do.body334.i.do.end10_crit_edge:                  ; preds = %do.body334.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body345.i:                                     ; preds = %do.body334.i
  %call347.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.52, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call347.i)
  %cmp348.i = icmp slt i32 %call347.i, 0
  br i1 %cmp348.i, label %do.body345.i.do.end10_crit_edge, label %do.body356.i

do.body345.i.do.end10_crit_edge:                  ; preds = %do.body345.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body356.i:                                     ; preds = %do.body345.i
  %call358.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.53, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358.i)
  %cmp359.i = icmp slt i32 %call358.i, 0
  br i1 %cmp359.i, label %do.body356.i.do.end10_crit_edge, label %do.body367.i

do.body356.i.do.end10_crit_edge:                  ; preds = %do.body356.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body367.i:                                     ; preds = %do.body356.i
  %call369.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.54, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369.i)
  %cmp370.i = icmp slt i32 %call369.i, 0
  br i1 %cmp370.i, label %do.body367.i.do.end10_crit_edge, label %do.body378.i

do.body367.i.do.end10_crit_edge:                  ; preds = %do.body367.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body378.i:                                     ; preds = %do.body367.i
  %call380.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.55, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call380.i)
  %cmp381.i = icmp slt i32 %call380.i, 0
  br i1 %cmp381.i, label %do.body378.i.do.end10_crit_edge, label %do.body389.i

do.body378.i.do.end10_crit_edge:                  ; preds = %do.body378.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body389.i:                                     ; preds = %do.body378.i
  %call391.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.56, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391.i)
  %cmp392.i = icmp slt i32 %call391.i, 0
  br i1 %cmp392.i, label %do.body389.i.do.end10_crit_edge, label %do.body400.i

do.body389.i.do.end10_crit_edge:                  ; preds = %do.body389.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body400.i:                                     ; preds = %do.body389.i
  %call402.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.57, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call402.i)
  %cmp403.i = icmp slt i32 %call402.i, 0
  br i1 %cmp403.i, label %do.body400.i.do.end10_crit_edge, label %do.body411.i

do.body400.i.do.end10_crit_edge:                  ; preds = %do.body400.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body411.i:                                     ; preds = %do.body400.i
  %call413.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.58, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call413.i)
  %cmp414.i = icmp slt i32 %call413.i, 0
  br i1 %cmp414.i, label %do.body411.i.do.end10_crit_edge, label %do.body422.i

do.body411.i.do.end10_crit_edge:                  ; preds = %do.body411.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body422.i:                                     ; preds = %do.body411.i
  %call424.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.59, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call424.i)
  %cmp425.i = icmp slt i32 %call424.i, 0
  br i1 %cmp425.i, label %do.body422.i.do.end10_crit_edge, label %do.body433.i

do.body422.i.do.end10_crit_edge:                  ; preds = %do.body422.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body433.i:                                     ; preds = %do.body422.i
  %call435.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.60, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call435.i)
  %cmp436.i = icmp slt i32 %call435.i, 0
  br i1 %cmp436.i, label %do.body433.i.do.end10_crit_edge, label %do.body444.i

do.body433.i.do.end10_crit_edge:                  ; preds = %do.body433.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body444.i:                                     ; preds = %do.body433.i
  %call446.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.61, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446.i)
  %cmp447.i = icmp slt i32 %call446.i, 0
  br i1 %cmp447.i, label %do.body444.i.do.end10_crit_edge, label %do.body455.i

do.body444.i.do.end10_crit_edge:                  ; preds = %do.body444.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body455.i:                                     ; preds = %do.body444.i
  %call457.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.62, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call457.i)
  %cmp458.i = icmp slt i32 %call457.i, 0
  br i1 %cmp458.i, label %do.body455.i.do.end10_crit_edge, label %do.body466.i

do.body455.i.do.end10_crit_edge:                  ; preds = %do.body455.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body466.i:                                     ; preds = %do.body455.i
  %call468.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.63, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call468.i)
  %cmp469.i = icmp slt i32 %call468.i, 0
  br i1 %cmp469.i, label %do.body466.i.do.end10_crit_edge, label %do.body477.i

do.body466.i.do.end10_crit_edge:                  ; preds = %do.body466.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body477.i:                                     ; preds = %do.body466.i
  %call479.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.64, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call479.i)
  %cmp480.i = icmp slt i32 %call479.i, 0
  br i1 %cmp480.i, label %do.body477.i.do.end10_crit_edge, label %do.body488.i

do.body477.i.do.end10_crit_edge:                  ; preds = %do.body477.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body488.i:                                     ; preds = %do.body477.i
  %call490.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.65, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call490.i)
  %cmp491.i = icmp slt i32 %call490.i, 0
  br i1 %cmp491.i, label %do.body488.i.do.end10_crit_edge, label %do.body499.i

do.body488.i.do.end10_crit_edge:                  ; preds = %do.body488.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body499.i:                                     ; preds = %do.body488.i
  %call501.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.66, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call501.i)
  %cmp502.i = icmp slt i32 %call501.i, 0
  br i1 %cmp502.i, label %do.body499.i.do.end10_crit_edge, label %do.body510.i

do.body499.i.do.end10_crit_edge:                  ; preds = %do.body499.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body510.i:                                     ; preds = %do.body499.i
  %call512.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.67, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call512.i)
  %cmp513.i = icmp slt i32 %call512.i, 0
  br i1 %cmp513.i, label %do.body510.i.do.end10_crit_edge, label %do.body521.i

do.body510.i.do.end10_crit_edge:                  ; preds = %do.body510.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body521.i:                                     ; preds = %do.body510.i
  %call523.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.68, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call523.i)
  %cmp524.i = icmp slt i32 %call523.i, 0
  br i1 %cmp524.i, label %do.body521.i.do.end10_crit_edge, label %do.body532.i

do.body521.i.do.end10_crit_edge:                  ; preds = %do.body521.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body532.i:                                     ; preds = %do.body521.i
  %call534.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.69, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call534.i)
  %cmp535.i = icmp slt i32 %call534.i, 0
  br i1 %cmp535.i, label %do.body532.i.do.end10_crit_edge, label %do.body543.i

do.body532.i.do.end10_crit_edge:                  ; preds = %do.body532.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body543.i:                                     ; preds = %do.body532.i
  %call545.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.70, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call545.i)
  %cmp546.i = icmp slt i32 %call545.i, 0
  br i1 %cmp546.i, label %do.body543.i.do.end10_crit_edge, label %do.body554.i

do.body543.i.do.end10_crit_edge:                  ; preds = %do.body543.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body554.i:                                     ; preds = %do.body543.i
  %call556.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.71, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call556.i)
  %cmp557.i = icmp slt i32 %call556.i, 0
  br i1 %cmp557.i, label %do.body554.i.do.end10_crit_edge, label %do.body565.i

do.body554.i.do.end10_crit_edge:                  ; preds = %do.body554.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body565.i:                                     ; preds = %do.body554.i
  %call567.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.72, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call567.i)
  %cmp568.i = icmp slt i32 %call567.i, 0
  br i1 %cmp568.i, label %do.body565.i.do.end10_crit_edge, label %do.body576.i

do.body565.i.do.end10_crit_edge:                  ; preds = %do.body565.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body576.i:                                     ; preds = %do.body565.i
  %call578.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.73, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call578.i)
  %cmp579.i = icmp slt i32 %call578.i, 0
  br i1 %cmp579.i, label %do.body576.i.do.end10_crit_edge, label %do.body587.i

do.body576.i.do.end10_crit_edge:                  ; preds = %do.body576.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body587.i:                                     ; preds = %do.body576.i
  %call589.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.74, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call589.i)
  %cmp590.i = icmp slt i32 %call589.i, 0
  br i1 %cmp590.i, label %do.body587.i.do.end10_crit_edge, label %do.body598.i

do.body587.i.do.end10_crit_edge:                  ; preds = %do.body587.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body598.i:                                     ; preds = %do.body587.i
  %call600.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.75, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call600.i)
  %cmp601.i = icmp slt i32 %call600.i, 0
  br i1 %cmp601.i, label %do.body598.i.do.end10_crit_edge, label %do.body609.i

do.body598.i.do.end10_crit_edge:                  ; preds = %do.body598.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body609.i:                                     ; preds = %do.body598.i
  %call611.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.76, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call611.i)
  %cmp612.i = icmp slt i32 %call611.i, 0
  br i1 %cmp612.i, label %do.body609.i.do.end10_crit_edge, label %do.body620.i

do.body609.i.do.end10_crit_edge:                  ; preds = %do.body609.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body620.i:                                     ; preds = %do.body609.i
  %call622.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.77, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call622.i)
  %cmp623.i = icmp slt i32 %call622.i, 0
  br i1 %cmp623.i, label %do.body620.i.do.end10_crit_edge, label %do.body631.i

do.body620.i.do.end10_crit_edge:                  ; preds = %do.body620.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body631.i:                                     ; preds = %do.body620.i
  %call633.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.78, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call633.i)
  %cmp634.i = icmp slt i32 %call633.i, 0
  br i1 %cmp634.i, label %do.body631.i.do.end10_crit_edge, label %do.body642.i

do.body631.i.do.end10_crit_edge:                  ; preds = %do.body631.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body642.i:                                     ; preds = %do.body631.i
  %call644.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.79, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call644.i)
  %cmp645.i = icmp slt i32 %call644.i, 0
  br i1 %cmp645.i, label %do.body642.i.do.end10_crit_edge, label %do.body653.i

do.body642.i.do.end10_crit_edge:                  ; preds = %do.body642.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body653.i:                                     ; preds = %do.body642.i
  %call655.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.80, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call655.i)
  %cmp656.i = icmp slt i32 %call655.i, 0
  br i1 %cmp656.i, label %do.body653.i.do.end10_crit_edge, label %do.body664.i

do.body653.i.do.end10_crit_edge:                  ; preds = %do.body653.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body664.i:                                     ; preds = %do.body653.i
  %call666.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.81, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call666.i)
  %cmp667.i = icmp slt i32 %call666.i, 0
  br i1 %cmp667.i, label %do.body664.i.do.end10_crit_edge, label %do.body675.i

do.body664.i.do.end10_crit_edge:                  ; preds = %do.body664.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body675.i:                                     ; preds = %do.body664.i
  %call677.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.82, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call677.i)
  %cmp678.i = icmp slt i32 %call677.i, 0
  br i1 %cmp678.i, label %do.body675.i.do.end10_crit_edge, label %do.body686.i

do.body675.i.do.end10_crit_edge:                  ; preds = %do.body675.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body686.i:                                     ; preds = %do.body675.i
  %call688.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.83, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call688.i)
  %cmp689.i = icmp slt i32 %call688.i, 0
  br i1 %cmp689.i, label %do.body686.i.do.end10_crit_edge, label %do.body697.i

do.body686.i.do.end10_crit_edge:                  ; preds = %do.body686.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body697.i:                                     ; preds = %do.body686.i
  %call699.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.84, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call699.i)
  %cmp700.i = icmp slt i32 %call699.i, 0
  br i1 %cmp700.i, label %do.body697.i.do.end10_crit_edge, label %do.body708.i

do.body697.i.do.end10_crit_edge:                  ; preds = %do.body697.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body708.i:                                     ; preds = %do.body697.i
  %call710.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.85, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call710.i)
  %cmp711.i = icmp slt i32 %call710.i, 0
  br i1 %cmp711.i, label %do.body708.i.do.end10_crit_edge, label %do.body719.i

do.body708.i.do.end10_crit_edge:                  ; preds = %do.body708.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body719.i:                                     ; preds = %do.body708.i
  %call721.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.86, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call721.i)
  %cmp722.i = icmp slt i32 %call721.i, 0
  br i1 %cmp722.i, label %do.body719.i.do.end10_crit_edge, label %do.body730.i

do.body719.i.do.end10_crit_edge:                  ; preds = %do.body719.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body730.i:                                     ; preds = %do.body719.i
  %call732.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.87, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call732.i)
  %cmp733.i = icmp slt i32 %call732.i, 0
  br i1 %cmp733.i, label %do.body730.i.do.end10_crit_edge, label %do.body741.i

do.body730.i.do.end10_crit_edge:                  ; preds = %do.body730.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body741.i:                                     ; preds = %do.body730.i
  %call743.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.88, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call743.i)
  %cmp744.i = icmp slt i32 %call743.i, 0
  br i1 %cmp744.i, label %do.body741.i.do.end10_crit_edge, label %do.body752.i

do.body741.i.do.end10_crit_edge:                  ; preds = %do.body741.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body752.i:                                     ; preds = %do.body741.i
  %call754.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.89, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call754.i)
  %cmp755.i = icmp slt i32 %call754.i, 0
  br i1 %cmp755.i, label %do.body752.i.do.end10_crit_edge, label %do.body763.i

do.body752.i.do.end10_crit_edge:                  ; preds = %do.body752.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body763.i:                                     ; preds = %do.body752.i
  %call765.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.90, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call765.i)
  %cmp766.i = icmp slt i32 %call765.i, 0
  br i1 %cmp766.i, label %do.body763.i.do.end10_crit_edge, label %do.body774.i

do.body763.i.do.end10_crit_edge:                  ; preds = %do.body763.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body774.i:                                     ; preds = %do.body763.i
  %call776.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.91, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call776.i)
  %cmp777.i = icmp slt i32 %call776.i, 0
  br i1 %cmp777.i, label %do.body774.i.do.end10_crit_edge, label %do.body785.i

do.body774.i.do.end10_crit_edge:                  ; preds = %do.body774.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body785.i:                                     ; preds = %do.body774.i
  %call787.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.92, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call787.i)
  %cmp788.i = icmp slt i32 %call787.i, 0
  br i1 %cmp788.i, label %do.body785.i.do.end10_crit_edge, label %do.body796.i

do.body785.i.do.end10_crit_edge:                  ; preds = %do.body785.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body796.i:                                     ; preds = %do.body785.i
  %call798.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.93, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call798.i)
  %cmp799.i = icmp slt i32 %call798.i, 0
  br i1 %cmp799.i, label %do.body796.i.do.end10_crit_edge, label %do.body807.i

do.body796.i.do.end10_crit_edge:                  ; preds = %do.body796.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body807.i:                                     ; preds = %do.body796.i
  %call809.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.94, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call809.i)
  %cmp810.i = icmp slt i32 %call809.i, 0
  br i1 %cmp810.i, label %do.body807.i.do.end10_crit_edge, label %do.body818.i

do.body807.i.do.end10_crit_edge:                  ; preds = %do.body807.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body818.i:                                     ; preds = %do.body807.i
  %call820.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.95, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call820.i)
  %cmp821.i = icmp slt i32 %call820.i, 0
  br i1 %cmp821.i, label %do.body818.i.do.end10_crit_edge, label %do.body829.i

do.body818.i.do.end10_crit_edge:                  ; preds = %do.body818.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body829.i:                                     ; preds = %do.body818.i
  %call831.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.96, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call831.i)
  %cmp832.i = icmp slt i32 %call831.i, 0
  br i1 %cmp832.i, label %do.body829.i.do.end10_crit_edge, label %do.body840.i

do.body829.i.do.end10_crit_edge:                  ; preds = %do.body829.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body840.i:                                     ; preds = %do.body829.i
  %call842.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.97, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call842.i)
  %cmp843.i = icmp slt i32 %call842.i, 0
  br i1 %cmp843.i, label %do.body840.i.do.end10_crit_edge, label %do.body851.i

do.body840.i.do.end10_crit_edge:                  ; preds = %do.body840.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body851.i:                                     ; preds = %do.body840.i
  %call853.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.98, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call853.i)
  %cmp854.i = icmp slt i32 %call853.i, 0
  br i1 %cmp854.i, label %do.body851.i.do.end10_crit_edge, label %do.body862.i

do.body851.i.do.end10_crit_edge:                  ; preds = %do.body851.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body862.i:                                     ; preds = %do.body851.i
  %call864.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.99, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call864.i)
  %cmp865.i = icmp slt i32 %call864.i, 0
  br i1 %cmp865.i, label %do.body862.i.do.end10_crit_edge, label %do.body873.i

do.body862.i.do.end10_crit_edge:                  ; preds = %do.body862.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body873.i:                                     ; preds = %do.body862.i
  %call875.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.100, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call875.i)
  %cmp876.i = icmp slt i32 %call875.i, 0
  br i1 %cmp876.i, label %do.body873.i.do.end10_crit_edge, label %do.body884.i

do.body873.i.do.end10_crit_edge:                  ; preds = %do.body873.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body884.i:                                     ; preds = %do.body873.i
  %call886.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.101, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call886.i)
  %cmp887.i = icmp slt i32 %call886.i, 0
  br i1 %cmp887.i, label %do.body884.i.do.end10_crit_edge, label %do.body895.i

do.body884.i.do.end10_crit_edge:                  ; preds = %do.body884.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body895.i:                                     ; preds = %do.body884.i
  %call897.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.102, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call897.i)
  %cmp898.i = icmp slt i32 %call897.i, 0
  br i1 %cmp898.i, label %do.body895.i.do.end10_crit_edge, label %do.body906.i

do.body895.i.do.end10_crit_edge:                  ; preds = %do.body895.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body906.i:                                     ; preds = %do.body895.i
  %call908.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.103, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call908.i)
  %cmp909.i = icmp slt i32 %call908.i, 0
  br i1 %cmp909.i, label %do.body906.i.do.end10_crit_edge, label %do.body917.i

do.body906.i.do.end10_crit_edge:                  ; preds = %do.body906.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body917.i:                                     ; preds = %do.body906.i
  %call919.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.104, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call919.i)
  %cmp920.i = icmp slt i32 %call919.i, 0
  br i1 %cmp920.i, label %do.body917.i.do.end10_crit_edge, label %do.body928.i

do.body917.i.do.end10_crit_edge:                  ; preds = %do.body917.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body928.i:                                     ; preds = %do.body917.i
  %call930.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.105, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call930.i)
  %cmp931.i = icmp slt i32 %call930.i, 0
  br i1 %cmp931.i, label %do.body928.i.do.end10_crit_edge, label %do.body939.i

do.body928.i.do.end10_crit_edge:                  ; preds = %do.body928.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body939.i:                                     ; preds = %do.body928.i
  %call941.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.106, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call941.i)
  %cmp942.i = icmp slt i32 %call941.i, 0
  br i1 %cmp942.i, label %do.body939.i.do.end10_crit_edge, label %do.body950.i

do.body939.i.do.end10_crit_edge:                  ; preds = %do.body939.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body950.i:                                     ; preds = %do.body939.i
  %call952.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.107, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call952.i)
  %cmp953.i = icmp slt i32 %call952.i, 0
  br i1 %cmp953.i, label %do.body950.i.do.end10_crit_edge, label %do.body961.i

do.body950.i.do.end10_crit_edge:                  ; preds = %do.body950.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body961.i:                                     ; preds = %do.body950.i
  %call963.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.108, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call963.i)
  %cmp964.i = icmp slt i32 %call963.i, 0
  br i1 %cmp964.i, label %do.body961.i.do.end10_crit_edge, label %do.body972.i

do.body961.i.do.end10_crit_edge:                  ; preds = %do.body961.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body972.i:                                     ; preds = %do.body961.i
  %call974.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.109, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call974.i)
  %cmp975.i = icmp slt i32 %call974.i, 0
  br i1 %cmp975.i, label %do.body972.i.do.end10_crit_edge, label %do.body983.i

do.body972.i.do.end10_crit_edge:                  ; preds = %do.body972.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body983.i:                                     ; preds = %do.body972.i
  %call985.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.110, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call985.i)
  %cmp986.i = icmp slt i32 %call985.i, 0
  br i1 %cmp986.i, label %do.body983.i.do.end10_crit_edge, label %do.body994.i

do.body983.i.do.end10_crit_edge:                  ; preds = %do.body983.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body994.i:                                     ; preds = %do.body983.i
  %call996.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.111, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call996.i)
  %cmp997.i = icmp slt i32 %call996.i, 0
  br i1 %cmp997.i, label %do.body994.i.do.end10_crit_edge, label %do.body1005.i

do.body994.i.do.end10_crit_edge:                  ; preds = %do.body994.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1005.i:                                    ; preds = %do.body994.i
  %call1007.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.112, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1007.i)
  %cmp1008.i = icmp slt i32 %call1007.i, 0
  br i1 %cmp1008.i, label %do.body1005.i.do.end10_crit_edge, label %do.body1016.i

do.body1005.i.do.end10_crit_edge:                 ; preds = %do.body1005.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1016.i:                                    ; preds = %do.body1005.i
  %call1018.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.113, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1018.i)
  %cmp1019.i = icmp slt i32 %call1018.i, 0
  br i1 %cmp1019.i, label %do.body1016.i.do.end10_crit_edge, label %do.body1027.i

do.body1016.i.do.end10_crit_edge:                 ; preds = %do.body1016.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1027.i:                                    ; preds = %do.body1016.i
  %call1029.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.114, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1029.i)
  %cmp1030.i = icmp slt i32 %call1029.i, 0
  br i1 %cmp1030.i, label %do.body1027.i.do.end10_crit_edge, label %do.body1038.i

do.body1027.i.do.end10_crit_edge:                 ; preds = %do.body1027.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1038.i:                                    ; preds = %do.body1027.i
  %call1040.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.115, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1040.i)
  %cmp1041.i = icmp slt i32 %call1040.i, 0
  br i1 %cmp1041.i, label %do.body1038.i.do.end10_crit_edge, label %do.body1049.i

do.body1038.i.do.end10_crit_edge:                 ; preds = %do.body1038.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1049.i:                                    ; preds = %do.body1038.i
  %call1051.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.116, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1051.i)
  %cmp1052.i = icmp slt i32 %call1051.i, 0
  br i1 %cmp1052.i, label %do.body1049.i.do.end10_crit_edge, label %do.body1060.i

do.body1049.i.do.end10_crit_edge:                 ; preds = %do.body1049.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1060.i:                                    ; preds = %do.body1049.i
  %call1062.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.117, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1062.i)
  %cmp1063.i = icmp slt i32 %call1062.i, 0
  br i1 %cmp1063.i, label %do.body1060.i.do.end10_crit_edge, label %do.body1071.i

do.body1060.i.do.end10_crit_edge:                 ; preds = %do.body1060.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1071.i:                                    ; preds = %do.body1060.i
  %call1073.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.118, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1073.i)
  %cmp1074.i = icmp slt i32 %call1073.i, 0
  br i1 %cmp1074.i, label %do.body1071.i.do.end10_crit_edge, label %do.body1082.i

do.body1071.i.do.end10_crit_edge:                 ; preds = %do.body1071.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1082.i:                                    ; preds = %do.body1071.i
  %call1084.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.119, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1084.i)
  %cmp1085.i = icmp slt i32 %call1084.i, 0
  br i1 %cmp1085.i, label %do.body1082.i.do.end10_crit_edge, label %do.body1093.i

do.body1082.i.do.end10_crit_edge:                 ; preds = %do.body1082.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1093.i:                                    ; preds = %do.body1082.i
  %call1095.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.120, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1095.i)
  %cmp1096.i = icmp slt i32 %call1095.i, 0
  br i1 %cmp1096.i, label %do.body1093.i.do.end10_crit_edge, label %do.body1104.i

do.body1093.i.do.end10_crit_edge:                 ; preds = %do.body1093.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1104.i:                                    ; preds = %do.body1093.i
  %call1106.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.121, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1106.i)
  %cmp1107.i = icmp slt i32 %call1106.i, 0
  br i1 %cmp1107.i, label %do.body1104.i.do.end10_crit_edge, label %do.body1115.i

do.body1104.i.do.end10_crit_edge:                 ; preds = %do.body1104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1115.i:                                    ; preds = %do.body1104.i
  %call1117.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.122, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1117.i)
  %cmp1118.i = icmp slt i32 %call1117.i, 0
  br i1 %cmp1118.i, label %do.body1115.i.do.end10_crit_edge, label %do.body1126.i

do.body1115.i.do.end10_crit_edge:                 ; preds = %do.body1115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1126.i:                                    ; preds = %do.body1115.i
  %call1128.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.123, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1128.i)
  %cmp1129.i = icmp slt i32 %call1128.i, 0
  br i1 %cmp1129.i, label %do.body1126.i.do.end10_crit_edge, label %do.body1137.i

do.body1126.i.do.end10_crit_edge:                 ; preds = %do.body1126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1137.i:                                    ; preds = %do.body1126.i
  %call1139.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.124, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1139.i)
  %cmp1140.i = icmp slt i32 %call1139.i, 0
  br i1 %cmp1140.i, label %do.body1137.i.do.end10_crit_edge, label %do.body1148.i

do.body1137.i.do.end10_crit_edge:                 ; preds = %do.body1137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1148.i:                                    ; preds = %do.body1137.i
  %call1150.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.125, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1150.i)
  %cmp1151.i = icmp slt i32 %call1150.i, 0
  br i1 %cmp1151.i, label %do.body1148.i.do.end10_crit_edge, label %do.body1159.i

do.body1148.i.do.end10_crit_edge:                 ; preds = %do.body1148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1159.i:                                    ; preds = %do.body1148.i
  %call1161.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.126, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1161.i)
  %cmp1162.i = icmp slt i32 %call1161.i, 0
  br i1 %cmp1162.i, label %do.body1159.i.do.end10_crit_edge, label %do.body1170.i

do.body1159.i.do.end10_crit_edge:                 ; preds = %do.body1159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1170.i:                                    ; preds = %do.body1159.i
  %call1172.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.127, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1172.i)
  %cmp1173.i = icmp slt i32 %call1172.i, 0
  br i1 %cmp1173.i, label %do.body1170.i.do.end10_crit_edge, label %do.body1181.i

do.body1170.i.do.end10_crit_edge:                 ; preds = %do.body1170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1181.i:                                    ; preds = %do.body1170.i
  %call1183.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.128, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1183.i)
  %cmp1184.i = icmp slt i32 %call1183.i, 0
  br i1 %cmp1184.i, label %do.body1181.i.do.end10_crit_edge, label %do.body1192.i

do.body1181.i.do.end10_crit_edge:                 ; preds = %do.body1181.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1192.i:                                    ; preds = %do.body1181.i
  %call1194.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.129, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1194.i)
  %cmp1195.i = icmp slt i32 %call1194.i, 0
  br i1 %cmp1195.i, label %do.body1192.i.do.end10_crit_edge, label %do.body1203.i

do.body1192.i.do.end10_crit_edge:                 ; preds = %do.body1192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1203.i:                                    ; preds = %do.body1192.i
  %call1205.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.130, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1205.i)
  %cmp1206.i = icmp slt i32 %call1205.i, 0
  br i1 %cmp1206.i, label %do.body1203.i.do.end10_crit_edge, label %do.body1214.i

do.body1203.i.do.end10_crit_edge:                 ; preds = %do.body1203.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1214.i:                                    ; preds = %do.body1203.i
  %call1216.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.131, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1216.i)
  %cmp1217.i = icmp slt i32 %call1216.i, 0
  br i1 %cmp1217.i, label %do.body1214.i.do.end10_crit_edge, label %do.body1225.i

do.body1214.i.do.end10_crit_edge:                 ; preds = %do.body1214.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1225.i:                                    ; preds = %do.body1214.i
  %call1227.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.132, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1227.i)
  %cmp1228.i = icmp slt i32 %call1227.i, 0
  br i1 %cmp1228.i, label %do.body1225.i.do.end10_crit_edge, label %do.body1236.i

do.body1225.i.do.end10_crit_edge:                 ; preds = %do.body1225.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1236.i:                                    ; preds = %do.body1225.i
  %call1238.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.133, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1238.i)
  %cmp1239.i = icmp slt i32 %call1238.i, 0
  br i1 %cmp1239.i, label %do.body1236.i.do.end10_crit_edge, label %do.body1247.i

do.body1236.i.do.end10_crit_edge:                 ; preds = %do.body1236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1247.i:                                    ; preds = %do.body1236.i
  %call1249.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.134, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1249.i)
  %cmp1250.i = icmp slt i32 %call1249.i, 0
  br i1 %cmp1250.i, label %do.body1247.i.do.end10_crit_edge, label %do.body1258.i

do.body1247.i.do.end10_crit_edge:                 ; preds = %do.body1247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1258.i:                                    ; preds = %do.body1247.i
  %call1260.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.135, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1260.i)
  %cmp1261.i = icmp slt i32 %call1260.i, 0
  br i1 %cmp1261.i, label %do.body1258.i.do.end10_crit_edge, label %do.body1269.i

do.body1258.i.do.end10_crit_edge:                 ; preds = %do.body1258.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1269.i:                                    ; preds = %do.body1258.i
  %call1271.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.136, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1271.i)
  %cmp1272.i = icmp slt i32 %call1271.i, 0
  br i1 %cmp1272.i, label %do.body1269.i.do.end10_crit_edge, label %do.body1280.i

do.body1269.i.do.end10_crit_edge:                 ; preds = %do.body1269.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1280.i:                                    ; preds = %do.body1269.i
  %call1282.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.137, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1282.i)
  %cmp1283.i = icmp slt i32 %call1282.i, 0
  br i1 %cmp1283.i, label %do.body1280.i.do.end10_crit_edge, label %do.body1291.i

do.body1280.i.do.end10_crit_edge:                 ; preds = %do.body1280.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1291.i:                                    ; preds = %do.body1280.i
  %call1293.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.138, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1293.i)
  %cmp1294.i = icmp slt i32 %call1293.i, 0
  br i1 %cmp1294.i, label %do.body1291.i.do.end10_crit_edge, label %do.body1302.i

do.body1291.i.do.end10_crit_edge:                 ; preds = %do.body1291.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1302.i:                                    ; preds = %do.body1291.i
  %call1304.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.139, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1304.i)
  %cmp1305.i = icmp slt i32 %call1304.i, 0
  br i1 %cmp1305.i, label %do.body1302.i.do.end10_crit_edge, label %do.body1313.i

do.body1302.i.do.end10_crit_edge:                 ; preds = %do.body1302.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1313.i:                                    ; preds = %do.body1302.i
  %call1315.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.140, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1315.i)
  %cmp1316.i = icmp slt i32 %call1315.i, 0
  br i1 %cmp1316.i, label %do.body1313.i.do.end10_crit_edge, label %do.body1324.i

do.body1313.i.do.end10_crit_edge:                 ; preds = %do.body1313.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1324.i:                                    ; preds = %do.body1313.i
  %call1326.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.141, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1326.i)
  %cmp1327.i = icmp slt i32 %call1326.i, 0
  br i1 %cmp1327.i, label %do.body1324.i.do.end10_crit_edge, label %do.body1335.i

do.body1324.i.do.end10_crit_edge:                 ; preds = %do.body1324.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1335.i:                                    ; preds = %do.body1324.i
  %call1337.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.142, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1337.i)
  %cmp1338.i = icmp slt i32 %call1337.i, 0
  br i1 %cmp1338.i, label %do.body1335.i.do.end10_crit_edge, label %do.body1346.i

do.body1335.i.do.end10_crit_edge:                 ; preds = %do.body1335.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1346.i:                                    ; preds = %do.body1335.i
  %call1348.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.143, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1348.i)
  %cmp1349.i = icmp slt i32 %call1348.i, 0
  br i1 %cmp1349.i, label %do.body1346.i.do.end10_crit_edge, label %do.body1357.i

do.body1346.i.do.end10_crit_edge:                 ; preds = %do.body1346.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1357.i:                                    ; preds = %do.body1346.i
  %call1359.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.144, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1359.i)
  %cmp1360.i = icmp slt i32 %call1359.i, 0
  br i1 %cmp1360.i, label %do.body1357.i.do.end10_crit_edge, label %do.body1368.i

do.body1357.i.do.end10_crit_edge:                 ; preds = %do.body1357.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1368.i:                                    ; preds = %do.body1357.i
  %call1370.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.145, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1370.i)
  %cmp1371.i = icmp slt i32 %call1370.i, 0
  br i1 %cmp1371.i, label %do.body1368.i.do.end10_crit_edge, label %do.body1379.i

do.body1368.i.do.end10_crit_edge:                 ; preds = %do.body1368.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1379.i:                                    ; preds = %do.body1368.i
  %call1381.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.146, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1381.i)
  %cmp1382.i = icmp slt i32 %call1381.i, 0
  br i1 %cmp1382.i, label %do.body1379.i.do.end10_crit_edge, label %do.body1390.i

do.body1379.i.do.end10_crit_edge:                 ; preds = %do.body1379.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1390.i:                                    ; preds = %do.body1379.i
  %call1392.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.147, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1392.i)
  %cmp1393.i = icmp slt i32 %call1392.i, 0
  br i1 %cmp1393.i, label %do.body1390.i.do.end10_crit_edge, label %do.body1401.i

do.body1390.i.do.end10_crit_edge:                 ; preds = %do.body1390.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1401.i:                                    ; preds = %do.body1390.i
  %call1403.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.148, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1403.i)
  %cmp1404.i = icmp slt i32 %call1403.i, 0
  br i1 %cmp1404.i, label %do.body1401.i.do.end10_crit_edge, label %do.body1412.i

do.body1401.i.do.end10_crit_edge:                 ; preds = %do.body1401.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1412.i:                                    ; preds = %do.body1401.i
  %call1414.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.149, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1414.i)
  %cmp1415.i = icmp slt i32 %call1414.i, 0
  br i1 %cmp1415.i, label %do.body1412.i.do.end10_crit_edge, label %do.body1423.i

do.body1412.i.do.end10_crit_edge:                 ; preds = %do.body1412.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1423.i:                                    ; preds = %do.body1412.i
  %call1425.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.150, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1425.i)
  %cmp1426.i = icmp slt i32 %call1425.i, 0
  br i1 %cmp1426.i, label %do.body1423.i.do.end10_crit_edge, label %do.body1434.i

do.body1423.i.do.end10_crit_edge:                 ; preds = %do.body1423.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1434.i:                                    ; preds = %do.body1423.i
  %call1436.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.151, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1436.i)
  %cmp1437.i = icmp slt i32 %call1436.i, 0
  br i1 %cmp1437.i, label %do.body1434.i.do.end10_crit_edge, label %do.body1445.i

do.body1434.i.do.end10_crit_edge:                 ; preds = %do.body1434.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1445.i:                                    ; preds = %do.body1434.i
  %call1447.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.152, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1447.i)
  %cmp1448.i = icmp slt i32 %call1447.i, 0
  br i1 %cmp1448.i, label %do.body1445.i.do.end10_crit_edge, label %do.body1456.i

do.body1445.i.do.end10_crit_edge:                 ; preds = %do.body1445.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1456.i:                                    ; preds = %do.body1445.i
  %call1458.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.153, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1458.i)
  %cmp1459.i = icmp slt i32 %call1458.i, 0
  br i1 %cmp1459.i, label %do.body1456.i.do.end10_crit_edge, label %do.body1467.i

do.body1456.i.do.end10_crit_edge:                 ; preds = %do.body1456.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1467.i:                                    ; preds = %do.body1456.i
  %call1469.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.154, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1469.i)
  %cmp1470.i = icmp slt i32 %call1469.i, 0
  br i1 %cmp1470.i, label %do.body1467.i.do.end10_crit_edge, label %do.body1478.i

do.body1467.i.do.end10_crit_edge:                 ; preds = %do.body1467.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1478.i:                                    ; preds = %do.body1467.i
  %call1480.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.155, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1480.i)
  %cmp1481.i = icmp slt i32 %call1480.i, 0
  br i1 %cmp1481.i, label %do.body1478.i.do.end10_crit_edge, label %do.body1489.i

do.body1478.i.do.end10_crit_edge:                 ; preds = %do.body1478.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1489.i:                                    ; preds = %do.body1478.i
  %call1491.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.156, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1491.i)
  %cmp1492.i = icmp slt i32 %call1491.i, 0
  br i1 %cmp1492.i, label %do.body1489.i.do.end10_crit_edge, label %do.body1500.i

do.body1489.i.do.end10_crit_edge:                 ; preds = %do.body1489.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1500.i:                                    ; preds = %do.body1489.i
  %call1502.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.157, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1502.i)
  %cmp1503.i = icmp slt i32 %call1502.i, 0
  br i1 %cmp1503.i, label %do.body1500.i.do.end10_crit_edge, label %do.body1511.i

do.body1500.i.do.end10_crit_edge:                 ; preds = %do.body1500.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1511.i:                                    ; preds = %do.body1500.i
  %call1513.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.158, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1513.i)
  %cmp1514.i = icmp slt i32 %call1513.i, 0
  br i1 %cmp1514.i, label %do.body1511.i.do.end10_crit_edge, label %do.body1522.i

do.body1511.i.do.end10_crit_edge:                 ; preds = %do.body1511.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1522.i:                                    ; preds = %do.body1511.i
  %call1524.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.159, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1524.i)
  %cmp1525.i = icmp slt i32 %call1524.i, 0
  br i1 %cmp1525.i, label %do.body1522.i.do.end10_crit_edge, label %do.body1533.i

do.body1522.i.do.end10_crit_edge:                 ; preds = %do.body1522.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1533.i:                                    ; preds = %do.body1522.i
  %call1535.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.160, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1535.i)
  %cmp1536.i = icmp slt i32 %call1535.i, 0
  br i1 %cmp1536.i, label %do.body1533.i.do.end10_crit_edge, label %do.body1544.i

do.body1533.i.do.end10_crit_edge:                 ; preds = %do.body1533.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1544.i:                                    ; preds = %do.body1533.i
  %call1546.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.161, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1546.i)
  %cmp1547.i = icmp slt i32 %call1546.i, 0
  br i1 %cmp1547.i, label %do.body1544.i.do.end10_crit_edge, label %do.body1555.i

do.body1544.i.do.end10_crit_edge:                 ; preds = %do.body1544.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1555.i:                                    ; preds = %do.body1544.i
  %call1557.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.162, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1557.i)
  %cmp1558.i = icmp slt i32 %call1557.i, 0
  br i1 %cmp1558.i, label %do.body1555.i.do.end10_crit_edge, label %do.body1566.i

do.body1555.i.do.end10_crit_edge:                 ; preds = %do.body1555.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1566.i:                                    ; preds = %do.body1555.i
  %call1568.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.163, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1568.i)
  %cmp1569.i = icmp slt i32 %call1568.i, 0
  br i1 %cmp1569.i, label %do.body1566.i.do.end10_crit_edge, label %do.body1577.i

do.body1566.i.do.end10_crit_edge:                 ; preds = %do.body1566.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1577.i:                                    ; preds = %do.body1566.i
  %call1579.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.164, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1579.i)
  %cmp1580.i = icmp slt i32 %call1579.i, 0
  br i1 %cmp1580.i, label %do.body1577.i.do.end10_crit_edge, label %do.body1588.i

do.body1577.i.do.end10_crit_edge:                 ; preds = %do.body1577.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1588.i:                                    ; preds = %do.body1577.i
  %call1590.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.165, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1590.i)
  %cmp1591.i = icmp slt i32 %call1590.i, 0
  br i1 %cmp1591.i, label %do.body1588.i.do.end10_crit_edge, label %do.body1599.i

do.body1588.i.do.end10_crit_edge:                 ; preds = %do.body1588.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1599.i:                                    ; preds = %do.body1588.i
  %call1601.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.166, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1601.i)
  %cmp1602.i = icmp slt i32 %call1601.i, 0
  br i1 %cmp1602.i, label %do.body1599.i.do.end10_crit_edge, label %do.body1610.i

do.body1599.i.do.end10_crit_edge:                 ; preds = %do.body1599.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1610.i:                                    ; preds = %do.body1599.i
  %call1612.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.167, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1612.i)
  %cmp1613.i = icmp slt i32 %call1612.i, 0
  br i1 %cmp1613.i, label %do.body1610.i.do.end10_crit_edge, label %do.body1621.i

do.body1610.i.do.end10_crit_edge:                 ; preds = %do.body1610.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1621.i:                                    ; preds = %do.body1610.i
  %call1623.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.168, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1623.i)
  %cmp1624.i = icmp slt i32 %call1623.i, 0
  br i1 %cmp1624.i, label %do.body1621.i.do.end10_crit_edge, label %do.body1632.i

do.body1621.i.do.end10_crit_edge:                 ; preds = %do.body1621.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1632.i:                                    ; preds = %do.body1621.i
  %call1634.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.169, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1634.i)
  %cmp1635.i = icmp slt i32 %call1634.i, 0
  br i1 %cmp1635.i, label %do.body1632.i.do.end10_crit_edge, label %do.body1643.i

do.body1632.i.do.end10_crit_edge:                 ; preds = %do.body1632.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1643.i:                                    ; preds = %do.body1632.i
  %call1645.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.170, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1645.i)
  %cmp1646.i = icmp slt i32 %call1645.i, 0
  br i1 %cmp1646.i, label %do.body1643.i.do.end10_crit_edge, label %do.body1654.i

do.body1643.i.do.end10_crit_edge:                 ; preds = %do.body1643.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1654.i:                                    ; preds = %do.body1643.i
  %call1656.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.171, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1656.i)
  %cmp1657.i = icmp slt i32 %call1656.i, 0
  br i1 %cmp1657.i, label %do.body1654.i.do.end10_crit_edge, label %do.body1665.i

do.body1654.i.do.end10_crit_edge:                 ; preds = %do.body1654.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1665.i:                                    ; preds = %do.body1654.i
  %call1667.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.172, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1667.i)
  %cmp1668.i = icmp slt i32 %call1667.i, 0
  br i1 %cmp1668.i, label %do.body1665.i.do.end10_crit_edge, label %do.body1676.i

do.body1665.i.do.end10_crit_edge:                 ; preds = %do.body1665.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1676.i:                                    ; preds = %do.body1665.i
  %call1678.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.173, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1678.i)
  %cmp1679.i = icmp slt i32 %call1678.i, 0
  br i1 %cmp1679.i, label %do.body1676.i.do.end10_crit_edge, label %do.body1687.i

do.body1676.i.do.end10_crit_edge:                 ; preds = %do.body1676.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1687.i:                                    ; preds = %do.body1676.i
  %call1689.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.174, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1689.i)
  %cmp1690.i = icmp slt i32 %call1689.i, 0
  br i1 %cmp1690.i, label %do.body1687.i.do.end10_crit_edge, label %do.body1698.i

do.body1687.i.do.end10_crit_edge:                 ; preds = %do.body1687.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1698.i:                                    ; preds = %do.body1687.i
  %call1700.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.175, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1700.i)
  %cmp1701.i = icmp slt i32 %call1700.i, 0
  br i1 %cmp1701.i, label %do.body1698.i.do.end10_crit_edge, label %do.body1709.i

do.body1698.i.do.end10_crit_edge:                 ; preds = %do.body1698.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1709.i:                                    ; preds = %do.body1698.i
  %call1711.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.176, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1711.i)
  %cmp1712.i = icmp slt i32 %call1711.i, 0
  br i1 %cmp1712.i, label %do.body1709.i.do.end10_crit_edge, label %do.body1720.i

do.body1709.i.do.end10_crit_edge:                 ; preds = %do.body1709.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1720.i:                                    ; preds = %do.body1709.i
  %call1722.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.177, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1722.i)
  %cmp1723.i = icmp slt i32 %call1722.i, 0
  br i1 %cmp1723.i, label %do.body1720.i.do.end10_crit_edge, label %do.body1731.i

do.body1720.i.do.end10_crit_edge:                 ; preds = %do.body1720.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1731.i:                                    ; preds = %do.body1720.i
  %call1733.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.178, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1733.i)
  %cmp1734.i = icmp slt i32 %call1733.i, 0
  br i1 %cmp1734.i, label %do.body1731.i.do.end10_crit_edge, label %do.body1742.i

do.body1731.i.do.end10_crit_edge:                 ; preds = %do.body1731.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1742.i:                                    ; preds = %do.body1731.i
  %call1744.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.179, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1744.i)
  %cmp1745.i = icmp slt i32 %call1744.i, 0
  br i1 %cmp1745.i, label %do.body1742.i.do.end10_crit_edge, label %do.body1753.i

do.body1742.i.do.end10_crit_edge:                 ; preds = %do.body1742.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1753.i:                                    ; preds = %do.body1742.i
  %call1755.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.180, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1755.i)
  %cmp1756.i = icmp slt i32 %call1755.i, 0
  br i1 %cmp1756.i, label %do.body1753.i.do.end10_crit_edge, label %do.body1764.i

do.body1753.i.do.end10_crit_edge:                 ; preds = %do.body1753.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1764.i:                                    ; preds = %do.body1753.i
  %call1766.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.181, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1766.i)
  %cmp1767.i = icmp slt i32 %call1766.i, 0
  br i1 %cmp1767.i, label %do.body1764.i.do.end10_crit_edge, label %do.body1775.i

do.body1764.i.do.end10_crit_edge:                 ; preds = %do.body1764.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1775.i:                                    ; preds = %do.body1764.i
  %call1777.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.182, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1777.i)
  %cmp1778.i = icmp slt i32 %call1777.i, 0
  br i1 %cmp1778.i, label %do.body1775.i.do.end10_crit_edge, label %do.body1786.i

do.body1775.i.do.end10_crit_edge:                 ; preds = %do.body1775.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1786.i:                                    ; preds = %do.body1775.i
  %call1788.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.183, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1788.i)
  %cmp1789.i = icmp slt i32 %call1788.i, 0
  br i1 %cmp1789.i, label %do.body1786.i.do.end10_crit_edge, label %do.body1797.i

do.body1786.i.do.end10_crit_edge:                 ; preds = %do.body1786.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1797.i:                                    ; preds = %do.body1786.i
  %call1799.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.184, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1799.i)
  %cmp1800.i = icmp slt i32 %call1799.i, 0
  br i1 %cmp1800.i, label %do.body1797.i.do.end10_crit_edge, label %do.body1808.i

do.body1797.i.do.end10_crit_edge:                 ; preds = %do.body1797.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1808.i:                                    ; preds = %do.body1797.i
  %call1810.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.185, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1810.i)
  %cmp1811.i = icmp slt i32 %call1810.i, 0
  br i1 %cmp1811.i, label %do.body1808.i.do.end10_crit_edge, label %do.body1819.i

do.body1808.i.do.end10_crit_edge:                 ; preds = %do.body1808.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1819.i:                                    ; preds = %do.body1808.i
  %call1821.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.186, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1821.i)
  %cmp1822.i = icmp slt i32 %call1821.i, 0
  br i1 %cmp1822.i, label %do.body1819.i.do.end10_crit_edge, label %do.body1830.i

do.body1819.i.do.end10_crit_edge:                 ; preds = %do.body1819.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1830.i:                                    ; preds = %do.body1819.i
  %call1832.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.187, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1832.i)
  %cmp1833.i = icmp slt i32 %call1832.i, 0
  br i1 %cmp1833.i, label %do.body1830.i.do.end10_crit_edge, label %do.body1841.i

do.body1830.i.do.end10_crit_edge:                 ; preds = %do.body1830.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1841.i:                                    ; preds = %do.body1830.i
  %call1843.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.188, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1843.i)
  %cmp1844.i = icmp slt i32 %call1843.i, 0
  br i1 %cmp1844.i, label %do.body1841.i.do.end10_crit_edge, label %do.end1851.i

do.body1841.i.do.end10_crit_edge:                 ; preds = %do.body1841.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end1851.i:                                     ; preds = %do.body1841.i
  %call1852.i = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1852.i)
  %cmp1853.i = icmp slt i32 %call1852.i, 0
  br i1 %cmp1853.i, label %do.end1857.i, label %if.end1858.i

do.end1857.i:                                     ; preds = %do.end1851.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.189, i32 noundef %call1852.i) #9
  br label %do.end10

if.end1858.i:                                     ; preds = %do.end1851.i
  tail call void @msleep(i32 noundef 120) #6
  %call1859.i = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1859.i)
  %cmp1860.i = icmp slt i32 %call1859.i, 0
  br i1 %cmp1860.i, label %do.end1864.i, label %truly_nt35521_on.exit

do.end1864.i:                                     ; preds = %if.end1858.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.192, i32 noundef %call1859.i) #9
  br label %do.end10

truly_nt35521_on.exit:                            ; preds = %if.end1858.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %call1868.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @truly_nt35521_on.d.194, i32 noundef 2) #6
  %14 = tail call i32 @llvm.smin.i32(i32 %call1868.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1868.i)
  %cmp6 = icmp slt i32 %call1868.i, 0
  br i1 %cmp6, label %truly_nt35521_on.exit.do.end10_crit_edge, label %if.end11

truly_nt35521_on.exit.do.end10_crit_edge:         ; preds = %truly_nt35521_on.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end10:                                         ; preds = %truly_nt35521_on.exit.do.end10_crit_edge, %do.end1864.i, %do.end1857.i, %do.body1841.i.do.end10_crit_edge, %do.body1830.i.do.end10_crit_edge, %do.body1819.i.do.end10_crit_edge, %do.body1808.i.do.end10_crit_edge, %do.body1797.i.do.end10_crit_edge, %do.body1786.i.do.end10_crit_edge, %do.body1775.i.do.end10_crit_edge, %do.body1764.i.do.end10_crit_edge, %do.body1753.i.do.end10_crit_edge, %do.body1742.i.do.end10_crit_edge, %do.body1731.i.do.end10_crit_edge, %do.body1720.i.do.end10_crit_edge, %do.body1709.i.do.end10_crit_edge, %do.body1698.i.do.end10_crit_edge, %do.body1687.i.do.end10_crit_edge, %do.body1676.i.do.end10_crit_edge, %do.body1665.i.do.end10_crit_edge, %do.body1654.i.do.end10_crit_edge, %do.body1643.i.do.end10_crit_edge, %do.body1632.i.do.end10_crit_edge, %do.body1621.i.do.end10_crit_edge, %do.body1610.i.do.end10_crit_edge, %do.body1599.i.do.end10_crit_edge, %do.body1588.i.do.end10_crit_edge, %do.body1577.i.do.end10_crit_edge, %do.body1566.i.do.end10_crit_edge, %do.body1555.i.do.end10_crit_edge, %do.body1544.i.do.end10_crit_edge, %do.body1533.i.do.end10_crit_edge, %do.body1522.i.do.end10_crit_edge, %do.body1511.i.do.end10_crit_edge, %do.body1500.i.do.end10_crit_edge, %do.body1489.i.do.end10_crit_edge, %do.body1478.i.do.end10_crit_edge, %do.body1467.i.do.end10_crit_edge, %do.body1456.i.do.end10_crit_edge, %do.body1445.i.do.end10_crit_edge, %do.body1434.i.do.end10_crit_edge, %do.body1423.i.do.end10_crit_edge, %do.body1412.i.do.end10_crit_edge, %do.body1401.i.do.end10_crit_edge, %do.body1390.i.do.end10_crit_edge, %do.body1379.i.do.end10_crit_edge, %do.body1368.i.do.end10_crit_edge, %do.body1357.i.do.end10_crit_edge, %do.body1346.i.do.end10_crit_edge, %do.body1335.i.do.end10_crit_edge, %do.body1324.i.do.end10_crit_edge, %do.body1313.i.do.end10_crit_edge, %do.body1302.i.do.end10_crit_edge, %do.body1291.i.do.end10_crit_edge, %do.body1280.i.do.end10_crit_edge, %do.body1269.i.do.end10_crit_edge, %do.body1258.i.do.end10_crit_edge, %do.body1247.i.do.end10_crit_edge, %do.body1236.i.do.end10_crit_edge, %do.body1225.i.do.end10_crit_edge, %do.body1214.i.do.end10_crit_edge, %do.body1203.i.do.end10_crit_edge, %do.body1192.i.do.end10_crit_edge, %do.body1181.i.do.end10_crit_edge, %do.body1170.i.do.end10_crit_edge, %do.body1159.i.do.end10_crit_edge, %do.body1148.i.do.end10_crit_edge, %do.body1137.i.do.end10_crit_edge, %do.body1126.i.do.end10_crit_edge, %do.body1115.i.do.end10_crit_edge, %do.body1104.i.do.end10_crit_edge, %do.body1093.i.do.end10_crit_edge, %do.body1082.i.do.end10_crit_edge, %do.body1071.i.do.end10_crit_edge, %do.body1060.i.do.end10_crit_edge, %do.body1049.i.do.end10_crit_edge, %do.body1038.i.do.end10_crit_edge, %do.body1027.i.do.end10_crit_edge, %do.body1016.i.do.end10_crit_edge, %do.body1005.i.do.end10_crit_edge, %do.body994.i.do.end10_crit_edge, %do.body983.i.do.end10_crit_edge, %do.body972.i.do.end10_crit_edge, %do.body961.i.do.end10_crit_edge, %do.body950.i.do.end10_crit_edge, %do.body939.i.do.end10_crit_edge, %do.body928.i.do.end10_crit_edge, %do.body917.i.do.end10_crit_edge, %do.body906.i.do.end10_crit_edge, %do.body895.i.do.end10_crit_edge, %do.body884.i.do.end10_crit_edge, %do.body873.i.do.end10_crit_edge, %do.body862.i.do.end10_crit_edge, %do.body851.i.do.end10_crit_edge, %do.body840.i.do.end10_crit_edge, %do.body829.i.do.end10_crit_edge, %do.body818.i.do.end10_crit_edge, %do.body807.i.do.end10_crit_edge, %do.body796.i.do.end10_crit_edge, %do.body785.i.do.end10_crit_edge, %do.body774.i.do.end10_crit_edge, %do.body763.i.do.end10_crit_edge, %do.body752.i.do.end10_crit_edge, %do.body741.i.do.end10_crit_edge, %do.body730.i.do.end10_crit_edge, %do.body719.i.do.end10_crit_edge, %do.body708.i.do.end10_crit_edge, %do.body697.i.do.end10_crit_edge, %do.body686.i.do.end10_crit_edge, %do.body675.i.do.end10_crit_edge, %do.body664.i.do.end10_crit_edge, %do.body653.i.do.end10_crit_edge, %do.body642.i.do.end10_crit_edge, %do.body631.i.do.end10_crit_edge, %do.body620.i.do.end10_crit_edge, %do.body609.i.do.end10_crit_edge, %do.body598.i.do.end10_crit_edge, %do.body587.i.do.end10_crit_edge, %do.body576.i.do.end10_crit_edge, %do.body565.i.do.end10_crit_edge, %do.body554.i.do.end10_crit_edge, %do.body543.i.do.end10_crit_edge, %do.body532.i.do.end10_crit_edge, %do.body521.i.do.end10_crit_edge, %do.body510.i.do.end10_crit_edge, %do.body499.i.do.end10_crit_edge, %do.body488.i.do.end10_crit_edge, %do.body477.i.do.end10_crit_edge, %do.body466.i.do.end10_crit_edge, %do.body455.i.do.end10_crit_edge, %do.body444.i.do.end10_crit_edge, %do.body433.i.do.end10_crit_edge, %do.body422.i.do.end10_crit_edge, %do.body411.i.do.end10_crit_edge, %do.body400.i.do.end10_crit_edge, %do.body389.i.do.end10_crit_edge, %do.body378.i.do.end10_crit_edge, %do.body367.i.do.end10_crit_edge, %do.body356.i.do.end10_crit_edge, %do.body345.i.do.end10_crit_edge, %do.body334.i.do.end10_crit_edge, %do.body323.i.do.end10_crit_edge, %do.body312.i.do.end10_crit_edge, %do.body301.i.do.end10_crit_edge, %do.body290.i.do.end10_crit_edge, %do.body279.i.do.end10_crit_edge, %do.body268.i.do.end10_crit_edge, %do.body257.i.do.end10_crit_edge, %do.body246.i.do.end10_crit_edge, %do.body235.i.do.end10_crit_edge, %do.body224.i.do.end10_crit_edge, %do.body213.i.do.end10_crit_edge, %do.body202.i.do.end10_crit_edge, %do.body191.i.do.end10_crit_edge, %do.body180.i.do.end10_crit_edge, %do.body169.i.do.end10_crit_edge, %do.body158.i.do.end10_crit_edge, %do.body147.i.do.end10_crit_edge, %do.body136.i.do.end10_crit_edge, %do.body125.i.do.end10_crit_edge, %do.body114.i.do.end10_crit_edge, %do.body103.i.do.end10_crit_edge, %do.body92.i.do.end10_crit_edge, %do.body81.i.do.end10_crit_edge, %do.body70.i.do.end10_crit_edge, %do.body59.i.do.end10_crit_edge, %do.body48.i.do.end10_crit_edge, %do.body37.i.do.end10_crit_edge, %do.body26.i.do.end10_crit_edge, %do.body15.i.do.end10_crit_edge, %do.body4.i.do.end10_crit_edge, %if.end4.do.end10_crit_edge
  %retval.170.i29 = phi i32 [ %14, %truly_nt35521_on.exit.do.end10_crit_edge ], [ %call.i, %if.end4.do.end10_crit_edge ], [ %call6.i, %do.body4.i.do.end10_crit_edge ], [ %call17.i, %do.body15.i.do.end10_crit_edge ], [ %call28.i, %do.body26.i.do.end10_crit_edge ], [ %call39.i, %do.body37.i.do.end10_crit_edge ], [ %call50.i, %do.body48.i.do.end10_crit_edge ], [ %call61.i, %do.body59.i.do.end10_crit_edge ], [ %call72.i, %do.body70.i.do.end10_crit_edge ], [ %call83.i, %do.body81.i.do.end10_crit_edge ], [ %call94.i, %do.body92.i.do.end10_crit_edge ], [ %call105.i, %do.body103.i.do.end10_crit_edge ], [ %call116.i, %do.body114.i.do.end10_crit_edge ], [ %call127.i, %do.body125.i.do.end10_crit_edge ], [ %call138.i, %do.body136.i.do.end10_crit_edge ], [ %call149.i, %do.body147.i.do.end10_crit_edge ], [ %call160.i, %do.body158.i.do.end10_crit_edge ], [ %call171.i, %do.body169.i.do.end10_crit_edge ], [ %call182.i, %do.body180.i.do.end10_crit_edge ], [ %call193.i, %do.body191.i.do.end10_crit_edge ], [ %call204.i, %do.body202.i.do.end10_crit_edge ], [ %call215.i, %do.body213.i.do.end10_crit_edge ], [ %call226.i, %do.body224.i.do.end10_crit_edge ], [ %call237.i, %do.body235.i.do.end10_crit_edge ], [ %call248.i, %do.body246.i.do.end10_crit_edge ], [ %call259.i, %do.body257.i.do.end10_crit_edge ], [ %call270.i, %do.body268.i.do.end10_crit_edge ], [ %call281.i, %do.body279.i.do.end10_crit_edge ], [ %call292.i, %do.body290.i.do.end10_crit_edge ], [ %call303.i, %do.body301.i.do.end10_crit_edge ], [ %call314.i, %do.body312.i.do.end10_crit_edge ], [ %call325.i, %do.body323.i.do.end10_crit_edge ], [ %call336.i, %do.body334.i.do.end10_crit_edge ], [ %call347.i, %do.body345.i.do.end10_crit_edge ], [ %call358.i, %do.body356.i.do.end10_crit_edge ], [ %call369.i, %do.body367.i.do.end10_crit_edge ], [ %call380.i, %do.body378.i.do.end10_crit_edge ], [ %call391.i, %do.body389.i.do.end10_crit_edge ], [ %call402.i, %do.body400.i.do.end10_crit_edge ], [ %call413.i, %do.body411.i.do.end10_crit_edge ], [ %call424.i, %do.body422.i.do.end10_crit_edge ], [ %call435.i, %do.body433.i.do.end10_crit_edge ], [ %call446.i, %do.body444.i.do.end10_crit_edge ], [ %call457.i, %do.body455.i.do.end10_crit_edge ], [ %call468.i, %do.body466.i.do.end10_crit_edge ], [ %call479.i, %do.body477.i.do.end10_crit_edge ], [ %call490.i, %do.body488.i.do.end10_crit_edge ], [ %call501.i, %do.body499.i.do.end10_crit_edge ], [ %call512.i, %do.body510.i.do.end10_crit_edge ], [ %call523.i, %do.body521.i.do.end10_crit_edge ], [ %call534.i, %do.body532.i.do.end10_crit_edge ], [ %call545.i, %do.body543.i.do.end10_crit_edge ], [ %call556.i, %do.body554.i.do.end10_crit_edge ], [ %call567.i, %do.body565.i.do.end10_crit_edge ], [ %call578.i, %do.body576.i.do.end10_crit_edge ], [ %call589.i, %do.body587.i.do.end10_crit_edge ], [ %call600.i, %do.body598.i.do.end10_crit_edge ], [ %call611.i, %do.body609.i.do.end10_crit_edge ], [ %call622.i, %do.body620.i.do.end10_crit_edge ], [ %call633.i, %do.body631.i.do.end10_crit_edge ], [ %call644.i, %do.body642.i.do.end10_crit_edge ], [ %call655.i, %do.body653.i.do.end10_crit_edge ], [ %call666.i, %do.body664.i.do.end10_crit_edge ], [ %call677.i, %do.body675.i.do.end10_crit_edge ], [ %call688.i, %do.body686.i.do.end10_crit_edge ], [ %call699.i, %do.body697.i.do.end10_crit_edge ], [ %call710.i, %do.body708.i.do.end10_crit_edge ], [ %call721.i, %do.body719.i.do.end10_crit_edge ], [ %call732.i, %do.body730.i.do.end10_crit_edge ], [ %call743.i, %do.body741.i.do.end10_crit_edge ], [ %call754.i, %do.body752.i.do.end10_crit_edge ], [ %call765.i, %do.body763.i.do.end10_crit_edge ], [ %call776.i, %do.body774.i.do.end10_crit_edge ], [ %call787.i, %do.body785.i.do.end10_crit_edge ], [ %call798.i, %do.body796.i.do.end10_crit_edge ], [ %call809.i, %do.body807.i.do.end10_crit_edge ], [ %call820.i, %do.body818.i.do.end10_crit_edge ], [ %call831.i, %do.body829.i.do.end10_crit_edge ], [ %call842.i, %do.body840.i.do.end10_crit_edge ], [ %call853.i, %do.body851.i.do.end10_crit_edge ], [ %call864.i, %do.body862.i.do.end10_crit_edge ], [ %call875.i, %do.body873.i.do.end10_crit_edge ], [ %call886.i, %do.body884.i.do.end10_crit_edge ], [ %call897.i, %do.body895.i.do.end10_crit_edge ], [ %call908.i, %do.body906.i.do.end10_crit_edge ], [ %call919.i, %do.body917.i.do.end10_crit_edge ], [ %call930.i, %do.body928.i.do.end10_crit_edge ], [ %call941.i, %do.body939.i.do.end10_crit_edge ], [ %call952.i, %do.body950.i.do.end10_crit_edge ], [ %call963.i, %do.body961.i.do.end10_crit_edge ], [ %call974.i, %do.body972.i.do.end10_crit_edge ], [ %call985.i, %do.body983.i.do.end10_crit_edge ], [ %call996.i, %do.body994.i.do.end10_crit_edge ], [ %call1007.i, %do.body1005.i.do.end10_crit_edge ], [ %call1018.i, %do.body1016.i.do.end10_crit_edge ], [ %call1029.i, %do.body1027.i.do.end10_crit_edge ], [ %call1040.i, %do.body1038.i.do.end10_crit_edge ], [ %call1051.i, %do.body1049.i.do.end10_crit_edge ], [ %call1062.i, %do.body1060.i.do.end10_crit_edge ], [ %call1073.i, %do.body1071.i.do.end10_crit_edge ], [ %call1084.i, %do.body1082.i.do.end10_crit_edge ], [ %call1095.i, %do.body1093.i.do.end10_crit_edge ], [ %call1106.i, %do.body1104.i.do.end10_crit_edge ], [ %call1117.i, %do.body1115.i.do.end10_crit_edge ], [ %call1128.i, %do.body1126.i.do.end10_crit_edge ], [ %call1139.i, %do.body1137.i.do.end10_crit_edge ], [ %call1150.i, %do.body1148.i.do.end10_crit_edge ], [ %call1161.i, %do.body1159.i.do.end10_crit_edge ], [ %call1172.i, %do.body1170.i.do.end10_crit_edge ], [ %call1183.i, %do.body1181.i.do.end10_crit_edge ], [ %call1194.i, %do.body1192.i.do.end10_crit_edge ], [ %call1205.i, %do.body1203.i.do.end10_crit_edge ], [ %call1216.i, %do.body1214.i.do.end10_crit_edge ], [ %call1227.i, %do.body1225.i.do.end10_crit_edge ], [ %call1238.i, %do.body1236.i.do.end10_crit_edge ], [ %call1249.i, %do.body1247.i.do.end10_crit_edge ], [ %call1260.i, %do.body1258.i.do.end10_crit_edge ], [ %call1271.i, %do.body1269.i.do.end10_crit_edge ], [ %call1282.i, %do.body1280.i.do.end10_crit_edge ], [ %call1293.i, %do.body1291.i.do.end10_crit_edge ], [ %call1304.i, %do.body1302.i.do.end10_crit_edge ], [ %call1315.i, %do.body1313.i.do.end10_crit_edge ], [ %call1326.i, %do.body1324.i.do.end10_crit_edge ], [ %call1337.i, %do.body1335.i.do.end10_crit_edge ], [ %call1348.i, %do.body1346.i.do.end10_crit_edge ], [ %call1359.i, %do.body1357.i.do.end10_crit_edge ], [ %call1370.i, %do.body1368.i.do.end10_crit_edge ], [ %call1381.i, %do.body1379.i.do.end10_crit_edge ], [ %call1392.i, %do.body1390.i.do.end10_crit_edge ], [ %call1403.i, %do.body1401.i.do.end10_crit_edge ], [ %call1414.i, %do.body1412.i.do.end10_crit_edge ], [ %call1425.i, %do.body1423.i.do.end10_crit_edge ], [ %call1436.i, %do.body1434.i.do.end10_crit_edge ], [ %call1447.i, %do.body1445.i.do.end10_crit_edge ], [ %call1458.i, %do.body1456.i.do.end10_crit_edge ], [ %call1469.i, %do.body1467.i.do.end10_crit_edge ], [ %call1480.i, %do.body1478.i.do.end10_crit_edge ], [ %call1491.i, %do.body1489.i.do.end10_crit_edge ], [ %call1502.i, %do.body1500.i.do.end10_crit_edge ], [ %call1513.i, %do.body1511.i.do.end10_crit_edge ], [ %call1524.i, %do.body1522.i.do.end10_crit_edge ], [ %call1535.i, %do.body1533.i.do.end10_crit_edge ], [ %call1546.i, %do.body1544.i.do.end10_crit_edge ], [ %call1557.i, %do.body1555.i.do.end10_crit_edge ], [ %call1568.i, %do.body1566.i.do.end10_crit_edge ], [ %call1579.i, %do.body1577.i.do.end10_crit_edge ], [ %call1590.i, %do.body1588.i.do.end10_crit_edge ], [ %call1601.i, %do.body1599.i.do.end10_crit_edge ], [ %call1612.i, %do.body1610.i.do.end10_crit_edge ], [ %call1623.i, %do.body1621.i.do.end10_crit_edge ], [ %call1634.i, %do.body1632.i.do.end10_crit_edge ], [ %call1645.i, %do.body1643.i.do.end10_crit_edge ], [ %call1656.i, %do.body1654.i.do.end10_crit_edge ], [ %call1667.i, %do.body1665.i.do.end10_crit_edge ], [ %call1678.i, %do.body1676.i.do.end10_crit_edge ], [ %call1689.i, %do.body1687.i.do.end10_crit_edge ], [ %call1700.i, %do.body1698.i.do.end10_crit_edge ], [ %call1711.i, %do.body1709.i.do.end10_crit_edge ], [ %call1722.i, %do.body1720.i.do.end10_crit_edge ], [ %call1733.i, %do.body1731.i.do.end10_crit_edge ], [ %call1744.i, %do.body1742.i.do.end10_crit_edge ], [ %call1755.i, %do.body1753.i.do.end10_crit_edge ], [ %call1766.i, %do.body1764.i.do.end10_crit_edge ], [ %call1777.i, %do.body1775.i.do.end10_crit_edge ], [ %call1788.i, %do.body1786.i.do.end10_crit_edge ], [ %call1799.i, %do.body1797.i.do.end10_crit_edge ], [ %call1810.i, %do.body1808.i.do.end10_crit_edge ], [ %call1821.i, %do.body1819.i.do.end10_crit_edge ], [ %call1832.i, %do.body1830.i.do.end10_crit_edge ], [ %call1843.i, %do.body1841.i.do.end10_crit_edge ], [ %call1859.i, %do.end1864.i ], [ %call1852.i, %do.end1857.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %retval.170.i29) #9
  %15 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 1) #6
  br label %cleanup

if.end11:                                         ; preds = %truly_nt35521_on.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.170.i29, %do.end10 ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_enable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %blen_gpio = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %blen_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blen_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #6
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %blen_gpio = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %blen_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blen_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #6
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !434
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_flags.i, align 8
  %and.i = and i32 %5, -2049
  store i32 %and.i, ptr %mode_flags.i, align 8
  %call.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.197, i32 noundef %call.i) #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 50) #6
  %call3.i = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %truly_nt35521_off.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.200, i32 noundef %call3.i) #9
  br label %do.end

truly_nt35521_off.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 150) #6
  br label %if.end4

do.end:                                           ; preds = %do.end8.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call3.i, %do.end8.i ], [ %call.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.195, i32 noundef %retval.0.i.ph) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %truly_nt35521_off.exit
  %reset_gpio = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #6
  %supplies = getelementptr inbounds %struct.truly_nt35521, ptr %panel, i32 0, i32 2
  %call5 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #6
  %8 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @truly_nt35521_mode) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #6
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 72, ptr %type, align 2
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 26
  %3 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %4 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %5 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 27
  %6 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %height_mm, align 4
  %conv2 = zext i16 %7 to i32
  %height_mm4 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %height_mm4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %height_mm4, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %2 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl, align 8
  %phi.cast = trunc i32 %9 to i16
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.cast, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %1, i16 noundef zeroext %retval.0.i) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truly_nt35521_bl_get_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %brightness = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %brightness) #6
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %brightness, align 2, !annotation !435
  %call1 = call i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef %1, ptr noundef nonnull %brightness) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %brightness, align 2
  %5 = and i16 %4, 255
  %and = zext i16 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %brightness) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !394, !395, !396, !398, !399, !400, !402, !404, !405, !406, !407, !409, !410, !411, !412, !414, !415, !416, !418, !420, !422, !423, !424}
!llvm.module.flags = !{!425, !426, !427, !428, !429, !430, !431, !432}
!llvm.ident = !{!433}

!0 = !{ptr @__initcall__kmod_panel_sony_tulip_truly_nt35521__302_548_truly_nt35521_driver_init6, !1, !"__initcall__kmod_panel_sony_tulip_truly_nt35521__302_548_truly_nt35521_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 548, i32 1}
!2 = !{ptr @__exitcall_truly_nt35521_driver_exit, !1, !"__exitcall_truly_nt35521_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 550, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 551, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 552, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 544, i32 11}
!12 = !{ptr @truly_nt35521_driver, !13, !"truly_nt35521_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 540, i32 31}
!14 = !{ptr @truly_nt35521_of_match, !15, !"truly_nt35521_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 534, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 472, i32 28}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 473, i32 28}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 477, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @truly_nt35521_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @truly_nt35521_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 481, i32 40}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 484, i32 10}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 486, i32 39}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 489, i32 10}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 506, i32 10}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 512, i32 3}
!40 = !{ptr @truly_nt35521_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @truly_nt35521_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @truly_nt35521_panel_funcs, !43, !"truly_nt35521_panel_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 409, i32 37}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 312, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @truly_nt35521_prepare._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @truly_nt35521_prepare._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 320, i32 3}
!51 = !{ptr @truly_nt35521_prepare._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @truly_nt35521_prepare._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @truly_nt35521_on.d, !54, !"d", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 62, i32 2}
!55 = !{ptr @truly_nt35521_on.d.21, !56, !"d", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 63, i32 2}
!57 = !{ptr @truly_nt35521_on.d.22, !58, !"d", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 64, i32 2}
!59 = !{ptr @truly_nt35521_on.d.23, !60, !"d", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 65, i32 2}
!61 = !{ptr @truly_nt35521_on.d.24, !62, !"d", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 66, i32 2}
!63 = !{ptr @truly_nt35521_on.d.25, !64, !"d", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 67, i32 2}
!65 = !{ptr @truly_nt35521_on.d.26, !66, !"d", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 68, i32 2}
!67 = !{ptr @truly_nt35521_on.d.27, !68, !"d", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 69, i32 2}
!69 = !{ptr @truly_nt35521_on.d.28, !70, !"d", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 70, i32 2}
!71 = !{ptr @truly_nt35521_on.d.29, !72, !"d", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 71, i32 2}
!73 = !{ptr @truly_nt35521_on.d.30, !74, !"d", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 72, i32 2}
!75 = !{ptr @truly_nt35521_on.d.31, !76, !"d", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 73, i32 2}
!77 = !{ptr @truly_nt35521_on.d.32, !78, !"d", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 74, i32 2}
!79 = !{ptr @truly_nt35521_on.d.33, !80, !"d", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 75, i32 2}
!81 = !{ptr @truly_nt35521_on.d.34, !82, !"d", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 76, i32 2}
!83 = !{ptr @truly_nt35521_on.d.35, !84, !"d", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 77, i32 2}
!85 = !{ptr @truly_nt35521_on.d.36, !86, !"d", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 78, i32 2}
!87 = !{ptr @truly_nt35521_on.d.37, !88, !"d", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 79, i32 2}
!89 = !{ptr @truly_nt35521_on.d.38, !90, !"d", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 80, i32 2}
!91 = !{ptr @truly_nt35521_on.d.39, !92, !"d", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 81, i32 2}
!93 = !{ptr @truly_nt35521_on.d.40, !94, !"d", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 82, i32 2}
!95 = !{ptr @truly_nt35521_on.d.41, !96, !"d", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 83, i32 2}
!97 = !{ptr @truly_nt35521_on.d.42, !98, !"d", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 84, i32 2}
!99 = !{ptr @truly_nt35521_on.d.43, !100, !"d", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 85, i32 2}
!101 = !{ptr @truly_nt35521_on.d.44, !102, !"d", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 86, i32 2}
!103 = !{ptr @truly_nt35521_on.d.45, !104, !"d", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 87, i32 2}
!105 = !{ptr @truly_nt35521_on.d.46, !106, !"d", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 90, i32 2}
!107 = !{ptr @truly_nt35521_on.d.47, !108, !"d", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 93, i32 2}
!109 = !{ptr @truly_nt35521_on.d.48, !110, !"d", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 96, i32 2}
!111 = !{ptr @truly_nt35521_on.d.49, !112, !"d", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 97, i32 2}
!113 = !{ptr @truly_nt35521_on.d.50, !114, !"d", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 100, i32 2}
!115 = !{ptr @truly_nt35521_on.d.51, !116, !"d", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 103, i32 2}
!117 = !{ptr @truly_nt35521_on.d.52, !118, !"d", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 106, i32 2}
!119 = !{ptr @truly_nt35521_on.d.53, !120, !"d", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 107, i32 2}
!121 = !{ptr @truly_nt35521_on.d.54, !122, !"d", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 110, i32 2}
!123 = !{ptr @truly_nt35521_on.d.55, !124, !"d", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 113, i32 2}
!125 = !{ptr @truly_nt35521_on.d.56, !126, !"d", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 116, i32 2}
!127 = !{ptr @truly_nt35521_on.d.57, !128, !"d", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 117, i32 2}
!129 = !{ptr @truly_nt35521_on.d.58, !130, !"d", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 118, i32 2}
!131 = !{ptr @truly_nt35521_on.d.59, !132, !"d", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 119, i32 2}
!133 = !{ptr @truly_nt35521_on.d.60, !134, !"d", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 120, i32 2}
!135 = !{ptr @truly_nt35521_on.d.61, !136, !"d", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 121, i32 2}
!137 = !{ptr @truly_nt35521_on.d.62, !138, !"d", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 122, i32 2}
!139 = !{ptr @truly_nt35521_on.d.63, !140, !"d", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 123, i32 2}
!141 = !{ptr @truly_nt35521_on.d.64, !142, !"d", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 124, i32 2}
!143 = !{ptr @truly_nt35521_on.d.65, !144, !"d", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 125, i32 2}
!145 = !{ptr @truly_nt35521_on.d.66, !146, !"d", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 126, i32 2}
!147 = !{ptr @truly_nt35521_on.d.67, !148, !"d", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 127, i32 2}
!149 = !{ptr @truly_nt35521_on.d.68, !150, !"d", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 128, i32 2}
!151 = !{ptr @truly_nt35521_on.d.69, !152, !"d", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 129, i32 2}
!153 = !{ptr @truly_nt35521_on.d.70, !154, !"d", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 130, i32 2}
!155 = !{ptr @truly_nt35521_on.d.71, !156, !"d", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 131, i32 2}
!157 = !{ptr @truly_nt35521_on.d.72, !158, !"d", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 132, i32 2}
!159 = !{ptr @truly_nt35521_on.d.73, !160, !"d", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 133, i32 2}
!161 = !{ptr @truly_nt35521_on.d.74, !162, !"d", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 134, i32 2}
!163 = !{ptr @truly_nt35521_on.d.75, !164, !"d", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 135, i32 2}
!165 = !{ptr @truly_nt35521_on.d.76, !166, !"d", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 136, i32 2}
!167 = !{ptr @truly_nt35521_on.d.77, !168, !"d", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 137, i32 2}
!169 = !{ptr @truly_nt35521_on.d.78, !170, !"d", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 138, i32 2}
!171 = !{ptr @truly_nt35521_on.d.79, !172, !"d", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 139, i32 2}
!173 = !{ptr @truly_nt35521_on.d.80, !174, !"d", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 140, i32 2}
!175 = !{ptr @truly_nt35521_on.d.81, !176, !"d", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 141, i32 2}
!177 = !{ptr @truly_nt35521_on.d.82, !178, !"d", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 142, i32 2}
!179 = !{ptr @truly_nt35521_on.d.83, !180, !"d", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 143, i32 2}
!181 = !{ptr @truly_nt35521_on.d.84, !182, !"d", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 144, i32 2}
!183 = !{ptr @truly_nt35521_on.d.85, !184, !"d", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 145, i32 2}
!185 = !{ptr @truly_nt35521_on.d.86, !186, !"d", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 146, i32 2}
!187 = !{ptr @truly_nt35521_on.d.87, !188, !"d", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 147, i32 2}
!189 = !{ptr @truly_nt35521_on.d.88, !190, !"d", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 148, i32 2}
!191 = !{ptr @truly_nt35521_on.d.89, !192, !"d", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 149, i32 2}
!193 = !{ptr @truly_nt35521_on.d.90, !194, !"d", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 150, i32 2}
!195 = !{ptr @truly_nt35521_on.d.91, !196, !"d", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 151, i32 2}
!197 = !{ptr @truly_nt35521_on.d.92, !198, !"d", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 152, i32 2}
!199 = !{ptr @truly_nt35521_on.d.93, !200, !"d", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 153, i32 2}
!201 = !{ptr @truly_nt35521_on.d.94, !202, !"d", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 154, i32 2}
!203 = !{ptr @truly_nt35521_on.d.95, !204, !"d", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 155, i32 2}
!205 = !{ptr @truly_nt35521_on.d.96, !206, !"d", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 156, i32 2}
!207 = !{ptr @truly_nt35521_on.d.97, !208, !"d", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 157, i32 2}
!209 = !{ptr @truly_nt35521_on.d.98, !210, !"d", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 158, i32 2}
!211 = !{ptr @truly_nt35521_on.d.99, !212, !"d", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 159, i32 2}
!213 = !{ptr @truly_nt35521_on.d.100, !214, !"d", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 160, i32 2}
!215 = !{ptr @truly_nt35521_on.d.101, !216, !"d", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 161, i32 2}
!217 = !{ptr @truly_nt35521_on.d.102, !218, !"d", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 162, i32 2}
!219 = !{ptr @truly_nt35521_on.d.103, !220, !"d", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 163, i32 2}
!221 = !{ptr @truly_nt35521_on.d.104, !222, !"d", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 164, i32 2}
!223 = !{ptr @truly_nt35521_on.d.105, !224, !"d", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 165, i32 2}
!225 = !{ptr @truly_nt35521_on.d.106, !226, !"d", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 166, i32 2}
!227 = !{ptr @truly_nt35521_on.d.107, !228, !"d", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 167, i32 2}
!229 = !{ptr @truly_nt35521_on.d.108, !230, !"d", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 168, i32 2}
!231 = !{ptr @truly_nt35521_on.d.109, !232, !"d", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 169, i32 2}
!233 = !{ptr @truly_nt35521_on.d.110, !234, !"d", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 170, i32 2}
!235 = !{ptr @truly_nt35521_on.d.111, !236, !"d", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 171, i32 2}
!237 = !{ptr @truly_nt35521_on.d.112, !238, !"d", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 173, i32 2}
!239 = !{ptr @truly_nt35521_on.d.113, !240, !"d", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 176, i32 2}
!241 = !{ptr @truly_nt35521_on.d.114, !242, !"d", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 179, i32 2}
!243 = !{ptr @truly_nt35521_on.d.115, !244, !"d", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 182, i32 2}
!245 = !{ptr @truly_nt35521_on.d.116, !246, !"d", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 183, i32 2}
!247 = !{ptr @truly_nt35521_on.d.117, !248, !"d", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 184, i32 2}
!249 = !{ptr @truly_nt35521_on.d.118, !250, !"d", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 185, i32 2}
!251 = !{ptr @truly_nt35521_on.d.119, !252, !"d", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 186, i32 2}
!253 = !{ptr @truly_nt35521_on.d.120, !254, !"d", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 187, i32 2}
!255 = !{ptr @truly_nt35521_on.d.121, !256, !"d", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 188, i32 2}
!257 = !{ptr @truly_nt35521_on.d.122, !258, !"d", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 189, i32 2}
!259 = !{ptr @truly_nt35521_on.d.123, !260, !"d", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 190, i32 2}
!261 = !{ptr @truly_nt35521_on.d.124, !262, !"d", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 191, i32 2}
!263 = !{ptr @truly_nt35521_on.d.125, !264, !"d", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 192, i32 2}
!265 = !{ptr @truly_nt35521_on.d.126, !266, !"d", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 193, i32 2}
!267 = !{ptr @truly_nt35521_on.d.127, !268, !"d", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 194, i32 2}
!269 = !{ptr @truly_nt35521_on.d.128, !270, !"d", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 195, i32 2}
!271 = !{ptr @truly_nt35521_on.d.129, !272, !"d", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 196, i32 2}
!273 = !{ptr @truly_nt35521_on.d.130, !274, !"d", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 197, i32 2}
!275 = !{ptr @truly_nt35521_on.d.131, !276, !"d", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 198, i32 2}
!277 = !{ptr @truly_nt35521_on.d.132, !278, !"d", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 199, i32 2}
!279 = !{ptr @truly_nt35521_on.d.133, !280, !"d", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 200, i32 2}
!281 = !{ptr @truly_nt35521_on.d.134, !282, !"d", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 201, i32 2}
!283 = !{ptr @truly_nt35521_on.d.135, !284, !"d", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 202, i32 2}
!285 = !{ptr @truly_nt35521_on.d.136, !286, !"d", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 203, i32 2}
!287 = !{ptr @truly_nt35521_on.d.137, !288, !"d", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 204, i32 2}
!289 = !{ptr @truly_nt35521_on.d.138, !290, !"d", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 205, i32 2}
!291 = !{ptr @truly_nt35521_on.d.139, !292, !"d", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 206, i32 2}
!293 = !{ptr @truly_nt35521_on.d.140, !294, !"d", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 207, i32 2}
!295 = !{ptr @truly_nt35521_on.d.141, !296, !"d", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 208, i32 2}
!297 = !{ptr @truly_nt35521_on.d.142, !298, !"d", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 209, i32 2}
!299 = !{ptr @truly_nt35521_on.d.143, !300, !"d", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 210, i32 2}
!301 = !{ptr @truly_nt35521_on.d.144, !302, !"d", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 211, i32 2}
!303 = !{ptr @truly_nt35521_on.d.145, !304, !"d", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 212, i32 2}
!305 = !{ptr @truly_nt35521_on.d.146, !306, !"d", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 213, i32 2}
!307 = !{ptr @truly_nt35521_on.d.147, !308, !"d", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 214, i32 2}
!309 = !{ptr @truly_nt35521_on.d.148, !310, !"d", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 215, i32 2}
!311 = !{ptr @truly_nt35521_on.d.149, !312, !"d", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 216, i32 2}
!313 = !{ptr @truly_nt35521_on.d.150, !314, !"d", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 217, i32 2}
!315 = !{ptr @truly_nt35521_on.d.151, !316, !"d", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 218, i32 2}
!317 = !{ptr @truly_nt35521_on.d.152, !318, !"d", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 219, i32 2}
!319 = !{ptr @truly_nt35521_on.d.153, !320, !"d", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 220, i32 2}
!321 = !{ptr @truly_nt35521_on.d.154, !322, !"d", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 221, i32 2}
!323 = !{ptr @truly_nt35521_on.d.155, !324, !"d", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 222, i32 2}
!325 = !{ptr @truly_nt35521_on.d.156, !326, !"d", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 223, i32 2}
!327 = !{ptr @truly_nt35521_on.d.157, !328, !"d", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 224, i32 2}
!329 = !{ptr @truly_nt35521_on.d.158, !330, !"d", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 225, i32 2}
!331 = !{ptr @truly_nt35521_on.d.159, !332, !"d", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 226, i32 2}
!333 = !{ptr @truly_nt35521_on.d.160, !334, !"d", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 227, i32 2}
!335 = !{ptr @truly_nt35521_on.d.161, !336, !"d", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 228, i32 2}
!337 = !{ptr @truly_nt35521_on.d.162, !338, !"d", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 229, i32 2}
!339 = !{ptr @truly_nt35521_on.d.163, !340, !"d", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 230, i32 2}
!341 = !{ptr @truly_nt35521_on.d.164, !342, !"d", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 231, i32 2}
!343 = !{ptr @truly_nt35521_on.d.165, !344, !"d", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 232, i32 2}
!345 = !{ptr @truly_nt35521_on.d.166, !346, !"d", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 233, i32 2}
!347 = !{ptr @truly_nt35521_on.d.167, !348, !"d", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 234, i32 2}
!349 = !{ptr @truly_nt35521_on.d.168, !350, !"d", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 235, i32 2}
!351 = !{ptr @truly_nt35521_on.d.169, !352, !"d", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 236, i32 2}
!353 = !{ptr @truly_nt35521_on.d.170, !354, !"d", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 237, i32 2}
!355 = !{ptr @truly_nt35521_on.d.171, !356, !"d", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 238, i32 2}
!357 = !{ptr @truly_nt35521_on.d.172, !358, !"d", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 239, i32 2}
!359 = !{ptr @truly_nt35521_on.d.173, !360, !"d", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 240, i32 2}
!361 = !{ptr @truly_nt35521_on.d.174, !362, !"d", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 241, i32 2}
!363 = !{ptr @truly_nt35521_on.d.175, !364, !"d", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 242, i32 2}
!365 = !{ptr @truly_nt35521_on.d.176, !366, !"d", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 243, i32 2}
!367 = !{ptr @truly_nt35521_on.d.177, !368, !"d", i1 false, i1 false}
!368 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 244, i32 2}
!369 = !{ptr @truly_nt35521_on.d.178, !370, !"d", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 245, i32 2}
!371 = !{ptr @truly_nt35521_on.d.179, !372, !"d", i1 false, i1 false}
!372 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 246, i32 2}
!373 = !{ptr @truly_nt35521_on.d.180, !374, !"d", i1 false, i1 false}
!374 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 247, i32 2}
!375 = !{ptr @truly_nt35521_on.d.181, !376, !"d", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 248, i32 2}
!377 = !{ptr @truly_nt35521_on.d.182, !378, !"d", i1 false, i1 false}
!378 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 249, i32 2}
!379 = !{ptr @truly_nt35521_on.d.183, !380, !"d", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 250, i32 2}
!381 = !{ptr @truly_nt35521_on.d.184, !382, !"d", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 251, i32 2}
!383 = !{ptr @truly_nt35521_on.d.185, !384, !"d", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 252, i32 2}
!385 = !{ptr @truly_nt35521_on.d.186, !386, !"d", i1 false, i1 false}
!386 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 253, i32 2}
!387 = !{ptr @truly_nt35521_on.d.187, !388, !"d", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 254, i32 2}
!389 = !{ptr @truly_nt35521_on.d.188, !390, !"d", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 255, i32 2}
!391 = !{ptr @.str.189, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 259, i32 3}
!393 = !{ptr @.str.190, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @truly_nt35521_on._entry, !392, !"_entry", i1 false, i1 false}
!395 = !{ptr @truly_nt35521_on._entry_ptr, !392, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.192, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 266, i32 3}
!398 = !{ptr @truly_nt35521_on._entry.191, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @truly_nt35521_on._entry_ptr.193, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @truly_nt35521_on.d.194, !401, !"d", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 271, i32 2}
!402 = !{ptr @.str.195, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 340, i32 3}
!404 = !{ptr @.str.196, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @truly_nt35521_unprepare._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @truly_nt35521_unprepare._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.197, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 286, i32 3}
!409 = !{ptr @.str.198, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @truly_nt35521_off._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @truly_nt35521_off._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.200, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 293, i32 3}
!414 = !{ptr @truly_nt35521_off._entry.199, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @truly_nt35521_off._entry_ptr.201, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @truly_nt35521_mode, !417, !"truly_nt35521_mode", i1 false, i1 false}
!417 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 376, i32 38}
!418 = !{ptr @truly_nt35521_bl_ops, !419, !"truly_nt35521_bl_ops", i1 false, i1 false}
!419 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 443, i32 35}
!420 = !{ptr @.str.202, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/gpu/drm/panel/panel-sony-tulip-truly-nt35521.c", i32 527, i32 3}
!422 = !{ptr @.str.203, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @truly_nt35521_remove._entry, !421, !"_entry", i1 false, i1 false}
!424 = !{ptr @truly_nt35521_remove._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!425 = !{i32 1, !"wchar_size", i32 2}
!426 = !{i32 1, !"min_enum_size", i32 4}
!427 = !{i32 8, !"branch-target-enforcement", i32 0}
!428 = !{i32 8, !"sign-return-address", i32 0}
!429 = !{i32 8, !"sign-return-address-all", i32 0}
!430 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!431 = !{i32 7, !"uwtable", i32 1}
!432 = !{i32 7, !"frame-pointer", i32 2}
!433 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!434 = !{i8 0, i8 2}
!435 = !{!"auto-init"}
