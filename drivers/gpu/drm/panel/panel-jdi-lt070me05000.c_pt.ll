; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-jdi-lt070me05000.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c"
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
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.jdi_panel = type { %struct.drm_panel, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, ptr, ptr, i8, i8, ptr }
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

@__initcall__kmod_panel_jdi_lt070me05000__306_520_jdi_panel_driver_init6 = internal global ptr @jdi_panel_driver_init, section ".initcall6.init", align 4
@jdi_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jdi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @jdi_panel_probe, ptr @jdi_panel_remove, ptr @jdi_panel_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_jdi_panel_driver_exit = internal global ptr @jdi_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [69 x i8] c"panel_jdi_lt070me05000.author=Sumit Semwal <sumit.semwal@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [66 x i8] c"panel_jdi_lt070me05000.author=Vinay Simha BN <simhavcs@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [58 x i8] c"panel_jdi_lt070me05000.description=JDI LT070ME05000 WUXGA\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [73 x i8] c"panel_jdi_lt070me05000.file=drivers/gpu/drm/panel/panel-jdi-lt070me05000\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [38 x i8] c"panel_jdi_lt070me05000.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panel-jdi-lt070me05000\00", [41 x i8] zeroinitializer }, align 32
@jdi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jdi,lt070me05000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 155493, i16 1200, i16 1248, i16 1280, i16 1340, i16 0, i16 1920, i16 1923, i16 1928, i16 1934, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init regulator, ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jdi_panel_add\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/panel/panel-jdi-lt070me05000.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry_ptr = internal global ptr @jdi_panel_add._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get enable-gpio %d\0A\00", [37 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry_ptr.9 = internal global ptr @jdi_panel_add._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get reset-gpios %d\0A\00", [37 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry_ptr.13 = internal global ptr @jdi_panel_add._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dcdc-en\00", [24 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get dcdc-en-gpio %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry_ptr.17 = internal global ptr @jdi_panel_add._entry.15, section ".printk_index", align 4
@jdi_panel_add._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register backlight %d\0A\00", [63 x i8] zeroinitializer }, align 32
@jdi_panel_add._entry_ptr.20 = internal global ptr @jdi_panel_add._entry.18, section ".printk_index", align 4
@jdi_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @jdi_panel_prepare, ptr @jdi_panel_enable, ptr @jdi_panel_disable, ptr @jdi_panel_unprepare, ptr @jdi_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddp\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovcc\00", [26 x i8] zeroinitializer }, align 32
@dsi_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @dsi_dcs_bl_update_status, ptr @dsi_dcs_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@jdi_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regulator enable failed, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jdi_panel_prepare\00", [46 x i8] zeroinitializer }, align 32
@jdi_panel_prepare._entry_ptr = internal global ptr @jdi_panel_prepare._entry, section ".printk_index", align 4
@jdi_panel_prepare._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to init panel: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@jdi_panel_prepare._entry_ptr.27 = internal global ptr @jdi_panel_prepare._entry.25, section ".printk_index", align 4
@jdi_panel_prepare._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set panel on: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jdi_panel_prepare._entry_ptr.30 = internal global ptr @jdi_panel_prepare._entry.28, section ".printk_index", align 4
@jdi_panel_prepare._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regulator disable failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@jdi_panel_prepare._entry_ptr.33 = internal global ptr @jdi_panel_prepare._entry.31, section ".printk_index", align 4
@jdi_panel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 71, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set pixel format: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jdi_panel_init\00", [17 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr = internal global ptr @jdi_panel_init._entry, section ".printk_index", align 4
@jdi_panel_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set column address: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr.38 = internal global ptr @jdi_panel_init._entry.36, section ".printk_index", align 4
@jdi_panel_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set page address: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr.41 = internal global ptr @jdi_panel_init._entry.39, section ".printk_index", align 4
@jdi_panel_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 96, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to write control display: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr.44 = internal global ptr @jdi_panel_init._entry.42, section ".printk_index", align 4
@jdi_panel_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set cabc off: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr.47 = internal global ptr @jdi_panel_init._entry.45, section ".printk_index", align 4
@jdi_panel_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.3, i32 110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set exit sleep mode: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr.50 = internal global ptr @jdi_panel_init._entry.48, section ".printk_index", align 4
@jdi_panel_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.35, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set mcap: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr.53 = internal global ptr @jdi_panel_init._entry.51, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jdi_panel_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.35, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to set display interface setting: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr.56 = internal global ptr @jdi_panel_init._entry.54, section ".printk_index", align 4
@jdi_panel_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.35, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to set default values for mcap: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@jdi_panel_init._entry_ptr.59 = internal global ptr @jdi_panel_init._entry.57, section ".printk_index", align 4
@jdi_panel_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jdi_panel_on\00", [19 x i8] zeroinitializer }, align 32
@jdi_panel_on._entry_ptr = internal global ptr @jdi_panel_on._entry, section ".printk_index", align 4
@jdi_panel_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.62, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jdi_panel_unprepare\00", [44 x i8] zeroinitializer }, align 32
@jdi_panel_unprepare._entry_ptr = internal global ptr @jdi_panel_unprepare._entry, section ".printk_index", align 4
@jdi_panel_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jdi_panel_off\00", [18 x i8] zeroinitializer }, align 32
@jdi_panel_off._entry_ptr = internal global ptr @jdi_panel_off._entry, section ".printk_index", align 4
@jdi_panel_off._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@jdi_panel_off._entry_ptr.67 = internal global ptr @jdi_panel_off._entry.65, section ".printk_index", align 4
@jdi_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jdi_panel_get_modes\00", [44 x i8] zeroinitializer }, align 32
@jdi_panel_get_modes._entry_ptr = internal global ptr @jdi_panel_get_modes._entry, section ".printk_index", align 4
@jdi_panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jdi_panel_remove\00", [47 x i8] zeroinitializer }, align 32
@jdi_panel_remove._entry_ptr = internal global ptr @jdi_panel_remove._entry, section ".printk_index", align 4
@jdi_panel_remove._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@jdi_panel_remove._entry_ptr.74 = internal global ptr @jdi_panel_remove._entry.72, section ".printk_index", align 4
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"jdi_panel_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 511, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 513, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"jdi_of_match\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 388, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 289, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 408, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 412, i32 41 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 415, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 419, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 422, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 426, i32 42 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 429, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 436, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"jdi_panel_funcs\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 380, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 29, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 30, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"dsi_bl_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 360, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 230, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 247, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 253, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 264, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 71, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 77, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 83, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 96, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 104, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 110, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 118, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 128, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 137, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 155, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 206, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 170, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 174, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 311, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 492, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.286 = private constant [50 x i8] c"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 496, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_jdi_panel_driver_exit, ptr @__initcall__kmod_panel_jdi_lt070me05000__306_520_jdi_panel_driver_init6, ptr @jdi_panel_add._entry, ptr @jdi_panel_add._entry.11, ptr @jdi_panel_add._entry.15, ptr @jdi_panel_add._entry.18, ptr @jdi_panel_add._entry.7, ptr @jdi_panel_add._entry_ptr, ptr @jdi_panel_add._entry_ptr.13, ptr @jdi_panel_add._entry_ptr.17, ptr @jdi_panel_add._entry_ptr.20, ptr @jdi_panel_add._entry_ptr.9, ptr @jdi_panel_driver_exit, ptr @jdi_panel_get_modes._entry, ptr @jdi_panel_get_modes._entry_ptr, ptr @jdi_panel_init._entry, ptr @jdi_panel_init._entry.36, ptr @jdi_panel_init._entry.39, ptr @jdi_panel_init._entry.42, ptr @jdi_panel_init._entry.45, ptr @jdi_panel_init._entry.48, ptr @jdi_panel_init._entry.51, ptr @jdi_panel_init._entry.54, ptr @jdi_panel_init._entry.57, ptr @jdi_panel_init._entry_ptr, ptr @jdi_panel_init._entry_ptr.38, ptr @jdi_panel_init._entry_ptr.41, ptr @jdi_panel_init._entry_ptr.44, ptr @jdi_panel_init._entry_ptr.47, ptr @jdi_panel_init._entry_ptr.50, ptr @jdi_panel_init._entry_ptr.53, ptr @jdi_panel_init._entry_ptr.56, ptr @jdi_panel_init._entry_ptr.59, ptr @jdi_panel_off._entry, ptr @jdi_panel_off._entry.65, ptr @jdi_panel_off._entry_ptr, ptr @jdi_panel_off._entry_ptr.67, ptr @jdi_panel_on._entry, ptr @jdi_panel_on._entry_ptr, ptr @jdi_panel_prepare._entry, ptr @jdi_panel_prepare._entry.25, ptr @jdi_panel_prepare._entry.28, ptr @jdi_panel_prepare._entry.31, ptr @jdi_panel_prepare._entry_ptr, ptr @jdi_panel_prepare._entry_ptr.27, ptr @jdi_panel_prepare._entry_ptr.30, ptr @jdi_panel_prepare._entry_ptr.33, ptr @jdi_panel_remove._entry, ptr @jdi_panel_remove._entry.72, ptr @jdi_panel_remove._entry_ptr, ptr @jdi_panel_remove._entry_ptr.74, ptr @jdi_panel_unprepare._entry, ptr @jdi_panel_unprepare._entry_ptr, ptr @jdi_panel_driver, ptr @.str, ptr @jdi_of_match, ptr @default_mode, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @jdi_panel_funcs, ptr @.str.21, ptr @.str.22, ptr @dsi_bl_ops, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_add._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_add._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_add._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_add._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_prepare._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_prepare._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_prepare._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_off._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jdi_panel_remove._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @jdi_panel_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jdi_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @jdi_panel_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %props.i.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %1 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1041, ptr %mode_flags, align 8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.jdi_panel, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dsi1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dsi, ptr %dsi1, align 4
  %mode.i = getelementptr inbounds %struct.jdi_panel, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @default_mode, ptr %mode.i, align 4
  %arrayidx2.i = getelementptr %struct.jdi_panel, ptr %call.i, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.21, ptr %arrayidx2.i, align 4
  %arrayidx2.1.i = getelementptr %struct.jdi_panel, ptr %call.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.22, ptr %arrayidx2.1.i, align 4
  %call.i23 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp4.i = icmp slt i32 %call.i23, 0
  br i1 %cmp4.i, label %jdi_panel_add.exit.thread, label %if.end.i

jdi_panel_add.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i23) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call5.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 3) #5
  %enable_gpio.i = getelementptr inbounds %struct.jdi_panel, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i, ptr %enable_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call5.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %9) #8
  br label %jdi_panel_add.exit

if.end14.i:                                       ; preds = %if.end.i
  %call15.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 7) #5
  %reset_gpio.i = getelementptr inbounds %struct.jdi_panel, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15.i, ptr %reset_gpio.i, align 4
  %cmp.i91.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call15.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %11) #8
  br label %jdi_panel_add.exit

if.end24.i:                                       ; preds = %if.end14.i
  %call25.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 3) #5
  %dcdc_en_gpio.i = getelementptr inbounds %struct.jdi_panel, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %dcdc_en_gpio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25.i, ptr %dcdc_en_gpio.i, align 4
  %cmp.i92.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92.i, label %if.then28.i, label %if.end34.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call25.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %13) #8
  br label %jdi_panel_add.exit

if.end34.i:                                       ; preds = %if.end24.i
  %14 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsi1, align 4
  %dev1.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %15, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i.i) #5
  %16 = getelementptr inbounds %struct.backlight_properties, ptr %props.i.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.backlight_properties, ptr %props.i.i, i32 0, i32 4
  %18 = getelementptr inbounds i8, ptr %props.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 20)
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %17, align 4
  %21 = ptrtoint ptr %props.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %props.i.i, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 255, ptr %16, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %15, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end34.i.drm_panel_create_dsi_backlight.exit.i_crit_edge

if.end34.i.drm_panel_create_dsi_backlight.exit.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_panel_create_dsi_backlight.exit.i

if.end.i.i.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i.i, align 4
  br label %drm_panel_create_dsi_backlight.exit.i

drm_panel_create_dsi_backlight.exit.i:            ; preds = %if.end.i.i.i, %if.end34.i.drm_panel_create_dsi_backlight.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %26, %if.end.i.i.i ], [ %24, %if.end34.i.drm_panel_create_dsi_backlight.exit.i_crit_edge ]
  %call2.i.i = call ptr @devm_backlight_device_register(ptr noundef %dev1.i.i, ptr noundef %retval.0.i.i.i, ptr noundef %dev1.i.i, ptr noundef %15, ptr noundef nonnull @dsi_bl_ops, ptr noundef nonnull %props.i.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i.i) #5
  %backlight.i = getelementptr inbounds %struct.jdi_panel, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %backlight.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call2.i.i, ptr %backlight.i, align 4
  %cmp.i93.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93.i, label %if.then39.i, label %jdi_panel_add.exit.thread27

if.then39.i:                                      ; preds = %drm_panel_create_dsi_backlight.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call2.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %28) #8
  br label %jdi_panel_add.exit

jdi_panel_add.exit.thread27:                      ; preds = %drm_panel_create_dsi_backlight.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsi1, align 4
  %dev47.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %30, i32 0, i32 1
  call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev47.i, ptr noundef nonnull @jdi_panel_funcs, i32 noundef 16) #5
  call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  br label %if.end4

jdi_panel_add.exit:                               ; preds = %if.then39.i, %if.then28.i, %if.then18.i, %if.then8.i
  %retval.0.i = phi i32 [ %9, %if.then8.i ], [ %11, %if.then18.i ], [ %13, %if.then28.i ], [ %28, %if.then39.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %jdi_panel_add.exit.cleanup_crit_edge, label %jdi_panel_add.exit.if.end4_crit_edge

jdi_panel_add.exit.if.end4_crit_edge:             ; preds = %jdi_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

jdi_panel_add.exit.cleanup_crit_edge:             ; preds = %jdi_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %jdi_panel_add.exit.if.end4_crit_edge, %jdi_panel_add.exit.thread27
  %call5 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then7.cleanup_crit_edge, label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_panel_remove(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %jdi_panel_add.exit.cleanup_crit_edge, %jdi_panel_add.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %jdi_panel_add.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call.i23, %jdi_panel_add.exit.thread ], [ %call5, %if.then7.cleanup_crit_edge ], [ %call5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_panel_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled.i = getelementptr inbounds %struct.jdi_panel, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.jdi_panel_disable.exit_crit_edge, label %if.end.i

entry.jdi_panel_disable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %jdi_panel_disable.exit

if.end.i:                                         ; preds = %entry
  %backlight.i = getelementptr inbounds %struct.jdi_panel, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backlight.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_disable.exit.i_crit_edge, label %if.end.i.i

if.end.i.backlight_disable.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_disable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %power.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %power.i.i, align 8
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %fb_blank.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i.i, align 4
  %or.i.i = or i32 %9, 2
  store i32 %or.i.i, ptr %state.i.i, align 4
  %update_lock.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i.i, i32 noundef 0) #5
  %ops.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.backlight_update_status.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.backlight_update_status.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %update_status.i.i.i = getelementptr inbounds %struct.backlight_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %update_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_status.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.backlight_update_status.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.backlight_update_status.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 %13(ptr noundef nonnull %5) #5
  br label %backlight_update_status.exit.i.i

backlight_update_status.exit.i.i:                 ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.backlight_update_status.exit.i.i_crit_edge, %if.end.i.i.backlight_update_status.exit.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i.i) #5
  br label %backlight_disable.exit.i

backlight_disable.exit.i:                         ; preds = %backlight_update_status.exit.i.i, %if.end.i.backlight_disable.exit.i_crit_edge
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled.i, align 1
  br label %jdi_panel_disable.exit

jdi_panel_disable.exit:                           ; preds = %backlight_disable.exit.i, %entry.jdi_panel_disable.exit_crit_edge
  %call2 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %jdi_panel_disable.exit.if.end9_crit_edge

jdi_panel_disable.exit.if.end9_crit_edge:         ; preds = %jdi_panel_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end7:                                          ; preds = %jdi_panel_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.73, i32 noundef %call2) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %jdi_panel_disable.exit.if.end9_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool.not.i17 = icmp eq ptr %16, null
  br i1 %tobool.not.i17, label %if.end9.jdi_panel_del.exit_crit_edge, label %if.then.i

if.end9.jdi_panel_del.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %jdi_panel_del.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_panel_remove(ptr noundef %1) #5
  br label %jdi_panel_del.exit

jdi_panel_del.exit:                               ; preds = %if.then.i, %if.end9.jdi_panel_del.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jdi_panel_shutdown(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled.i = getelementptr inbounds %struct.jdi_panel, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.jdi_panel_disable.exit_crit_edge, label %if.end.i

entry.jdi_panel_disable.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %jdi_panel_disable.exit

if.end.i:                                         ; preds = %entry
  %backlight.i = getelementptr inbounds %struct.jdi_panel, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %backlight.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backlight.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_disable.exit.i_crit_edge, label %if.end.i.i

if.end.i.backlight_disable.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_disable.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %power.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %power.i.i, align 8
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %fb_blank.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i.i, align 4
  %or.i.i = or i32 %9, 2
  store i32 %or.i.i, ptr %state.i.i, align 4
  %update_lock.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i.i, i32 noundef 0) #5
  %ops.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.backlight_update_status.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.backlight_update_status.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %update_status.i.i.i = getelementptr inbounds %struct.backlight_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %update_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_status.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.backlight_update_status.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.backlight_update_status.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 %13(ptr noundef nonnull %5) #5
  br label %backlight_update_status.exit.i.i

backlight_update_status.exit.i.i:                 ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.backlight_update_status.exit.i.i_crit_edge, %if.end.i.i.backlight_update_status.exit.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i.i) #5
  br label %backlight_disable.exit.i

backlight_disable.exit.i:                         ; preds = %backlight_update_status.exit.i.i, %if.end.i.backlight_disable.exit.i_crit_edge
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled.i, align 1
  br label %jdi_panel_disable.exit

jdi_panel_disable.exit:                           ; preds = %backlight_disable.exit.i, %entry.jdi_panel_disable.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_dcs_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_flags, align 8
  %and = and i32 %3, -2049
  store i32 %and, ptr %mode_flags, align 8
  %4 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bl, align 8
  %conv = trunc i32 %5 to i16
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef %1, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags, align 8
  %or = or i32 %7, 2048
  store i32 %or, ptr %mode_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_dcs_bl_get_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %brightness = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %brightness) #5
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl, align 8
  %conv = trunc i32 %3 to i16
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %brightness, align 2
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_flags, align 8
  %and = and i32 %6, -2049
  store i32 %and, ptr %mode_flags, align 8
  %call2 = call i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef %1, ptr noundef nonnull %brightness) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode_flags, align 8
  %or = or i32 %8, 2048
  store i32 %or, ptr %mode_flags, align 8
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %brightness, align 2
  %11 = and i16 %10, 255
  %and6 = zext i16 %11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and6, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %brightness) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_get_display_brightness(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_panel_prepare(ptr noundef %panel) #2 align 64 {
entry:
  %.compoundliteral.i = alloca [1 x i8], align 1
  %.compoundliteral37.i = alloca [1 x i8], align 1
  %.compoundliteral56.i = alloca [2 x i8], align 1
  %.compoundliteral67.i = alloca [6 x i8], align 1
  %.compoundliteral89.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 7
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call2) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 20) #5
  %dcdc_en_gpio = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 5
  %4 = ptrtoint ptr %dcdc_en_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcdc_en_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %reset_gpio = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 4
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %enable_gpio = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 3
  %8 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.compoundliteral37.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %.compoundliteral56.i)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %.compoundliteral67.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %.compoundliteral89.i)
  %10 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi, align 4
  %dev3.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 1
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_flags.i, align 8
  %or.i = or i32 %13, 2048
  store i32 %or.i, ptr %mode_flags.i, align 8
  %call.i = tail call i32 @mipi_dsi_dcs_soft_reset(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end4.do.end10_crit_edge, label %if.end.i

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

if.end.i:                                         ; preds = %if.end4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  %call4.i = tail call i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef %11, i8 noundef zeroext 112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.34, i32 noundef %call4.i) #8
  br label %do.end10

if.end7.i:                                        ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 9
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mode.i, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hdisplay.i, align 4
  %sub.i = add i16 %17, -1
  %call9.i = tail call i32 @mipi_dsi_dcs_set_column_address(ptr noundef %11, i16 noundef zeroext 0, i16 noundef zeroext %sub.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %if.end16.i

do.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.37, i32 noundef %call9.i) #8
  br label %do.end10

if.end16.i:                                       ; preds = %if.end7.i
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdisplay.i, align 2
  %sub19.i = add i16 %21, -1
  %call21.i = tail call i32 @mipi_dsi_dcs_set_page_address(ptr noundef %11, i16 noundef zeroext 0, i16 noundef zeroext %sub19.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %do.end27.i, label %if.end28.i

do.end27.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.40, i32 noundef %call21.i) #8
  br label %do.end10

if.end28.i:                                       ; preds = %if.end16.i
  %22 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 36, ptr %.compoundliteral.i, align 1
  %call29.i = call i32 @mipi_dsi_dcs_write(ptr noundef %11, i8 noundef zeroext 83, ptr noundef nonnull %.compoundliteral.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %do.end35.i, label %if.end36.i

do.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.43, i32 noundef %call29.i) #8
  br label %do.end10

if.end36.i:                                       ; preds = %if.end28.i
  %23 = ptrtoint ptr %.compoundliteral37.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %.compoundliteral37.i, align 1
  %call40.i = call i32 @mipi_dsi_dcs_write(ptr noundef %11, i8 noundef zeroext 85, ptr noundef nonnull %.compoundliteral37.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %do.end46.i, label %if.end47.i

do.end46.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.46, i32 noundef %call40.i) #8
  br label %do.end10

if.end47.i:                                       ; preds = %if.end36.i
  %call48.i = call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %do.end54.i, label %if.end55.i

do.end54.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.49, i32 noundef %call48.i) #8
  br label %do.end10

if.end55.i:                                       ; preds = %if.end47.i
  call void @msleep(i32 noundef 120) #5
  %24 = ptrtoint ptr %.compoundliteral56.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -80, ptr %.compoundliteral56.i, align 1
  %arrayinit.element.i = getelementptr inbounds i8, ptr %.compoundliteral56.i, i32 1
  %25 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayinit.element.i, align 1
  %call59.i = call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull %.compoundliteral56.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %do.end65.i, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.end55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #5
  %36 = ptrtoint ptr %.compoundliteral67.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -77, ptr %.compoundliteral67.i, align 1
  %arrayinit.element69.i = getelementptr inbounds i8, ptr %.compoundliteral67.i, i32 1
  %37 = ptrtoint ptr %arrayinit.element69.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 38, ptr %arrayinit.element69.i, align 1
  %arrayinit.element70.i = getelementptr inbounds i8, ptr %.compoundliteral67.i, i32 2
  %38 = ptrtoint ptr %arrayinit.element70.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %arrayinit.element70.i, align 1
  %arrayinit.element71.i = getelementptr inbounds i8, ptr %.compoundliteral67.i, i32 3
  %39 = ptrtoint ptr %arrayinit.element71.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayinit.element71.i, align 1
  %arrayinit.element72.i = getelementptr inbounds i8, ptr %.compoundliteral67.i, i32 4
  %40 = ptrtoint ptr %arrayinit.element72.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 32, ptr %arrayinit.element72.i, align 1
  %arrayinit.element73.i = getelementptr inbounds i8, ptr %.compoundliteral67.i, i32 5
  %41 = ptrtoint ptr %arrayinit.element73.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayinit.element73.i, align 1
  %call75.i = call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull %.compoundliteral67.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %cmp76.i = icmp slt i32 %call75.i, 0
  br i1 %cmp76.i, label %do.end81.i, label %while.body87.preheader.i

do.end65.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.52, i32 noundef %call59.i) #8
  br label %do.end10

while.body87.preheader.i:                         ; preds = %while.body.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %58(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748000) #5
  %62 = ptrtoint ptr %.compoundliteral89.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -80, ptr %.compoundliteral89.i, align 1
  %arrayinit.element91.i = getelementptr inbounds i8, ptr %.compoundliteral89.i, i32 1
  %63 = ptrtoint ptr %arrayinit.element91.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %arrayinit.element91.i, align 1
  %call93.i = call i32 @mipi_dsi_generic_write(ptr noundef %11, ptr noundef nonnull %.compoundliteral89.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %cmp94.i = icmp slt i32 %call93.i, 0
  br i1 %cmp94.i, label %do.end99.i, label %if.end11

do.end81.i:                                       ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.55, i32 noundef %call75.i) #8
  br label %do.end10

do.end99.i:                                       ; preds = %while.body87.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.58, i32 noundef %call93.i) #8
  br label %do.end10

do.end10:                                         ; preds = %do.end99.i, %do.end81.i, %do.end65.i, %do.end54.i, %do.end46.i, %do.end35.i, %do.end27.i, %do.end15.i, %do.end.i, %if.end4.do.end10_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end4.do.end10_crit_edge ], [ %call93.i, %do.end99.i ], [ %call75.i, %do.end81.i ], [ %call59.i, %do.end65.i ], [ %call48.i, %do.end54.i ], [ %call40.i, %do.end46.i ], [ %call29.i, %do.end35.i ], [ %call21.i, %do.end27.i ], [ %call9.i, %do.end15.i ], [ %call4.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.compoundliteral37.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %.compoundliteral56.i)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral67.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %.compoundliteral89.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i.ph) #8
  br label %poweroff

if.end11:                                         ; preds = %while.body87.preheader.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.compoundliteral37.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %.compoundliteral56.i)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %.compoundliteral67.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %.compoundliteral89.i)
  %64 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dsi, align 4
  %mode_flags.i59 = getelementptr inbounds %struct.mipi_dsi_device, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %mode_flags.i59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mode_flags.i59, align 8
  %or.i60 = or i32 %67, 2048
  store i32 %or.i60, ptr %mode_flags.i59, align 8
  %call.i61 = call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i62 = icmp slt i32 %call.i61, 0
  br i1 %cmp.i62, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %dev3.i63 = getelementptr inbounds %struct.mipi_dsi_device, ptr %65, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i63, ptr noundef nonnull @.str.60, i32 noundef %call.i61) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call.i61) #8
  br label %poweroff

if.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

poweroff:                                         ; preds = %do.end17, %do.end10
  %call22 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %poweroff.if.end28_crit_edge

poweroff.if.end28_crit_edge:                      ; preds = %poweroff
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end27:                                         ; preds = %poweroff
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call22) #8
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %poweroff.if.end28_crit_edge
  %69 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %enable_gpio, align 4
  call void @gpiod_set_value(ptr noundef %70, i32 noundef 0) #5
  %71 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reset_gpio, align 4
  call void @gpiod_set_value(ptr noundef %72, i32 noundef 1) #5
  %73 = ptrtoint ptr %dcdc_en_gpio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dcdc_en_gpio, align 4
  call void @gpiod_set_value(ptr noundef %74, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call22, %if.end28 ], [ 0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_panel_enable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 8
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %backlight = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 6
  %2 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlight, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.backlight_enable.exit_crit_edge, label %if.end.i

if.end.backlight_enable.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_enable.exit

if.end.i:                                         ; preds = %if.end
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %and.i = and i32 %7, -3
  store i32 %and.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #5
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %11(ptr noundef nonnull %3) #5
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  br label %backlight_enable.exit

backlight_enable.exit:                            ; preds = %backlight_update_status.exit.i, %if.end.backlight_enable.exit_crit_edge
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %backlight_enable.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_panel_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 8
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %backlight = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 6
  %2 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backlight, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.backlight_disable.exit_crit_edge, label %if.end.i

if.end.backlight_disable.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_disable.exit

if.end.i:                                         ; preds = %if.end
  %power.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %power.i, align 8
  %fb_blank.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %fb_blank.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %fb_blank.i, align 4
  %state.i = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %or.i = or i32 %7, 2
  store i32 %or.i, ptr %state.i, align 4
  %update_lock.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #5
  %ops.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.backlight_update_status.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.backlight_update_status.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %update_status.i.i = getelementptr inbounds %struct.backlight_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %update_status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_status.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %backlight_update_status.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %11(ptr noundef nonnull %3) #5
  br label %backlight_update_status.exit.i

backlight_update_status.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true.i.i.backlight_update_status.exit.i_crit_edge, %if.end.i.backlight_update_status.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #5
  br label %backlight_disable.exit

backlight_disable.exit:                           ; preds = %backlight_update_status.exit.i, %if.end.backlight_disable.exit_crit_edge
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %backlight_disable.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_panel_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %prepared = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 7
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !155
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
  %call.i = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %call.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %call4.i = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.jdi_panel_off.exit_crit_edge

if.end.i.jdi_panel_off.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jdi_panel_off.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %call4.i) #8
  br label %jdi_panel_off.exit

jdi_panel_off.exit:                               ; preds = %do.end9.i, %if.end.i.jdi_panel_off.exit_crit_edge
  tail call void @msleep(i32 noundef 100) #5
  %supplies = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %jdi_panel_off.exit.if.end4_crit_edge

jdi_panel_off.exit.if.end4_crit_edge:             ; preds = %jdi_panel_off.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

do.end:                                           ; preds = %jdi_panel_off.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call2) #8
  br label %if.end4

if.end4:                                          ; preds = %do.end, %jdi_panel_off.exit.if.end4_crit_edge
  %enable_gpio = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  %reset_gpio = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 4
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #5
  %dcdc_en_gpio = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 5
  %10 = ptrtoint ptr %dcdc_en_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dcdc_en_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #5
  %12 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdi_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.jdi_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %call3 = tail call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull @default_mode) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %call5 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.68, i32 noundef 1200, i32 noundef 1920, i32 noundef %call5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call3) #5
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call3) #5
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %4 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 95, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 151, ptr %height_mm, align 4
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
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_column_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_page_address(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_panel_jdi_lt070me05000__306_520_jdi_panel_driver_init6, !1, !"__initcall__kmod_panel_jdi_lt070me05000__306_520_jdi_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 520, i32 1}
!2 = !{ptr @__exitcall_jdi_panel_driver_exit, !1, !"__exitcall_jdi_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 522, i32 1}
!5 = !{ptr @__UNIQUE_ID_author308, !6, !"__UNIQUE_ID_author308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 523, i32 1}
!7 = !{ptr @__UNIQUE_ID_description309, !8, !"__UNIQUE_ID_description309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 524, i32 1}
!9 = !{ptr @__UNIQUE_ID_file310, !10, !"__UNIQUE_ID_file310", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 525, i32 1}
!11 = !{ptr @__UNIQUE_ID_license311, !10, !"__UNIQUE_ID_license311", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 513, i32 11}
!14 = !{ptr @jdi_panel_driver, !15, !"jdi_panel_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 511, i32 31}
!16 = !{ptr @jdi_of_match, !17, !"jdi_of_match", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 388, i32 34}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 408, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @jdi_panel_add._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @jdi_panel_add._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 412, i32 41}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 415, i32 3}
!30 = !{ptr @jdi_panel_add._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @jdi_panel_add._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 419, i32 40}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 422, i32 3}
!36 = !{ptr @jdi_panel_add._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @jdi_panel_add._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 426, i32 42}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 429, i32 3}
!42 = !{ptr @jdi_panel_add._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @jdi_panel_add._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 436, i32 3}
!46 = !{ptr @jdi_panel_add._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @jdi_panel_add._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @default_mode, !49, !"default_mode", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 289, i32 38}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 29, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 30, i32 2}
!54 = distinct !{null, !55, !"regulator_names", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 28, i32 27}
!56 = !{ptr @dsi_bl_ops, !57, !"dsi_bl_ops", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 360, i32 35}
!58 = !{ptr @jdi_panel_funcs, !59, !"jdi_panel_funcs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 380, i32 37}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 230, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @jdi_panel_prepare._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @jdi_panel_prepare._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 247, i32 3}
!67 = !{ptr @jdi_panel_prepare._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @jdi_panel_prepare._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 253, i32 3}
!71 = !{ptr @jdi_panel_prepare._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @jdi_panel_prepare._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 264, i32 3}
!75 = !{ptr @jdi_panel_prepare._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @jdi_panel_prepare._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 71, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @jdi_panel_init._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @jdi_panel_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 77, i32 3}
!84 = !{ptr @jdi_panel_init._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @jdi_panel_init._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 83, i32 3}
!88 = !{ptr @jdi_panel_init._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @jdi_panel_init._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 96, i32 3}
!92 = !{ptr @jdi_panel_init._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @jdi_panel_init._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 104, i32 3}
!96 = !{ptr @jdi_panel_init._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @jdi_panel_init._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 110, i32 3}
!100 = !{ptr @jdi_panel_init._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @jdi_panel_init._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 118, i32 3}
!104 = !{ptr @jdi_panel_init._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @jdi_panel_init._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 128, i32 3}
!108 = !{ptr @jdi_panel_init._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @jdi_panel_init._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 137, i32 3}
!112 = !{ptr @jdi_panel_init._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @jdi_panel_init._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 155, i32 3}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @jdi_panel_on._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @jdi_panel_on._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 206, i32 3}
!121 = !{ptr @jdi_panel_unprepare._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @jdi_panel_unprepare._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 170, i32 3}
!125 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @jdi_panel_off._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @jdi_panel_off._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 174, i32 3}
!130 = !{ptr @jdi_panel_off._entry.65, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @jdi_panel_off._entry_ptr.67, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 311, i32 3}
!134 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @jdi_panel_get_modes._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @jdi_panel_get_modes._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 492, i32 3}
!139 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @jdi_panel_remove._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @jdi_panel_remove._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/panel/panel-jdi-lt070me05000.c", i32 496, i32 3}
!144 = !{ptr @jdi_panel_remove._entry.72, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @jdi_panel_remove._entry_ptr.74, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i8 0, i8 2}
