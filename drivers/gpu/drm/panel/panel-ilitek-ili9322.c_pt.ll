; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-ilitek-ili9322.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-ilitek-ili9322.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ili9322_config = type { i32, i32, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ili9322 = type { ptr, ptr, %struct.drm_panel, ptr, [3 x %struct.regulator_bulk_data], ptr, i32, %struct.videomode, [8 x i8], i8, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_ilitek_ili9322__310_946_ili9322_driver_init6 = internal global ptr @ili9322_driver_init, section ".initcall6.init", align 4
@ili9322_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ili9322_probe, ptr @ili9322_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ili9322_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ili9322_driver_exit = internal global ptr @ili9322_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author311 = internal constant [69 x i8] c"panel_ilitek_ili9322.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [58 x i8] c"panel_ilitek_ili9322.description=ILI9322 LCD panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [69 x i8] c"panel_ilitek_ili9322.file=drivers/gpu/drm/panel/panel-ilitek-ili9322\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [36 x i8] c"panel_ilitek_ili9322.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-ilitek-ili9322\00", [43 x i8] zeroinitializer }, align 32
@ili9322_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlink,dir-685-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ili9322_dir_685 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ilitek,ili9322\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ili9322_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 744, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing device configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ili9322_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-ilitek-ili9322.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr = internal global ptr @ili9322_probe._entry, section ".printk_index", align 4
@ili9322_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 754, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"too low VREG1OUT\0A\00", [46 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.8 = internal global ptr @ili9322_probe._entry.6, section ".printk_index", align 4
@ili9322_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"too high VREG1OUT\0A\00", [45 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.11 = internal global ptr @ili9322_probe._entry.9, section ".printk_index", align 4
@ili9322_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 762, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VREG1OUT is no even 100 microvolt\0A\00", [61 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.14 = internal global ptr @ili9322_probe._entry.12, section ".printk_index", align 4
@ili9322_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel_ilitek_ili9322\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VREG1OUT = 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@ili9322_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"too low VCOM high\0A\00", [45 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.19 = internal global ptr @ili9322_probe._entry.17, section ".printk_index", align 4
@ili9322_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 781, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"too high VCOM high\0A\00", [44 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.22 = internal global ptr @ili9322_probe._entry.20, section ".printk_index", align 4
@ili9322_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VCOM high = 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@ili9322_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"too low VCOM amplitude\0A\00", [40 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.26 = internal global ptr @ili9322_probe._entry.24, section ".printk_index", align 4
@ili9322_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"too high VCOM amplitude\0A\00", [39 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.29 = internal global ptr @ili9322_probe._entry.27, section ".printk_index", align 4
@ili9322_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.30, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VCOM amplitude = 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@ili9322_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"negative gamma %u > 15, capping\0A\00", [63 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.33 = internal global ptr @ili9322_probe._entry.31, section ".printk_index", align 4
@ili9322_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 817, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"positive gamma %u > 15, capping\0A\00", [63 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.36 = internal global ptr @ili9322_probe._entry.34, section ".printk_index", align 4
@ili9322_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.37, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gamma V%d: 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovcc\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ili9322_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get RESET GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.44 = internal global ptr @ili9322_probe._entry.42, section ".printk_index", align 4
@ili9322_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 854, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi setup failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.47 = internal global ptr @ili9322_probe._entry.45, section ".printk_index", align 4
@ili9322_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @ili9322_writeable_reg, ptr null, ptr @ili9322_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 68, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ili9322_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ili9322_regmap_bus = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @ili9322_regmap_spi_write, ptr null, ptr null, ptr null, ptr null, ptr @ili9322_regmap_spi_read, ptr null, ptr null, ptr null, i8 0, i32 1, i32 1, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"panel_ilitek_ili9322:859:(regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@ili9322_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 861, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.51 = internal global ptr @ili9322_probe._entry.49, section ".printk_index", align 4
@ili9322_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.2, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get chip ID (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.54 = internal global ptr @ili9322_probe._entry.52, section ".printk_index", align 4
@ili9322_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"chip ID 0x%0x2, expected 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.57 = internal global ptr @ili9322_probe._entry.55, section ".printk_index", align 4
@ili9322_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.2, ptr @.str.3, i32 880, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't get entry setting (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@ili9322_probe._entry_ptr.60 = internal global ptr @ili9322_probe._entry.58, section ".printk_index", align 4
@ili9322_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @ili9322_prepare, ptr @ili9322_enable, ptr @ili9322_disable, ptr @ili9322_unprepare, ptr @ili9322_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@ili9322_regmap_spi_write.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ili9322_regmap_spi_write\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WRITE: %02x %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@ili9322_regmap_spi_read.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ili9322_regmap_spi_read\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"READ: %02x reg size = %zu, val size = %zu\0A\00", [53 x i8] zeroinitializer }, align 32
@ili9322_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ili9322_power_on\00", [47 x i8] zeroinitializer }, align 32
@ili9322_power_on._entry_ptr = internal global ptr @ili9322_power_on._entry, section ".printk_index", align 4
@ili9322_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't issue GRESET (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ili9322_init\00", [19 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr = internal global ptr @ili9322_init._entry, section ".printk_index", align 4
@ili9322_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't set up VREG1OUT (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.71 = internal global ptr @ili9322_init._entry.69, section ".printk_index", align 4
@ili9322_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't set up VCOM amplitude (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.74 = internal global ptr @ili9322_init._entry.72, section ".printk_index", align 4
@ili9322_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't set up VCOM high (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.77 = internal global ptr @ili9322_init._entry.75, section ".printk_index", align 4
@ili9322_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.68, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't write gamma V%d to 0x%02x (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.80 = internal global ptr @ili9322_init._entry.78, section ".printk_index", align 4
@ili9322_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.68, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't write POL register (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.83 = internal global ptr @ili9322_init._entry.81, section ".printk_index", align 4
@ili9322_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.68, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't write IF CTRL register (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.86 = internal global ptr @ili9322_init._entry.84, section ".printk_index", align 4
@ili9322_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.68, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't write ENTRY reg (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.89 = internal global ptr @ili9322_init._entry.87, section ".printk_index", align 4
@ili9322_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.68, ptr @.str.3, i32 450, ptr @.str.92, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"display is in %s mode, syncmode %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.93 = internal global ptr @ili9322_init._entry.90, section ".printk_index", align 4
@ili9322_inputs = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], [48 x i8] zeroinitializer }, align 32
@ili9322_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.68, ptr @.str.3, i32 452, ptr @.str.92, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"initialized display\0A\00", [43 x i8] zeroinitializer }, align 32
@ili9322_init._entry_ptr.96 = internal global ptr @ili9322_init._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"8 bit serial RGB through\00", [39 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"8 bit serial RGB aligned\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"8 bit serial RGB dummy 320x240\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"8 bit serial RGB dummy 360x240\00", [33 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disabled 1\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"24 bit parallel RGB through\00", [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"24 bit parallel RGB aligned\00", [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"24 bit YUV 640Y 320CbCr\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"24 bit YUV 720Y 360CbCr\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disabled 2\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"8 bit ITU-R BT.656 720Y 360CbCr\00", [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"8 bit ITU-R BT.656 640Y 320CbCr\00", [32 x i8] zeroinitializer }, align 32
@ili9322_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to enable panel\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ili9322_enable\00", [17 x i8] zeroinitializer }, align 32
@ili9322_enable._entry_ptr = internal global ptr @ili9322_enable._entry, section ".printk_index", align 4
@ili9322_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to go to standby mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ili9322_disable\00", [16 x i8] zeroinitializer }, align 32
@ili9322_disable._entry_ptr = internal global ptr @ili9322_disable._entry, section ".printk_index", align 4
@srgb_320x240_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 24535, i16 320, i16 679, i16 680, i16 921, i16 0, i16 240, i16 244, i16 245, i16 262, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@srgb_360x240_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 27000, i16 360, i16 395, i16 396, i16 637, i16 0, i16 240, i16 261, i16 262, i16 262, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@prgb_320x240_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 64000, i16 320, i16 358, i16 359, i16 409, i16 0, i16 240, i16 244, i16 245, i16 262, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@yuv_640x320_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 24540, i16 640, i16 892, i16 893, i16 921, i16 0, i16 320, i16 324, i16 325, i16 343, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@yuv_720x360_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 27000, i16 720, i16 972, i16 973, i16 997, i16 0, i16 360, i16 364, i16 365, i16 383, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@itu_r_bt_656_720_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 27000, i16 720, i16 723, i16 724, i16 996, i16 0, i16 480, i16 484, i16 485, i16 500, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@itu_r_bt_656_640_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 24540, i16 640, i16 643, i16 644, i16 916, i16 0, i16 480, i16 484, i16 485, i16 500, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ili9322_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 685, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad mode or failed to add mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ili9322_get_modes\00", [46 x i8] zeroinitializer }, align 32
@ili9322_get_modes._entry_ptr = internal global ptr @ili9322_get_modes._entry, section ".printk_index", align 4
@ili9322_dir_685 = internal constant { %struct.ili9322_config, [44 x i8] } { %struct.ili9322_config { i32 65, i32 50, i8 0, i8 0, i32 11, i32 4600, i32 91, i32 114, i8 1, i8 0, i8 0, i8 0, i8 12, [8 x i8] c"\07\07\03\02\03\05\07\02", [8 x i8] c"\0A\05\07\07\07\05\01\06" }, [44 x i8] zeroinitializer }, align 32
@switch.table.ili9322_get_modes = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @srgb_320x240_mode, ptr @srgb_360x240_mode, ptr @srgb_320x240_mode, ptr @prgb_320x240_mode, ptr @prgb_320x240_mode, ptr @yuv_640x320_mode, ptr @yuv_720x360_mode, ptr @srgb_320x240_mode, ptr @itu_r_bt_656_720_mode, ptr @itu_r_bt_656_640_mode], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"ili9322_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 938, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 942, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"ili9322_of_match\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 925, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 744, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 754, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 758, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 762, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 767, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 777, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 781, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 785, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 795, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 799, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 804, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 811, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 817, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 822, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 825, i32 28 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 826, i32 28 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 827, i32 28 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 845, i32 49 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 847, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 854, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [22 x i8] c"ili9322_regmap_config\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 340, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [19 x i8] c"ili9322_regmap_bus\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 320, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 858, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 861, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 867, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 871, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 880, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant [18 x i8] c"ili9322_drm_funcs\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 712, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 300, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 313, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 469, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 359, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 368, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 377, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 387, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 397, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 419, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 431, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 445, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 448, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [15 x i8] c"ili9322_inputs\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 179, i32 27 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 452, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 180, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 181, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 182, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 183, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 184, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 185, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 186, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 187, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 188, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 189, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 190, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 191, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 533, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 495, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant [18 x i8] c"srgb_320x240_mode\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 541, i32 38 }
@___asan_gen_.421 = private unnamed_addr constant [18 x i8] c"srgb_360x240_mode\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 554, i32 38 }
@___asan_gen_.424 = private unnamed_addr constant [18 x i8] c"prgb_320x240_mode\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 568, i32 38 }
@___asan_gen_.427 = private unnamed_addr constant [17 x i8] c"yuv_640x320_mode\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 582, i32 38 }
@___asan_gen_.430 = private unnamed_addr constant [17 x i8] c"yuv_720x360_mode\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 595, i32 38 }
@___asan_gen_.433 = private unnamed_addr constant [22 x i8] c"itu_r_bt_656_720_mode\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 623, i32 38 }
@___asan_gen_.436 = private unnamed_addr constant [22 x i8] c"itu_r_bt_656_640_mode\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 609, i32 38 }
@___asan_gen_.439 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 685, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [16 x i8] c"ili9322_dir_685\00", align 1
@___asan_gen_.449 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 912, i32 36 }
@___asan_gen_.451 = private unnamed_addr constant [31 x i8] c"switch.table.ili9322_get_modes\00", align 1
@llvm.compiler.used = appending global [150 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_ili9322_driver_exit, ptr @__initcall__kmod_panel_ilitek_ili9322__310_946_ili9322_driver_init6, ptr @ili9322_disable._entry, ptr @ili9322_disable._entry_ptr, ptr @ili9322_driver_exit, ptr @ili9322_enable._entry, ptr @ili9322_enable._entry_ptr, ptr @ili9322_get_modes._entry, ptr @ili9322_get_modes._entry_ptr, ptr @ili9322_init._entry, ptr @ili9322_init._entry.69, ptr @ili9322_init._entry.72, ptr @ili9322_init._entry.75, ptr @ili9322_init._entry.78, ptr @ili9322_init._entry.81, ptr @ili9322_init._entry.84, ptr @ili9322_init._entry.87, ptr @ili9322_init._entry.90, ptr @ili9322_init._entry.94, ptr @ili9322_init._entry_ptr, ptr @ili9322_init._entry_ptr.71, ptr @ili9322_init._entry_ptr.74, ptr @ili9322_init._entry_ptr.77, ptr @ili9322_init._entry_ptr.80, ptr @ili9322_init._entry_ptr.83, ptr @ili9322_init._entry_ptr.86, ptr @ili9322_init._entry_ptr.89, ptr @ili9322_init._entry_ptr.93, ptr @ili9322_init._entry_ptr.96, ptr @ili9322_power_on._entry, ptr @ili9322_power_on._entry_ptr, ptr @ili9322_probe._entry, ptr @ili9322_probe._entry.12, ptr @ili9322_probe._entry.17, ptr @ili9322_probe._entry.20, ptr @ili9322_probe._entry.24, ptr @ili9322_probe._entry.27, ptr @ili9322_probe._entry.31, ptr @ili9322_probe._entry.34, ptr @ili9322_probe._entry.42, ptr @ili9322_probe._entry.45, ptr @ili9322_probe._entry.49, ptr @ili9322_probe._entry.52, ptr @ili9322_probe._entry.55, ptr @ili9322_probe._entry.58, ptr @ili9322_probe._entry.6, ptr @ili9322_probe._entry.9, ptr @ili9322_probe._entry_ptr, ptr @ili9322_probe._entry_ptr.11, ptr @ili9322_probe._entry_ptr.14, ptr @ili9322_probe._entry_ptr.19, ptr @ili9322_probe._entry_ptr.22, ptr @ili9322_probe._entry_ptr.26, ptr @ili9322_probe._entry_ptr.29, ptr @ili9322_probe._entry_ptr.33, ptr @ili9322_probe._entry_ptr.36, ptr @ili9322_probe._entry_ptr.44, ptr @ili9322_probe._entry_ptr.47, ptr @ili9322_probe._entry_ptr.51, ptr @ili9322_probe._entry_ptr.54, ptr @ili9322_probe._entry_ptr.57, ptr @ili9322_probe._entry_ptr.60, ptr @ili9322_probe._entry_ptr.8, ptr @ili9322_driver, ptr @.str, ptr @ili9322_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @ili9322_regmap_config, ptr @ili9322_probe._key, ptr @ili9322_regmap_bus, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @ili9322_drm_funcs, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @ili9322_inputs, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @srgb_320x240_mode, ptr @srgb_360x240_mode, ptr @prgb_320x240_mode, ptr @yuv_640x320_mode, ptr @yuv_720x360_mode, ptr @itu_r_bt_656_720_mode, ptr @itu_r_bt_656_640_mode, ptr @.str.113, ptr @.str.114, ptr @ili9322_dir_685, ptr @switch.table.ili9322_get_modes], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_inputs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srgb_320x240_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srgb_360x240_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prgb_320x240_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv_640x320_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv_720x360_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itu_r_bt_656_720_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itu_r_bt_656_640_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9322_dir_685 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ili9322_get_modes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ili9322_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ili9322_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ili9322_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_probe(ptr noundef %spi) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 132, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %spi) #7
  %conf = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %conf, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %vreg1out_mv = getelementptr inbounds %struct.ili9322_config, ptr %call3, i32 0, i32 5
  %3 = ptrtoint ptr %vreg1out_mv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vreg1out_mv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %if.end7.if.end38_crit_edge, label %if.else

if.end7.if.end38_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600, i32 %4)
  %cmp = icmp ult i32 %4, 3600
  br i1 %cmp, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %4)
  %cmp16 = icmp ugt i32 %4, 6000
  br i1 %cmp16, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %rem.lhs.trunc = trunc i32 %4 to i16
  %rem376 = urem i16 %rem.lhs.trunc, 100
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem376)
  %cmp22.not = icmp eq i16 %rem376, 0
  br i1 %cmp22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %div.lhs.trunc = add nsw i16 %rem.lhs.trunc, -3600
  %div377 = udiv i16 %div.lhs.trunc, 100
  %div.zext = zext i16 %div377 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div.zext, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili9322_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili9322_probe, %if.then33)) #7
          to label %do.end36 [label %if.then33], !srcloc !235

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili9322_probe.__UNIQUE_ID_ddebug306, ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %7) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %if.end27
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv = trunc i32 %9 to i8
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.end7.if.end38_crit_edge
  %conv.sink = phi i8 [ %conv, %do.end36 ], [ -1, %if.end7.if.end38_crit_edge ]
  %vreg1out37 = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %vreg1out37 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.sink, ptr %vreg1out37, align 4
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf, align 4
  %vcom_high_percent = getelementptr inbounds %struct.ili9322_config, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %vcom_high_percent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vcom_high_percent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool40.not = icmp eq i32 %14, 0
  br i1 %tobool40.not, label %if.end38.if.end76_crit_edge, label %if.else42

if.end38.if.end76_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.else42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %14)
  %cmp43 = icmp ult i32 %14, 37
  br i1 %cmp43, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end49:                                         ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %14)
  %cmp50 = icmp ugt i32 %14, 100
  br i1 %cmp50, label %do.end55, label %if.end56

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  %sub57 = add nsw i32 %14, -37
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub57, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili9322_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili9322_probe, %if.then70)) #7
          to label %do.end73 [label %if.then70], !srcloc !235

if.then70:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili9322_probe.__UNIQUE_ID_ddebug307, ptr noundef %spi, ptr noundef nonnull @.str.23, i32 noundef %17) #7
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %if.end56
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %conv74 = trunc i32 %19 to i8
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %if.end38.if.end76_crit_edge
  %conv74.sink = phi i8 [ %conv74, %do.end73 ], [ -1, %if.end38.if.end76_crit_edge ]
  %vcom_high75 = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %vcom_high75 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv74.sink, ptr %vcom_high75, align 1
  %21 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conf, align 4
  %vcom_amplitude_percent = getelementptr inbounds %struct.ili9322_config, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %vcom_amplitude_percent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vcom_amplitude_percent, align 4
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool78.not = icmp eq i32 %24, 0
  br i1 %tobool78.not, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %vcom_high80 = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %vcom_high80 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %vcom_high80, align 1
  br label %for.body.preheader

if.else81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %24)
  %cmp82 = icmp ult i32 %24, 70
  br i1 %cmp82, label %do.end87, label %if.end88

do.end87:                                         ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end88:                                         ; preds = %if.else81
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %24)
  %cmp89 = icmp ugt i32 %24, 132
  br i1 %cmp89, label %do.end94, label %if.end95

do.end94:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end95:                                         ; preds = %if.end88
  %sub96 = add nsw i32 %24, -70
  %shr = lshr i32 %sub96, 1
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili9322_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili9322_probe, %if.then109)) #7
          to label %do.end112 [label %if.then109], !srcloc !235

if.then109:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili9322_probe.__UNIQUE_ID_ddebug308, ptr noundef %spi, ptr noundef nonnull @.str.30, i32 noundef %29) #7
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %if.end95
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %conv113 = trunc i32 %31 to i8
  %vcom_amplitude = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 11
  %32 = ptrtoint ptr %vcom_amplitude to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv113, ptr %vcom_amplitude, align 2
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end112, %if.then79
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0378 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %33 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %conf, align 4
  %arrayidx = getelementptr %struct.ili9322_config, ptr %34, i32 0, i32 14, i32 %i.0378
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %conv118 = zext i8 %36 to i32
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv118, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %36)
  %cmp119 = icmp ugt i8 %36, 15
  br i1 %cmp119, label %do.end124, label %for.body.if.end125_crit_edge

for.body.if.end125_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

do.end124:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.32, i32 noundef %conv118) #10
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 15, ptr %val, align 4
  br label %if.end125

if.end125:                                        ; preds = %do.end124, %for.body.if.end125_crit_edge
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %conv126 = shl i32 %40, 4
  %41 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %conf, align 4
  %arrayidx128 = getelementptr %struct.ili9322_config, ptr %42, i32 0, i32 13, i32 %i.0378
  %43 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %44 to i32
  store i32 %conv129, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %44)
  %cmp130 = icmp ugt i8 %44, 15
  br i1 %cmp130, label %do.end135, label %if.end125.if.end136_crit_edge

if.end125.if.end136_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

do.end135:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.35, i32 noundef %conv129) #10
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 15, ptr %val, align 4
  br label %if.end136

if.end136:                                        ; preds = %do.end135, %if.end125.if.end136_crit_edge
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  %or = or i32 %47, %conv126
  %conv138 = trunc i32 %or to i8
  %arrayidx140 = getelementptr %struct.ili9322, ptr %call.i, i32 0, i32 8, i32 %i.0378
  %48 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv138, ptr %arrayidx140, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili9322_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili9322_probe, %if.then153)) #7
          to label %for.inc [label %if.then153], !srcloc !235

if.then153:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %i.0378, 1
  %conv154 = and i32 %or, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili9322_probe.__UNIQUE_ID_ddebug309, ptr noundef %spi, ptr noundef nonnull @.str.37, i32 noundef %add, i32 noundef %conv154) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then153, %if.end136
  %inc = add nuw nsw i32 %i.0378, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %supplies = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.38, ptr %supplies, align 4
  %arrayidx160 = getelementptr %struct.ili9322, ptr %call.i, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.39, ptr %arrayidx160, align 4
  %arrayidx163 = getelementptr %struct.ili9322, ptr %call.i, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.40, ptr %arrayidx163, align 4
  %call166 = tail call i32 @devm_regulator_bulk_get(ptr noundef %spi, i32 noundef 3, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %for.end.cleanup_crit_edge, label %if.end170

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end170:                                        ; preds = %for.end
  %consumer = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %52 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %consumer, align 4
  %call173 = tail call i32 @regulator_set_voltage(ptr noundef %53, i32 noundef 2700000, i32 noundef 3600000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end170.cleanup_crit_edge

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end176:                                        ; preds = %if.end170
  %consumer179 = getelementptr %struct.ili9322, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %54 = ptrtoint ptr %consumer179 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %consumer179, align 4
  %call180 = tail call i32 @regulator_set_voltage(ptr noundef %55, i32 noundef 1650000, i32 noundef 3600000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %if.end176.cleanup_crit_edge

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end183:                                        ; preds = %if.end176
  %consumer186 = getelementptr %struct.ili9322, ptr %call.i, i32 0, i32 4, i32 2, i32 1
  %56 = ptrtoint ptr %consumer186 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %consumer186, align 4
  %call187 = tail call i32 @regulator_set_voltage(ptr noundef %57, i32 noundef 2700000, i32 noundef 3600000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end190:                                        ; preds = %if.end183
  %call191 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.41, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call191, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call191, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end197, label %if.end200

do.end197:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.43) #10
  %59 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset_gpio, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %cleanup

if.end200:                                        ; preds = %if.end190
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %62 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 8, ptr %bits_per_word, align 1
  %call201 = tail call i32 @spi_setup(ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %do.end207, label %if.end208

do.end207:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end208:                                        ; preds = %if.end200
  %call210 = tail call ptr @__devm_regmap_init(ptr noundef %spi, ptr noundef nonnull @ili9322_regmap_bus, ptr noundef %spi, ptr noundef nonnull @ili9322_regmap_config, ptr noundef nonnull @ili9322_probe._key, ptr noundef nonnull @.str.48) #7
  %regmap = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call210, ptr %regmap, align 4
  %cmp.i371 = icmp ugt ptr %call210, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i371, label %do.end216, label %if.end219

do.end216:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.50) #10
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %66 = ptrtoint ptr %65 to i32
  br label %cleanup

if.end219:                                        ; preds = %if.end208
  %call221 = call i32 @regmap_read(ptr noundef %call210, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end227, label %do.end226

do.end226:                                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.53, i32 noundef %call221) #10
  br label %cleanup

if.end227:                                        ; preds = %if.end219
  %67 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %68)
  %cmp228.not = icmp eq i32 %68, 150
  br i1 %cmp228.not, label %if.end234, label %do.end233

do.end233:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.56, i32 noundef %68, i32 noundef 150) #10
  br label %cleanup

if.end234:                                        ; preds = %if.end227
  %69 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %conf, align 4
  %input = getelementptr inbounds %struct.ili9322_config, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %72)
  %cmp236 = icmp eq i32 %72, 12
  br i1 %cmp236, label %if.then238, label %if.else255

if.then238:                                       ; preds = %if.end234
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call240 = call i32 @regmap_read(ptr noundef %74, i32 noundef 6, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %if.end246, label %do.end245

do.end245:                                        ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.59, i32 noundef %call240) #10
  br label %cleanup

if.end246:                                        ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val, align 4
  %shr247 = lshr i32 %76, 4
  %and = and i32 %shr247, 15
  %input248 = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 6
  %77 = call i32 @llvm.umin.i32(i32 %and, i32 12)
  %78 = ptrtoint ptr %input248 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %input248, align 4
  br label %if.end259

if.else255:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #9
  %input258 = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 6
  %79 = ptrtoint ptr %input258 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %72, ptr %input258, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.else255, %if.end246
  %panel = getelementptr inbounds %struct.ili9322, ptr %call.i, i32 0, i32 2
  call void @drm_panel_init(ptr noundef %panel, ptr noundef %spi, ptr noundef nonnull @ili9322_drm_funcs, i32 noundef 17) #7
  call void @drm_panel_add(ptr noundef %panel) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end259, %do.end245, %do.end233, %do.end226, %do.end216, %do.end207, %do.end197, %if.end183.cleanup_crit_edge, %if.end176.cleanup_crit_edge, %if.end170.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end94, %do.end87, %do.end55, %do.end48, %do.end26, %do.end20, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end14 ], [ -22, %do.end20 ], [ -22, %do.end26 ], [ -22, %do.end48 ], [ -22, %do.end55 ], [ -22, %do.end87 ], [ -22, %do.end94 ], [ %61, %do.end197 ], [ %call201, %do.end207 ], [ %66, %do.end216 ], [ %call221, %do.end226 ], [ -19, %do.end233 ], [ %call240, %do.end245 ], [ 0, %if.end259 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call166, %for.end.cleanup_crit_edge ], [ %call173, %if.end170.cleanup_crit_edge ], [ %call180, %if.end176.cleanup_crit_edge ], [ %call187, %if.end183.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies.i = getelementptr inbounds %struct.ili9322, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  %panel = getelementptr inbounds %struct.ili9322, ptr %1, i32 0, i32 2
  tail call void @drm_panel_remove(ptr noundef %panel) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili9322_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp = icmp ne i32 %reg, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ili9322_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_regmap_spi_write(ptr noundef %context, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %data, align 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %buf, align 2
  %3 = lshr i16 %1, 8
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, 127
  store i8 %5, ptr %buf, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili9322_regmap_spi_write.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili9322_regmap_spi_write, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 2
  %conv6 = zext i8 %8 to i32
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 1
  %conv8 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili9322_regmap_spi_write.__UNIQUE_ID_ddebug304, ptr noundef %context, ptr noundef nonnull @.str.62, i32 noundef %conv6, i32 noundef %conv8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call10 = call i32 @spi_write_then_read(ptr noundef %context, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_regmap_spi_read(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #2 align 64 {
entry:
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %buf, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili9322_regmap_spi_read.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili9322_regmap_spi_read, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili9322_regmap_spi_read.__UNIQUE_ID_ddebug305, ptr noundef %context, ptr noundef nonnull @.str.64, i32 noundef %conv, i32 noundef %reg_size, i32 noundef %val_size) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %7 = or i8 %6, -128
  store i8 %7, ptr %buf, align 1
  %call8 = call i32 @spi_write_then_read(ptr noundef %context, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef %val, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -8
  %reset_gpio.i = getelementptr i8, ptr %panel, i32 64
  %0 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #7
  %supplies.i = getelementptr i8, ptr %panel, i32 28
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ili9322_power_on.exit.thread, label %if.end

ili9322_power_on.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.65) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #7
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 10) #7
  %regmap.i = getelementptr i8, ptr %panel, i32 24
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i14 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i, label %if.end.i16, label %do.end.i15

do.end.i15:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.67, i32 noundef %call.i14) #10
  br label %ili9322_init.exit

if.end.i16:                                       ; preds = %if.end
  %vreg1out.i = getelementptr i8, ptr %panel, i32 120
  %10 = ptrtoint ptr %vreg1out.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vreg1out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp.not.i = icmp eq i8 %11, -1
  br i1 %cmp.not.i, label %if.end.i16.if.end14.i_crit_edge, label %if.then2.i

if.end.i16.if.end14.i_crit_edge:                  ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then2.i:                                       ; preds = %if.end.i16
  %conv.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 3, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then2.i.if.end14.i_crit_edge, label %do.end11.i

if.then2.i.if.end14.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end11.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.70, i32 noundef %call6.i) #10
  br label %ili9322_init.exit

if.end14.i:                                       ; preds = %if.then2.i.if.end14.i_crit_edge, %if.end.i16.if.end14.i_crit_edge
  %vcom_amplitude.i = getelementptr i8, ptr %panel, i32 122
  %16 = ptrtoint ptr %vcom_amplitude.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vcom_amplitude.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp16.not.i = icmp eq i8 %17, -1
  br i1 %cmp16.not.i, label %if.end14.i.if.end30.i_crit_edge, label %if.then18.i

if.end14.i.if.end30.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then18.i:                                      ; preds = %if.end14.i
  %conv15.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call22.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1, i32 noundef %conv15.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then18.i.if.end30.i_crit_edge, label %do.end27.i

if.then18.i.if.end30.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

do.end27.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.73, i32 noundef %call22.i) #10
  br label %ili9322_init.exit

if.end30.i:                                       ; preds = %if.then18.i.if.end30.i_crit_edge, %if.end14.i.if.end30.i_crit_edge
  %vcom_high.i = getelementptr i8, ptr %panel, i32 121
  %22 = ptrtoint ptr %vcom_high.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vcom_high.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp32.not.i = icmp eq i8 %23, -1
  br i1 %cmp32.not.i, label %if.end30.i.if.end46.i_crit_edge, label %if.then34.i

if.end30.i.if.end46.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then34.i:                                      ; preds = %if.end30.i
  %conv31.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call38.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 2, i32 noundef %conv31.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then34.i.if.end46.i_crit_edge, label %do.end43.i

if.then34.i.if.end46.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

do.end43.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.76, i32 noundef %call38.i) #10
  br label %ili9322_init.exit

if.end46.i:                                       ; preds = %if.then34.i.if.end46.i_crit_edge, %if.end30.i.if.end46.i_crit_edge
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %arrayidx.i = getelementptr i8, ptr %panel, i32 112
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %conv50.i = zext i8 %31 to i32
  %call51.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 16, i32 noundef %conv50.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %for.inc.i, label %if.end46.i.do.end56.i_crit_edge

if.end46.i.do.end56.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

do.end56.i:                                       ; preds = %for.inc.6.i.do.end56.i_crit_edge, %for.inc.5.i.do.end56.i_crit_edge, %for.inc.4.i.do.end56.i_crit_edge, %for.inc.3.i.do.end56.i_crit_edge, %for.inc.2.i.do.end56.i_crit_edge, %for.inc.1.i.do.end56.i_crit_edge, %for.inc.i.do.end56.i_crit_edge, %if.end46.i.do.end56.i_crit_edge
  %i.03.lcssa.i = phi i32 [ 1, %if.end46.i.do.end56.i_crit_edge ], [ 2, %for.inc.i.do.end56.i_crit_edge ], [ 3, %for.inc.1.i.do.end56.i_crit_edge ], [ 4, %for.inc.2.i.do.end56.i_crit_edge ], [ 5, %for.inc.3.i.do.end56.i_crit_edge ], [ 6, %for.inc.4.i.do.end56.i_crit_edge ], [ 7, %for.inc.5.i.do.end56.i_crit_edge ], [ 8, %for.inc.6.i.do.end56.i_crit_edge ]
  %add.lcssa.i = phi i32 [ 16, %if.end46.i.do.end56.i_crit_edge ], [ 17, %for.inc.i.do.end56.i_crit_edge ], [ 18, %for.inc.1.i.do.end56.i_crit_edge ], [ 19, %for.inc.2.i.do.end56.i_crit_edge ], [ 20, %for.inc.3.i.do.end56.i_crit_edge ], [ 21, %for.inc.4.i.do.end56.i_crit_edge ], [ 22, %for.inc.5.i.do.end56.i_crit_edge ], [ 23, %for.inc.6.i.do.end56.i_crit_edge ]
  %call51.lcssa.i = phi i32 [ %call51.i, %if.end46.i.do.end56.i_crit_edge ], [ %call51.1.i, %for.inc.i.do.end56.i_crit_edge ], [ %call51.2.i, %for.inc.1.i.do.end56.i_crit_edge ], [ %call51.3.i, %for.inc.2.i.do.end56.i_crit_edge ], [ %call51.4.i, %for.inc.3.i.do.end56.i_crit_edge ], [ %call51.5.i, %for.inc.4.i.do.end56.i_crit_edge ], [ %call51.6.i, %for.inc.5.i.do.end56.i_crit_edge ], [ %call51.7.i, %for.inc.6.i.do.end56.i_crit_edge ]
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.79, i32 noundef %i.03.lcssa.i, i32 noundef %add.lcssa.i, i32 noundef %call51.lcssa.i) #10
  br label %ili9322_init.exit

for.inc.i:                                        ; preds = %if.end46.i
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %panel, i32 113
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.1.i, align 1
  %conv50.1.i = zext i8 %37 to i32
  %call51.1.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 17, i32 noundef %conv50.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.1.i)
  %tobool52.not.1.i = icmp eq i32 %call51.1.i, 0
  br i1 %tobool52.not.1.i, label %for.inc.1.i, label %for.inc.i.do.end56.i_crit_edge

for.inc.i.do.end56.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %panel, i32 114
  %40 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.2.i, align 1
  %conv50.2.i = zext i8 %41 to i32
  %call51.2.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 18, i32 noundef %conv50.2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.2.i)
  %tobool52.not.2.i = icmp eq i32 %call51.2.i, 0
  br i1 %tobool52.not.2.i, label %for.inc.2.i, label %for.inc.1.i.do.end56.i_crit_edge

for.inc.1.i.do.end56.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %arrayidx.3.i = getelementptr i8, ptr %panel, i32 115
  %44 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.3.i, align 1
  %conv50.3.i = zext i8 %45 to i32
  %call51.3.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 19, i32 noundef %conv50.3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.3.i)
  %tobool52.not.3.i = icmp eq i32 %call51.3.i, 0
  br i1 %tobool52.not.3.i, label %for.inc.3.i, label %for.inc.2.i.do.end56.i_crit_edge

for.inc.2.i.do.end56.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %arrayidx.4.i = getelementptr i8, ptr %panel, i32 116
  %48 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.4.i, align 1
  %conv50.4.i = zext i8 %49 to i32
  %call51.4.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 20, i32 noundef %conv50.4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.4.i)
  %tobool52.not.4.i = icmp eq i32 %call51.4.i, 0
  br i1 %tobool52.not.4.i, label %for.inc.4.i, label %for.inc.3.i.do.end56.i_crit_edge

for.inc.3.i.do.end56.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 4
  %arrayidx.5.i = getelementptr i8, ptr %panel, i32 117
  %52 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.5.i, align 1
  %conv50.5.i = zext i8 %53 to i32
  %call51.5.i = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 21, i32 noundef %conv50.5.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.5.i)
  %tobool52.not.5.i = icmp eq i32 %call51.5.i, 0
  br i1 %tobool52.not.5.i, label %for.inc.5.i, label %for.inc.4.i.do.end56.i_crit_edge

for.inc.4.i.do.end56.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %54 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i, align 4
  %arrayidx.6.i = getelementptr i8, ptr %panel, i32 118
  %56 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.6.i, align 1
  %conv50.6.i = zext i8 %57 to i32
  %call51.6.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 22, i32 noundef %conv50.6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.6.i)
  %tobool52.not.6.i = icmp eq i32 %call51.6.i, 0
  br i1 %tobool52.not.6.i, label %for.inc.6.i, label %for.inc.5.i.do.end56.i_crit_edge

for.inc.5.i.do.end56.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %58 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i, align 4
  %arrayidx.7.i = getelementptr i8, ptr %panel, i32 119
  %60 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.7.i, align 1
  %conv50.7.i = zext i8 %61 to i32
  %call51.7.i = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 23, i32 noundef %conv50.7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.7.i)
  %tobool52.not.7.i = icmp eq i32 %call51.7.i, 0
  br i1 %tobool52.not.7.i, label %for.inc.7.i, label %for.inc.6.i.do.end56.i_crit_edge

for.inc.6.i.do.end56.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %conf.i = getelementptr i8, ptr %panel, i32 -4
  %62 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %conf.i, align 4
  %dclk_active_high.i = getelementptr inbounds %struct.ili9322_config, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %dclk_active_high.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dclk_active_high.i, align 4, !range !236
  %de_active_high.i = getelementptr inbounds %struct.ili9322_config, ptr %63, i32 0, i32 9
  %66 = ptrtoint ptr %de_active_high.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %de_active_high.i, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool65.not.i = icmp eq i8 %67, 0
  %68 = or i8 %65, 8
  %spec.select.i = select i1 %tobool65.not.i, i8 %65, i8 %68
  %hsync_active_high.i = getelementptr inbounds %struct.ili9322_config, ptr %63, i32 0, i32 10
  %69 = ptrtoint ptr %hsync_active_high.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hsync_active_high.i, align 2, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool71.not.i = icmp eq i8 %70, 0
  %71 = or i8 %spec.select.i, 2
  %reg.1.i = select i1 %tobool71.not.i, i8 %spec.select.i, i8 %71
  %vsync_active_high.i = getelementptr inbounds %struct.ili9322_config, ptr %63, i32 0, i32 11
  %72 = ptrtoint ptr %vsync_active_high.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %vsync_active_high.i, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool78.not.i = icmp eq i8 %73, 0
  %74 = or i8 %reg.1.i, 4
  %reg.2.i = select i1 %tobool78.not.i, i8 %reg.1.i, i8 %74
  %75 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap.i, align 4
  %conv85.i = zext i8 %reg.2.i to i32
  %call86.i = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 10, i32 noundef %conv85.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.end93.i, label %do.end91.i

do.end91.i:                                       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.82, i32 noundef %call86.i) #10
  br label %ili9322_init.exit

if.end93.i:                                       ; preds = %for.inc.7.i
  %79 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %conf.i, align 4
  %syncmode.i = getelementptr inbounds %struct.ili9322_config, ptr %80, i32 0, i32 12
  %81 = ptrtoint ptr %syncmode.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %syncmode.i, align 4
  %83 = or i8 %82, 1
  %84 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i, align 4
  %conv99.i = zext i8 %83 to i32
  %call100.i = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 11, i32 noundef %conv99.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %if.end107.i, label %do.end105.i

do.end105.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.85, i32 noundef %call100.i) #10
  br label %ili9322_init.exit

if.end107.i:                                      ; preds = %if.end93.i
  %input.i = getelementptr i8, ptr %panel, i32 68
  %88 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %input.i, align 4
  %.tr.i = trunc i32 %89 to i8
  %conv108.i = shl i8 %.tr.i, 4
  %90 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %conf.i, align 4
  %flip_horizontal.i = getelementptr inbounds %struct.ili9322_config, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %flip_horizontal.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flip_horizontal.i, align 4, !range !236
  %94 = or i8 %93, %conv108.i
  %spec.select1.i = xor i8 %94, 1
  %flip_vertical.i = getelementptr inbounds %struct.ili9322_config, ptr %91, i32 0, i32 3
  %95 = ptrtoint ptr %flip_vertical.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %flip_vertical.i, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool117.not.i = icmp eq i8 %96, 0
  %97 = or i8 %spec.select1.i, 2
  %reg.4.i = select i1 %tobool117.not.i, i8 %97, i8 %spec.select1.i
  %98 = or i8 %reg.4.i, 12
  %99 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i, align 4
  %conv127.i = zext i8 %98 to i32
  %call128.i = tail call i32 @regmap_write(ptr noundef %100, i32 noundef 6, i32 noundef %conv127.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 4
  br i1 %tobool129.not.i, label %ili9322_init.exit.thread, label %do.end133.i

do.end133.i:                                      ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.88, i32 noundef %call128.i) #10
  br label %ili9322_init.exit

ili9322_init.exit.thread:                         ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %input.i, align 4
  %arrayidx141.i = getelementptr [12 x ptr], ptr @ili9322_inputs, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx141.i, align 4
  %107 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %conf.i, align 4
  %syncmode143.i = getelementptr inbounds %struct.ili9322_config, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %syncmode143.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %syncmode143.i, align 4
  %conv144.i = zext i8 %110 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.91, ptr noundef %106, i32 noundef %conv144.i) #10
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %112, ptr noundef nonnull @.str.95) #10
  br label %cleanup

ili9322_init.exit:                                ; preds = %do.end133.i, %do.end105.i, %do.end91.i, %do.end56.i, %do.end43.i, %do.end27.i, %do.end11.i, %do.end.i15
  %retval.0.i17 = phi i32 [ %call.i14, %do.end.i15 ], [ %call6.i, %do.end11.i ], [ %call22.i, %do.end27.i ], [ %call38.i, %do.end43.i ], [ %call51.lcssa.i, %do.end56.i ], [ %call86.i, %do.end91.i ], [ %call100.i, %do.end105.i ], [ %call128.i, %do.end133.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i17)
  %cmp3 = icmp slt i32 %retval.0.i17, 0
  br i1 %cmp3, label %if.then4, label %ili9322_init.exit.cleanup_crit_edge

ili9322_init.exit.cleanup_crit_edge:              ; preds = %ili9322_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %ili9322_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %ili9322_init.exit.cleanup_crit_edge, %ili9322_init.exit.thread, %ili9322_power_on.exit.thread
  %retval.0 = phi i32 [ %retval.0.i17, %if.then4 ], [ %retval.0.i17, %ili9322_init.exit.cleanup_crit_edge ], [ %call.i, %ili9322_power_on.exit.thread ], [ 0, %ili9322_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %panel, i32 24
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 7, i32 noundef 239) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.109) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %panel, i32 24
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 7, i32 noundef 238) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.111) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %supplies.i = getelementptr i8, ptr %panel, i32 28
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9322_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %conf = getelementptr i8, ptr %panel, i32 -4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %display_info, align 8
  %7 = load ptr, ptr %conf, align 4
  %height_mm = getelementptr inbounds %struct.ili9322_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height_mm, align 4
  %height_mm3 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %height_mm3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height_mm3, align 4
  %11 = load ptr, ptr %conf, align 4
  %dclk_active_high = getelementptr inbounds %struct.ili9322_config, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %dclk_active_high to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dclk_active_high, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %bus_flags5 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %14 = ptrtoint ptr %bus_flags5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_flags5, align 8
  %. = select i1 %tobool.not, i32 8, i32 4
  %or6 = or i32 %15, %.
  store i32 %or6, ptr %bus_flags5, align 8
  %16 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conf, align 4
  %de_active_high = getelementptr inbounds %struct.ili9322_config, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %de_active_high to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %de_active_high, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  %.103 = select i1 %tobool8.not, i32 1, i32 2
  %bus_flags13 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %20 = ptrtoint ptr %bus_flags13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bus_flags13, align 8
  %or14 = or i32 %21, %.103
  store i32 %or14, ptr %bus_flags13, align 8
  %input = getelementptr i8, ptr %panel, i32 68
  %22 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %input, align 4
  %switch.tableidx = add i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %24 = icmp ult i32 %switch.tableidx, 10
  br i1 %24, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 891, %switch.maskindex
  %25 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %switch.lobit.not = icmp eq i16 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.ili9322_get_modes, i32 0, i32 %switch.tableidx
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call28 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull %switch.load) #7
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %switch.lookup.do.end_crit_edge, label %if.end32

switch.lookup.do.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.lookup.do.end_crit_edge, %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %27 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.113) #10
  br label %cleanup

if.end32:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_mode_set_name(ptr noundef nonnull %call28) #7
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call28, i32 0, i32 28
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 72, ptr %type, align 2
  %30 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conf, align 4
  %hsync_active_high = getelementptr inbounds %struct.ili9322_config, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %hsync_active_high to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hsync_active_high, align 2, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  %flags38 = getelementptr inbounds %struct.drm_display_mode, ptr %call28, i32 0, i32 11
  %34 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags38, align 4
  %.102 = select i1 %tobool34.not, i32 2, i32 1
  %or39 = or i32 %35, %.102
  store i32 %or39, ptr %flags38, align 4
  %36 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conf, align 4
  %vsync_active_high = getelementptr inbounds %struct.ili9322_config, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %vsync_active_high to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vsync_active_high, align 1, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool42.not = icmp eq i8 %39, 0
  %.104 = select i1 %tobool42.not, i32 8, i32 4
  %flags47 = getelementptr inbounds %struct.drm_display_mode, ptr %call28, i32 0, i32 11
  %40 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags47, align 4
  %or48 = or i32 %41, %.104
  store i32 %or48, ptr %flags47, align 4
  %42 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conf, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %conv = trunc i32 %45 to i16
  %width_mm52 = getelementptr inbounds %struct.drm_display_mode, ptr %call28, i32 0, i32 26
  %46 = ptrtoint ptr %width_mm52 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv, ptr %width_mm52, align 2
  %47 = load ptr, ptr %conf, align 4
  %height_mm54 = getelementptr inbounds %struct.ili9322_config, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %height_mm54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height_mm54, align 4
  %conv55 = trunc i32 %49 to i16
  %height_mm56 = getelementptr inbounds %struct.drm_display_mode, ptr %call28, i32 0, i32 27
  %50 = ptrtoint ptr %height_mm56 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv55, ptr %height_mm56, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end
  %retval.0 = phi i32 [ 1, %if.end32 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !75, !77, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !212, !214, !216, !218, !220, !222, !224}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @__initcall__kmod_panel_ilitek_ili9322__310_946_ili9322_driver_init6, !1, !"__initcall__kmod_panel_ilitek_ili9322__310_946_ili9322_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 946, i32 1}
!2 = !{ptr @__exitcall_ili9322_driver_exit, !1, !"__exitcall_ili9322_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author311, !4, !"__UNIQUE_ID_author311", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 948, i32 1}
!5 = !{ptr @__UNIQUE_ID_description312, !6, !"__UNIQUE_ID_description312", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 949, i32 1}
!7 = !{ptr @__UNIQUE_ID_file313, !8, !"__UNIQUE_ID_file313", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 950, i32 1}
!9 = !{ptr @__UNIQUE_ID_license314, !8, !"__UNIQUE_ID_license314", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 942, i32 11}
!12 = !{ptr @ili9322_driver, !13, !"ili9322_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 938, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 744, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ili9322_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ili9322_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 754, i32 4}
!24 = !{ptr @ili9322_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ili9322_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 758, i32 4}
!28 = !{ptr @ili9322_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ili9322_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 762, i32 4}
!32 = !{ptr @ili9322_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ili9322_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 767, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ili9322_probe.__UNIQUE_ID_ddebug306, !35, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 777, i32 4}
!40 = !{ptr @ili9322_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ili9322_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 781, i32 4}
!44 = !{ptr @ili9322_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ili9322_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 785, i32 3}
!48 = !{ptr @ili9322_probe.__UNIQUE_ID_ddebug307, !47, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 795, i32 4}
!51 = !{ptr @ili9322_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ili9322_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 799, i32 4}
!55 = !{ptr @ili9322_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ili9322_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 804, i32 3}
!59 = !{ptr @ili9322_probe.__UNIQUE_ID_ddebug308, !58, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 811, i32 4}
!62 = !{ptr @ili9322_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ili9322_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 817, i32 4}
!66 = !{ptr @ili9322_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ili9322_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 822, i32 3}
!70 = !{ptr @ili9322_probe.__UNIQUE_ID_ddebug309, !69, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 825, i32 28}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 826, i32 28}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 827, i32 28}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 845, i32 49}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 847, i32 3}
!81 = !{ptr @ili9322_probe._entry.42, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ili9322_probe._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 854, i32 3}
!85 = !{ptr @ili9322_probe._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ili9322_probe._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @ili9322_probe._key, !88, !"_key", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 858, i32 16}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 861, i32 3}
!92 = !{ptr @ili9322_probe._entry.49, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ili9322_probe._entry_ptr.51, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 867, i32 3}
!96 = !{ptr @ili9322_probe._entry.52, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ili9322_probe._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 871, i32 3}
!100 = !{ptr @ili9322_probe._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ili9322_probe._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 880, i32 4}
!104 = !{ptr @ili9322_probe._entry.58, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ili9322_probe._entry_ptr.60, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ili9322_regmap_config, !107, !"ili9322_regmap_config", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 340, i32 35}
!108 = !{ptr @ili9322_regmap_bus, !109, !"ili9322_regmap_bus", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 320, i32 26}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 300, i32 2}
!112 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ili9322_regmap_spi_write.__UNIQUE_ID_ddebug304, !111, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 313, i32 2}
!116 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ili9322_regmap_spi_read.__UNIQUE_ID_ddebug305, !115, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!118 = !{ptr @ili9322_drm_funcs, !119, !"ili9322_drm_funcs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 712, i32 37}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 469, i32 3}
!122 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @ili9322_power_on._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @ili9322_power_on._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 359, i32 3}
!127 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ili9322_init._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ili9322_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 368, i32 4}
!132 = !{ptr @ili9322_init._entry.69, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ili9322_init._entry_ptr.71, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 377, i32 4}
!136 = !{ptr @ili9322_init._entry.72, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ili9322_init._entry_ptr.74, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 387, i32 4}
!140 = !{ptr @ili9322_init._entry.75, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ili9322_init._entry_ptr.77, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 397, i32 4}
!144 = !{ptr @ili9322_init._entry.78, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ili9322_init._entry_ptr.80, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 419, i32 3}
!148 = !{ptr @ili9322_init._entry.81, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ili9322_init._entry_ptr.83, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.85, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 431, i32 3}
!152 = !{ptr @ili9322_init._entry.84, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ili9322_init._entry_ptr.86, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.88, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 445, i32 3}
!156 = !{ptr @ili9322_init._entry.87, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ili9322_init._entry_ptr.89, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.91, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 448, i32 2}
!160 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ili9322_init._entry.90, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ili9322_init._entry_ptr.93, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.95, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 452, i32 2}
!165 = !{ptr @ili9322_init._entry.94, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ili9322_init._entry_ptr.96, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.97, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 180, i32 2}
!169 = !{ptr @.str.98, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 181, i32 2}
!171 = !{ptr @.str.99, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 182, i32 2}
!173 = !{ptr @.str.100, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 183, i32 2}
!175 = !{ptr @.str.101, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 184, i32 2}
!177 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 185, i32 2}
!179 = !{ptr @.str.103, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 186, i32 2}
!181 = !{ptr @.str.104, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 187, i32 2}
!183 = !{ptr @.str.105, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 188, i32 2}
!185 = !{ptr @.str.106, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 189, i32 2}
!187 = !{ptr @.str.107, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 190, i32 2}
!189 = !{ptr @.str.108, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 191, i32 2}
!191 = !{ptr @ili9322_inputs, !192, !"ili9322_inputs", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 179, i32 27}
!193 = !{ptr @.str.109, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 533, i32 3}
!195 = !{ptr @.str.110, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @ili9322_enable._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @ili9322_enable._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.111, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 495, i32 3}
!200 = !{ptr @.str.112, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @ili9322_disable._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @ili9322_disable._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 685, i32 3}
!205 = !{ptr @.str.114, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @ili9322_get_modes._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @ili9322_get_modes._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @srgb_320x240_mode, !209, !"srgb_320x240_mode", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 541, i32 38}
!210 = !{ptr @srgb_360x240_mode, !211, !"srgb_360x240_mode", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 554, i32 38}
!212 = !{ptr @prgb_320x240_mode, !213, !"prgb_320x240_mode", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 568, i32 38}
!214 = !{ptr @yuv_640x320_mode, !215, !"yuv_640x320_mode", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 582, i32 38}
!216 = !{ptr @yuv_720x360_mode, !217, !"yuv_720x360_mode", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 595, i32 38}
!218 = !{ptr @itu_r_bt_656_720_mode, !219, !"itu_r_bt_656_720_mode", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 623, i32 38}
!220 = !{ptr @itu_r_bt_656_640_mode, !221, !"itu_r_bt_656_640_mode", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 609, i32 38}
!222 = !{ptr @ili9322_of_match, !223, !"ili9322_of_match", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 925, i32 34}
!224 = !{ptr @ili9322_dir_685, !225, !"ili9322_dir_685", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9322.c", i32 912, i32 36}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{i64 2148687153, i64 2148687158, i64 2148687171, i64 2148687215, i64 2148687249, i64 2148687270}
!236 = !{i8 0, i8 2}
