; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-raydium-rm67191.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-raydium-rm67191.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cmd_set_entry = type { i8, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rad_panel = type { %struct.drm_panel, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_raydium_rm67191__307_656_rad_panel_driver_init6 = internal global ptr @rad_panel_driver_init, section ".initcall6.init", align 4
@rad_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rad_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rad_panel_probe, ptr @rad_panel_remove, ptr @rad_panel_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_rad_panel_driver_exit = internal global ptr @rad_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [67 x i8] c"panel_raydium_rm67191.author=Robert Chiras <robert.chiras@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [80 x i8] c"panel_raydium_rm67191.description=DRM Driver for Raydium RM67191 MIPI DSI panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [71 x i8] c"panel_raydium_rm67191.file=drivers/gpu/drm/panel/panel-raydium-rm67191\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [37 x i8] c"panel_raydium_rm67191.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-raydium-rm67191\00", [42 x i8] zeroinitializer }, align 32
@rad_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raydium,rm67191\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video-mode\00", [21 x i8] zeroinitializer }, align 32
@rad_panel_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid video mode %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rad_panel_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-raydium-rm67191.c\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rad_panel_probe._entry_ptr = internal global ptr @rad_panel_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi-lanes\00", [22 x i8] zeroinitializer }, align 32
@rad_panel_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 579, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get dsi-lanes property (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rad_panel_probe._entry_ptr.11 = internal global ptr @rad_panel_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@rad_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @rad_bl_update_status, ptr @rad_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@rad_panel_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 597, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register backlight (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@rad_panel_probe._entry_ptr.15 = internal global ptr @rad_panel_probe._entry.13, section ".printk_index", align 4
@rad_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @rad_panel_prepare, ptr @rad_panel_enable, ptr @rad_panel_disable, ptr @rad_panel_unprepare, ptr @rad_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@rad_supply_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.17], [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v3p3\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v1p8\00", [27 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 331, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to send MCS (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rad_panel_enable\00", [47 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry_ptr = internal global ptr @rad_panel_enable._entry, section ".printk_index", align 4
@rad_panel_enable._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 343, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to do Software Reset (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry_ptr.22 = internal global ptr @rad_panel_enable._entry.20, section ".printk_index", align 4
@rad_panel_enable._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 352, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set DSI mode (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry_ptr.25 = internal global ptr @rad_panel_enable._entry.23, section ".printk_index", align 4
@rad_panel_enable._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.4, i32 358, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set tear ON (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry_ptr.28 = internal global ptr @rad_panel_enable._entry.26, section ".printk_index", align 4
@rad_panel_enable._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 364, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set tear scanline (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry_ptr.31 = internal global ptr @rad_panel_enable._entry.29, section ".printk_index", align 4
@rad_panel_enable.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.19, ptr @.str.4, ptr @.str.33, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel_raydium_rm67191\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Interface color format set to 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.19, ptr @.str.4, i32 371, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set pixel format (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry_ptr.36 = internal global ptr @rad_panel_enable._entry.34, section ".printk_index", align 4
@rad_panel_enable._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.19, ptr @.str.4, i32 377, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to exit sleep mode (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry_ptr.39 = internal global ptr @rad_panel_enable._entry.37, section ".printk_index", align 4
@rad_panel_enable._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.19, ptr @.str.4, i32 385, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set display ON (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@rad_panel_enable._entry_ptr.42 = internal global ptr @rad_panel_enable._entry.40, section ".printk_index", align 4
@manufacturer_cmd_set = internal constant { [143 x %struct.cmd_set_entry], [66 x i8] } { [143 x %struct.cmd_set_entry] [%struct.cmd_set_entry { i8 -2, i8 11 }, %struct.cmd_set_entry { i8 40, i8 64 }, %struct.cmd_set_entry { i8 41, i8 79 }, %struct.cmd_set_entry { i8 -2, i8 14 }, %struct.cmd_set_entry { i8 75, i8 0 }, %struct.cmd_set_entry { i8 76, i8 15 }, %struct.cmd_set_entry { i8 77, i8 32 }, %struct.cmd_set_entry { i8 78, i8 64 }, %struct.cmd_set_entry { i8 79, i8 96 }, %struct.cmd_set_entry { i8 80, i8 -96 }, %struct.cmd_set_entry { i8 81, i8 -64 }, %struct.cmd_set_entry { i8 82, i8 -32 }, %struct.cmd_set_entry { i8 83, i8 -1 }, %struct.cmd_set_entry { i8 -2, i8 13 }, %struct.cmd_set_entry { i8 24, i8 8 }, %struct.cmd_set_entry { i8 66, i8 0 }, %struct.cmd_set_entry { i8 8, i8 65 }, %struct.cmd_set_entry { i8 70, i8 2 }, %struct.cmd_set_entry { i8 114, i8 9 }, %struct.cmd_set_entry { i8 -2, i8 10 }, %struct.cmd_set_entry { i8 36, i8 23 }, %struct.cmd_set_entry { i8 4, i8 7 }, %struct.cmd_set_entry { i8 26, i8 12 }, %struct.cmd_set_entry { i8 15, i8 68 }, %struct.cmd_set_entry { i8 -2, i8 4 }, %struct.cmd_set_entry { i8 0, i8 12 }, %struct.cmd_set_entry { i8 5, i8 8 }, %struct.cmd_set_entry { i8 6, i8 8 }, %struct.cmd_set_entry { i8 8, i8 8 }, %struct.cmd_set_entry { i8 9, i8 8 }, %struct.cmd_set_entry { i8 10, i8 -26 }, %struct.cmd_set_entry { i8 11, i8 -116 }, %struct.cmd_set_entry { i8 26, i8 18 }, %struct.cmd_set_entry { i8 30, i8 -32 }, %struct.cmd_set_entry { i8 41, i8 -109 }, %struct.cmd_set_entry { i8 42, i8 -109 }, %struct.cmd_set_entry { i8 47, i8 2 }, %struct.cmd_set_entry { i8 49, i8 2 }, %struct.cmd_set_entry { i8 51, i8 5 }, %struct.cmd_set_entry { i8 55, i8 45 }, %struct.cmd_set_entry { i8 56, i8 45 }, %struct.cmd_set_entry { i8 58, i8 30 }, %struct.cmd_set_entry { i8 59, i8 30 }, %struct.cmd_set_entry { i8 61, i8 39 }, %struct.cmd_set_entry { i8 63, i8 -128 }, %struct.cmd_set_entry { i8 64, i8 64 }, %struct.cmd_set_entry { i8 65, i8 -32 }, %struct.cmd_set_entry { i8 79, i8 47 }, %struct.cmd_set_entry { i8 80, i8 30 }, %struct.cmd_set_entry { i8 -2, i8 6 }, %struct.cmd_set_entry { i8 0, i8 -52 }, %struct.cmd_set_entry { i8 5, i8 5 }, %struct.cmd_set_entry { i8 7, i8 -94 }, %struct.cmd_set_entry { i8 8, i8 -52 }, %struct.cmd_set_entry { i8 13, i8 3 }, %struct.cmd_set_entry { i8 15, i8 -94 }, %struct.cmd_set_entry { i8 50, i8 -52 }, %struct.cmd_set_entry { i8 55, i8 5 }, %struct.cmd_set_entry { i8 57, i8 -125 }, %struct.cmd_set_entry { i8 58, i8 -52 }, %struct.cmd_set_entry { i8 65, i8 4 }, %struct.cmd_set_entry { i8 67, i8 -125 }, %struct.cmd_set_entry { i8 68, i8 -52 }, %struct.cmd_set_entry { i8 73, i8 5 }, %struct.cmd_set_entry { i8 75, i8 -94 }, %struct.cmd_set_entry { i8 76, i8 -52 }, %struct.cmd_set_entry { i8 81, i8 3 }, %struct.cmd_set_entry { i8 83, i8 -94 }, %struct.cmd_set_entry { i8 117, i8 -52 }, %struct.cmd_set_entry { i8 122, i8 3 }, %struct.cmd_set_entry { i8 124, i8 -125 }, %struct.cmd_set_entry { i8 125, i8 -52 }, %struct.cmd_set_entry { i8 -126, i8 2 }, %struct.cmd_set_entry { i8 -124, i8 -125 }, %struct.cmd_set_entry { i8 -123, i8 -20 }, %struct.cmd_set_entry { i8 -122, i8 15 }, %struct.cmd_set_entry { i8 -121, i8 -1 }, %struct.cmd_set_entry { i8 -120, i8 0 }, %struct.cmd_set_entry { i8 -118, i8 2 }, %struct.cmd_set_entry { i8 -116, i8 -94 }, %struct.cmd_set_entry { i8 -115, i8 -22 }, %struct.cmd_set_entry { i8 -114, i8 1 }, %struct.cmd_set_entry { i8 -113, i8 -24 }, %struct.cmd_set_entry { i8 -2, i8 6 }, %struct.cmd_set_entry { i8 -112, i8 10 }, %struct.cmd_set_entry { i8 -110, i8 6 }, %struct.cmd_set_entry { i8 -109, i8 -96 }, %struct.cmd_set_entry { i8 -108, i8 -88 }, %struct.cmd_set_entry { i8 -107, i8 -20 }, %struct.cmd_set_entry { i8 -106, i8 15 }, %struct.cmd_set_entry { i8 -105, i8 -1 }, %struct.cmd_set_entry { i8 -104, i8 0 }, %struct.cmd_set_entry { i8 -102, i8 2 }, %struct.cmd_set_entry { i8 -100, i8 -94 }, %struct.cmd_set_entry { i8 -84, i8 4 }, %struct.cmd_set_entry { i8 -2, i8 6 }, %struct.cmd_set_entry { i8 -79, i8 18 }, %struct.cmd_set_entry { i8 -78, i8 23 }, %struct.cmd_set_entry { i8 -77, i8 23 }, %struct.cmd_set_entry { i8 -76, i8 23 }, %struct.cmd_set_entry { i8 -75, i8 23 }, %struct.cmd_set_entry { i8 -74, i8 17 }, %struct.cmd_set_entry { i8 -73, i8 8 }, %struct.cmd_set_entry { i8 -72, i8 9 }, %struct.cmd_set_entry { i8 -71, i8 6 }, %struct.cmd_set_entry { i8 -70, i8 7 }, %struct.cmd_set_entry { i8 -69, i8 23 }, %struct.cmd_set_entry { i8 -68, i8 23 }, %struct.cmd_set_entry { i8 -67, i8 23 }, %struct.cmd_set_entry { i8 -66, i8 23 }, %struct.cmd_set_entry { i8 -65, i8 23 }, %struct.cmd_set_entry { i8 -64, i8 23 }, %struct.cmd_set_entry { i8 -63, i8 23 }, %struct.cmd_set_entry { i8 -62, i8 23 }, %struct.cmd_set_entry { i8 -61, i8 23 }, %struct.cmd_set_entry { i8 -60, i8 15 }, %struct.cmd_set_entry { i8 -59, i8 14 }, %struct.cmd_set_entry { i8 -58, i8 0 }, %struct.cmd_set_entry { i8 -57, i8 1 }, %struct.cmd_set_entry { i8 -56, i8 16 }, %struct.cmd_set_entry { i8 -2, i8 6 }, %struct.cmd_set_entry { i8 -107, i8 -20 }, %struct.cmd_set_entry { i8 -115, i8 -18 }, %struct.cmd_set_entry { i8 68, i8 -20 }, %struct.cmd_set_entry { i8 76, i8 -20 }, %struct.cmd_set_entry { i8 50, i8 -20 }, %struct.cmd_set_entry { i8 58, i8 -20 }, %struct.cmd_set_entry { i8 125, i8 -20 }, %struct.cmd_set_entry { i8 117, i8 -20 }, %struct.cmd_set_entry { i8 0, i8 -20 }, %struct.cmd_set_entry { i8 8, i8 -20 }, %struct.cmd_set_entry { i8 -123, i8 -20 }, %struct.cmd_set_entry { i8 -90, i8 33 }, %struct.cmd_set_entry { i8 -89, i8 5 }, %struct.cmd_set_entry { i8 -87, i8 6 }, %struct.cmd_set_entry { i8 -126, i8 6 }, %struct.cmd_set_entry { i8 65, i8 6 }, %struct.cmd_set_entry { i8 122, i8 7 }, %struct.cmd_set_entry { i8 55, i8 7 }, %struct.cmd_set_entry { i8 5, i8 6 }, %struct.cmd_set_entry { i8 73, i8 6 }, %struct.cmd_set_entry { i8 13, i8 4 }, %struct.cmd_set_entry { i8 81, i8 4 }], [66 x i8] zeroinitializer }, align 32
@rad_panel_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 419, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set display OFF (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rad_panel_disable\00", [46 x i8] zeroinitializer }, align 32
@rad_panel_disable._entry_ptr = internal global ptr @rad_panel_disable._entry, section ".printk_index", align 4
@rad_panel_disable._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 427, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enter sleep mode (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@rad_panel_disable._entry_ptr.47 = internal global ptr @rad_panel_disable._entry.45, section ".printk_index", align 4
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 132000, i16 1080, i16 1100, i16 1102, i16 1136, i16 0, i16 1920, i16 1930, i16 1932, i16 1936, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 121, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@rad_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 445, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rad_panel_get_modes\00", [44 x i8] zeroinitializer }, align 32
@rad_panel_get_modes._entry_ptr = internal global ptr @rad_panel_get_modes._entry, section ".printk_index", align 4
@rad_bus_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4106, i32 4105, i32 4119], [20 x i8] zeroinitializer }, align 32
@rad_panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 626, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to detach from host (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rad_panel_remove\00", [47 x i8] zeroinitializer }, align 32
@rad_panel_remove._entry_ptr = internal global ptr @rad_panel_remove._entry, section ".printk_index", align 4
@switch.table.rad_panel_enable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 119, i32 102, i32 102, i32 85], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"rad_panel_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 647, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 649, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"rad_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 641, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 557, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 572, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 577, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 579, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 583, i32 46 }
@___asan_gen_.97 = private unnamed_addr constant [11 x i8] c"rad_bl_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 502, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 597, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"rad_panel_funcs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 507, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"rad_supply_names\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 515, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 516, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 517, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 331, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 343, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 352, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 358, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 364, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 369, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 371, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 377, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 385, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"manufacturer_cmd_set\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 41, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 419, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 427, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 210, i32 38 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 443, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"rad_bus_formats\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 187, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-raydium-rm67191.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 626, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [30 x i8] c"switch.table.rad_panel_enable\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_rad_panel_driver_exit, ptr @__initcall__kmod_panel_raydium_rm67191__307_656_rad_panel_driver_init6, ptr @rad_panel_disable._entry, ptr @rad_panel_disable._entry.45, ptr @rad_panel_disable._entry_ptr, ptr @rad_panel_disable._entry_ptr.47, ptr @rad_panel_driver_exit, ptr @rad_panel_enable._entry, ptr @rad_panel_enable._entry.20, ptr @rad_panel_enable._entry.23, ptr @rad_panel_enable._entry.26, ptr @rad_panel_enable._entry.29, ptr @rad_panel_enable._entry.34, ptr @rad_panel_enable._entry.37, ptr @rad_panel_enable._entry.40, ptr @rad_panel_enable._entry_ptr, ptr @rad_panel_enable._entry_ptr.22, ptr @rad_panel_enable._entry_ptr.25, ptr @rad_panel_enable._entry_ptr.28, ptr @rad_panel_enable._entry_ptr.31, ptr @rad_panel_enable._entry_ptr.36, ptr @rad_panel_enable._entry_ptr.39, ptr @rad_panel_enable._entry_ptr.42, ptr @rad_panel_get_modes._entry, ptr @rad_panel_get_modes._entry_ptr, ptr @rad_panel_probe._entry, ptr @rad_panel_probe._entry.13, ptr @rad_panel_probe._entry.8, ptr @rad_panel_probe._entry_ptr, ptr @rad_panel_probe._entry_ptr.11, ptr @rad_panel_probe._entry_ptr.15, ptr @rad_panel_remove._entry, ptr @rad_panel_remove._entry_ptr, ptr @rad_panel_driver, ptr @.str, ptr @rad_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @rad_bl_ops, ptr @.str.14, ptr @rad_panel_funcs, ptr @rad_supply_names, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @manufacturer_cmd_set, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @default_mode, ptr @.str.48, ptr @.str.49, ptr @rad_bus_formats, ptr @.str.50, ptr @.str.51, ptr @switch.table.rad_panel_enable], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_supply_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_enable._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_enable._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_enable._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_enable._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_enable._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_enable._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @manufacturer_cmd_set to i32), i32 286, i32 352, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_disable._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_bus_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rad_panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rad_panel_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @rad_panel_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rad_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @rad_panel_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %bl_props = alloca %struct.backlight_properties, align 4
  %video_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bl_props) #6
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 1
  %3 = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %video_mode) #6
  %4 = ptrtoint ptr %video_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %video_mode, align 4, !annotation !120
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dsi3 = getelementptr inbounds %struct.rad_panel, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dsi3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dsi, ptr %dsi3, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 17, ptr %mode_flags, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %video_mode, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool5.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %9 = ptrtoint ptr %video_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %video_mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %if.then6.if.end11_crit_edge
    i32 2, label %sw.bb8
  ]

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_flags, align 8
  %or = or i32 %13, 2
  store i32 %or, ptr %mode_flags, align 8
  br label %if.end11

sw.bb8:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_flags, align 8
  %or10 = or i32 %15, 4
  store i32 %or10, ptr %mode_flags, align 8
  br label %if.end11

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %10) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end, %sw.bb8, %sw.bb, %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %call.i.i95 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %lanes, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i95)
  %tobool13.not = icmp sgt i32 %call.i.i95, -1
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call.i.i95) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 3) #6
  %reset = getelementptr inbounds %struct.rad_panel, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call19, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %18 = getelementptr inbounds i8, ptr %bl_props, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 20)
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %3, align 4
  %21 = ptrtoint ptr %bl_props to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %bl_props, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 255, ptr %2, align 4
  %init_name.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end25.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.end25.dev_name.exit_crit_edge ]
  %call27 = call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef %retval.0.i, ptr noundef %dev1, ptr noundef %dsi, ptr noundef nonnull @rad_bl_ops, ptr noundef nonnull %bl_props) #6
  %backlight = getelementptr inbounds %struct.rad_panel, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call27, ptr %backlight, align 4
  %cmp.i96 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then30, label %if.end36

if.then30:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call27 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %28) #9
  br label %cleanup

if.end36:                                         ; preds = %dev_name.exit
  %29 = ptrtoint ptr %dsi3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsi3, align 4
  %dev1.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %30, i32 0, i32 1
  %num_supplies.i = getelementptr inbounds %struct.rad_panel, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %num_supplies.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 24, i32 noundef 3520) #6
  %supplies.i = getelementptr inbounds %struct.rad_panel, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i.i, ptr %supplies.i, align 4
  %tobool.not.i97 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i97, label %if.end36.cleanup_crit_edge, label %for.cond.preheader.i

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end36
  %33 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_supplies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp23.not.i = icmp eq i32 %34, 0
  br i1 %cmp23.not.i, label %for.cond.preheader.i.rad_init_regulators.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.rad_init_regulators.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rad_init_regulators.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x ptr], ptr @rad_supply_names, i32 0, i32 %i.024.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %37 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %supplies.i, align 4
  %arrayidx6.i = getelementptr %struct.regulator_bulk_data, ptr %38, i32 %i.024.i
  %39 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %arrayidx6.i, align 4
  %inc.i = add nuw i32 %i.024.i, 1
  %40 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_supplies.i, align 4
  %cmp.i98 = icmp ult i32 %inc.i, %41
  br i1 %cmp.i98, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rad_init_regulators.exit_crit_edge

for.body.i.rad_init_regulators.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rad_init_regulators.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rad_init_regulators.exit:                         ; preds = %for.body.i.rad_init_regulators.exit_crit_edge, %for.cond.preheader.i.rad_init_regulators.exit_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.rad_init_regulators.exit_crit_edge ], [ %41, %for.body.i.rad_init_regulators.exit_crit_edge ]
  %42 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %supplies.i, align 4
  %call9.i = call i32 @devm_regulator_bulk_get(ptr noundef %dev1.i, i32 noundef %.lcssa.i, ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool38.not = icmp eq i32 %call9.i, 0
  br i1 %tobool38.not, label %if.end40, label %rad_init_regulators.exit.cleanup_crit_edge

rad_init_regulators.exit.cleanup_crit_edge:       ; preds = %rad_init_regulators.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %rad_init_regulators.exit
  call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @rad_panel_funcs, i32 noundef 16) #6
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  %call43 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end40.cleanup_crit_edge, label %if.then45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_panel_remove(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end40.cleanup_crit_edge, %rad_init_regulators.exit.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then30, %if.then22, %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i95, %do.end17 ], [ %17, %if.then22 ], [ %28, %if.then30 ], [ -12, %entry.cleanup_crit_edge ], [ %call9.i, %rad_init_regulators.exit.cleanup_crit_edge ], [ %call43, %if.then45 ], [ 0, %if.end40.cleanup_crit_edge ], [ -12, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %video_mode) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bl_props) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_panel_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rad_panel_shutdown(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @rad_panel_disable(ptr noundef %1)
  %prepared.i = getelementptr inbounds %struct.rad_panel, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %prepared.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.rad_panel_unprepare.exit_crit_edge, label %if.end.i

entry.rad_panel_unprepare.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rad_panel_unprepare.exit

if.end.i:                                         ; preds = %entry
  %reset.i = getelementptr inbounds %struct.rad_panel, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 17000, i32 noundef 2) #6
  %6 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %num_supplies.i = getelementptr inbounds %struct.rad_panel, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_supplies.i, align 4
  %supplies.i = getelementptr inbounds %struct.rad_panel, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supplies.i, align 4
  %call6.i = tail call i32 @regulator_bulk_disable(i32 noundef %9, ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.rad_panel_unprepare.exit_crit_edge

if.end5.i.rad_panel_unprepare.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rad_panel_unprepare.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prepared.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %prepared.i, align 4
  br label %rad_panel_unprepare.exit

rad_panel_unprepare.exit:                         ; preds = %if.end9.i, %if.end5.i.rad_panel_unprepare.exit_crit_edge, %entry.rad_panel_unprepare.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i12 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %driver_data.i.i12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i12, align 4
  %prepared = getelementptr inbounds %struct.rad_panel, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prepared, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags, align 8
  %and = and i32 %7, -2049
  store i32 %and, ptr %mode_flags, align 8
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl, align 8
  %conv = trunc i32 %9 to i16
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %1, i16 noundef zeroext %conv) #6
  %10 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_bl_get_brightness(ptr nocapture noundef %bl) #2 align 64 {
entry:
  %brightness = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i15 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %driver_data.i.i15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %brightness) #6
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %brightness, align 2, !annotation !120
  %prepared = getelementptr inbounds %struct.rad_panel, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prepared, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode_flags, align 8
  %and = and i32 %8, -2049
  store i32 %and, ptr %mode_flags, align 8
  %call2 = call i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef %1, ptr noundef nonnull %brightness) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %brightness, align 2
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %bl, align 8
  %12 = and i16 %10, 255
  %and7 = zext i16 %12 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and7, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %brightness) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_panel_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_supplies = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 4
  %4 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supplies, align 4
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef %3, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reset = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 2
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #6
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 18000, i32 noundef 20000, i32 noundef 2) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %10 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_panel_enable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  %buffer.i = alloca [2 x i8], align 1
  %.compoundliteral = alloca [2 x i8], align 1
  %.compoundliteral18 = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 4
  %dev2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %switch.lookup, label %entry.color_format_from_dsi_format.exit_crit_edge

entry.color_format_from_dsi_format.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %color_format_from_dsi_format.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rad_panel_enable, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %color_format_from_dsi_format.exit

color_format_from_dsi_format.exit:                ; preds = %switch.lookup, %entry.color_format_from_dsi_format.exit_crit_edge
  %retval.0.i123 = phi i32 [ %switch.load, %switch.lookup ], [ 119, %entry.color_format_from_dsi_format.exit_crit_edge ]
  %enabled = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 7
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %color_format_from_dsi_format.exit.cleanup_crit_edge

color_format_from_dsi_format.exit.cleanup_crit_edge: ; preds = %color_format_from_dsi_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %color_format_from_dsi_format.exit
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_flags, align 8
  %or = or i32 %9, 2048
  store i32 %or, ptr %mode_flags, align 8
  %10 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.012.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [143 x %struct.cmd_set_entry], ptr @manufacturer_cmd_set, i32 0, i32 %i.012.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #6
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %buffer.i, align 1
  %param.i = getelementptr [143 x %struct.cmd_set_entry], ptr @manufacturer_cmd_set, i32 0, i32 %i.012.i, i32 1
  %14 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %param.i, align 1
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %10, align 1
  %call.i = call i32 @mipi_dsi_generic_write(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #6
  %inc.i = add nuw nsw i32 %i.012.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 143
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %rad_panel_push_cmd_list.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rad_panel_push_cmd_list.exit:                     ; preds = %for.body.i
  br i1 %cmp2.i, label %do.end, label %if.end6

do.end:                                           ; preds = %rad_panel_push_cmd_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18, i32 noundef %call.i) #9
  br label %fail

if.end6:                                          ; preds = %rad_panel_push_cmd_list.exit
  %17 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -2, ptr %.compoundliteral, align 1
  %arrayinit.element = getelementptr inbounds i8, ptr %.compoundliteral, i32 1
  %18 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayinit.element, align 1
  %call7 = call i32 @mipi_dsi_generic_write(ptr noundef %1, ptr noundef nonnull %.compoundliteral, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.fail_crit_edge, label %if.end10

if.end6.fail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @mipi_dsi_dcs_soft_reset(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21, i32 noundef %call11) #9
  br label %fail

if.end17:                                         ; preds = %if.end10
  call void @usleep_range_state(i32 noundef 15000, i32 noundef 17000, i32 noundef 2) #6
  %19 = ptrtoint ptr %.compoundliteral18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -62, ptr %.compoundliteral18, align 1
  %arrayinit.element20 = getelementptr inbounds i8, ptr %.compoundliteral18, i32 1
  %20 = ptrtoint ptr %arrayinit.element20 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 11, ptr %arrayinit.element20, align 1
  %call22 = call i32 @mipi_dsi_generic_write(ptr noundef %1, ptr noundef nonnull %.compoundliteral18, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.24, i32 noundef %call22) #9
  br label %fail

if.end28:                                         ; preds = %if.end17
  %call29 = call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.27, i32 noundef %call29) #9
  br label %fail

if.end35:                                         ; preds = %if.end28
  %call36 = call i32 @mipi_dsi_dcs_set_tear_scanline(ptr noundef %1, i16 noundef zeroext 896) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.30, i32 noundef %call36) #9
  br label %fail

if.end42:                                         ; preds = %if.end35
  %conv = trunc i32 %retval.0.i123 to i8
  %call43 = call i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef %1, i8 noundef zeroext %conv) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rad_panel_enable.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rad_panel_enable, %if.then49)) #6
          to label %do.end52 [label %if.then49], !srcloc !122

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rad_panel_enable.__UNIQUE_ID_ddebug306, ptr noundef %dev2, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i123) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp53 = icmp slt i32 %call43, 0
  br i1 %cmp53, label %do.end58, label %if.end59

do.end58:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.35, i32 noundef %call43) #9
  br label %fail

if.end59:                                         ; preds = %do.end52
  %call60 = call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end66, label %if.end67

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.38, i32 noundef %call60) #9
  br label %fail

if.end67:                                         ; preds = %if.end59
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #6
  %call68 = call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %if.end75

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.41, i32 noundef %call68) #9
  br label %fail

if.end75:                                         ; preds = %if.end67
  %backlight = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 3
  %21 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %backlight, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end75.backlight_enable.exit_crit_edge, label %if.end.i

if.end75.backlight_enable.exit_crit_edge:         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_enable.exit

if.end.i:                                         ; preds = %if.end75
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i, align 4
  %and.i = and i32 %26, -3
  store i32 %and.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %22, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #6
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 %30(ptr noundef nonnull %22) #6
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end.i.backlight_update_status.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i.i) #6
  br label %backlight_enable.exit

backlight_enable.exit:                            ; preds = %backlight_update_status.exit.i, %if.end75.backlight_enable.exit_crit_edge
  %31 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

fail:                                             ; preds = %do.end74, %do.end66, %do.end58, %do.end41, %do.end34, %do.end27, %do.end16, %if.end6.fail_crit_edge, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call7, %if.end6.fail_crit_edge ], [ %call11, %do.end16 ], [ %call22, %do.end27 ], [ %call29, %do.end34 ], [ %call36, %do.end41 ], [ %call43, %do.end58 ], [ %call60, %do.end66 ], [ %call68, %do.end74 ]
  %reset = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 2
  %32 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reset, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %backlight_enable.exit, %color_format_from_dsi_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %backlight_enable.exit ], [ 0, %color_format_from_dsi_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_panel_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi1 = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 4
  %dev2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %enabled = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 7
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_flags, align 8
  %or = or i32 %5, 2048
  store i32 %or, ptr %mode_flags, align 8
  %backlight = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %backlight, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.backlight_disable.exit_crit_edge, label %if.end.i

if.end.backlight_disable.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_disable.exit

if.end.i:                                         ; preds = %if.end
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 4
  %or.i = or i32 %11, 2
  store i32 %or.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #6
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %15(ptr noundef nonnull %7) #6
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #6
  br label %backlight_disable.exit

backlight_disable.exit:                           ; preds = %backlight_update_status.exit.i, %if.end.backlight_disable.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #6
  %call4 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %backlight_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.43, i32 noundef %call4) #9
  br label %cleanup

if.end6:                                          ; preds = %backlight_disable.exit
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #6
  %call7 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.46, i32 noundef %call7) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_panel_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 17000, i32 noundef 2) #6
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %num_supplies = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 5
  %6 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.rad_panel, ptr %panel, i32 0, i32 4
  %8 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supplies, align 4
  %call6 = tail call i32 @regulator_bulk_disable(i32 noundef %7, ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rad_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.48, i32 noundef 1080, i32 noundef 1920, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #6
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 26
  %5 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %width_mm, align 2
  %conv4 = zext i16 %6 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %7 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv4, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 27
  %8 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height_mm, align 4
  %conv6 = zext i16 %9 to i32
  %height_mm8 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %height_mm8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %height_mm8, align 4
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %11 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9, ptr %bus_flags, align 8
  %call11 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull @rad_bus_formats, i32 noundef 3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_scanline(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !106, !108, !109, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_panel_raydium_rm67191__307_656_rad_panel_driver_init6, !1, !"__initcall__kmod_panel_raydium_rm67191__307_656_rad_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 656, i32 1}
!2 = !{ptr @__exitcall_rad_panel_driver_exit, !1, !"__exitcall_rad_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 658, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 659, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 660, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 649, i32 11}
!12 = !{ptr @rad_panel_driver, !13, !"rad_panel_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 647, i32 31}
!14 = !{ptr @rad_of_match, !15, !"rad_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 641, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 557, i32 33}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 572, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rad_panel_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rad_panel_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 577, i32 33}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 579, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rad_panel_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @rad_panel_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 583, i32 46}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 597, i32 3}
!37 = !{ptr @rad_panel_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rad_panel_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @rad_bl_ops, !40, !"rad_bl_ops", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 502, i32 35}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 516, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 517, i32 2}
!45 = !{ptr @rad_supply_names, !46, !"rad_supply_names", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 515, i32 27}
!47 = !{ptr @rad_panel_funcs, !48, !"rad_panel_funcs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 507, i32 37}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 331, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rad_panel_enable._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @rad_panel_enable._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 343, i32 3}
!56 = !{ptr @rad_panel_enable._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rad_panel_enable._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 352, i32 3}
!60 = !{ptr @rad_panel_enable._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rad_panel_enable._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 358, i32 3}
!64 = !{ptr @rad_panel_enable._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rad_panel_enable._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 364, i32 3}
!68 = !{ptr @rad_panel_enable._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rad_panel_enable._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 369, i32 2}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rad_panel_enable.__UNIQUE_ID_ddebug306, !71, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 371, i32 3}
!76 = !{ptr @rad_panel_enable._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @rad_panel_enable._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 377, i32 3}
!80 = !{ptr @rad_panel_enable._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rad_panel_enable._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 385, i32 3}
!84 = !{ptr @rad_panel_enable._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rad_panel_enable._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @manufacturer_cmd_set, !87, !"manufacturer_cmd_set", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 41, i32 35}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 419, i32 3}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rad_panel_disable._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @rad_panel_disable._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 427, i32 3}
!95 = !{ptr @rad_panel_disable._entry.45, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rad_panel_disable._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 443, i32 3}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rad_panel_get_modes._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @rad_panel_get_modes._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @default_mode, !103, !"default_mode", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 210, i32 38}
!104 = !{ptr @rad_bus_formats, !105, !"rad_bus_formats", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 187, i32 18}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm67191.c", i32 626, i32 3}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rad_panel_remove._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @rad_panel_remove._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{i8 0, i8 2}
!122 = !{i64 2148302946, i64 2148302951, i64 2148302964, i64 2148303008, i64 2148303042, i64 2148303063}
