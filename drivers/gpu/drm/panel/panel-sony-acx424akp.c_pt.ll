; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-sony-acx424akp.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sony-acx424akp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.acx424akp = type { %struct.drm_panel, ptr, ptr, ptr, i8 }
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

@__initcall__kmod_panel_sony_acx424akp__307_486_acx424akp_driver_init6 = internal global ptr @acx424akp_driver_init, section ".initcall6.init", align 4
@acx424akp_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @acx424akp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @acx424akp_probe, ptr @acx424akp_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_acx424akp_driver_exit = internal global ptr @acx424akp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [68 x i8] c"panel_sony_acx424akp.author=Linus Wallei <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [70 x i8] c"panel_sony_acx424akp.description=MIPI-DSI Sony acx424akp Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [69 x i8] c"panel_sony_acx424akp.file=drivers/gpu/drm/panel/panel-sony-acx424akp\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [36 x i8] c"panel_sony_acx424akp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-sony-acx424akp\00", [43 x i8] zeroinitializer }, align 32
@acx424akp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,acx424akp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enforce-video-mode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddi\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to request GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@acx424akp_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @acx424akp_prepare, ptr null, ptr null, ptr @acx424akp_unprepare, ptr @acx424akp_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acx424akp\00", [22 x i8] zeroinitializer }, align 32
@acx424akp_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @acx424akp_set_brightness, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@acx424akp_bl_props = internal constant { %struct.backlight_properties, [36 x i8] } { %struct.backlight_properties { i32 512, i32 1023, i32 0, i32 0, i32 1, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register backlight device\0A\00", [59 x i8] zeroinitializer }, align 32
@acx424akp_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 279, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read panel ID (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"acx424akp_prepare\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-sony-acx424akp.c\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acx424akp_prepare._entry_ptr = internal global ptr @acx424akp_prepare._entry, section ".printk_index", align 4
@acx424akp_prepare._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 287, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable vblank TE (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@acx424akp_prepare._entry_ptr.14 = internal global ptr @acx424akp_prepare._entry.12, section ".printk_index", align 4
@acx424akp_prepare._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 304, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set MDDI (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@acx424akp_prepare._entry_ptr.17 = internal global ptr @acx424akp_prepare._entry.15, section ".printk_index", align 4
@acx424akp_prepare._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.9, i32 311, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to exit sleep mode (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@acx424akp_prepare._entry_ptr.20 = internal global ptr @acx424akp_prepare._entry.18, section ".printk_index", align 4
@acx424akp_prepare._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.9, i32 318, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to turn display on (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@acx424akp_prepare._entry_ptr.23 = internal global ptr @acx424akp_prepare._entry.21, section ".printk_index", align 4
@acx424akp_prepare._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.9, i32 325, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to turn on peripheral\0A\00", [34 x i8] zeroinitializer }, align 32
@acx424akp_prepare._entry_ptr.26 = internal global ptr @acx424akp_prepare._entry.24, section ".printk_index", align 4
@acx424akp_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.9, i32 243, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable supply (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"acx424akp_power_on\00", [45 x i8] zeroinitializer }, align 32
@acx424akp_power_on._entry_ptr = internal global ptr @acx424akp_power_on._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@acx424akp_read_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.9, i32 201, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not vendor ID byte\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"acx424akp_read_id\00", [46 x i8] zeroinitializer }, align 32
@acx424akp_read_id._entry_ptr = internal global ptr @acx424akp_read_id._entry, section ".printk_index", align 4
@acx424akp_read_id._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.9, i32 206, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not read device version byte\0A\00", [60 x i8] zeroinitializer }, align 32
@acx424akp_read_id._entry_ptr.33 = internal global ptr @acx424akp_read_id._entry.31, section ".printk_index", align 4
@acx424akp_read_id._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.9, i32 211, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not read panel ID byte\0A\00", [34 x i8] zeroinitializer }, align 32
@acx424akp_read_id._entry_ptr.36 = internal global ptr @acx424akp_read_id._entry.34, section ".printk_index", align 4
@acx424akp_read_id._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.9, i32 216, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"device vendor ID is zero\0A\00", [38 x i8] zeroinitializer }, align 32
@acx424akp_read_id._entry_ptr.39 = internal global ptr @acx424akp_read_id._entry.37, section ".printk_index", align 4
@acx424akp_read_id._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.9, i32 226, ptr @.str.42, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MTP vendor: %02x, version: %02x, panel: %02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@acx424akp_read_id._entry_ptr.43 = internal global ptr @acx424akp_read_id._entry.40, section ".printk_index", align 4
@acx424akp_read_id._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.30, ptr @.str.9, i32 230, ptr @.str.42, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unknown vendor: %02x, version: %02x, panel: %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@acx424akp_read_id._entry_ptr.46 = internal global ptr @acx424akp_read_id._entry.44, section ".printk_index", align 4
@acx424akp_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.9, i32 345, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to turn display off (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acx424akp_unprepare\00", [44 x i8] zeroinitializer }, align 32
@acx424akp_unprepare._entry_ptr = internal global ptr @acx424akp_unprepare._entry, section ".printk_index", align 4
@acx424akp_unprepare._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.9, i32 352, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enter sleep mode (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@acx424akp_unprepare._entry_ptr.51 = internal global ptr @acx424akp_unprepare._entry.49, section ".printk_index", align 4
@sony_acx424akp_vid_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 27234, i16 480, i16 495, i16 495, i16 510, i16 0, i16 864, i16 878, i16 879, i16 890, i16 0, i32 4, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 48, i16 84, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sony_acx424akp_cmd_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 35478, i16 480, i16 634, i16 650, i16 682, i16 0, i16 864, i16 865, i16 866, i16 867, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 48, i16 84, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@acx424akp_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.9, i32 376, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad mode or failed to add mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acx424akp_get_modes\00", [44 x i8] zeroinitializer }, align 32
@acx424akp_get_modes._entry_ptr = internal global ptr @acx424akp_get_modes._entry, section ".printk_index", align 4
@acx424akp_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.9, i32 110, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to disable display backlight (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"acx424akp_set_brightness\00", [39 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry_ptr = internal global ptr @acx424akp_set_brightness._entry, section ".printk_index", align 4
@acx424akp_set_brightness.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.55, ptr @.str.9, ptr @.str.57, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel_sony_acx424akp\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"calculated duty cycle %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.9, i32 127, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set display PWM ratio (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry_ptr.60 = internal global ptr @acx424akp_set_brightness._entry.58, section ".printk_index", align 4
@acx424akp_set_brightness._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.9, i32 143, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to unlock CMD 2 (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry_ptr.63 = internal global ptr @acx424akp_set_brightness._entry.61, section ".printk_index", align 4
@acx424akp_set_brightness._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.55, ptr @.str.9, i32 149, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enter page 1 (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry_ptr.66 = internal global ptr @acx424akp_set_brightness._entry.64, section ".printk_index", align 4
@acx424akp_set_brightness._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.55, ptr @.str.9, i32 155, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to disable MTP reload (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry_ptr.69 = internal global ptr @acx424akp_set_brightness._entry.67, section ".printk_index", align 4
@acx424akp_set_brightness._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.55, ptr @.str.9, i32 160, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set PWM divisor (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry_ptr.72 = internal global ptr @acx424akp_set_brightness._entry.70, section ".printk_index", align 4
@acx424akp_set_brightness._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.55, ptr @.str.9, i32 166, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to lock CMD 2 (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry_ptr.75 = internal global ptr @acx424akp_set_brightness._entry.73, section ".printk_index", align 4
@acx424akp_set_brightness._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.55, ptr @.str.9, i32 175, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to enable display backlight (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@acx424akp_set_brightness._entry_ptr.78 = internal global ptr @acx424akp_set_brightness._entry.76, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 32768, i64 33050, i64 33051]
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"acx424akp_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 478, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 482, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"acx424akp_of_match\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 472, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 406, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 431, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 436, i32 49 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 440, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"acx424akp_drm_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 390, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 445, i32 61 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"acx424akp_bl_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 182, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"acx424akp_bl_props\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 186, i32 42 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 449, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 279, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 287, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 304, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 311, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 318, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 325, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 243, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 201, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 206, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 211, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 216, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 225, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 229, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 345, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 352, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [24 x i8] c"sony_acx424akp_vid_mode\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 48, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant [24 x i8] c"sony_acx424akp_cmd_mode\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 67, i32 38 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 376, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 110, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 123, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 127, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 143, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 149, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 155, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 160, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 166, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-sony-acx424akp.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 175, i32 3 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_acx424akp_driver_exit, ptr @__initcall__kmod_panel_sony_acx424akp__307_486_acx424akp_driver_init6, ptr @acx424akp_driver_exit, ptr @acx424akp_get_modes._entry, ptr @acx424akp_get_modes._entry_ptr, ptr @acx424akp_power_on._entry, ptr @acx424akp_power_on._entry_ptr, ptr @acx424akp_prepare._entry, ptr @acx424akp_prepare._entry.12, ptr @acx424akp_prepare._entry.15, ptr @acx424akp_prepare._entry.18, ptr @acx424akp_prepare._entry.21, ptr @acx424akp_prepare._entry.24, ptr @acx424akp_prepare._entry_ptr, ptr @acx424akp_prepare._entry_ptr.14, ptr @acx424akp_prepare._entry_ptr.17, ptr @acx424akp_prepare._entry_ptr.20, ptr @acx424akp_prepare._entry_ptr.23, ptr @acx424akp_prepare._entry_ptr.26, ptr @acx424akp_read_id._entry, ptr @acx424akp_read_id._entry.31, ptr @acx424akp_read_id._entry.34, ptr @acx424akp_read_id._entry.37, ptr @acx424akp_read_id._entry.40, ptr @acx424akp_read_id._entry.44, ptr @acx424akp_read_id._entry_ptr, ptr @acx424akp_read_id._entry_ptr.33, ptr @acx424akp_read_id._entry_ptr.36, ptr @acx424akp_read_id._entry_ptr.39, ptr @acx424akp_read_id._entry_ptr.43, ptr @acx424akp_read_id._entry_ptr.46, ptr @acx424akp_set_brightness._entry, ptr @acx424akp_set_brightness._entry.58, ptr @acx424akp_set_brightness._entry.61, ptr @acx424akp_set_brightness._entry.64, ptr @acx424akp_set_brightness._entry.67, ptr @acx424akp_set_brightness._entry.70, ptr @acx424akp_set_brightness._entry.73, ptr @acx424akp_set_brightness._entry.76, ptr @acx424akp_set_brightness._entry_ptr, ptr @acx424akp_set_brightness._entry_ptr.60, ptr @acx424akp_set_brightness._entry_ptr.63, ptr @acx424akp_set_brightness._entry_ptr.66, ptr @acx424akp_set_brightness._entry_ptr.69, ptr @acx424akp_set_brightness._entry_ptr.72, ptr @acx424akp_set_brightness._entry_ptr.75, ptr @acx424akp_set_brightness._entry_ptr.78, ptr @acx424akp_unprepare._entry, ptr @acx424akp_unprepare._entry.49, ptr @acx424akp_unprepare._entry_ptr, ptr @acx424akp_unprepare._entry_ptr.51, ptr @acx424akp_driver, ptr @.str, ptr @acx424akp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @acx424akp_drm_funcs, ptr @.str.5, ptr @acx424akp_bl_ops, ptr @acx424akp_bl_props, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @sony_acx424akp_vid_mode, ptr @sony_acx424akp_cmd_mode, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_bl_props to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_prepare._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_prepare._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_prepare._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_prepare._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_prepare._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_read_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_read_id._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_read_id._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_read_id._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_read_id._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_read_id._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_unprepare._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_acx424akp_vid_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_acx424akp_cmd_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_set_brightness._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_set_brightness._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_set_brightness._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_set_brightness._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_set_brightness._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_set_brightness._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acx424akp_set_brightness._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @acx424akp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @acx424akp_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @acx424akp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @acx424akp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx424akp_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i77 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i77, null
  %video_mode = getelementptr inbounds %struct.acx424akp, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %2 = ptrtoint ptr %video_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %video_mode, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev3 = getelementptr inbounds %struct.acx424akp, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev3, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %5 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %format, align 4
  %lp_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 8
  %7 = ptrtoint ptr %lp_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 19200000, ptr %lp_rate, align 8
  %hs_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 7
  %8 = ptrtoint ptr %hs_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 420160000, ptr %hs_rate, align 4
  %spec.select = select i1 %tobool.i, i32 3, i32 1024
  %9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %9, align 8
  %call9 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %supply = getelementptr inbounds %struct.acx424akp, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %supply, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 7) #5
  %reset_gpio = getelementptr inbounds %struct.acx424akp, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %reset_gpio, align 4
  %cmp.i78 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call16 to i32
  %call22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @acx424akp_drm_funcs, i32 noundef 16) #5
  %call24 = tail call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef nonnull @.str.5, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull @acx424akp_bl_ops, ptr noundef nonnull @acx424akp_bl_props) #5
  %backlight = getelementptr inbounds %struct.drm_panel, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call24, ptr %backlight, align 4
  %cmp.i79 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call24 to i32
  %call33 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %16, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  %call36 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.then37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end34.cleanup_crit_edge, %if.then29, %if.then19, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then12 ], [ %call22, %if.then19 ], [ %call33, %if.then29 ], [ %call36, %if.then37 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx424akp_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  tail call void @drm_panel_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx424akp_prepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %vendor.i = alloca i8, align 1
  %version.i = alloca i8, align 1
  %panel.i = alloca i8, align 1
  %mddi = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.acx424akp, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mddi) #5
  %2 = ptrtoint ptr %mddi to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %mddi, align 1
  %supply.i = getelementptr inbounds %struct.acx424akp, ptr %panel, i32 0, i32 2
  %3 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %supply.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %acx424akp_power_on.exit

acx424akp_power_on.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset_gpio.i = getelementptr inbounds %struct.acx424akp, ptr %panel, i32 0, i32 3
  %7 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 4294960) #5
  %10 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 11000, i32 noundef 20000, i32 noundef 2) #5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vendor.i) #5
  %14 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %vendor.i, align 1, !annotation !157
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %version.i) #5
  %15 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %version.i, align 1, !annotation !157
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %panel.i) #5
  %16 = ptrtoint ptr %panel.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %panel.i, align 1, !annotation !157
  %call1.i = call i32 @mipi_dsi_dcs_read(ptr noundef %add.ptr.i.i, i8 noundef zeroext -38, ptr noundef nonnull %vendor.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end.i82

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i82:                                       ; preds = %if.end
  %call3.i = call i32 @mipi_dsi_dcs_read(ptr noundef %add.ptr.i.i, i8 noundef zeroext -37, ptr noundef nonnull %version.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i82.do.end_crit_edge, label %if.end10.i

if.end.i82.do.end_crit_edge:                      ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end10.i:                                       ; preds = %if.end.i82
  %call11.i = call i32 @mipi_dsi_dcs_read(ptr noundef %add.ptr.i.i, i8 noundef zeroext -36, ptr noundef nonnull %panel.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.do.end_crit_edge, label %if.end18.i

if.end10.i.do.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end18.i:                                       ; preds = %if.end10.i
  %17 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vendor.i, align 1
  %conv.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp19.i = icmp eq i8 %18, 0
  br i1 %cmp19.i, label %if.end18.i.do.end_crit_edge, label %if.end26.i

if.end18.i.do.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end26.i:                                       ; preds = %if.end18.i
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %19 = ptrtoint ptr %panel.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %panel.i, align 1
  %conv28.i = zext i8 %20 to i32
  %or.i = or i32 %shl.i, %conv28.i
  %trunc.i = trunc i32 %or.i to i16
  %21 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %do.end40.i [
    i16 -32485, label %if.end26.i.do.end33.i_crit_edge
    i16 -32486, label %if.end26.i.do.end33.i_crit_edge89
    i16 -32768, label %if.end26.i.do.end33.i_crit_edge90
  ]

if.end26.i.do.end33.i_crit_edge90:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i

if.end26.i.do.end33.i_crit_edge89:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i

if.end26.i.do.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.end26.i.do.end33.i_crit_edge, %if.end26.i.do.end33.i_crit_edge89, %if.end26.i.do.end33.i_crit_edge90
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %version.i, align 1
  %conv36.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.41, i32 noundef %conv.i, i32 noundef %conv36.i, i32 noundef %conv28.i) #8
  br label %if.end7

do.end40.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %version.i, align 1
  %conv43.i = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.45, i32 noundef %conv.i, i32 noundef %conv43.i, i32 noundef %conv28.i) #8
  br label %if.end7

do.end:                                           ; preds = %if.end18.i.do.end_crit_edge, %if.end10.i.do.end_crit_edge, %if.end.i82.do.end_crit_edge, %if.end.do.end_crit_edge
  %.str.29.sink = phi ptr [ @.str.29, %if.end.do.end_crit_edge ], [ @.str.32, %if.end.i82.do.end_crit_edge ], [ @.str.35, %if.end10.i.do.end_crit_edge ], [ @.str.38, %if.end18.i.do.end_crit_edge ]
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.do.end_crit_edge ], [ %call3.i, %if.end.i82.do.end_crit_edge ], [ %call11.i, %if.end10.i.do.end_crit_edge ], [ -19, %if.end18.i.do.end_crit_edge ]
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull %.str.29.sink) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %panel.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %version.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vendor.i) #5
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #8
  br label %err_power_off

if.end7:                                          ; preds = %do.end40.i, %do.end33.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %panel.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %version.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vendor.i) #5
  %call8 = call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %add.ptr.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.13, i32 noundef %call8) #8
  br label %err_power_off

if.end15:                                         ; preds = %if.end7
  %call16 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -82, ptr noundef nonnull %mddi, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef %call16) #8
  br label %err_power_off

if.end22:                                         ; preds = %if.end15
  %call23 = call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.19, i32 noundef %call23) #8
  br label %err_power_off

if.end30:                                         ; preds = %if.end22
  call void @msleep(i32 noundef 140) #5
  %call31 = call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.22, i32 noundef %call31) #8
  br label %err_power_off

if.end38:                                         ; preds = %if.end30
  %video_mode = getelementptr inbounds %struct.acx424akp, ptr %panel, i32 0, i32 4
  %42 = ptrtoint ptr %video_mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %video_mode, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool39.not = icmp eq i8 %43, 0
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  %call41 = call i32 @mipi_dsi_turn_on_peripheral(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.cleanup_crit_edge, label %do.end46

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end46:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.25) #8
  br label %err_power_off

err_power_off:                                    ; preds = %do.end46, %do.end36, %do.end28, %do.end20, %do.end13, %do.end
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call8, %do.end13 ], [ %call16, %do.end20 ], [ %call23, %do.end28 ], [ %call31, %do.end36 ], [ %call41, %do.end46 ]
  %46 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %47, i32 noundef 1) #5
  call void @usleep_range_state(i32 noundef 11000, i32 noundef 20000, i32 noundef 2) #5
  %48 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %supply.i, align 4
  %call.i85 = call i32 @regulator_disable(ptr noundef %49) #5
  br label %cleanup

cleanup:                                          ; preds = %err_power_off, %if.then40.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %acx424akp_power_on.exit
  %retval.0 = phi i32 [ %ret.0, %err_power_off ], [ %call.i, %acx424akp_power_on.exit ], [ 0, %if.then40.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mddi) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx424akp_unprepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.acx424akp, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.50, i32 noundef %call4) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 85) #5
  %reset_gpio.i = getelementptr inbounds %struct.acx424akp, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 11000, i32 noundef 20000, i32 noundef 2) #5
  %supply.i = getelementptr inbounds %struct.acx424akp, ptr %panel, i32 0, i32 2
  %8 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supply.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx424akp_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %video_mode = getelementptr inbounds %struct.acx424akp, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %video_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %video_mode, align 4, !range !158
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %sony_acx424akp_cmd_mode.sony_acx424akp_vid_mode = select i1 %tobool.not, ptr @sony_acx424akp_cmd_mode, ptr @sony_acx424akp_vid_mode
  %call3 = tail call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull %sony_acx424akp_cmd_mode.sony_acx424akp_vid_mode) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call3) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 28
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 72, ptr %type, align 2
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 26
  %7 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %8 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %9 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 27
  %10 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %height_mm, align 4
  %conv9 = zext i16 %11 to i32
  %height_mm11 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %height_mm11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv9, ptr %height_mm11, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ 1, %if.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_turn_on_peripheral(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acx424akp_set_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %pwm_ratio = alloca i8, align 1
  %pwm_div = alloca i8, align 1
  %par = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.acx424akp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %4 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bl, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm_ratio) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm_div) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %par) #5
  %6 = ptrtoint ptr %par to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %par, align 1, !annotation !157
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %7 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %9 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fb_blank.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.not.i = icmp eq i32 %10, 0
  br i1 %cmp2.not.i, label %backlight_is_blank.exit, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

backlight_is_blank.exit:                          ; preds = %lor.lhs.false.i
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  %and.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end6, label %backlight_is_blank.exit.if.then_crit_edge

backlight_is_blank.exit.if.then_crit_edge:        ; preds = %backlight_is_blank.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %backlight_is_blank.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %par to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %par, align 1
  %call3 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 83, ptr noundef nonnull %par, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54, i32 noundef %call3) #8
  br label %cleanup

if.end6:                                          ; preds = %backlight_is_blank.exit
  %mul = shl i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3068, i32 %mul)
  %cmp = icmp sgt i32 %mul, 3068
  %div = sdiv i32 %mul, 1023
  %16 = trunc i32 %div to i8
  %phi.cast = add i8 %16, -1
  %cond = select i1 %cmp, i8 %phi.cast, i8 1
  %17 = ptrtoint ptr %pwm_ratio to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %cond, ptr %pwm_ratio, align 1
  %18 = ptrtoint ptr %pwm_div to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pwm_div, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acx424akp_set_brightness.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acx424akp_set_brightness, %if.then24)) #5
          to label %do.end29 [label %if.then24], !srcloc !159

if.then24:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %pwm_ratio to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pwm_ratio, align 1
  %conv26 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acx424akp_set_brightness.__UNIQUE_ID_ddebug306, ptr noundef %20, ptr noundef nonnull @.str.57, i32 noundef %conv26) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %if.end6
  %call30 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 81, ptr noundef nonnull %pwm_ratio, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.end38

do.end36:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.59, i32 noundef %call30) #8
  br label %cleanup

if.end38:                                         ; preds = %do.end29
  %25 = ptrtoint ptr %par to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -86, ptr %par, align 1
  %call39 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext -13, ptr noundef nonnull %par, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.62, i32 noundef %call39) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %28 = ptrtoint ptr %par to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %par, align 1
  %call48 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 0, ptr noundef nonnull %par, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.65, i32 noundef %call48) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  %31 = ptrtoint ptr %par to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %par, align 1
  %call57 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 125, ptr noundef nonnull %par, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end63, label %if.end65

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.68, i32 noundef %call57) #8
  br label %cleanup

if.end65:                                         ; preds = %if.end56
  %call66 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 34, ptr noundef nonnull %pwm_div, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.71, i32 noundef %call66) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end65
  %36 = ptrtoint ptr %par to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -86, ptr %par, align 1
  %call75 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 127, ptr noundef nonnull %par, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end81, label %if.end83

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.74, i32 noundef %call75) #8
  br label %cleanup

if.end83:                                         ; preds = %if.end74
  %39 = ptrtoint ptr %par to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 36, ptr %par, align 1
  %call84 = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i, i8 noundef zeroext 83, ptr noundef nonnull %par, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end90, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.77, i32 noundef %call84) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.end83.cleanup_crit_edge, %do.end81, %do.end72, %do.end63, %do.end54, %do.end45, %do.end36, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call30, %do.end36 ], [ %call39, %do.end45 ], [ %call48, %do.end54 ], [ %call57, %do.end63 ], [ %call66, %do.end72 ], [ %call75, %do.end81 ], [ %call84, %do.end90 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %par) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm_div) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm_ratio) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_panel_sony_acx424akp__307_486_acx424akp_driver_init6, !1, !"__initcall__kmod_panel_sony_acx424akp__307_486_acx424akp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 486, i32 1}
!2 = !{ptr @__exitcall_acx424akp_driver_exit, !1, !"__exitcall_acx424akp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 488, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 489, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 490, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 482, i32 11}
!12 = !{ptr @acx424akp_driver, !13, !"acx424akp_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 478, i32 31}
!14 = !{ptr @acx424akp_of_match, !15, !"acx424akp_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 472, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 406, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 431, i32 40}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 436, i32 49}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 440, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 445, i32 61}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 449, i32 10}
!28 = !{ptr @acx424akp_drm_funcs, !29, !"acx424akp_drm_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 390, i32 37}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 279, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @acx424akp_prepare._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @acx424akp_prepare._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 287, i32 3}
!40 = !{ptr @acx424akp_prepare._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @acx424akp_prepare._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 304, i32 3}
!44 = !{ptr @acx424akp_prepare._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @acx424akp_prepare._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 311, i32 3}
!48 = !{ptr @acx424akp_prepare._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @acx424akp_prepare._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 318, i32 3}
!52 = !{ptr @acx424akp_prepare._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @acx424akp_prepare._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 325, i32 4}
!56 = !{ptr @acx424akp_prepare._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @acx424akp_prepare._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 243, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @acx424akp_power_on._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @acx424akp_power_on._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 201, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @acx424akp_read_id._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @acx424akp_read_id._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 206, i32 3}
!70 = !{ptr @acx424akp_read_id._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @acx424akp_read_id._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 211, i32 3}
!74 = !{ptr @acx424akp_read_id._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @acx424akp_read_id._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 216, i32 3}
!78 = !{ptr @acx424akp_read_id._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @acx424akp_read_id._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 225, i32 3}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @acx424akp_read_id._entry.40, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @acx424akp_read_id._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 229, i32 3}
!87 = !{ptr @acx424akp_read_id._entry.44, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @acx424akp_read_id._entry_ptr.46, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 345, i32 3}
!91 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @acx424akp_unprepare._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @acx424akp_unprepare._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 352, i32 3}
!96 = !{ptr @acx424akp_unprepare._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @acx424akp_unprepare._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 376, i32 3}
!100 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @acx424akp_get_modes._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @acx424akp_get_modes._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @sony_acx424akp_vid_mode, !104, !"sony_acx424akp_vid_mode", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 48, i32 38}
!105 = !{ptr @sony_acx424akp_cmd_mode, !106, !"sony_acx424akp_cmd_mode", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 67, i32 38}
!107 = !{ptr @acx424akp_bl_ops, !108, !"acx424akp_bl_ops", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 182, i32 35}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 110, i32 4}
!111 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @acx424akp_set_brightness._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @acx424akp_set_brightness._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 123, i32 2}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @acx424akp_set_brightness.__UNIQUE_ID_ddebug306, !115, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 127, i32 3}
!120 = !{ptr @acx424akp_set_brightness._entry.58, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @acx424akp_set_brightness._entry_ptr.60, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 143, i32 3}
!124 = !{ptr @acx424akp_set_brightness._entry.61, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @acx424akp_set_brightness._entry_ptr.63, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 149, i32 3}
!128 = !{ptr @acx424akp_set_brightness._entry.64, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @acx424akp_set_brightness._entry_ptr.66, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 155, i32 3}
!132 = !{ptr @acx424akp_set_brightness._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @acx424akp_set_brightness._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 160, i32 3}
!136 = !{ptr @acx424akp_set_brightness._entry.70, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @acx424akp_set_brightness._entry_ptr.72, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 166, i32 3}
!140 = !{ptr @acx424akp_set_brightness._entry.73, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @acx424akp_set_brightness._entry_ptr.75, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 175, i32 3}
!144 = !{ptr @acx424akp_set_brightness._entry.76, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @acx424akp_set_brightness._entry_ptr.78, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @acx424akp_bl_props, !147, !"acx424akp_bl_props", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/panel/panel-sony-acx424akp.c", i32 186, i32 42}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"auto-init"}
!158 = !{i8 0, i8 2}
!159 = !{i64 2148301184, i64 2148301189, i64 2148301202, i64 2148301246, i64 2148301280, i64 2148301301}
