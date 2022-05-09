; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.jdi_fhd_r63452 = type { %struct.drm_panel, ptr, ptr, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_jdi_fhd_r63452__246_319_jdi_fhd_r63452_driver_init6 = internal global ptr @jdi_fhd_r63452_driver_init, section ".initcall6.init", align 4
@jdi_fhd_r63452_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jdi_fhd_r63452_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @jdi_fhd_r63452_probe, ptr @jdi_fhd_r63452_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_jdi_fhd_r63452_driver_exit = internal global ptr @jdi_fhd_r63452_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author247 = internal constant [84 x i8] c"panel_jdi_fhd_r63452.author=Raffaele Tranquillini <raffaele.tranquillini@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [87 x i8] c"panel_jdi_fhd_r63452.description=DRM driver for JDI FHD R63452 DSI panel, command mode\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [69 x i8] c"panel_jdi_fhd_r63452.file=drivers/gpu/drm/panel/panel-jdi-fhd-r63452\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [36 x i8] c"panel_jdi_fhd_r63452.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-jdi-fhd-r63452\00", [43 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jdi,fhd-r63452\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get reset-gpios\0A\00", [37 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @jdi_fhd_r63452_prepare, ptr null, ptr null, ptr @jdi_fhd_r63452_unprepare, ptr @jdi_fhd_r63452_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get backlight\0A\00", [39 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 284, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to attach to DSI host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jdi_fhd_r63452_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_probe._entry_ptr = internal global ptr @jdi_fhd_r63452_probe._entry, section ".printk_index", align 4
@jdi_fhd_r63452_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 183, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize panel: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jdi_fhd_r63452_prepare\00", [41 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_prepare._entry_ptr = internal global ptr @jdi_fhd_r63452_prepare._entry, section ".printk_index", align 4
@jdi_fhd_r63452_on.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\00", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\D6\01", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\ECd\DC\EC;R\00\0B\0B\13\15h\0B\B5", [18 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\03", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 75, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set tear on: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jdi_fhd_r63452_on\00", [46 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry_ptr = internal global ptr @jdi_fhd_r63452_on._entry, section ".printk_index", align 4
@jdi_fhd_r63452_on.d.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.6, i32 83, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set pixel format: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry_ptr.19 = internal global ptr @jdi_fhd_r63452_on._entry.17, section ".printk_index", align 4
@jdi_fhd_r63452_on._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.6, i32 89, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set column address: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry_ptr.22 = internal global ptr @jdi_fhd_r63452_on._entry.20, section ".printk_index", align 4
@jdi_fhd_r63452_on._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.6, i32 95, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set page address: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry_ptr.25 = internal global ptr @jdi_fhd_r63452_on._entry.23, section ".printk_index", align 4
@jdi_fhd_r63452_on._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.15, ptr @.str.6, i32 101, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set tear scanline: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry_ptr.28 = internal global ptr @jdi_fhd_r63452_on._entry.26, section ".printk_index", align 4
@jdi_fhd_r63452_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.15, ptr @.str.6, i32 107, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to set display brightness: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry_ptr.31 = internal global ptr @jdi_fhd_r63452_on._entry.29, section ".printk_index", align 4
@jdi_fhd_r63452_on.d.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S$", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"^\00", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\84\00", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.15, ptr @.str.6, i32 118, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry_ptr.38 = internal global ptr @jdi_fhd_r63452_on._entry.36, section ".printk_index", align 4
@jdi_fhd_r63452_on._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.15, ptr @.str.6, i32 125, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on._entry_ptr.41 = internal global ptr @jdi_fhd_r63452_on._entry.39, section ".printk_index", align 4
@jdi_fhd_r63452_on.d.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\04", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\84\00", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C8\11", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_on.d.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\03", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 203, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to un-initialize panel: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"jdi_fhd_r63452_unprepare\00", [39 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_unprepare._entry_ptr = internal global ptr @jdi_fhd_r63452_unprepare._entry, section ".printk_index", align 4
@jdi_fhd_r63452_off.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\00", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_off.d.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\D6\01", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_off.d.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\ECd\DC\EC;R\00\0B\0B\13\15h\0B\95", [18 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_off.d.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\03", [30 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.6, i32 155, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jdi_fhd_r63452_off\00", [45 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_off._entry_ptr = internal global ptr @jdi_fhd_r63452_off._entry, section ".printk_index", align 4
@jdi_fhd_r63452_off._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.6, i32 162, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_off._entry_ptr.55 = internal global ptr @jdi_fhd_r63452_off._entry.53, section ".printk_index", align 4
@jdi_fhd_r63452_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 145444, i16 1080, i16 1200, i16 1216, i16 1256, i16 0, i16 1920, i16 1924, i16 1926, i16 1930, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 64, i16 114, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.6, i32 298, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"jdi_fhd_r63452_remove\00", [42 x i8] zeroinitializer }, align 32
@jdi_fhd_r63452_remove._entry_ptr = internal global ptr @jdi_fhd_r63452_remove._entry, section ".printk_index", align 4
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"jdi_fhd_r63452_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 311, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 315, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"jdi_fhd_r63452_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 305, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 260, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 263, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"jdi_fhd_r63452_panel_funcs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 244, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 278, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 284, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 183, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 66, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 67, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 68, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 71, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 75, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 79, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 83, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 89, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 95, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 101, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 107, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 111, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 112, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 113, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 114, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 118, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 125, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 130, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 131, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 132, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 133, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 203, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 146, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 147, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 148, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 151, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 155, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 162, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c"jdi_fhd_r63452_mode\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 211, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 298, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_jdi_fhd_r63452_driver_exit, ptr @__initcall__kmod_panel_jdi_fhd_r63452__246_319_jdi_fhd_r63452_driver_init6, ptr @jdi_fhd_r63452_driver_exit, ptr @jdi_fhd_r63452_off._entry, ptr @jdi_fhd_r63452_off._entry.53, ptr @jdi_fhd_r63452_off._entry_ptr, ptr @jdi_fhd_r63452_off._entry_ptr.55, ptr @jdi_fhd_r63452_on._entry, ptr @jdi_fhd_r63452_on._entry.17, ptr @jdi_fhd_r63452_on._entry.20, ptr @jdi_fhd_r63452_on._entry.23, ptr @jdi_fhd_r63452_on._entry.26, ptr @jdi_fhd_r63452_on._entry.29, ptr @jdi_fhd_r63452_on._entry.36, ptr @jdi_fhd_r63452_on._entry.39, ptr @jdi_fhd_r63452_on._entry_ptr, ptr @jdi_fhd_r63452_on._entry_ptr.19, ptr @jdi_fhd_r63452_on._entry_ptr.22, ptr @jdi_fhd_r63452_on._entry_ptr.25, ptr @jdi_fhd_r63452_on._entry_ptr.28, ptr @jdi_fhd_r63452_on._entry_ptr.31, ptr @jdi_fhd_r63452_on._entry_ptr.38, ptr @jdi_fhd_r63452_on._entry_ptr.41, ptr @jdi_fhd_r63452_prepare._entry, ptr @jdi_fhd_r63452_prepare._entry_ptr, ptr @jdi_fhd_r63452_probe._entry, ptr @jdi_fhd_r63452_probe._entry_ptr, ptr @jdi_fhd_r63452_remove._entry, ptr @jdi_fhd_r63452_remove._entry_ptr, ptr @jdi_fhd_r63452_unprepare._entry, ptr @jdi_fhd_r63452_unprepare._entry_ptr, ptr @jdi_fhd_r63452_driver, ptr @.str, ptr @jdi_fhd_r63452_of_match, ptr @.str.1, ptr @.str.2, ptr @jdi_fhd_r63452_panel_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @jdi_fhd_r63452_on.d, ptr @jdi_fhd_r63452_on.d.11, ptr @jdi_fhd_r63452_on.d.12, ptr @jdi_fhd_r63452_on.d.13, ptr @.str.14, ptr @.str.15, ptr @jdi_fhd_r63452_on.d.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @jdi_fhd_r63452_on.d.32, ptr @jdi_fhd_r63452_on.d.33, ptr @jdi_fhd_r63452_on.d.34, ptr @jdi_fhd_r63452_on.d.35, ptr @.str.37, ptr @.str.40, ptr @jdi_fhd_r63452_on.d.42, ptr @jdi_fhd_r63452_on.d.43, ptr @jdi_fhd_r63452_on.d.44, ptr @jdi_fhd_r63452_on.d.45, ptr @.str.46, ptr @.str.47, ptr @jdi_fhd_r63452_off.d, ptr @jdi_fhd_r63452_off.d.48, ptr @jdi_fhd_r63452_off.d.49, ptr @jdi_fhd_r63452_off.d.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @jdi_fhd_r63452_mode, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_on.d.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_off.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_off.d.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_off.d.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_off.d.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_off._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_fhd_r63452_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_fhd_r63452_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @jdi_fhd_r63452_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jdi_fhd_r63452_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @jdi_fhd_r63452_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_fhd_r63452_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #5
  %reset_gpio = getelementptr inbounds %struct.jdi_fhd_r63452, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %1, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dsi10 = getelementptr inbounds %struct.jdi_fhd_r63452, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dsi10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dsi, ptr %dsi10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %4 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %5 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1026, ptr %mode_flags, align 8
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @jdi_fhd_r63452_panel_funcs, i32 noundef 16) #5
  %call12 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  %call18 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %do.end, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call18) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.cleanup_crit_edge, %if.then14, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then5 ], [ %call15, %if.then14 ], [ %call18, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_fhd_r63452_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_fhd_r63452_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.jdi_fhd_r63452, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.jdi_fhd_r63452, ptr %panel, i32 0, i32 3
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_gpio.i = getelementptr inbounds %struct.jdi_fhd_r63452, ptr %panel, i32 0, i32 2
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %8 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
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
  %call.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %do.body4.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body4.i:                                       ; preds = %if.end
  %call6.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.body4.i.do.end_crit_edge, label %do.body15.i

do.body4.i.do.end_crit_edge:                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body15.i:                                      ; preds = %do.body4.i
  %call17.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.12, i32 noundef 14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %do.body15.i.do.end_crit_edge, label %do.body26.i

do.body15.i.do.end_crit_edge:                     ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body26.i:                                      ; preds = %do.body15.i
  %call28.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.13, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %do.body26.i.do.end_crit_edge, label %do.end36.i

do.body26.i.do.end_crit_edge:                     ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end36.i:                                       ; preds = %do.body26.i
  %call37.i = tail call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %11, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.end42.i, label %do.body44.i

do.end42.i:                                       ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.14, i32 noundef %call37.i) #8
  br label %do.end

do.body44.i:                                      ; preds = %do.end36.i
  %call46.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.16, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %do.body44.i.do.end_crit_edge, label %do.end54.i

do.body44.i.do.end_crit_edge:                     ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end54.i:                                       ; preds = %do.body44.i
  %call55.i = tail call i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef %11, i8 noundef zeroext 119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp slt i32 %call55.i, 0
  br i1 %cmp56.i, label %do.end60.i, label %if.end61.i

do.end60.i:                                       ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.18, i32 noundef %call55.i) #8
  br label %do.end

if.end61.i:                                       ; preds = %do.end54.i
  %call62.i = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %11, i16 noundef zeroext 0, i16 noundef zeroext 1079) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %do.end67.i, label %if.end68.i

do.end67.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.21, i32 noundef %call62.i) #8
  br label %do.end

if.end68.i:                                       ; preds = %if.end61.i
  %call69.i = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %11, i16 noundef zeroext 0, i16 noundef zeroext 1919) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %do.end74.i, label %if.end75.i

do.end74.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.24, i32 noundef %call69.i) #8
  br label %do.end

if.end75.i:                                       ; preds = %if.end68.i
  %call76.i = tail call i32 @mipi_dsi_dcs_set_tear_scanline(ptr noundef %11, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %do.end81.i, label %if.end82.i

do.end81.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.27, i32 noundef %call76.i) #8
  br label %do.end

if.end82.i:                                       ; preds = %if.end75.i
  %call83.i = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %11, i16 noundef zeroext 255) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp84.i = icmp slt i32 %call83.i, 0
  br i1 %cmp84.i, label %do.end88.i, label %do.body90.i

do.end88.i:                                       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.30, i32 noundef %call83.i) #8
  br label %do.end

do.body90.i:                                      ; preds = %if.end82.i
  %call92.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.32, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp93.i = icmp slt i32 %call92.i, 0
  br i1 %cmp93.i, label %do.body90.i.do.end_crit_edge, label %do.body101.i

do.body90.i.do.end_crit_edge:                     ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body101.i:                                     ; preds = %do.body90.i
  %call103.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.33, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %cmp104.i = icmp slt i32 %call103.i, 0
  br i1 %cmp104.i, label %do.body101.i.do.end_crit_edge, label %do.body112.i

do.body101.i.do.end_crit_edge:                    ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body112.i:                                     ; preds = %do.body101.i
  %call114.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.34, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp115.i = icmp slt i32 %call114.i, 0
  br i1 %cmp115.i, label %do.body112.i.do.end_crit_edge, label %do.body123.i

do.body112.i.do.end_crit_edge:                    ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body123.i:                                     ; preds = %do.body112.i
  %call125.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.35, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %cmp126.i = icmp slt i32 %call125.i, 0
  br i1 %cmp126.i, label %do.body123.i.do.end_crit_edge, label %do.end133.i

do.body123.i.do.end_crit_edge:                    ; preds = %do.body123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end133.i:                                      ; preds = %do.body123.i
  %call134.i = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %cmp135.i = icmp slt i32 %call134.i, 0
  br i1 %cmp135.i, label %do.end139.i, label %if.end140.i

do.end139.i:                                      ; preds = %do.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.37, i32 noundef %call134.i) #8
  br label %do.end

if.end140.i:                                      ; preds = %do.end133.i
  tail call void @msleep(i32 noundef 20) #5
  %call141.i = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %cmp142.i = icmp slt i32 %call141.i, 0
  br i1 %cmp142.i, label %do.end146.i, label %if.end147.i

do.end146.i:                                      ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.40, i32 noundef %call141.i) #8
  br label %do.end

if.end147.i:                                      ; preds = %if.end140.i
  tail call void @msleep(i32 noundef 80) #5
  %call150.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.42, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %cmp151.i = icmp slt i32 %call150.i, 0
  br i1 %cmp151.i, label %if.end147.i.do.end_crit_edge, label %do.body159.i

if.end147.i.do.end_crit_edge:                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body159.i:                                     ; preds = %if.end147.i
  %call161.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.43, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %cmp162.i = icmp slt i32 %call161.i, 0
  br i1 %cmp162.i, label %do.body159.i.do.end_crit_edge, label %do.body170.i

do.body159.i.do.end_crit_edge:                    ; preds = %do.body159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body170.i:                                     ; preds = %do.body159.i
  %call172.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.44, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172.i)
  %cmp173.i = icmp slt i32 %call172.i, 0
  br i1 %cmp173.i, label %do.body170.i.do.end_crit_edge, label %jdi_fhd_r63452_on.exit

do.body170.i.do.end_crit_edge:                    ; preds = %do.body170.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

jdi_fhd_r63452_on.exit:                           ; preds = %do.body170.i
  %call183.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull @jdi_fhd_r63452_on.d.45, i32 noundef 2) #5
  %14 = tail call i32 @llvm.smin.i32(i32 %call183.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183.i)
  %cmp = icmp slt i32 %call183.i, 0
  br i1 %cmp, label %jdi_fhd_r63452_on.exit.do.end_crit_edge, label %if.end4

jdi_fhd_r63452_on.exit.do.end_crit_edge:          ; preds = %jdi_fhd_r63452_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %jdi_fhd_r63452_on.exit.do.end_crit_edge, %do.body170.i.do.end_crit_edge, %do.body159.i.do.end_crit_edge, %if.end147.i.do.end_crit_edge, %do.end146.i, %do.end139.i, %do.body123.i.do.end_crit_edge, %do.body112.i.do.end_crit_edge, %do.body101.i.do.end_crit_edge, %do.body90.i.do.end_crit_edge, %do.end88.i, %do.end81.i, %do.end74.i, %do.end67.i, %do.end60.i, %do.body44.i.do.end_crit_edge, %do.end42.i, %do.body26.i.do.end_crit_edge, %do.body15.i.do.end_crit_edge, %do.body4.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.13.i17 = phi i32 [ %14, %jdi_fhd_r63452_on.exit.do.end_crit_edge ], [ %call.i, %if.end.do.end_crit_edge ], [ %call6.i, %do.body4.i.do.end_crit_edge ], [ %call17.i, %do.body15.i.do.end_crit_edge ], [ %call28.i, %do.body26.i.do.end_crit_edge ], [ %call46.i, %do.body44.i.do.end_crit_edge ], [ %call92.i, %do.body90.i.do.end_crit_edge ], [ %call103.i, %do.body101.i.do.end_crit_edge ], [ %call114.i, %do.body112.i.do.end_crit_edge ], [ %call125.i, %do.body123.i.do.end_crit_edge ], [ %call150.i, %if.end147.i.do.end_crit_edge ], [ %call161.i, %do.body159.i.do.end_crit_edge ], [ %call172.i, %do.body170.i.do.end_crit_edge ], [ %call141.i, %do.end146.i ], [ %call134.i, %do.end139.i ], [ %call83.i, %do.end88.i ], [ %call76.i, %do.end81.i ], [ %call69.i, %do.end74.i ], [ %call62.i, %do.end67.i ], [ %call55.i, %do.end60.i ], [ %call37.i, %do.end42.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %retval.13.i17) #8
  %15 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 1) #5
  br label %cleanup

if.end4:                                          ; preds = %jdi_fhd_r63452_on.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.13.i17, %do.end ], [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_fhd_r63452_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.jdi_fhd_r63452, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.jdi_fhd_r63452, ptr %panel, i32 0, i32 3
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_flags.i, align 8
  %and.i = and i32 %5, -2049
  store i32 %and.i, ptr %mode_flags.i, align 8
  %call.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %1, ptr noundef nonnull @jdi_fhd_r63452_off.d, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %do.body4.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body4.i:                                       ; preds = %if.end
  %call6.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %1, ptr noundef nonnull @jdi_fhd_r63452_off.d.48, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.body4.i.do.end_crit_edge, label %do.body15.i

do.body4.i.do.end_crit_edge:                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body15.i:                                      ; preds = %do.body4.i
  %call17.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %1, ptr noundef nonnull @jdi_fhd_r63452_off.d.49, i32 noundef 14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %do.body15.i.do.end_crit_edge, label %do.body26.i

do.body15.i.do.end_crit_edge:                     ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body26.i:                                      ; preds = %do.body15.i
  %call28.i = tail call i32 @mipi_dsi_generic_write(ptr noundef %1, ptr noundef nonnull @jdi_fhd_r63452_off.d.50, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %do.body26.i.do.end_crit_edge, label %do.end36.i

do.body26.i.do.end_crit_edge:                     ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end36.i:                                       ; preds = %do.body26.i
  %call37.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.end42.i, label %if.end43.i

do.end42.i:                                       ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %call37.i) #8
  br label %do.end

if.end43.i:                                       ; preds = %do.end36.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #5
  %call44.i = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %do.end49.i, label %jdi_fhd_r63452_off.exit

do.end49.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %call44.i) #8
  br label %do.end

jdi_fhd_r63452_off.exit:                          ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 120) #5
  br label %if.end4

do.end:                                           ; preds = %do.end49.i, %do.end42.i, %do.body26.i.do.end_crit_edge, %do.body15.i.do.end_crit_edge, %do.body4.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.4.i.ph = phi i32 [ %call.i, %if.end.do.end_crit_edge ], [ %call6.i, %do.body4.i.do.end_crit_edge ], [ %call17.i, %do.body15.i.do.end_crit_edge ], [ %call28.i, %do.body26.i.do.end_crit_edge ], [ %call44.i, %do.end49.i ], [ %call37.i, %do.end42.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %retval.4.i.ph) #8
  br label %if.end4

if.end4:                                          ; preds = %do.end, %jdi_fhd_r63452_off.exit
  %reset_gpio = getelementptr inbounds %struct.jdi_fhd_r63452, ptr %panel, i32 0, i32 2
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  %8 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_fhd_r63452_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @jdi_fhd_r63452_mode) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
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
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_scanline(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_panel_jdi_fhd_r63452__246_319_jdi_fhd_r63452_driver_init6, !1, !"__initcall__kmod_panel_jdi_fhd_r63452__246_319_jdi_fhd_r63452_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 319, i32 1}
!2 = !{ptr @__exitcall_jdi_fhd_r63452_driver_exit, !1, !"__exitcall_jdi_fhd_r63452_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author247, !4, !"__UNIQUE_ID_author247", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 321, i32 1}
!5 = !{ptr @__UNIQUE_ID_description248, !6, !"__UNIQUE_ID_description248", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 322, i32 1}
!7 = !{ptr @__UNIQUE_ID_file249, !8, !"__UNIQUE_ID_file249", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 323, i32 1}
!9 = !{ptr @__UNIQUE_ID_license250, !8, !"__UNIQUE_ID_license250", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 315, i32 11}
!12 = !{ptr @jdi_fhd_r63452_driver, !13, !"jdi_fhd_r63452_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 311, i32 31}
!14 = !{ptr @jdi_fhd_r63452_of_match, !15, !"jdi_fhd_r63452_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 305, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 260, i32 40}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 263, i32 10}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 278, i32 34}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 284, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @jdi_fhd_r63452_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @jdi_fhd_r63452_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @jdi_fhd_r63452_panel_funcs, !31, !"jdi_fhd_r63452_panel_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 244, i32 37}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 183, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @jdi_fhd_r63452_prepare._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @jdi_fhd_r63452_prepare._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @jdi_fhd_r63452_on.d, !38, !"d", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 66, i32 2}
!39 = !{ptr @jdi_fhd_r63452_on.d.11, !40, !"d", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 67, i32 2}
!41 = !{ptr @jdi_fhd_r63452_on.d.12, !42, !"d", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 68, i32 2}
!43 = !{ptr @jdi_fhd_r63452_on.d.13, !44, !"d", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 71, i32 2}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 75, i32 3}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @jdi_fhd_r63452_on._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @jdi_fhd_r63452_on._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @jdi_fhd_r63452_on.d.16, !51, !"d", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 79, i32 2}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 83, i32 3}
!54 = !{ptr @jdi_fhd_r63452_on._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @jdi_fhd_r63452_on._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 89, i32 3}
!58 = !{ptr @jdi_fhd_r63452_on._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @jdi_fhd_r63452_on._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 95, i32 3}
!62 = !{ptr @jdi_fhd_r63452_on._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @jdi_fhd_r63452_on._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 101, i32 3}
!66 = !{ptr @jdi_fhd_r63452_on._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @jdi_fhd_r63452_on._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 107, i32 3}
!70 = !{ptr @jdi_fhd_r63452_on._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @jdi_fhd_r63452_on._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @jdi_fhd_r63452_on.d.32, !73, !"d", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 111, i32 2}
!74 = !{ptr @jdi_fhd_r63452_on.d.33, !75, !"d", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 112, i32 2}
!76 = !{ptr @jdi_fhd_r63452_on.d.34, !77, !"d", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 113, i32 2}
!78 = !{ptr @jdi_fhd_r63452_on.d.35, !79, !"d", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 114, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 118, i32 3}
!82 = !{ptr @jdi_fhd_r63452_on._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @jdi_fhd_r63452_on._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 125, i32 3}
!86 = !{ptr @jdi_fhd_r63452_on._entry.39, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @jdi_fhd_r63452_on._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @jdi_fhd_r63452_on.d.42, !89, !"d", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 130, i32 2}
!90 = !{ptr @jdi_fhd_r63452_on.d.43, !91, !"d", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 131, i32 2}
!92 = !{ptr @jdi_fhd_r63452_on.d.44, !93, !"d", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 132, i32 2}
!94 = !{ptr @jdi_fhd_r63452_on.d.45, !95, !"d", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 133, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 203, i32 3}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @jdi_fhd_r63452_unprepare._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @jdi_fhd_r63452_unprepare._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @jdi_fhd_r63452_off.d, !102, !"d", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 146, i32 2}
!103 = !{ptr @jdi_fhd_r63452_off.d.48, !104, !"d", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 147, i32 2}
!105 = !{ptr @jdi_fhd_r63452_off.d.49, !106, !"d", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 148, i32 2}
!107 = !{ptr @jdi_fhd_r63452_off.d.50, !108, !"d", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 151, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 155, i32 3}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @jdi_fhd_r63452_off._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @jdi_fhd_r63452_off._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 162, i32 3}
!116 = !{ptr @jdi_fhd_r63452_off._entry.53, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @jdi_fhd_r63452_off._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @jdi_fhd_r63452_mode, !119, !"jdi_fhd_r63452_mode", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 211, i32 38}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/panel/panel-jdi-fhd-r63452.c", i32 298, i32 3}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @jdi_fhd_r63452_remove._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @jdi_fhd_r63452_remove._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i8 0, i8 2}
