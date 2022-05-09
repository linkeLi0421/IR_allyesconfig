; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-tpo-tpg110.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-tpo-tpg110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tpg110_panel_mode = type { ptr, i32, %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.tpg110 = type { ptr, ptr, %struct.drm_panel, ptr, i32, i32, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
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

@__initcall__kmod_panel_tpo_tpg110__249_475_tpg110_driver_init6 = internal global ptr @tpg110_driver_init, section ".initcall6.init", align 4
@tpg110_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @tpg110_probe, ptr @tpg110_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tpg110_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tpg110_driver_exit = internal global ptr @tpg110_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author250 = internal constant [65 x i8] c"panel_tpo_tpg110.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [53 x i8] c"panel_tpo_tpg110.description=TPO TPG110 panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [61 x i8] c"panel_tpo_tpg110.file=drivers/gpu/drm/panel/panel-tpo-tpg110\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [32 x i8] c"panel_tpo_tpg110.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tpo-tpg110-panel\00", [47 x i8] zeroinitializer }, align 32
@tpg110_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tpo,tpg110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"width-mm\00", [23 x i8] zeroinitializer }, align 32
@tpg110_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no panel width specified\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tpg110_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/panel/panel-tpo-tpg110.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpg110_probe._entry_ptr = internal global ptr @tpg110_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"height-mm\00", [22 x i8] zeroinitializer }, align 32
@tpg110_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 417, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no panel height specified\0A\00", [37 x i8] zeroinitializer }, align 32
@tpg110_probe._entry_ptr.10 = internal global ptr @tpg110_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"grestb\00", [25 x i8] zeroinitializer }, align 32
@tpg110_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 422, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no GRESTB GPIO\0A\00", [16 x i8] zeroinitializer }, align 32
@tpg110_probe._entry_ptr.14 = internal global ptr @tpg110_probe._entry.12, section ".printk_index", align 4
@tpg110_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi setup failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@tpg110_probe._entry_ptr.17 = internal global ptr @tpg110_probe._entry.15, section ".printk_index", align 4
@tpg110_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr null, ptr @tpg110_enable, ptr @tpg110_disable, ptr null, ptr @tpg110_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpg110_startup.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"panel_tpo_tpg110\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tpg110_startup\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"de-asserted GRESTB\0A\00", [44 x i8] zeroinitializer }, align 32
@tpg110_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 273, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed communication test\0A\00", [37 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr = internal global ptr @tpg110_startup._entry, section ".printk_index", align 4
@tpg110_startup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.4, i32 279, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TPG110 chip ID: %d version: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.25 = internal global ptr @tpg110_startup._entry.22, section ".printk_index", align 4
@tpg110_startup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.4, i32 286, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"IN 400x240 RGB -> OUT 800x480 RGB (dual scan)\0A\00", [49 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.28 = internal global ptr @tpg110_startup._entry.26, section ".printk_index", align 4
@tpg110_startup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 289, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"IN 480x272 RGB -> OUT 800x480 RGB (dual scan)\0A\00", [49 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.31 = internal global ptr @tpg110_startup._entry.29, section ".printk_index", align 4
@tpg110_startup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.4, i32 292, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"480x640 RGB\0A\00", [19 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.34 = internal global ptr @tpg110_startup._entry.32, section ".printk_index", align 4
@tpg110_startup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.4, i32 295, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"480x272 RGB\0A\00", [19 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.37 = internal global ptr @tpg110_startup._entry.35, section ".printk_index", align 4
@tpg110_startup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.4, i32 298, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"640x480 RGB\0A\00", [19 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.40 = internal global ptr @tpg110_startup._entry.38, section ".printk_index", align 4
@tpg110_startup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.19, ptr @.str.4, i32 301, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"800x480 RGB\0A\00", [19 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.43 = internal global ptr @tpg110_startup._entry.41, section ".printk_index", align 4
@tpg110_startup._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.19, ptr @.str.4, i32 304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ILLEGAL RESOLUTION 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.46 = internal global ptr @tpg110_startup._entry.44, section ".printk_index", align 4
@tpg110_modes = internal constant { [5 x %struct.tpg110_panel_mode], [148 x i8] } { [5 x %struct.tpg110_panel_mode] [%struct.tpg110_panel_mode { ptr @.str.57, i32 7, %struct.drm_display_mode { i32 33200, i16 800, i16 840, i16 841, i16 1057, i16 0, i16 480, i16 490, i16 491, i16 526, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, i32 4 }, %struct.tpg110_panel_mode { ptr @.str.58, i32 6, %struct.drm_display_mode { i32 25200, i16 640, i16 664, i16 665, i16 801, i16 0, i16 480, i16 498, i16 499, i16 526, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, i32 4 }, %struct.tpg110_panel_mode { ptr @.str.59, i32 5, %struct.drm_display_mode { i32 9000, i16 480, i16 482, i16 483, i16 526, i16 0, i16 272, i16 274, i16 275, i16 287, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, i32 4 }, %struct.tpg110_panel_mode { ptr @.str.60, i32 4, %struct.drm_display_mode { i32 20500, i16 480, i16 482, i16 483, i16 526, i16 0, i16 640, i16 644, i16 645, i16 653, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, i32 4 }, %struct.tpg110_panel_mode { ptr @.str.61, i32 0, %struct.drm_display_mode { i32 8300, i16 400, i16 420, i16 421, i16 529, i16 0, i16 240, i16 242, i16 243, i16 263, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, i32 4 }], [148 x i8] zeroinitializer }, align 32
@tpg110_startup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.19, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported mode (%02x) detected\0A\00", [62 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.49 = internal global ptr @tpg110_startup._entry.47, section ".printk_index", align 4
@tpg110_startup._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.19, ptr @.str.4, i32 328, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"resolution and standby is controlled by %s\0A\00", [52 x i8] zeroinitializer }, align 32
@tpg110_startup._entry_ptr.52 = internal global ptr @tpg110_startup._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"software\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hardware\00", [23 x i8] zeroinitializer }, align 32
@tpg110_readwrite_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SPI message error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tpg110_readwrite_reg\00", [43 x i8] zeroinitializer }, align 32
@tpg110_readwrite_reg._entry_ptr = internal global ptr @tpg110_readwrite_reg._entry, section ".printk_index", align 4
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"800x480 RGB\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"640x480 RGB\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"480x272 RGB\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"480x640 RGB\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"400x240 RGB\00", [20 x i8] zeroinitializer }, align 32
@switch.table.tpg110_startup = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 2, i32 1, i32 0, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"tpg110_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 467, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 471, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"tpg110_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 461, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 412, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 414, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 415, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 417, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 420, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 422, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 430, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"tpg110_drm_funcs\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 393, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 267, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 273, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 278, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 286, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 289, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 292, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 295, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 298, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 301, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 304, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [13 x i8] c"tpg110_modes\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 100, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 322, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 327, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 240, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 102, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 118, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 134, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 150, i32 11 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [44 x i8] c"../drivers/gpu/drm/panel/panel-tpo-tpg110.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 166, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant [28 x i8] c"switch.table.tpg110_startup\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_tpg110_driver_exit, ptr @__initcall__kmod_panel_tpo_tpg110__249_475_tpg110_driver_init6, ptr @tpg110_driver_exit, ptr @tpg110_probe._entry, ptr @tpg110_probe._entry.12, ptr @tpg110_probe._entry.15, ptr @tpg110_probe._entry.8, ptr @tpg110_probe._entry_ptr, ptr @tpg110_probe._entry_ptr.10, ptr @tpg110_probe._entry_ptr.14, ptr @tpg110_probe._entry_ptr.17, ptr @tpg110_readwrite_reg._entry, ptr @tpg110_readwrite_reg._entry_ptr, ptr @tpg110_startup._entry, ptr @tpg110_startup._entry.22, ptr @tpg110_startup._entry.26, ptr @tpg110_startup._entry.29, ptr @tpg110_startup._entry.32, ptr @tpg110_startup._entry.35, ptr @tpg110_startup._entry.38, ptr @tpg110_startup._entry.41, ptr @tpg110_startup._entry.44, ptr @tpg110_startup._entry.47, ptr @tpg110_startup._entry.50, ptr @tpg110_startup._entry_ptr, ptr @tpg110_startup._entry_ptr.25, ptr @tpg110_startup._entry_ptr.28, ptr @tpg110_startup._entry_ptr.31, ptr @tpg110_startup._entry_ptr.34, ptr @tpg110_startup._entry_ptr.37, ptr @tpg110_startup._entry_ptr.40, ptr @tpg110_startup._entry_ptr.43, ptr @tpg110_startup._entry_ptr.46, ptr @tpg110_startup._entry_ptr.49, ptr @tpg110_startup._entry_ptr.52, ptr @tpg110_driver, ptr @.str, ptr @tpg110_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @tpg110_drm_funcs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @tpg110_modes, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @switch.table.tpg110_startup], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_modes to i32), i32 620, i32 768, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_startup._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpg110_readwrite_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tpg110_startup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tpg110_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @tpg110_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tpg110_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @tpg110_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpg110_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 48, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %call.i, align 4
  %width = getelementptr inbounds %struct.tpg110, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %width, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %height = getelementptr inbounds %struct.tpg110, ptr %call.i, i32 0, i32 5
  %call.i.i74 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %height, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i74)
  %tobool8.not = icmp sgt i32 %call.i.i74, -1
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %do.end12

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end6.if.end13_crit_edge
  %call14 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef 7) #5
  %grestb = getelementptr inbounds %struct.tpg110, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %grestb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call14, ptr %grestb, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  %or = or i32 %6, 32768
  store i32 %or, ptr %mode, align 8
  %call22 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %do.end26, label %if.end27

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %spi28 = getelementptr inbounds %struct.tpg110, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %spi28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %spi28, align 4
  %call29 = tail call fastcc i32 @tpg110_startup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %panel = getelementptr inbounds %struct.tpg110, ptr %call.i, i32 0, i32 2
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %spi, ptr noundef nonnull @tpg110_drm_funcs, i32 noundef 17) #5
  %call34 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_add(ptr noundef %panel) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end26, %do.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end20 ], [ %call22, %do.end26 ], [ 0, %if.end37 ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end27.cleanup_crit_edge ], [ %call34, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpg110_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.tpg110, ptr %1, i32 0, i32 2
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpg110_startup(ptr nocapture noundef %tpg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %grestb = getelementptr inbounds %struct.tpg110, ptr %tpg, i32 0, i32 6
  %0 = ptrtoint ptr %grestb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grestb, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpg110_startup.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpg110_startup, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpg110_startup.__UNIQUE_ID_ddebug248, ptr noundef %3, ptr noundef nonnull @.str.20) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %tpg, i1 noundef zeroext true, i8 noundef zeroext 0, i8 noundef zeroext 85) #5
  %call.i124 = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %tpg, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %call.i124)
  %cmp.not = icmp eq i8 %call.i124, 85
  br i1 %cmp.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21) #8
  br label %cleanup88

if.end10:                                         ; preds = %do.end
  %call.i125 = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %tpg, i1 noundef zeroext false, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %6 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tpg, align 4
  %conv16 = zext i8 %call.i125 to i32
  %8 = lshr i32 %conv16, 4
  %and = and i32 %conv16, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %8, i32 noundef %and) #8
  %call.i126 = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %tpg, i1 noundef zeroext false, i8 noundef zeroext 2, i8 noundef zeroext 0) #5
  %9 = and i8 %call.i126, 7
  %conv22 = zext i8 %9 to i32
  %10 = zext i32 %conv22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv22, label %do.end54 [
    i32 0, label %do.end25
    i32 1, label %do.end30
    i32 4, label %do.end35
    i32 5, label %do.end40
    i32 6, label %do.end45
    i32 7, label %do.end50
  ]

do.end25:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.27) #8
  br label %sw.epilog

do.end30:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.30) #8
  br label %sw.epilog

do.end35:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.33) #8
  br label %sw.epilog

do.end40:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.36) #8
  br label %sw.epilog

do.end45:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.39) #8
  br label %sw.epilog

do.end50:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.42) #8
  br label %sw.epilog

do.end54:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.45, i32 noundef %conv22) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end54, %do.end50, %do.end45, %do.end40, %do.end35, %do.end30, %do.end25
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp58 = icmp eq i8 %9, 1
  %spec.select = select i1 %cmp58, i8 5, i8 %9
  %trunc = trunc i8 %spec.select to i3
  %switch.tableidx = xor i3 %trunc, -4
  %25 = sext i3 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %25)
  %26 = icmp ult i3 %switch.tableidx, -3
  br i1 %26, label %switch.lookup, label %do.end74

do.end74:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %conv64 = zext i8 %spec.select to i32
  %27 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tpg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.48, i32 noundef %conv64) #8
  br label %cleanup88

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %29 = zext i3 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tpg110_startup, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr [5 x %struct.tpg110_panel_mode], ptr @tpg110_modes, i32 0, i32 %switch.load
  %panel_mode = getelementptr inbounds %struct.tpg110, ptr %tpg, i32 0, i32 3
  %31 = ptrtoint ptr %panel_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx, ptr %panel_mode, align 4
  %call.i127 = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %tpg, i1 noundef zeroext false, i8 noundef zeroext 3, i8 noundef zeroext 0) #5
  %32 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tpg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i127)
  %tobool85.not = icmp sgt i8 %call.i127, -1
  %cond = select i1 %tobool85.not, ptr @.str.54, ptr @.str.53
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond) #8
  %or = or i8 %call.i127, -128
  %call.i128 = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %tpg, i1 noundef zeroext true, i8 noundef zeroext 3, i8 noundef zeroext %or) #5
  br label %cleanup88

cleanup88:                                        ; preds = %switch.lookup, %do.end74, %do.end8
  %retval.0 = phi i32 [ -19, %do.end8 ], [ -19, %do.end74 ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tpg110_readwrite_reg(ptr nocapture noundef readonly %tpg, i1 noundef zeroext %write, i8 noundef zeroext %address, i8 noundef zeroext %outval) unnamed_addr #2 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !123
  %2 = getelementptr inbounds i8, ptr %m, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %8 = call ptr @memset(ptr %t, i32 0, i32 192)
  br i1 %write, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i8 %address, 2
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %shl, ptr %buf, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %outval, ptr %0, align 1
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %11 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %bits_per_word, align 1
  %12 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %t, align 4
  %arrayidx11 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl18 = shl i8 %address, 1
  %13 = or i8 %shl18, 1
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %buf, align 1
  %bits_per_word25 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %15 = ptrtoint ptr %bits_per_word25 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %bits_per_word25, align 1
  %16 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %t, align 4
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rx_buf.sink = phi ptr [ %rx_buf, %if.else ], [ %arrayidx11, %if.then ]
  %17 = ptrtoint ptr %rx_buf.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %0, ptr %rx_buf.sink, align 4
  %18 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %18, align 4
  %20 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %20, align 4
  %22 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %22, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %transfer_list.i55 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i57 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i55, ptr noundef %29, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i57, label %if.end.i.i.i59, label %spi_message_add_tail.exit.spi_message_add_tail.exit60_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit60_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit60

if.end.i.i.i59:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i55, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %m, ptr %transfer_list.i55, align 4
  %prev3.i.i.i58 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i58, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i55, ptr %29, align 4
  br label %spi_message_add_tail.exit60

spi_message_add_tail.exit60:                      ; preds = %if.end.i.i.i59, %spi_message_add_tail.exit.spi_message_add_tail.exit60_crit_edge
  %spi = getelementptr inbounds %struct.tpg110, ptr %tpg, i32 0, i32 1
  %34 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_sync(ptr noundef %35, ptr noundef nonnull %m) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool39.not = icmp eq i32 %call, 0
  br i1 %tobool39.not, label %if.end42, label %do.end

do.end:                                           ; preds = %spi_message_add_tail.exit60
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tpg, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.55, i32 noundef %call) #8
  %conv41 = trunc i32 %call to i8
  br label %cleanup

if.end42:                                         ; preds = %spi_message_add_tail.exit60
  br i1 %write, label %if.end42.cleanup_crit_edge, label %if.end45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end42.cleanup_crit_edge, %do.end
  %retval.0 = phi i8 [ %conv41, %do.end ], [ %39, %if.end45 ], [ 0, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpg110_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -8
  %call.i = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %add.ptr.i, i1 noundef zeroext false, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %0 = or i8 %call.i, 1
  %call.i5 = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %add.ptr.i, i1 noundef zeroext true, i8 noundef zeroext 1, i8 noundef zeroext %0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpg110_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -8
  %call.i = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %add.ptr.i, i1 noundef zeroext false, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %0 = and i8 %call.i, -2
  %call.i5 = tail call fastcc zeroext i8 @tpg110_readwrite_reg(ptr noundef %add.ptr.i, i1 noundef zeroext true, i8 noundef zeroext 1, i8 noundef zeroext %0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpg110_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr i8, ptr %panel, i32 28
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %2 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %display_info, align 8
  %height = getelementptr i8, ptr %panel, i32 32
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %height_mm, align 4
  %panel_mode = getelementptr i8, ptr %panel, i32 24
  %6 = ptrtoint ptr %panel_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel_mode, align 4
  %bus_flags = getelementptr inbounds %struct.tpg110_panel_mode, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_flags, align 4
  %bus_flags3 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %10 = ptrtoint ptr %bus_flags3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bus_flags3, align 8
  %11 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connector, align 8
  %13 = load ptr, ptr %panel_mode, align 4
  %mode5 = getelementptr inbounds %struct.tpg110_panel_mode, ptr %13, i32 0, i32 2
  %call6 = tail call ptr @drm_mode_duplicate(ptr noundef %12, ptr noundef %mode5) #5
  tail call void @drm_mode_set_name(ptr noundef %call6) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call6, i32 0, i32 28
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 72, ptr %type, align 2
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %conv = trunc i32 %16 to i16
  %width_mm8 = getelementptr inbounds %struct.drm_display_mode, ptr %call6, i32 0, i32 26
  %17 = ptrtoint ptr %width_mm8 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %width_mm8, align 2
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %conv10 = trunc i32 %19 to i16
  %height_mm11 = getelementptr inbounds %struct.drm_display_mode, ptr %call6, i32 0, i32 27
  %20 = ptrtoint ptr %height_mm11 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv10, ptr %height_mm11, align 4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call6) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_panel_tpo_tpg110__249_475_tpg110_driver_init6, !1, !"__initcall__kmod_panel_tpo_tpg110__249_475_tpg110_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 475, i32 1}
!2 = !{ptr @__exitcall_tpg110_driver_exit, !1, !"__exitcall_tpg110_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author250, !4, !"__UNIQUE_ID_author250", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 477, i32 1}
!5 = !{ptr @__UNIQUE_ID_description251, !6, !"__UNIQUE_ID_description251", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 478, i32 1}
!7 = !{ptr @__UNIQUE_ID_file252, !8, !"__UNIQUE_ID_file252", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 479, i32 1}
!9 = !{ptr @__UNIQUE_ID_license253, !8, !"__UNIQUE_ID_license253", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 471, i32 11}
!12 = !{ptr @tpg110_driver, !13, !"tpg110_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 467, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 412, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 414, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tpg110_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tpg110_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 415, i32 33}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 417, i32 3}
!28 = !{ptr @tpg110_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tpg110_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 420, i32 36}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 422, i32 3}
!34 = !{ptr @tpg110_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tpg110_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 430, i32 3}
!38 = !{ptr @tpg110_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tpg110_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 267, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tpg110_startup.__UNIQUE_ID_ddebug248, !41, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 273, i32 3}
!47 = !{ptr @tpg110_startup._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tpg110_startup._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 278, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tpg110_startup._entry.22, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tpg110_startup._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 286, i32 3}
!56 = !{ptr @tpg110_startup._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tpg110_startup._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 289, i32 3}
!60 = !{ptr @tpg110_startup._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tpg110_startup._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 292, i32 3}
!64 = !{ptr @tpg110_startup._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tpg110_startup._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 295, i32 3}
!68 = !{ptr @tpg110_startup._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tpg110_startup._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 298, i32 3}
!72 = !{ptr @tpg110_startup._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @tpg110_startup._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 301, i32 3}
!76 = !{ptr @tpg110_startup._entry.41, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tpg110_startup._entry_ptr.43, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 304, i32 3}
!80 = !{ptr @tpg110_startup._entry.44, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tpg110_startup._entry_ptr.46, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 322, i32 3}
!84 = !{ptr @tpg110_startup._entry.47, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @tpg110_startup._entry_ptr.49, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 327, i32 2}
!88 = !{ptr @tpg110_startup._entry.50, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @tpg110_startup._entry_ptr.52, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 240, i32 3}
!94 = !{ptr @.str.56, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @tpg110_readwrite_reg._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @tpg110_readwrite_reg._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 102, i32 11}
!99 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 118, i32 11}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 134, i32 11}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 150, i32 11}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 166, i32 11}
!107 = !{ptr @tpg110_modes, !108, !"tpg110_modes", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 100, i32 39}
!109 = !{ptr @tpg110_drm_funcs, !110, !"tpg110_drm_funcs", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 393, i32 37}
!111 = !{ptr @tpg110_match, !112, !"tpg110_match", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-tpo-tpg110.c", i32 461, i32 34}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2148318224, i64 2148318229, i64 2148318242, i64 2148318286, i64 2148318320, i64 2148318341}
!123 = !{!"auto-init"}
