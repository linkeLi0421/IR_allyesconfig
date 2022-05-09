; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.s6e3ha2_panel_desc = type { ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.s6e3ha2 = type { ptr, %struct.drm_panel, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_samsung_s6e3ha2__302_776_s6e3ha2_driver_init6 = internal global ptr @s6e3ha2_driver_init, section ".initcall6.init", align 4
@s6e3ha2_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s6e3ha2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s6e3ha2_probe, ptr @s6e3ha2_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_s6e3ha2_driver_exit = internal global ptr @s6e3ha2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [64 x i8] c"panel_samsung_s6e3ha2.author=Donghwa Lee <dh09.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [70 x i8] c"panel_samsung_s6e3ha2.author=Hyungwon Hwang <human.hwang@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [69 x i8] c"panel_samsung_s6e3ha2.author=Hoegeun Kwon <hoegeun.kwon@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [77 x i8] c"panel_samsung_s6e3ha2.description=MIPI-DSI based s6e3ha2 AMOLED Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [71 x i8] c"panel_samsung_s6e3ha2.file=drivers/gpu/drm/panel/panel-samsung-s6e3ha2\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [37 x i8] c"panel_samsung_s6e3ha2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-samsung-s6e3ha2\00", [42 x i8] zeroinitializer }, align 32
@s6e3ha2_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6e3ha2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @samsung_s6e3ha2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s6e3hf2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @samsung_s6e3hf2 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@samsung_s6e3ha2 = internal constant { %struct.s6e3ha2_panel_desc, [24 x i8] } { %struct.s6e3ha2_panel_desc { ptr @s6e3ha2_mode, i32 0 }, [24 x i8] zeroinitializer }, align 32
@samsung_s6e3hf2 = internal constant { %struct.s6e3ha2_panel_desc, [24 x i8] } { %struct.s6e3ha2_panel_desc { ptr @s6e3hf2_mode, i32 1 }, [24 x i8] zeroinitializer }, align 32
@s6e3ha2_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 222372, i16 1440, i16 1441, i16 1442, i16 1443, i16 0, i16 2560, i16 2561, i16 2562, i16 2577, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@s6e3hf2_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 247856, i16 1600, i16 1601, i16 1602, i16 1603, i16 0, i16 2560, i16 2561, i16 2562, i16 2577, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@s6e3ha2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 703, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s6e3ha2_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s6e3ha2_probe._entry_ptr = internal global ptr @s6e3ha2_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@s6e3ha2_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 710, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get reset-gpios %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@s6e3ha2_probe._entry_ptr.11 = internal global ptr @s6e3ha2_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@s6e3ha2_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 717, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot get enable-gpios %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@s6e3ha2_probe._entry_ptr.15 = internal global ptr @s6e3ha2_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s6e3ha2\00", [24 x i8] zeroinitializer }, align 32
@s6e3ha2_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @s6e3ha2_set_brightness, ptr @s6e3ha2_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@s6e3ha2_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 724, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register backlight device\0A\00", [59 x i8] zeroinitializer }, align 32
@s6e3ha2_probe._entry_ptr.19 = internal global ptr @s6e3ha2_probe._entry.17, section ".printk_index", align 4
@s6e3ha2_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @s6e3ha2_prepare, ptr @s6e3ha2_enable, ptr @s6e3ha2_disable, ptr @s6e3ha2_unprepare, ptr @s6e3ha2_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@s6e3ha2_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 457, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid brightness: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s6e3ha2_set_brightness\00", [41 x i8] zeroinitializer }, align 32
@s6e3ha2_set_brightness._entry_ptr = internal global ptr @s6e3ha2_set_brightness._entry, section ".printk_index", align 4
@s6e3ha2_test_key_on_f0.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0ZZ", [29 x i8] zeroinitializer }, align 32
@gamma_tbl = internal constant { [46 x [35 x i8]], [406 x i8] } { [46 x [35 x i8]] [[35 x i8] c"\00\B8\00\C3\00\B1\89\87\87\82\83\85\88\8B\8B\84\88\82\82\89\86\8C\94\84\B1\AF\8E\CF\AD\C9\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\89\87\87\84\84\85\87\8B\8A\84\88\82\82\89\86\8A\93\84\B0\AE\8E\C9\A8\C5\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\89\87\87\83\83\85\86\8A\8A\84\88\81\84\8A\88\8A\91\84\B1\AE\8B\D5\B2\CC\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\89\87\87\83\83\85\86\8A\8A\84\87\81\84\8A\87\8A\91\85\AE\AC\8A\C3\A3\C0\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\85\85\86\85\88\89\84\89\82\84\87\85\8B\91\88\AD\AB\8A\B7\9B\B6\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\89\87\87\83\83\85\86\89\8A\84\89\83\83\86\84\8B\90\84\B0\AE\8B\CE\AD\C8\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\89\87\87\83\83\85\87\89\8A\83\87\82\85\88\87\89\8F\84\AC\AA\89\B1\98\AF\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\89\87\87\83\83\85\86\88\89\84\88\83\82\85\84\8C\91\86\AC\AA\89\C2\A5\BD\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\84\84\85\87\89\8A\83\87\82\85\88\87\88\8B\82\AD\AA\8A\C2\A5\BD\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\89\87\87\83\83\85\86\87\89\84\88\83\82\85\84\8A\8E\84\AE\AC\89\DA\B7\D0\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\84\84\85\86\87\89\84\88\83\80\83\82\8B\8E\85\AC\AA\89\C8\AA\C1\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\84\84\85\86\87\89\81\85\81\84\86\84\8C\8C\84\A9\A8\87\A3\92\A1\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\84\84\85\86\87\89\84\86\83\80\83\81\8C\8D\84\AA\AA\89\CE\AF\C5\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\84\84\85\86\87\89\81\83\80\83\85\85\8C\8C\84\A8\A8\88\B5\9F\B0\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\84\84\86\86\87\88\81\83\80\83\85\85\8C\8B\84\AB\A8\86\D4\B4\C9\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\84\84\86\86\87\88\81\83\80\84\84\85\8B\8A\83\A6\A5\84\BB\A4\B3\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\84\84\86\85\86\86\82\85\81\82\83\84\8E\8B\83\A4\A3\8A\A1\93\9D\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\83\83\85\86\87\87\82\85\81\82\82\84\8E\8B\83\A4\A2\86\C1\A9\B7\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\83\83\85\86\87\87\82\85\81\82\82\84\8D\89\82\A2\A1\84\A7\98\A1\00\00\00\00\00", [35 x i8] c"\00\B8\00\C3\00\B1\88\86\87\83\83\85\86\87\87\82\85\81\83\83\85\8C\87\7F\A2\9D\88\8D\88\8B\00\00\00\00\00", [35 x i8] c"\00\BB\00\C5\00\B4\87\86\86\84\83\86\87\87\87\80\82\7F\86\86\88\8A\84~\9D\9C\82\8D\88\8B\00\00\00\00\00", [35 x i8] c"\00\BD\00\C7\00\B7\87\85\85\84\83\86\86\86\88\81\83\80\83\84\85\8A\85~\9C\9B\85\80\80\80\00\00\00\00\00", [35 x i8] c"\00\C0\00\CA\00\BB\87\86\85\83\83\85\86\86\88\81\83\80\84\85\86\89\83}\9C\99\87{{|\00\00\00\00\00", [35 x i8] c"\00\C4\00\CD\00\BE\87\86\85\83\83\86\85\85\87\81\82\80\82\82\83\8A\85\7F\9F\9B\86\B4\A1\AC\00\00\00\00\00", [35 x i8] c"\00\C7\00\D0\00\C2\87\85\85\83\82\85\85\85\86\82\83\80\82\82\84\87\86\80\9E\9A\87\A7\98\A1\00\00\00\00\00", [35 x i8] c"\00\CA\00\D2\00\C5\87\85\84\82\82\84\85\85\86\81\82\7F\82\82\84\88\86\81\9D\98\86\8D\88\8B\00\00\00\00\00", [35 x i8] c"\00\CE\00\D6\00\CA\86\85\84\83\83\85\84\84\85\81\82\80\81\81\82\89\86\81\9C\97\86\A7\98\A1\00\00\00\00\00", [35 x i8] c"\00\D1\00\D9\00\CE\86\84\83\83\82\85\85\85\86\81\83\81\82\82\83\86\83\7F\99\95\86\BB\A4\B3\00\00\00\00\00", [35 x i8] c"\00\D4\00\DB\00\D1\86\85\83\83\82\85\84\84\85\80\83\82\80\80\81\87\84\81\98\93\85\AE\9C\A8\00\00\00\00\00", [35 x i8] c"\00\D8\00\DE\00\D6\86\84\83\81\81\83\85\85\85\82\83\81\81\81\83\86\84\80\98\91\85{{|\00\00\00\00\00", [35 x i8] c"\00\DC\00\E2\00\DA\85\84\83\82\82\84\84\84\85\81\82\82\80\80\81\83\82\7F\99\93\86\94\8B\92\00\00\00\00\00", [35 x i8] c"\00\DF\00\E5\00\DE\85\84\82\82\82\84\83\83\84\81\81\80\83\82\84\82\81\7F\99\92\86{{|\00\00\00\00\00", [35 x i8] c"\00\E4\00\E9\00\E3\84\83\82\81\81\82\83\83\84\80\81\80\83\83\84\80\81|\99\92\87\A1\93\9D\00\00\00\00\00", [35 x i8] c"\00\E4\00\E9\00\E3\85\84\83\81\81\82\82\82\83\80\81\80\81\80\82\83\82\80\91\8D\83\9A\90\96\00\00\00\00\00", [35 x i8] c"\00\E4\00\E9\00\E3\84\83\82\81\81\82\83\83\84\80\81\80\81\80\82\83\81\7F\91\8C\82\8D\88\8B\00\00\00\00\00", [35 x i8] c"\00\E4\00\E9\00\E3\84\83\82\81\81\82\83\83\83\82\82\81\81\80\82\82\82\7F\94\89\84\80\80\80\00\00\00\00\00", [35 x i8] c"\00\E4\00\E9\00\E3\84\83\82\81\81\82\83\83\83\82\82\81\81\80\82\83\82\7F\91\85\81\80\80\80\00\00\00\00\00", [35 x i8] c"\00\E4\00\E9\00\E3\84\83\82\81\81\82\83\83\83\80\80\7F\83\82\84\83\82\7F\90\84\81\9A\90\96\00\00\00\00\00", [35 x i8] c"\00\E4\00\E9\00\E3\84\83\82\80\80\82\83\83\83\80\80\7F\80\80\81\81\82\83~\80|\A4\97\9F\00\00\00\00\00", [35 x i8] c"\00\E9\00\EC\00\E8\84\83\82\81\81\82\82\82\83\7F\7F\7F\81\80\82\83\83\84y|y\B1\A0\AA\00\00\00\00\00", [35 x i8] c"\00\ED\00\F0\00\EC\83\83\82\80\80\81\82\82\82\7F\7F~\81\81\82\80\81\81\84\84\83\80\80\80\00\00\00\00\00", [35 x i8] c"\00\F1\00\F4\00\F1\83\82\82\80\80\81\82\82\82\80\80\80\80\80\81}~\7F\84\84\83\80\80\80\00\00\00\00\00", [35 x i8] c"\00\F6\00\F7\00\F5\82\82\81\80\80\80\82\82\82\80\80\80\7F\7F\7F\82\82\82\80\80\80\80\80\80\00\00\00\00\00", [35 x i8] c"\00\FA\00\FB\00\FA\81\81\81\80\80\80\82\82\82\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\00\00\00\00", [35 x i8] c"\01\00\01\00\01\00\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\00\00\00\00", [35 x i8] c"\01\00\01\00\01\00\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\00\00\00\00"], [406 x i8] zeroinitializer }, align 32
@s6e3ha2_gamma_update.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F7\03", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_gamma_update.d.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F7\00", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@s6e3ha2_aor_control.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B2\03\10", [29 x i8] zeroinitializer }, align 32
@vint_table = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\18\19\1A\1B\1C\1D\1E\1F !", [22 x i8] zeroinitializer }, align 32
@s6e3ha2_test_key_off_f0.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F0\A5\A5", [29 x i8] zeroinitializer }, align 32
@s6e3ha2_single_dsi_set.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F2g", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_single_dsi_set.d.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F9\09", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_test_key_on_fc.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\FCZZ", [29 x i8] zeroinitializer }, align 32
@s6e3ha2_freq_calibration.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FD\1C", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_freq_calibration.d.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\F2g@\C5", [28 x i8] zeroinitializer }, align 32
@s6e3ha2_freq_calibration.d.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\FE 9", [29 x i8] zeroinitializer }, align 32
@s6e3ha2_freq_calibration.d.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FE\A0", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_freq_calibration.d.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FE ", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_freq_calibration.d.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\CE\03;\12b@\80\C0((((9\C5", [18 x i8] zeroinitializer }, align 32
@s6e3ha2_freq_calibration.d.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\CE\03;\14m@\80\C0((((9\C5", [18 x i8] zeroinitializer }, align 32
@s6e3ha2_test_key_off_fc.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\FC\A5\A5", [29 x i8] zeroinitializer }, align 32
@s6e3ha2_touch_hsync_on1.d = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\BD3\11\02\16\02\16", [25 x i8] zeroinitializer }, align 32
@s6e3ha2_pentile_control.d = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C0\00\00\D8\D8", [27 x i8] zeroinitializer }, align 32
@s6e3ha2_poc_global.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0 ", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_poc_setting.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FE\08", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_pcd_set_off.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\CC@Q", [29 x i8] zeroinitializer }, align 32
@s6e3ha2_err_fg_set.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\EDD", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_te_start_setting.d = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\B9\10\09\FF\00\09", [26 x i8] zeroinitializer }, align 32
@s6e3ha2_caps_elvss_set.d = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\B6\9C\0A", [29 x i8] zeroinitializer }, align 32
@s6e3ha2_acl_off.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_acl_off_opr.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B5@", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_hbm_off.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_test_global.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\07", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_test.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B8\19", [30 x i8] zeroinitializer }, align 32
@s6e3ha2_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 655, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s6e3ha2_get_modes\00", [46 x i8] zeroinitializer }, align 32
@s6e3ha2_get_modes._entry_ptr = internal global ptr @s6e3ha2_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"s6e3ha2_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 768, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 772, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"s6e3ha2_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 761, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"samsung_s6e3ha2\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 622, i32 40 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"samsung_s6e3hf2\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 640, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"s6e3ha2_mode\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 609, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"s6e3hf2_mode\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 627, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 697, i32 28 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 698, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 703, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 707, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 709, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 714, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 716, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 721, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"s6e3ha2_bl_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 473, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 724, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"s6e3ha2_drm_funcs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 670, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 457, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 267, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"gamma_tbl\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 30, i32 17 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 404, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 406, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 319, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [11 x i8] c"vint_table\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 217, i32 28 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 273, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 291, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 292, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 279, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 298, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 300, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 301, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 302, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 303, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 306, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 310, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 285, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 355, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 362, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 368, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 374, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 380, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 386, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 398, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 325, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 331, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 337, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 392, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 343, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 349, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 653, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_s6e3ha2_driver_exit, ptr @__initcall__kmod_panel_samsung_s6e3ha2__302_776_s6e3ha2_driver_init6, ptr @s6e3ha2_driver_exit, ptr @s6e3ha2_get_modes._entry, ptr @s6e3ha2_get_modes._entry_ptr, ptr @s6e3ha2_probe._entry, ptr @s6e3ha2_probe._entry.13, ptr @s6e3ha2_probe._entry.17, ptr @s6e3ha2_probe._entry.9, ptr @s6e3ha2_probe._entry_ptr, ptr @s6e3ha2_probe._entry_ptr.11, ptr @s6e3ha2_probe._entry_ptr.15, ptr @s6e3ha2_probe._entry_ptr.19, ptr @s6e3ha2_set_brightness._entry, ptr @s6e3ha2_set_brightness._entry_ptr, ptr @s6e3ha2_driver, ptr @.str, ptr @s6e3ha2_of_match, ptr @samsung_s6e3ha2, ptr @samsung_s6e3hf2, ptr @s6e3ha2_mode, ptr @s6e3hf2_mode, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @s6e3ha2_bl_ops, ptr @.str.18, ptr @s6e3ha2_drm_funcs, ptr @.str.20, ptr @.str.21, ptr @s6e3ha2_test_key_on_f0.d, ptr @gamma_tbl, ptr @s6e3ha2_gamma_update.d, ptr @s6e3ha2_gamma_update.d.22, ptr @s6e3ha2_aor_control.d, ptr @vint_table, ptr @s6e3ha2_test_key_off_f0.d, ptr @s6e3ha2_single_dsi_set.d, ptr @s6e3ha2_single_dsi_set.d.23, ptr @s6e3ha2_test_key_on_fc.d, ptr @s6e3ha2_freq_calibration.d, ptr @s6e3ha2_freq_calibration.d.24, ptr @s6e3ha2_freq_calibration.d.25, ptr @s6e3ha2_freq_calibration.d.26, ptr @s6e3ha2_freq_calibration.d.27, ptr @s6e3ha2_freq_calibration.d.28, ptr @s6e3ha2_freq_calibration.d.29, ptr @s6e3ha2_test_key_off_fc.d, ptr @s6e3ha2_touch_hsync_on1.d, ptr @s6e3ha2_pentile_control.d, ptr @s6e3ha2_poc_global.d, ptr @s6e3ha2_poc_setting.d, ptr @s6e3ha2_pcd_set_off.d, ptr @s6e3ha2_err_fg_set.d, ptr @s6e3ha2_te_start_setting.d, ptr @s6e3ha2_caps_elvss_set.d, ptr @s6e3ha2_acl_off.d, ptr @s6e3ha2_acl_off_opr.d, ptr @s6e3ha2_hbm_off.d, ptr @s6e3ha2_test_global.d, ptr @s6e3ha2_test.d, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s6e3ha2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_s6e3hf2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3hf2_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_test_key_on_f0.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_tbl to i32), i32 1610, i32 2016, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_gamma_update.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_gamma_update.d.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_aor_control.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vint_table to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_test_key_off_f0.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_single_dsi_set.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_single_dsi_set.d.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_test_key_on_fc.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_freq_calibration.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_freq_calibration.d.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_freq_calibration.d.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_freq_calibration.d.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_freq_calibration.d.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_freq_calibration.d.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_freq_calibration.d.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_test_key_off_fc.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_touch_hsync_on1.d to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_pentile_control.d to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_poc_global.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_poc_setting.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_pcd_set_off.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_err_fg_set.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_te_start_setting.d to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_caps_elvss_set.d to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_acl_off.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_acl_off_opr.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_hbm_off.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_test_global.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_test.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6e3ha2_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @s6e3ha2_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s6e3ha2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @s6e3ha2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %desc = getelementptr inbounds %struct.s6e3ha2, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %desc, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %3 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %5 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1024, ptr %mode_flags, align 8
  %supplies = getelementptr inbounds %struct.s6e3ha2, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx5 = getelementptr %struct.s6e3ha2, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.2, ptr %arrayidx5, align 4
  %call8 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call8) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.s6e3ha2, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %if.end22

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %9) #10
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %call23 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 7) #7
  %enable_gpio = getelementptr inbounds %struct.s6e3ha2, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %enable_gpio, align 4
  %cmp.i105 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end29, label %if.end34

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %14) #10
  %15 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enable_gpio, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %call35 = tail call ptr @backlight_device_register(ptr noundef nonnull @.str.16, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull @s6e3ha2_bl_ops, ptr noundef null) #7
  %bl_dev = getelementptr inbounds %struct.s6e3ha2, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call35, ptr %bl_dev, align 4
  %cmp.i106 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  %19 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bl_dev, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %call35, i32 0, i32 1
  %22 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 100, ptr %max_brightness, align 4
  %23 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bl_dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 80, ptr %24, align 8
  %26 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %power, align 8
  %panel = getelementptr inbounds %struct.s6e3ha2, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @s6e3ha2_drm_funcs, i32 noundef 16) #7
  tail call void @drm_panel_add(ptr noundef %panel) #7
  %call51 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %remove_panel, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

remove_panel:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_panel_remove(ptr noundef %panel) #7
  %28 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bl_dev, align 4
  tail call void @backlight_device_unregister(ptr noundef %29) #7
  br label %cleanup

cleanup:                                          ; preds = %remove_panel, %if.end44.cleanup_crit_edge, %do.end41, %do.end29, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ %12, %do.end17 ], [ %17, %do.end29 ], [ %21, %do.end41 ], [ %call51, %remove_panel ], [ -12, %entry.cleanup_crit_edge ], [ %call51, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #7
  %panel = getelementptr inbounds %struct.s6e3ha2, ptr %1, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %panel) #7
  %bl_dev = getelementptr inbounds %struct.s6e3ha2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  tail call void @backlight_device_unregister(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_set_brightness(ptr nocapture noundef readonly %bl_dev) #2 align 64 {
entry:
  %data.i69 = alloca [3 x i8], align 1
  %data.i = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl_dev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl_dev, align 8
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %bl_dev, i32 0, i32 1
  %4 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3 = icmp ugt i32 %3, %5
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl_dev, i32 0, i32 2
  %8 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp sgt i32 %9, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 -8
  %call1.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @s6e3ha2_test_key_on_f0.d, i32 noundef 3) #7
  %12 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp10 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp10, label %do.body8.cleanup_crit_edge, label %do.body15

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %do.body8
  %bl_dev1.i = getelementptr inbounds %struct.s6e3ha2, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %bl_dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bl_dev1.i, align 4
  %mul.i.i = mul i32 %3, 45
  %div.i.i = udiv i32 %mul.i.i, 100
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %data.i) #7
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -54, ptr %data.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %data.i, i32 1
  %add.ptr2.i = getelementptr [35 x i8], ptr @gamma_tbl, i32 %div.i.i
  %16 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr2.i, i32 35)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i65 = getelementptr i8, ptr %18, i32 -8
  %call1.i.i66 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i65, ptr noundef nonnull %data.i, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i66)
  %cmp.i = icmp slt i32 %call1.i.i66, 0
  br i1 %cmp.i, label %do.body15.s6e3ha2_update_gamma.exit.thread_crit_edge, label %do.body5.i

do.body15.s6e3ha2_update_gamma.exit.thread_crit_edge: ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %s6e3ha2_update_gamma.exit.thread

do.body5.i:                                       ; preds = %do.body15
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 -8
  %call1.i.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i.i, ptr noundef nonnull @s6e3ha2_gamma_update.d, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %cmp.i.i = icmp sgt i32 %call1.i.i.i, -1
  br i1 %cmp.i.i, label %s6e3ha2_gamma_update.exit.i, label %do.body5.i.s6e3ha2_update_gamma.exit.thread_crit_edge

do.body5.i.s6e3ha2_update_gamma.exit.thread_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s6e3ha2_update_gamma.exit.thread

s6e3ha2_gamma_update.exit.i:                      ; preds = %do.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %23, i32 -8
  %call1.i17.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i16.i.i, ptr noundef nonnull @s6e3ha2_gamma_update.d.22, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i.i)
  %cmp7.i = icmp slt i32 %call1.i17.i.i, 0
  br i1 %cmp7.i, label %s6e3ha2_update_gamma.exit, label %s6e3ha2_update_gamma.exit.thread77

s6e3ha2_update_gamma.exit.thread77:               ; preds = %s6e3ha2_gamma_update.exit.i
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %3, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data.i) #7
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i67 = getelementptr i8, ptr %26, i32 -8
  %call1.i.i68 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i67, ptr noundef nonnull @s6e3ha2_aor_control.d, i32 noundef 3) #7
  %27 = call i32 @llvm.smin.i32(i32 %call1.i.i68, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i68)
  %cmp24 = icmp slt i32 %call1.i.i68, 0
  br i1 %cmp24, label %s6e3ha2_update_gamma.exit.thread77.cleanup_crit_edge, label %do.body29

s6e3ha2_update_gamma.exit.thread77.cleanup_crit_edge: ; preds = %s6e3ha2_update_gamma.exit.thread77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s6e3ha2_update_gamma.exit.thread:                 ; preds = %do.body5.i.s6e3ha2_update_gamma.exit.thread_crit_edge, %do.body15.s6e3ha2_update_gamma.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i.i.i, %do.body5.i.s6e3ha2_update_gamma.exit.thread_crit_edge ], [ %call1.i.i66, %do.body15.s6e3ha2_update_gamma.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data.i) #7
  br label %cleanup

s6e3ha2_update_gamma.exit:                        ; preds = %s6e3ha2_gamma_update.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %data.i) #7
  br label %cleanup

do.body29:                                        ; preds = %s6e3ha2_update_gamma.exit.thread77
  %28 = ptrtoint ptr %bl_dev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bl_dev1.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i69) #7
  %32 = getelementptr inbounds [3 x i8], ptr %data.i69, i32 0, i32 1
  %33 = getelementptr inbounds [3 x i8], ptr %data.i69, i32 0, i32 2
  %34 = ptrtoint ptr %data.i69 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -12, ptr %data.i69, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -117, ptr %32, align 1
  %mul.i = mul i32 %31, 9
  %div.i = udiv i32 %mul.i, 100
  %arrayidx.i = getelementptr [10 x i8], ptr @vint_table, i32 0, i32 %div.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %33, align 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i71 = getelementptr i8, ptr %40, i32 -8
  %call1.i.i72 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i71, ptr noundef nonnull %data.i69, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i72)
  %cmp31 = icmp slt i32 %call1.i.i72, 0
  br i1 %cmp31, label %do.body29.cleanup_crit_edge, label %do.body36

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body36:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i73 = getelementptr i8, ptr %42, i32 -8
  %call1.i.i74 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i73, ptr noundef nonnull @s6e3ha2_test_key_off_f0.d, i32 noundef 3) #7
  %43 = call i32 @llvm.smin.i32(i32 %call1.i.i74, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body36, %do.body29.cleanup_crit_edge, %s6e3ha2_update_gamma.exit, %s6e3ha2_update_gamma.exit.thread, %s6e3ha2_update_gamma.exit.thread77.cleanup_crit_edge, %do.body8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -1, %if.end.cleanup_crit_edge ], [ %12, %do.body8.cleanup_crit_edge ], [ %call1.i17.i.i, %s6e3ha2_update_gamma.exit ], [ %27, %s6e3ha2_update_gamma.exit.thread77.cleanup_crit_edge ], [ %call1.i.i72, %do.body29.cleanup_crit_edge ], [ %43, %do.body36 ], [ %retval.0.i.ph, %s6e3ha2_update_gamma.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s6e3ha2_get_brightness(ptr nocapture noundef readonly %bl_dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bl_dev, align 8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s6e3ha2_gamma_update(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -8
  %call1.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i, ptr noundef nonnull @s6e3ha2_gamma_update.d, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp = icmp sgt i32 %call1.i, -1
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #7
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %4, i32 -8
  %call1.i17 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i16, ptr noundef nonnull @s6e3ha2_gamma_update.d.22, i32 noundef 2) #7
  %5 = tail call i32 @llvm.smin.i32(i32 %call1.i17, i32 0)
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.2 = phi i32 [ %call1.i, %entry.return_crit_edge ], [ %5, %do.end ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %panel, i32 -4
  %supplies.i = getelementptr i8, ptr %panel, i32 28
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 120) #7
  %enable_gpio.i = getelementptr i8, ptr %panel, i32 56
  %0 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %2 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #7
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 52
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -8
  %call1.i = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i13 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i13, label %if.end.err_crit_edge, label %do.end.i

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end.i:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 -8
  %call1.i.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i.i, ptr noundef nonnull @s6e3ha2_test_key_on_f0.d, i32 noundef 3) #7
  %12 = tail call i32 @llvm.smin.i32(i32 %call1.i.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp4.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp4.i, label %do.end.i.s6e3ha2_panel_init.exit_crit_edge, label %do.body9.i

do.end.i.s6e3ha2_panel_init.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s6e3ha2_panel_init.exit

do.body9.i:                                       ; preds = %do.end.i
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i64.i = getelementptr i8, ptr %14, i32 -8
  %call1.i.i65.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i64.i, ptr noundef nonnull @s6e3ha2_single_dsi_set.d, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i65.i)
  %cmp.i.i = icmp sgt i32 %call1.i.i65.i, -1
  br i1 %cmp.i.i, label %s6e3ha2_single_dsi_set.exit.i, label %do.body9.i.err_crit_edge

do.body9.i.err_crit_edge:                         ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

s6e3ha2_single_dsi_set.exit.i:                    ; preds = %do.body9.i
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %16, i32 -8
  %call1.i17.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i16.i.i, ptr noundef nonnull @s6e3ha2_single_dsi_set.d.23, i32 noundef 2) #7
  %17 = tail call i32 @llvm.smin.i32(i32 %call1.i17.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i.i)
  %cmp11.i = icmp slt i32 %call1.i17.i.i, 0
  br i1 %cmp11.i, label %s6e3ha2_single_dsi_set.exit.i.s6e3ha2_panel_init.exit_crit_edge, label %do.body16.i

s6e3ha2_single_dsi_set.exit.i.s6e3ha2_panel_init.exit_crit_edge: ; preds = %s6e3ha2_single_dsi_set.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s6e3ha2_panel_init.exit

do.body16.i:                                      ; preds = %s6e3ha2_single_dsi_set.exit.i
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i66.i = getelementptr i8, ptr %19, i32 -8
  %call1.i.i67.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i66.i, ptr noundef nonnull @s6e3ha2_test_key_on_fc.d, i32 noundef 3) #7
  %20 = tail call i32 @llvm.smin.i32(i32 %call1.i.i67.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i67.i)
  %cmp18.i = icmp slt i32 %call1.i.i67.i, 0
  br i1 %cmp18.i, label %do.body16.i.s6e3ha2_panel_init.exit_crit_edge, label %do.body23.i

do.body16.i.s6e3ha2_panel_init.exit_crit_edge:    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s6e3ha2_panel_init.exit

do.body23.i:                                      ; preds = %do.body16.i
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i68.i = getelementptr i8, ptr %22, i32 -8
  %call1.i.i69.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i68.i, ptr noundef nonnull @s6e3ha2_freq_calibration.d, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i69.i)
  %cmp.i70.i = icmp sgt i32 %call1.i.i69.i, -1
  br i1 %cmp.i70.i, label %do.end.i.i, label %do.body23.i.err_crit_edge

do.body23.i.err_crit_edge:                        ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end.i.i:                                       ; preds = %do.body23.i
  %desc.i.i = getelementptr i8, ptr %panel, i32 60
  %23 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.s6e3ha2_panel_desc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp1.i.i = icmp eq i32 %26, 1
  br i1 %cmp1.i.i, label %do.body3.i.i, label %do.end.i.i.do.body14.i.i_crit_edge

do.end.i.i.do.body14.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14.i.i

do.body3.i.i:                                     ; preds = %do.end.i.i
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i96.i.i = getelementptr i8, ptr %28, i32 -8
  %call1.i97.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i96.i.i, ptr noundef nonnull @s6e3ha2_freq_calibration.d.24, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i97.i.i)
  %cmp6.i.i = icmp sgt i32 %call1.i97.i.i, -1
  br i1 %cmp6.i.i, label %do.body3.i.i.do.body14.i.i_crit_edge, label %do.body3.i.i.err_crit_edge

do.body3.i.i.err_crit_edge:                       ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.body3.i.i.do.body14.i.i_crit_edge:             ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14.i.i

do.body14.i.i:                                    ; preds = %do.body3.i.i.do.body14.i.i_crit_edge, %do.end.i.i.do.body14.i.i_crit_edge
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i98.i.i = getelementptr i8, ptr %30, i32 -8
  %call1.i99.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i98.i.i, ptr noundef nonnull @s6e3ha2_freq_calibration.d.25, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i99.i.i)
  %cmp17.i.i = icmp sgt i32 %call1.i99.i.i, -1
  br i1 %cmp17.i.i, label %do.body24.i.i, label %do.body14.i.i.err_crit_edge

do.body14.i.i.err_crit_edge:                      ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.body24.i.i:                                    ; preds = %do.body14.i.i
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i100.i.i = getelementptr i8, ptr %32, i32 -8
  %call1.i101.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i100.i.i, ptr noundef nonnull @s6e3ha2_freq_calibration.d.26, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i101.i.i)
  %cmp27.i.i = icmp sgt i32 %call1.i101.i.i, -1
  br i1 %cmp27.i.i, label %do.body34.i.i, label %do.body24.i.i.err_crit_edge

do.body24.i.i.err_crit_edge:                      ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.body34.i.i:                                    ; preds = %do.body24.i.i
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i102.i.i = getelementptr i8, ptr %34, i32 -8
  %call1.i103.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i102.i.i, ptr noundef nonnull @s6e3ha2_freq_calibration.d.27, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i103.i.i)
  %cmp37.i.i = icmp sgt i32 %call1.i103.i.i, -1
  br i1 %cmp37.i.i, label %do.end43.i.i, label %do.body34.i.i.err_crit_edge

do.body34.i.i.err_crit_edge:                      ; preds = %do.body34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end43.i.i:                                     ; preds = %do.body34.i.i
  %35 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc.i.i, align 4
  %type45.i.i = getelementptr inbounds %struct.s6e3ha2_panel_desc, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %type45.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type45.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp46.i.i = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i104.i.i = getelementptr i8, ptr %40, i32 -8
  br i1 %cmp46.i.i, label %do.body48.i.i, label %do.body58.i.i

do.body48.i.i:                                    ; preds = %do.end43.i.i
  %call1.i105.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i104.i.i, ptr noundef nonnull @s6e3ha2_freq_calibration.d.28, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i105.i.i)
  %cmp51.i.i = icmp sgt i32 %call1.i105.i.i, -1
  br i1 %cmp51.i.i, label %do.body48.i.i.do.body30.i_crit_edge, label %do.body48.i.i.err_crit_edge

do.body48.i.i.err_crit_edge:                      ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.body48.i.i.do.body30.i_crit_edge:              ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30.i

do.body58.i.i:                                    ; preds = %do.end43.i.i
  %call1.i107.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i104.i.i, ptr noundef nonnull @s6e3ha2_freq_calibration.d.29, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i107.i.i)
  %cmp61.i.i = icmp sgt i32 %call1.i107.i.i, -1
  br i1 %cmp61.i.i, label %do.body58.i.i.do.body30.i_crit_edge, label %do.body58.i.i.err_crit_edge

do.body58.i.i.err_crit_edge:                      ; preds = %do.body58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.body58.i.i.do.body30.i_crit_edge:              ; preds = %do.body58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30.i

do.body30.i:                                      ; preds = %do.body58.i.i.do.body30.i_crit_edge, %do.body48.i.i.do.body30.i_crit_edge
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i71.i = getelementptr i8, ptr %42, i32 -8
  %call1.i.i72.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i71.i, ptr noundef nonnull @s6e3ha2_test_key_off_fc.d, i32 noundef 3) #7
  %43 = tail call i32 @llvm.smin.i32(i32 %call1.i.i72.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i72.i)
  %cmp32.i = icmp slt i32 %call1.i.i72.i, 0
  br i1 %cmp32.i, label %do.body30.i.s6e3ha2_panel_init.exit_crit_edge, label %do.body37.i

do.body30.i.s6e3ha2_panel_init.exit_crit_edge:    ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s6e3ha2_panel_init.exit

do.body37.i:                                      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i73.i = getelementptr i8, ptr %45, i32 -8
  %call1.i.i74.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i73.i, ptr noundef nonnull @s6e3ha2_test_key_off_f0.d, i32 noundef 3) #7
  %46 = tail call i32 @llvm.smin.i32(i32 %call1.i.i74.i, i32 0) #7
  br label %s6e3ha2_panel_init.exit

s6e3ha2_panel_init.exit:                          ; preds = %do.body37.i, %do.body30.i.s6e3ha2_panel_init.exit_crit_edge, %do.body16.i.s6e3ha2_panel_init.exit_crit_edge, %s6e3ha2_single_dsi_set.exit.i.s6e3ha2_panel_init.exit_crit_edge, %do.end.i.s6e3ha2_panel_init.exit_crit_edge
  %retval.0.i14 = phi i32 [ %12, %do.end.i.s6e3ha2_panel_init.exit_crit_edge ], [ %17, %s6e3ha2_single_dsi_set.exit.i.s6e3ha2_panel_init.exit_crit_edge ], [ %20, %do.body16.i.s6e3ha2_panel_init.exit_crit_edge ], [ %43, %do.body30.i.s6e3ha2_panel_init.exit_crit_edge ], [ %46, %do.body37.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i14)
  %cmp2 = icmp slt i32 %retval.0.i14, 0
  br i1 %cmp2, label %s6e3ha2_panel_init.exit.err_crit_edge, label %if.end4

s6e3ha2_panel_init.exit.err_crit_edge:            ; preds = %s6e3ha2_panel_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end4:                                          ; preds = %s6e3ha2_panel_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %47 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %power, align 8
  br label %cleanup

err:                                              ; preds = %s6e3ha2_panel_init.exit.err_crit_edge, %do.body58.i.i.err_crit_edge, %do.body48.i.i.err_crit_edge, %do.body34.i.i.err_crit_edge, %do.body24.i.i.err_crit_edge, %do.body14.i.i.err_crit_edge, %do.body3.i.i.err_crit_edge, %do.body23.i.err_crit_edge, %do.body9.i.err_crit_edge, %if.end.err_crit_edge
  %retval.0.i1421 = phi i32 [ %retval.0.i14, %s6e3ha2_panel_init.exit.err_crit_edge ], [ %call1.i.i69.i, %do.body23.i.err_crit_edge ], [ %call1.i97.i.i, %do.body3.i.i.err_crit_edge ], [ %call1.i99.i.i, %do.body14.i.i.err_crit_edge ], [ %call1.i101.i.i, %do.body24.i.i.err_crit_edge ], [ %call1.i103.i.i, %do.body34.i.i.err_crit_edge ], [ %call1.i105.i.i, %do.body48.i.i.err_crit_edge ], [ %call1.i107.i.i, %do.body58.i.i.err_crit_edge ], [ %call1.i.i65.i, %do.body9.i.err_crit_edge ], [ %call1.i, %if.end.err_crit_edge ]
  %call.i16 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i1421, %err ], [ 0, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call1 = tail call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %add.ptr.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -8
  %call1.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @s6e3ha2_test_key_on_f0.d, i32 noundef 3) #7
  %4 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp4 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp4, label %do.body2.cleanup_crit_edge, label %do.body9

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9:                                         ; preds = %do.body2
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i217 = getelementptr i8, ptr %6, i32 -8
  %call1.i.i218 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i217, ptr noundef nonnull @s6e3ha2_test_key_on_fc.d, i32 noundef 3) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %call1.i.i218, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i218)
  %cmp11 = icmp slt i32 %call1.i.i218, 0
  br i1 %cmp11, label %do.body9.cleanup_crit_edge, label %do.body16

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %do.body9
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i219 = getelementptr i8, ptr %9, i32 -8
  %call1.i.i220 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i219, ptr noundef nonnull @s6e3ha2_touch_hsync_on1.d, i32 noundef 7) #7
  %10 = tail call i32 @llvm.smin.i32(i32 %call1.i.i220, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i220)
  %cmp18 = icmp slt i32 %call1.i.i220, 0
  br i1 %cmp18, label %do.body16.cleanup_crit_edge, label %do.body23

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body23:                                        ; preds = %do.body16
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i221 = getelementptr i8, ptr %12, i32 -8
  %call1.i.i222 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i221, ptr noundef nonnull @s6e3ha2_pentile_control.d, i32 noundef 5) #7
  %13 = tail call i32 @llvm.smin.i32(i32 %call1.i.i222, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i222)
  %cmp25 = icmp slt i32 %call1.i.i222, 0
  br i1 %cmp25, label %do.body23.cleanup_crit_edge, label %do.body30

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body30:                                        ; preds = %do.body23
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i223 = getelementptr i8, ptr %15, i32 -8
  %call1.i.i224 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i223, ptr noundef nonnull @s6e3ha2_poc_global.d, i32 noundef 2) #7
  %16 = tail call i32 @llvm.smin.i32(i32 %call1.i.i224, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i224)
  %cmp32 = icmp slt i32 %call1.i.i224, 0
  br i1 %cmp32, label %do.body30.cleanup_crit_edge, label %do.body37

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body37:                                        ; preds = %do.body30
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i225 = getelementptr i8, ptr %18, i32 -8
  %call1.i.i226 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i225, ptr noundef nonnull @s6e3ha2_poc_setting.d, i32 noundef 2) #7
  %19 = tail call i32 @llvm.smin.i32(i32 %call1.i.i226, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i226)
  %cmp39 = icmp slt i32 %call1.i.i226, 0
  br i1 %cmp39, label %do.body37.cleanup_crit_edge, label %do.body44

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body44:                                        ; preds = %do.body37
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i227 = getelementptr i8, ptr %21, i32 -8
  %call1.i.i228 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i227, ptr noundef nonnull @s6e3ha2_test_key_off_fc.d, i32 noundef 3) #7
  %22 = tail call i32 @llvm.smin.i32(i32 %call1.i.i228, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i228)
  %cmp46 = icmp slt i32 %call1.i.i228, 0
  br i1 %cmp46, label %do.body44.cleanup_crit_edge, label %do.body51

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body51:                                        ; preds = %do.body44
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i229 = getelementptr i8, ptr %24, i32 -8
  %call1.i.i230 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i229, ptr noundef nonnull @s6e3ha2_pcd_set_off.d, i32 noundef 3) #7
  %25 = tail call i32 @llvm.smin.i32(i32 %call1.i.i230, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i230)
  %cmp53 = icmp slt i32 %call1.i.i230, 0
  br i1 %cmp53, label %do.body51.cleanup_crit_edge, label %do.body58

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body58:                                        ; preds = %do.body51
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i231 = getelementptr i8, ptr %27, i32 -8
  %call1.i.i232 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i231, ptr noundef nonnull @s6e3ha2_err_fg_set.d, i32 noundef 2) #7
  %28 = tail call i32 @llvm.smin.i32(i32 %call1.i.i232, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i232)
  %cmp60 = icmp slt i32 %call1.i.i232, 0
  br i1 %cmp60, label %do.body58.cleanup_crit_edge, label %do.body65

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body65:                                        ; preds = %do.body58
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i233 = getelementptr i8, ptr %30, i32 -8
  %call1.i.i234 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i233, ptr noundef nonnull @s6e3ha2_te_start_setting.d, i32 noundef 6) #7
  %31 = tail call i32 @llvm.smin.i32(i32 %call1.i.i234, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i234)
  %cmp67 = icmp slt i32 %call1.i.i234, 0
  br i1 %cmp67, label %do.body65.cleanup_crit_edge, label %do.body72

do.body65.cleanup_crit_edge:                      ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body72:                                        ; preds = %do.body65
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %32 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bl_dev, align 4
  %call73 = tail call i32 @s6e3ha2_set_brightness(ptr noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.body72.cleanup_crit_edge, label %do.body79

do.body72.cleanup_crit_edge:                      ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body79:                                        ; preds = %do.body72
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i235 = getelementptr i8, ptr %35, i32 -8
  %call1.i.i236 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i235, ptr noundef nonnull @s6e3ha2_aor_control.d, i32 noundef 3) #7
  %36 = tail call i32 @llvm.smin.i32(i32 %call1.i.i236, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i236)
  %cmp81 = icmp slt i32 %call1.i.i236, 0
  br i1 %cmp81, label %do.body79.cleanup_crit_edge, label %do.body86

do.body79.cleanup_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body86:                                        ; preds = %do.body79
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i237 = getelementptr i8, ptr %38, i32 -8
  %call1.i.i238 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i237, ptr noundef nonnull @s6e3ha2_caps_elvss_set.d, i32 noundef 3) #7
  %39 = tail call i32 @llvm.smin.i32(i32 %call1.i.i238, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i238)
  %cmp88 = icmp slt i32 %call1.i.i238, 0
  br i1 %cmp88, label %do.body86.cleanup_crit_edge, label %do.body93

do.body86.cleanup_crit_edge:                      ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body93:                                        ; preds = %do.body86
  %call94 = tail call fastcc i32 @s6e3ha2_gamma_update(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.body93.cleanup_crit_edge, label %do.body100

do.body93.cleanup_crit_edge:                      ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body100:                                       ; preds = %do.body93
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i239 = getelementptr i8, ptr %41, i32 -8
  %call1.i.i240 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i239, ptr noundef nonnull @s6e3ha2_acl_off.d, i32 noundef 2) #7
  %42 = tail call i32 @llvm.smin.i32(i32 %call1.i.i240, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i240)
  %cmp102 = icmp slt i32 %call1.i.i240, 0
  br i1 %cmp102, label %do.body100.cleanup_crit_edge, label %do.body107

do.body100.cleanup_crit_edge:                     ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body107:                                       ; preds = %do.body100
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i241 = getelementptr i8, ptr %44, i32 -8
  %call1.i.i242 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i241, ptr noundef nonnull @s6e3ha2_acl_off_opr.d, i32 noundef 2) #7
  %45 = tail call i32 @llvm.smin.i32(i32 %call1.i.i242, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i242)
  %cmp109 = icmp slt i32 %call1.i.i242, 0
  br i1 %cmp109, label %do.body107.cleanup_crit_edge, label %do.body114

do.body107.cleanup_crit_edge:                     ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body114:                                       ; preds = %do.body107
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i243 = getelementptr i8, ptr %47, i32 -8
  %call1.i.i244 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i243, ptr noundef nonnull @s6e3ha2_hbm_off.d, i32 noundef 2) #7
  %48 = tail call i32 @llvm.smin.i32(i32 %call1.i.i244, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i244)
  %cmp116 = icmp slt i32 %call1.i.i244, 0
  br i1 %cmp116, label %do.body114.cleanup_crit_edge, label %do.body121

do.body114.cleanup_crit_edge:                     ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body121:                                       ; preds = %do.body114
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i245 = getelementptr i8, ptr %50, i32 -8
  %call1.i.i246 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i245, ptr noundef nonnull @s6e3ha2_test_global.d, i32 noundef 2) #7
  %51 = tail call i32 @llvm.smin.i32(i32 %call1.i.i246, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i246)
  %cmp123 = icmp slt i32 %call1.i.i246, 0
  br i1 %cmp123, label %do.body121.cleanup_crit_edge, label %do.body128

do.body121.cleanup_crit_edge:                     ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body128:                                       ; preds = %do.body121
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i247 = getelementptr i8, ptr %53, i32 -8
  %call1.i.i248 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i247, ptr noundef nonnull @s6e3ha2_test.d, i32 noundef 2) #7
  %54 = tail call i32 @llvm.smin.i32(i32 %call1.i.i248, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i248)
  %cmp130 = icmp slt i32 %call1.i.i248, 0
  br i1 %cmp130, label %do.body128.cleanup_crit_edge, label %do.body135

do.body128.cleanup_crit_edge:                     ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body135:                                       ; preds = %do.body128
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i.i249 = getelementptr i8, ptr %56, i32 -8
  %call1.i.i250 = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i249, ptr noundef nonnull @s6e3ha2_test_key_off_f0.d, i32 noundef 3) #7
  %57 = tail call i32 @llvm.smin.i32(i32 %call1.i.i250, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i250)
  %cmp137 = icmp slt i32 %call1.i.i250, 0
  br i1 %cmp137, label %do.body135.cleanup_crit_edge, label %do.body142

do.body135.cleanup_crit_edge:                     ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body142:                                       ; preds = %do.body135
  %call143 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %do.body142.cleanup_crit_edge, label %do.end148

do.body142.cleanup_crit_edge:                     ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end148:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %power, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end148, %do.body142.cleanup_crit_edge, %do.body135.cleanup_crit_edge, %do.body128.cleanup_crit_edge, %do.body121.cleanup_crit_edge, %do.body114.cleanup_crit_edge, %do.body107.cleanup_crit_edge, %do.body100.cleanup_crit_edge, %do.body93.cleanup_crit_edge, %do.body86.cleanup_crit_edge, %do.body79.cleanup_crit_edge, %do.body72.cleanup_crit_edge, %do.body65.cleanup_crit_edge, %do.body58.cleanup_crit_edge, %do.body51.cleanup_crit_edge, %do.body44.cleanup_crit_edge, %do.body37.cleanup_crit_edge, %do.body30.cleanup_crit_edge, %do.body23.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %do.body9.cleanup_crit_edge, %do.body2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end148 ], [ %call1, %entry.cleanup_crit_edge ], [ %4, %do.body2.cleanup_crit_edge ], [ %7, %do.body9.cleanup_crit_edge ], [ %10, %do.body16.cleanup_crit_edge ], [ %13, %do.body23.cleanup_crit_edge ], [ %16, %do.body30.cleanup_crit_edge ], [ %19, %do.body37.cleanup_crit_edge ], [ %22, %do.body44.cleanup_crit_edge ], [ %25, %do.body51.cleanup_crit_edge ], [ %28, %do.body58.cleanup_crit_edge ], [ %31, %do.body65.cleanup_crit_edge ], [ %call73, %do.body72.cleanup_crit_edge ], [ %36, %do.body79.cleanup_crit_edge ], [ %39, %do.body86.cleanup_crit_edge ], [ %call94, %do.body93.cleanup_crit_edge ], [ %42, %do.body100.cleanup_crit_edge ], [ %45, %do.body107.cleanup_crit_edge ], [ %48, %do.body114.cleanup_crit_edge ], [ %51, %do.body121.cleanup_crit_edge ], [ %54, %do.body128.cleanup_crit_edge ], [ %57, %do.body135.cleanup_crit_edge ], [ %call143, %do.body142.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call1 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call3 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.body2.cleanup_crit_edge, label %do.end8

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 40) #7
  %bl_dev = getelementptr i8, ptr %panel, i32 24
  %2 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %power, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %do.body2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %do.body2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies.i = getelementptr i8, ptr %panel, i32 28
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6e3ha2_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %desc = getelementptr i8, ptr %panel, i32 60
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %5) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %13 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdisplay, align 2
  %conv7 = zext i16 %15 to i32
  %call10 = tail call i32 @drm_mode_vrefresh(ptr noundef %11) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %conv7, i32 noundef %call10) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #7
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #7
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %17 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 71, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 125, ptr %height_mm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_panel_samsung_s6e3ha2__302_776_s6e3ha2_driver_init6, !1, !"__initcall__kmod_panel_samsung_s6e3ha2__302_776_s6e3ha2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 776, i32 1}
!2 = !{ptr @__exitcall_s6e3ha2_driver_exit, !1, !"__exitcall_s6e3ha2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 778, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 779, i32 1}
!7 = !{ptr @__UNIQUE_ID_author305, !8, !"__UNIQUE_ID_author305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 780, i32 1}
!9 = !{ptr @__UNIQUE_ID_description306, !10, !"__UNIQUE_ID_description306", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 781, i32 1}
!11 = !{ptr @__UNIQUE_ID_file307, !12, !"__UNIQUE_ID_file307", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 782, i32 1}
!13 = !{ptr @__UNIQUE_ID_license308, !12, !"__UNIQUE_ID_license308", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 772, i32 11}
!16 = !{ptr @s6e3ha2_driver, !17, !"s6e3ha2_driver", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 768, i32 31}
!18 = !{ptr @s6e3ha2_of_match, !19, !"s6e3ha2_of_match", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 761, i32 34}
!20 = !{ptr @samsung_s6e3ha2, !21, !"samsung_s6e3ha2", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 622, i32 40}
!22 = !{ptr @s6e3ha2_mode, !23, !"s6e3ha2_mode", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 609, i32 38}
!24 = !{ptr @samsung_s6e3hf2, !25, !"samsung_s6e3hf2", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 640, i32 40}
!26 = !{ptr @s6e3hf2_mode, !27, !"s6e3hf2_mode", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 627, i32 38}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 697, i32 28}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 698, i32 28}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 703, i32 3}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @s6e3ha2_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @s6e3ha2_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 707, i32 40}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 709, i32 3}
!44 = !{ptr @s6e3ha2_probe._entry.9, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @s6e3ha2_probe._entry_ptr.11, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 714, i32 41}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 716, i32 3}
!50 = !{ptr @s6e3ha2_probe._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @s6e3ha2_probe._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 721, i32 42}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 724, i32 3}
!56 = !{ptr @s6e3ha2_probe._entry.17, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @s6e3ha2_probe._entry_ptr.19, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @s6e3ha2_bl_ops, !59, !"s6e3ha2_bl_ops", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 473, i32 35}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 457, i32 3}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @s6e3ha2_set_brightness._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @s6e3ha2_set_brightness._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @s6e3ha2_test_key_on_f0.d, !66, !"d", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 267, i32 2}
!67 = !{ptr @gamma_tbl, !68, !"gamma_tbl", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 30, i32 17}
!69 = !{ptr @s6e3ha2_gamma_update.d, !70, !"d", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 404, i32 2}
!71 = !{ptr @s6e3ha2_gamma_update.d.22, !72, !"d", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 406, i32 2}
!73 = !{ptr @s6e3ha2_aor_control.d, !74, !"d", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 319, i32 2}
!75 = !{ptr @vint_table, !76, !"vint_table", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 217, i32 28}
!77 = !{ptr @s6e3ha2_test_key_off_f0.d, !78, !"d", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 273, i32 2}
!79 = !{ptr @s6e3ha2_drm_funcs, !80, !"s6e3ha2_drm_funcs", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 670, i32 37}
!81 = !{ptr @s6e3ha2_single_dsi_set.d, !82, !"d", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 291, i32 2}
!83 = !{ptr @s6e3ha2_single_dsi_set.d.23, !84, !"d", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 292, i32 2}
!85 = !{ptr @s6e3ha2_test_key_on_fc.d, !86, !"d", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 279, i32 2}
!87 = !{ptr @s6e3ha2_freq_calibration.d, !88, !"d", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 298, i32 2}
!89 = !{ptr @s6e3ha2_freq_calibration.d.24, !90, !"d", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 300, i32 3}
!91 = !{ptr @s6e3ha2_freq_calibration.d.25, !92, !"d", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 301, i32 2}
!93 = !{ptr @s6e3ha2_freq_calibration.d.26, !94, !"d", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 302, i32 2}
!95 = !{ptr @s6e3ha2_freq_calibration.d.27, !96, !"d", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 303, i32 2}
!97 = !{ptr @s6e3ha2_freq_calibration.d.28, !98, !"d", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 306, i32 3}
!99 = !{ptr @s6e3ha2_freq_calibration.d.29, !100, !"d", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 310, i32 3}
!101 = !{ptr @s6e3ha2_test_key_off_fc.d, !102, !"d", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 285, i32 2}
!103 = !{ptr @s6e3ha2_touch_hsync_on1.d, !104, !"d", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 355, i32 2}
!105 = !{ptr @s6e3ha2_pentile_control.d, !106, !"d", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 362, i32 2}
!107 = !{ptr @s6e3ha2_poc_global.d, !108, !"d", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 368, i32 2}
!109 = !{ptr @s6e3ha2_poc_setting.d, !110, !"d", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 374, i32 2}
!111 = !{ptr @s6e3ha2_pcd_set_off.d, !112, !"d", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 380, i32 2}
!113 = !{ptr @s6e3ha2_err_fg_set.d, !114, !"d", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 386, i32 2}
!115 = !{ptr @s6e3ha2_te_start_setting.d, !116, !"d", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 398, i32 2}
!117 = !{ptr @s6e3ha2_caps_elvss_set.d, !118, !"d", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 325, i32 2}
!119 = !{ptr @s6e3ha2_acl_off.d, !120, !"d", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 331, i32 2}
!121 = !{ptr @s6e3ha2_acl_off_opr.d, !122, !"d", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 337, i32 2}
!123 = !{ptr @s6e3ha2_hbm_off.d, !124, !"d", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 392, i32 2}
!125 = !{ptr @s6e3ha2_test_global.d, !126, !"d", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 343, i32 2}
!127 = !{ptr @s6e3ha2_test.d, !128, !"d", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 349, i32 2}
!129 = !{ptr @.str.30, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c", i32 653, i32 3}
!131 = !{ptr @.str.31, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @s6e3ha2_get_modes._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @s6e3ha2_get_modes._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
