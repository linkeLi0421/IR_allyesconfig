; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-sofef00.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-sofef00.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sofef00_panel = type { %struct.drm_panel, ptr, ptr, ptr, ptr, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
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

@__initcall__kmod_panel_samsung_sofef00__302_344_sofef00_panel_driver_init6 = internal global ptr @sofef00_panel_driver_init, section ".initcall6.init", align 4
@sofef00_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sofef00_panel_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sofef00_panel_probe, ptr @sofef00_panel_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_sofef00_panel_driver_exit = internal global ptr @sofef00_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [66 x i8] c"panel_samsung_sofef00.author=Caleb Connolly <caleb@connolly.tech>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [104 x i8] c"panel_samsung_sofef00.description=DRM driver for Samsung AMOLED DSI panels found in OnePlus 6/6T phones\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [71 x i8] c"panel_samsung_sofef00.file=drivers/gpu/drm/panel/panel-samsung-sofef00\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [37 x i8] c"panel_samsung_sofef00.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"panel-oneplus6\00", [17 x i8] zeroinitializer }, align 32
@sofef00_panel_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,sofef00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @enchilada_panel_mode }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6e3fc2x01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fajita_panel_mode }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@enchilada_panel_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 174359, i16 1080, i16 1192, i16 1208, i16 1244, i16 0, i16 2280, i16 2316, i16 2324, i16 2336, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 145, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@fajita_panel_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 172942, i16 1080, i16 1152, i16 1168, i16 1204, i16 0, i16 2340, i16 2372, i16 2376, i16 2394, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 145, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sofef00_panel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Missing device mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sofef00_panel_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-samsung-sofef00.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sofef00_panel_probe._entry_ptr = internal global ptr @sofef00_panel_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get vddio regulator\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get reset-gpios\0A\00", [37 x i8] zeroinitializer }, align 32
@sofef00_panel_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @sofef00_panel_prepare, ptr null, ptr null, ptr @sofef00_panel_unprepare, ptr @sofef00_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create backlight\0A\00", [36 x i8] zeroinitializer }, align 32
@sofef00_panel_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to attach to DSI host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sofef00_panel_probe._entry_ptr.13 = internal global ptr @sofef00_panel_probe._entry.11, section ".printk_index", align 4
@sofef00_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sofef00_panel_prepare\00", [42 x i8] zeroinitializer }, align 32
@sofef00_panel_prepare._entry_ptr = internal global ptr @sofef00_panel_prepare._entry, section ".printk_index", align 4
@sofef00_panel_prepare._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize panel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sofef00_panel_prepare._entry_ptr.18 = internal global ptr @sofef00_panel_prepare._entry.16, section ".printk_index", align 4
@sofef00_panel_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 65, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sofef00_panel_on\00", [47 x i8] zeroinitializer }, align 32
@sofef00_panel_on._entry_ptr = internal global ptr @sofef00_panel_on._entry, section ".printk_index", align 4
@sofef00_panel_on.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0ZZ", [29 x i8] zeroinitializer }, align 32
@sofef00_panel_on._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 74, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set tear on: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sofef00_panel_on._entry_ptr.23 = internal global ptr @sofef00_panel_on._entry.21, section ".printk_index", align 4
@sofef00_panel_on.d.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0\A5\A5", [29 x i8] zeroinitializer }, align 32
@sofef00_panel_on.d.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0ZZ", [29 x i8] zeroinitializer }, align 32
@sofef00_panel_on.d.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\07", [30 x i8] zeroinitializer }, align 32
@sofef00_panel_on.d.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B6\12", [30 x i8] zeroinitializer }, align 32
@sofef00_panel_on.d.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0\A5\A5", [29 x i8] zeroinitializer }, align 32
@sofef00_panel_on.d.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S ", [30 x i8] zeroinitializer }, align 32
@sofef00_panel_on.d.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@sofef00_panel_on._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.20, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sofef00_panel_on._entry_ptr.33 = internal global ptr @sofef00_panel_on._entry.31, section ".printk_index", align 4
@sofef00_panel_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to un-initialize panel: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sofef00_panel_unprepare\00", [40 x i8] zeroinitializer }, align 32
@sofef00_panel_unprepare._entry_ptr = internal global ptr @sofef00_panel_unprepare._entry, section ".printk_index", align 4
@sofef00_panel_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sofef00_panel_off\00", [46 x i8] zeroinitializer }, align 32
@sofef00_panel_off._entry_ptr = internal global ptr @sofef00_panel_off._entry, section ".printk_index", align 4
@sofef00_panel_off._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sofef00_panel_off._entry_ptr.40 = internal global ptr @sofef00_panel_off._entry.38, section ".printk_index", align 4
@__const.sofef00_create_backlight.props = private unnamed_addr constant %struct.backlight_properties { i32 1023, i32 1023, i32 0, i32 0, i32 2, i32 0, i32 0 }, align 4
@sofef00_panel_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @sofef00_panel_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@sofef00_panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sofef00_panel_remove\00", [43 x i8] zeroinitializer }, align 32
@sofef00_panel_remove._entry_ptr = internal global ptr @sofef00_panel_remove._entry, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"sofef00_panel_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 335, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 339, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"sofef00_panel_of_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 322, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"enchilada_panel_mode\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 167, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"fajita_panel_mode\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 181, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 268, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 272, i32 40 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 275, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 277, i32 40 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 280, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"sofef00_panel_panel_funcs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 214, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 294, i32 10 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 300, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 131, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 139, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 65, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 70, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 74, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 78, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 79, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 80, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 81, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 82, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 83, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 84, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 88, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 159, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 105, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 112, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"sofef00_panel_bl_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 237, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-samsung-sofef00.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 315, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sofef00_panel_driver_exit, ptr @__initcall__kmod_panel_samsung_sofef00__302_344_sofef00_panel_driver_init6, ptr @sofef00_panel_driver_exit, ptr @sofef00_panel_off._entry, ptr @sofef00_panel_off._entry.38, ptr @sofef00_panel_off._entry_ptr, ptr @sofef00_panel_off._entry_ptr.40, ptr @sofef00_panel_on._entry, ptr @sofef00_panel_on._entry.21, ptr @sofef00_panel_on._entry.31, ptr @sofef00_panel_on._entry_ptr, ptr @sofef00_panel_on._entry_ptr.23, ptr @sofef00_panel_on._entry_ptr.33, ptr @sofef00_panel_prepare._entry, ptr @sofef00_panel_prepare._entry.16, ptr @sofef00_panel_prepare._entry_ptr, ptr @sofef00_panel_prepare._entry_ptr.18, ptr @sofef00_panel_probe._entry, ptr @sofef00_panel_probe._entry.11, ptr @sofef00_panel_probe._entry_ptr, ptr @sofef00_panel_probe._entry_ptr.13, ptr @sofef00_panel_remove._entry, ptr @sofef00_panel_remove._entry_ptr, ptr @sofef00_panel_unprepare._entry, ptr @sofef00_panel_unprepare._entry_ptr, ptr @sofef00_panel_driver, ptr @.str, ptr @sofef00_panel_of_match, ptr @enchilada_panel_mode, ptr @fajita_panel_mode, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sofef00_panel_panel_funcs, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @sofef00_panel_on.d, ptr @.str.22, ptr @sofef00_panel_on.d.24, ptr @sofef00_panel_on.d.25, ptr @sofef00_panel_on.d.26, ptr @sofef00_panel_on.d.27, ptr @sofef00_panel_on.d.28, ptr @sofef00_panel_on.d.29, ptr @sofef00_panel_on.d.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @sofef00_panel_bl_ops, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enchilada_panel_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fajita_panel_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_prepare._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on.d.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on.d.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on.d.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on.d.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on.d.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on.d.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on.d.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_on._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_off._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sofef00_panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sofef00_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @sofef00_panel_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sofef00_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @sofef00_panel_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sofef00_panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %mode = getelementptr inbounds %struct.sofef00_panel, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %mode, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  %supply = getelementptr inbounds %struct.sofef00_panel, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %supply, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 7) #6
  %reset_gpio = getelementptr inbounds %struct.sofef00_panel, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15, ptr %reset_gpio, align 4
  %cmp.i78 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call15 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %dsi23 = getelementptr inbounds %struct.sofef00_panel, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dsi23 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dsi, ptr %dsi23, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %7 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %format, align 4
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @sofef00_panel_panel_funcs, i32 noundef 16) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #6
  %9 = call ptr @memcpy(ptr %props.i, ptr @__const.sofef00_create_backlight.props, i32 28)
  %init_name.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end22.sofef00_create_backlight.exit_crit_edge

if.end22.sofef00_create_backlight.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sofef00_create_backlight.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  br label %sofef00_create_backlight.exit

sofef00_create_backlight.exit:                    ; preds = %if.end.i.i, %if.end22.sofef00_create_backlight.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end22.sofef00_create_backlight.exit_crit_edge ]
  %call2.i = call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef %retval.0.i.i, ptr noundef %dev1, ptr noundef %dsi, ptr noundef nonnull @sofef00_panel_bl_ops, ptr noundef nonnull %props.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #6
  %backlight = getelementptr inbounds %struct.drm_panel, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2.i, ptr %backlight, align 4
  %cmp.i79 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then29, label %if.end34

if.then29:                                        ; preds = %sofef00_create_backlight.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call2.i to i32
  %call33 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %15, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end34:                                         ; preds = %sofef00_create_backlight.exit
  call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  %call36 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %do.end40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call36) #9
  call void @drm_panel_remove(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end34.cleanup_crit_edge, %if.then29, %if.then18, %if.then10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ %call21, %if.then18 ], [ %call33, %if.then29 ], [ %call36, %do.end40 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sofef00_panel_remove(ptr noundef %dsi) #2 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @sofef00_panel_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.sofef00_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.sofef00_panel, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supply = getelementptr inbounds %struct.sofef00_panel, ptr %panel, i32 0, i32 2
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call2) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reset_gpio.i = getelementptr inbounds %struct.sofef00_panel, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  %10 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 12000, i32 noundef 13000, i32 noundef 2) #6
  %12 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsi, align 4
  %dev2.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %13, i32 0, i32 1
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_flags.i, align 8
  %or.i = or i32 %15, 2048
  store i32 %or.i, ptr %mode_flags.i, align 8
  %call.i = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.19, i32 noundef %call.i) #9
  br label %do.end10

if.end.i:                                         ; preds = %if.end4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %call5.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %13, ptr noundef nonnull @sofef00_panel_on.d, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.do.end10_crit_edge, label %do.end10.i

if.end.i.do.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %13, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end16.i, label %do.body18.i

do.end16.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.22, i32 noundef %call11.i) #9
  br label %do.end10

do.body18.i:                                      ; preds = %do.end10.i
  %call20.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %13, ptr noundef nonnull @sofef00_panel_on.d.24, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %do.body18.i.do.end10_crit_edge, label %do.body29.i

do.body18.i.do.end10_crit_edge:                   ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body29.i:                                      ; preds = %do.body18.i
  %call31.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %13, ptr noundef nonnull @sofef00_panel_on.d.25, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.body29.i.do.end10_crit_edge, label %do.body40.i

do.body29.i.do.end10_crit_edge:                   ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body40.i:                                      ; preds = %do.body29.i
  %call42.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %13, ptr noundef nonnull @sofef00_panel_on.d.26, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.i = icmp slt i32 %call42.i, 0
  br i1 %cmp43.i, label %do.body40.i.do.end10_crit_edge, label %do.body51.i

do.body40.i.do.end10_crit_edge:                   ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body51.i:                                      ; preds = %do.body40.i
  %call53.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %13, ptr noundef nonnull @sofef00_panel_on.d.27, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %do.body51.i.do.end10_crit_edge, label %do.body62.i

do.body51.i.do.end10_crit_edge:                   ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body62.i:                                      ; preds = %do.body51.i
  %call64.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %13, ptr noundef nonnull @sofef00_panel_on.d.28, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %do.body62.i.do.end10_crit_edge, label %do.body73.i

do.body62.i.do.end10_crit_edge:                   ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body73.i:                                      ; preds = %do.body62.i
  %call75.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %13, ptr noundef nonnull @sofef00_panel_on.d.29, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 0
  br i1 %cmp76.i, label %do.body73.i.do.end10_crit_edge, label %do.body84.i

do.body73.i.do.end10_crit_edge:                   ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body84.i:                                      ; preds = %do.body73.i
  %call86.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %13, ptr noundef nonnull @sofef00_panel_on.d.30, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %cmp87.i = icmp slt i32 %call86.i, 0
  br i1 %cmp87.i, label %do.body84.i.do.end10_crit_edge, label %do.end94.i

do.body84.i.do.end10_crit_edge:                   ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end94.i:                                       ; preds = %do.body84.i
  %call95.i = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %cmp96.i = icmp slt i32 %call95.i, 0
  br i1 %cmp96.i, label %do.end100.i, label %if.end11

do.end100.i:                                      ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.32, i32 noundef %call95.i) #9
  br label %do.end10

do.end10:                                         ; preds = %do.end100.i, %do.body84.i.do.end10_crit_edge, %do.body73.i.do.end10_crit_edge, %do.body62.i.do.end10_crit_edge, %do.body51.i.do.end10_crit_edge, %do.body40.i.do.end10_crit_edge, %do.body29.i.do.end10_crit_edge, %do.body18.i.do.end10_crit_edge, %do.end16.i, %if.end.i.do.end10_crit_edge, %do.end.i
  %retval.8.i.ph = phi i32 [ %call5.i, %if.end.i.do.end10_crit_edge ], [ %call20.i, %do.body18.i.do.end10_crit_edge ], [ %call31.i, %do.body29.i.do.end10_crit_edge ], [ %call42.i, %do.body40.i.do.end10_crit_edge ], [ %call53.i, %do.body51.i.do.end10_crit_edge ], [ %call64.i, %do.body62.i.do.end10_crit_edge ], [ %call75.i, %do.body73.i.do.end10_crit_edge ], [ %call86.i, %do.body84.i.do.end10_crit_edge ], [ %call95.i, %do.end100.i ], [ %call11.i, %do.end16.i ], [ %call.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %retval.8.i.ph) #9
  %16 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 1) #6
  br label %cleanup

if.end11:                                         ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.8.i.ph, %do.end10 ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sofef00_panel_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.sofef00_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.sofef00_panel, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !112
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call.i) #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 40) #6
  %call3.i = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %sofef00_panel_off.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %call3.i) #9
  br label %do.end

sofef00_panel_off.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 160) #6
  br label %if.end4

do.end:                                           ; preds = %do.end8.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call3.i, %do.end8.i ], [ %call.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i.ph) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %sofef00_panel_off.exit
  %supply = getelementptr inbounds %struct.sofef00_panel, ptr %panel, i32 0, i32 2
  %6 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %supply, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %7) #6
  %8 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sofef00_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %mode1 = getelementptr inbounds %struct.sofef00_panel, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode1, align 4
  %call2 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call2) #6
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 26
  %5 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %6 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %7 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 27
  %8 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height_mm, align 4
  %conv4 = zext i16 %9 to i32
  %height_mm6 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %height_mm6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv4, ptr %height_mm6, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
define internal i32 @sofef00_panel_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
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
  %10 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i)
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %1, i16 noundef zeroext %10) #6
  %11 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_panel_samsung_sofef00__302_344_sofef00_panel_driver_init6, !1, !"__initcall__kmod_panel_samsung_sofef00__302_344_sofef00_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 344, i32 1}
!2 = !{ptr @__exitcall_sofef00_panel_driver_exit, !1, !"__exitcall_sofef00_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 346, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 347, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 348, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 339, i32 11}
!12 = !{ptr @sofef00_panel_driver, !13, !"sofef00_panel_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 335, i32 31}
!14 = !{ptr @sofef00_panel_of_match, !15, !"sofef00_panel_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 322, i32 34}
!16 = !{ptr @enchilada_panel_mode, !17, !"enchilada_panel_mode", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 167, i32 38}
!18 = !{ptr @fajita_panel_mode, !19, !"fajita_panel_mode", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 181, i32 38}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 268, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sofef00_panel_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sofef00_panel_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 272, i32 40}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 275, i32 10}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 277, i32 40}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 280, i32 10}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 294, i32 10}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 300, i32 3}
!40 = !{ptr @sofef00_panel_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sofef00_panel_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sofef00_panel_panel_funcs, !43, !"sofef00_panel_panel_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 214, i32 37}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 131, i32 3}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sofef00_panel_prepare._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sofef00_panel_prepare._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 139, i32 3}
!51 = !{ptr @sofef00_panel_prepare._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sofef00_panel_prepare._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 65, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sofef00_panel_on._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @sofef00_panel_on._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @sofef00_panel_on.d, !59, !"d", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 70, i32 2}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 74, i32 3}
!62 = !{ptr @sofef00_panel_on._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sofef00_panel_on._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @sofef00_panel_on.d.24, !65, !"d", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 78, i32 2}
!66 = !{ptr @sofef00_panel_on.d.25, !67, !"d", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 79, i32 2}
!68 = !{ptr @sofef00_panel_on.d.26, !69, !"d", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 80, i32 2}
!70 = !{ptr @sofef00_panel_on.d.27, !71, !"d", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 81, i32 2}
!72 = !{ptr @sofef00_panel_on.d.28, !73, !"d", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 82, i32 2}
!74 = !{ptr @sofef00_panel_on.d.29, !75, !"d", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 83, i32 2}
!76 = !{ptr @sofef00_panel_on.d.30, !77, !"d", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 84, i32 2}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 88, i32 3}
!80 = !{ptr @sofef00_panel_on._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sofef00_panel_on._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 159, i32 3}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sofef00_panel_unprepare._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @sofef00_panel_unprepare._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 105, i32 3}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sofef00_panel_off._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @sofef00_panel_off._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 112, i32 3}
!94 = !{ptr @sofef00_panel_off._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sofef00_panel_off._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @sofef00_panel_bl_ops, !97, !"sofef00_panel_bl_ops", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 237, i32 35}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/panel/panel-samsung-sofef00.c", i32 315, i32 3}
!100 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sofef00_panel_remove._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @sofef00_panel_remove._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i8 0, i8 2}
