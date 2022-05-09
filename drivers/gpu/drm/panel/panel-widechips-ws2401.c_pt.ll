; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-widechips-ws2401.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-widechips-ws2401.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ws2401 = type { ptr, %struct.mipi_dbi, %struct.drm_panel, i32, i32, ptr, [2 x %struct.regulator_bulk_data], i8 }
%struct.mipi_dbi = type { %struct.mutex, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }

@__initcall__kmod_panel_widechips_ws2401__312_437_ws2401_driver_init6 = internal global ptr @ws2401_driver_init, section ".initcall6.init", align 4
@ws2401_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ws2401_probe, ptr @ws2401_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ws2401_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ws2401_driver_exit = internal global ptr @ws2401_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [71 x i8] c"panel_widechips_ws2401.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [63 x i8] c"panel_widechips_ws2401.description=Samsung WS2401 panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [73 x i8] c"panel_widechips_ws2401.file=drivers/gpu/drm/panel/panel-widechips-ws2401\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [38 x i8] c"panel_widechips_ws2401.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ws2401-panel\00", [19 x i8] zeroinitializer }, align 32
@ws2401_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,lms380kf01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vci\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccio\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no RESET GPIO\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MIPI DBI init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ws2401_dbi_read_commands = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\DA\DB\DC\00", [28 x i8] zeroinitializer }, align 32
@ws2401_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @ws2401_prepare, ptr @ws2401_enable, ptr @ws2401_disable, ptr @ws2401_unprepare, ptr @ws2401_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get external backlight device\0A\00", [55 x i8] zeroinitializer }, align 32
@ws2401_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panel_widechips_ws2401\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ws2401_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/panel/panel-widechips-ws2401.c\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"no external backlight, using internal backlight\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ws2401\00", [25 x i8] zeroinitializer }, align 32
@ws2401_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @ws2401_set_brightness, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ws2401_bl_props = internal constant { %struct.backlight_properties, [36 x i8] } { %struct.backlight_properties { i32 120, i32 255, i32 0, i32 0, i32 2, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register backlight device\0A\00", [59 x i8] zeroinitializer }, align 32
@ws2401_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.14, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"using external backlight\0A\00", [38 x i8] zeroinitializer }, align 32
@ws2401_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.15, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"added panel\0A\00", [19 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.10, i32 137, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ws2401_power_on\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr = internal global ptr @ws2401_power_on._entry, section ".printk_index", align 4
@ws2401_power_on.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.17, ptr @.str.10, ptr @.str.20, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"de-asserted RESET\0A\00", [45 x i8] zeroinitializer }, align 32
@ws2401_power_on._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 155, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d when sending command %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.24 = internal global ptr @ws2401_power_on._entry.22, section ".printk_index", align 4
@ws2401_power_on._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 156, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.27 = internal global ptr @ws2401_power_on._entry.26, section ".printk_index", align 4
@ws2401_power_on._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 160, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.30 = internal global ptr @ws2401_power_on._entry.29, section ".printk_index", align 4
@ws2401_power_on._rs.32 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 162, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.34 = internal global ptr @ws2401_power_on._entry.33, section ".printk_index", align 4
@ws2401_power_on._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 164, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.38 = internal global ptr @ws2401_power_on._entry.37, section ".printk_index", align 4
@ws2401_power_on._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 166, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.42 = internal global ptr @ws2401_power_on._entry.41, section ".printk_index", align 4
@ws2401_power_on._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 167, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.46 = internal global ptr @ws2401_power_on._entry.45, section ".printk_index", align 4
@__const.ws2401_power_on.d.47 = private unnamed_addr constant [6 x i8] c"\06\03~\03\127", align 1
@ws2401_power_on._rs.48 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 169, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.50 = internal global ptr @ws2401_power_on._entry.49, section ".printk_index", align 4
@__const.ws2401_power_on.d.51 = private unnamed_addr constant [6 x i8] c"\06\03~\02\157", align 1
@ws2401_power_on._rs.52 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 171, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.54 = internal global ptr @ws2401_power_on._entry.53, section ".printk_index", align 4
@ws2401_power_on._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 172, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.58 = internal global ptr @ws2401_power_on._entry.57, section ".printk_index", align 4
@__const.ws2401_power_on.d.59 = private unnamed_addr constant [10 x i8] c"\10\A9\00\01D\B4PP\00D", align 1
@ws2401_power_on._rs.60 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 178, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.62 = internal global ptr @ws2401_power_on._entry.61, section ".printk_index", align 4
@__const.ws2401_power_on.d.63 = private unnamed_addr constant [6 x i8] c"\01\00\00\00\14\16", align 1
@ws2401_power_on._rs.64 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 180, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.66 = internal global ptr @ws2401_power_on._entry.65, section ".printk_index", align 4
@__const.ws2401_power_on.d.67 = private unnamed_addr constant [3 x i8] c"0SS", align 1
@ws2401_power_on._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 181, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.70 = internal global ptr @ws2401_power_on._entry.69, section ".printk_index", align 4
@__const.ws2401_power_on.d.71 = private unnamed_addr constant [9 x i8] c"\03\0C\00\00\00\01\01\06\03", align 1
@ws2401_power_on._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 184, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.74 = internal global ptr @ws2401_power_on._entry.73, section ".printk_index", align 4
@ws2401_power_on._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 185, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.78 = internal global ptr @ws2401_power_on._entry.77, section ".printk_index", align 4
@ws2401_power_on._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 186, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.82 = internal global ptr @ws2401_power_on._entry.81, section ".printk_index", align 4
@ws2401_power_on._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 191, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.86 = internal global ptr @ws2401_power_on._entry.85, section ".printk_index", align 4
@__const.ws2401_power_on.d.87 = private unnamed_addr constant [17 x i8] c"\00[BA?B=8.+*'\22'\0F\00\00", align 1
@ws2401_power_on._rs.88 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 194, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.90 = internal global ptr @ws2401_power_on._entry.89, section ".printk_index", align 4
@ws2401_power_on._rs.92 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 197, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.94 = internal global ptr @ws2401_power_on._entry.93, section ".printk_index", align 4
@__const.ws2401_power_on.d.95 = private unnamed_addr constant [17 x i8] c"\00Y@?>A=9/,+)%)\19\08\00", align 1
@ws2401_power_on._rs.96 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 200, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.98 = internal global ptr @ws2401_power_on._entry.97, section ".printk_index", align 4
@ws2401_power_on._rs.100 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 203, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.102 = internal global ptr @ws2401_power_on._entry.101, section ".printk_index", align 4
@__const.ws2401_power_on.d.103 = private unnamed_addr constant [17 x i8] c"\00W;:;?;8'8*&\224\0C\09\00", align 1
@ws2401_power_on._rs.104 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 206, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.106 = internal global ptr @ws2401_power_on._entry.105, section ".printk_index", align 4
@ws2401_power_on._rs.108 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 209, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.110 = internal global ptr @ws2401_power_on._entry.109, section ".printk_index", align 4
@ws2401_power_on._rs.111 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 211, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.113 = internal global ptr @ws2401_power_on._entry.112, section ".printk_index", align 4
@ws2401_power_on._rs.115 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.10, i32 217, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_power_on._entry_ptr.117 = internal global ptr @ws2401_power_on._entry.116, section ".printk_index", align 4
@ws2401_read_mtp_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.10, i32 112, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to read MTP ID 1\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ws2401_read_mtp_id\00", [45 x i8] zeroinitializer }, align 32
@ws2401_read_mtp_id._entry_ptr = internal global ptr @ws2401_read_mtp_id._entry, section ".printk_index", align 4
@ws2401_read_mtp_id._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.10, i32 117, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to read MTP ID 2\0A\00", [39 x i8] zeroinitializer }, align 32
@ws2401_read_mtp_id._entry_ptr.122 = internal global ptr @ws2401_read_mtp_id._entry.120, section ".printk_index", align 4
@ws2401_read_mtp_id._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.10, i32 122, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to read MTP ID 3\0A\00", [39 x i8] zeroinitializer }, align 32
@ws2401_read_mtp_id._entry_ptr.125 = internal global ptr @ws2401_read_mtp_id._entry.123, section ".printk_index", align 4
@ws2401_read_mtp_id._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.10, i32 125, ptr @.str.128, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MTP ID: %02x %02x %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ws2401_read_mtp_id._entry_ptr.129 = internal global ptr @ws2401_read_mtp_id._entry.126, section ".printk_index", align 4
@ws2401_enable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ws2401_enable = private unnamed_addr constant [14 x i8] c"ws2401_enable\00", align 1
@ws2401_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ws2401_enable, ptr @.str.10, i32 265, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_enable._entry_ptr = internal global ptr @ws2401_enable._entry, section ".printk_index", align 4
@ws2401_disable._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ws2401_disable = private unnamed_addr constant [15 x i8] c"ws2401_disable\00", align 1
@ws2401_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ws2401_disable, ptr @.str.10, i32 249, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_disable._entry_ptr = internal global ptr @ws2401_disable._entry, section ".printk_index", align 4
@ws2401_unprepare._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ws2401_unprepare = private unnamed_addr constant [17 x i8] c"ws2401_unprepare\00", align 1
@ws2401_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ws2401_unprepare, ptr @.str.10, i32 238, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_unprepare._entry_ptr = internal global ptr @ws2401_unprepare._entry, section ".printk_index", align 4
@ws2401_unprepare._rs.130 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_unprepare._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ws2401_unprepare, ptr @.str.10, i32 239, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_unprepare._entry_ptr.132 = internal global ptr @ws2401_unprepare._entry.131, section ".printk_index", align 4
@ws2401_get_modes.bus_format = internal constant { i32, [28 x i8] } { i32 4106, [28 x i8] zeroinitializer }, align 32
@lms380kf01_480_800_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 24960, i16 480, i16 488, i16 498, i16 506, i16 0, i16 800, i16 808, i16 810, i16 828, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 50, i16 84, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ws2401_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.10, i32 290, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to add mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ws2401_get_modes\00", [47 x i8] zeroinitializer }, align 32
@ws2401_get_modes._entry_ptr = internal global ptr @ws2401_get_modes._entry, section ".printk_index", align 4
@ws2401_set_brightness._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ws2401_set_brightness = private unnamed_addr constant [22 x i8] c"ws2401_set_brightness\00", align 1
@ws2401_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ws2401_set_brightness, ptr @.str.10, i32 325, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_set_brightness._entry_ptr = internal global ptr @ws2401_set_brightness._entry, section ".printk_index", align 4
@ws2401_set_brightness._rs.135 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_set_brightness._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ws2401_set_brightness, ptr @.str.10, i32 327, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_set_brightness._entry_ptr.137 = internal global ptr @ws2401_set_brightness._entry.136, section ".printk_index", align 4
@ws2401_set_brightness._rs.138 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ws2401_set_brightness._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ws2401_set_brightness, ptr @.str.10, i32 328, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@ws2401_set_brightness._entry_ptr.140 = internal global ptr @ws2401_set_brightness._entry.139, section ".printk_index", align 4
@___asan_gen_.141 = private unnamed_addr constant [14 x i8] c"ws2401_driver\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 429, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 433, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"ws2401_match\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 423, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 359, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 360, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 365, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 367, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 370, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 375, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant [25 x i8] c"ws2401_dbi_read_commands\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 50, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"ws2401_drm_funcs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 310, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 388, i32 5 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 391, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 393, i32 40 }
@___asan_gen_.192 = private unnamed_addr constant [14 x i8] c"ws2401_bl_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 334, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"ws2401_bl_props\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 338, i32 42 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 397, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 399, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 405, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 137, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 149, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 155, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 156, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 160, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 162, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 164, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 166, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 167, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 168, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 170, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 172, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 173, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 179, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 181, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 182, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 185, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 186, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 189, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 192, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 195, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 198, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 201, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 204, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 209, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 211, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 217, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 112, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 117, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 122, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 125, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 265, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 249, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 238, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 239, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [11 x i8] c"bus_format\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 280, i32 19 }
@___asan_gen_.438 = private unnamed_addr constant [24 x i8] c"lms380kf01_480_800_mode\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 80, i32 38 }
@___asan_gen_.447 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 290, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 325, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 327, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.466 = private constant [50 x i8] c"../drivers/gpu/drm/panel/panel-widechips-ws2401.c\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 328, i32 3 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_ws2401_driver_exit, ptr @__initcall__kmod_panel_widechips_ws2401__312_437_ws2401_driver_init6, ptr @ws2401_disable._entry, ptr @ws2401_disable._entry_ptr, ptr @ws2401_driver_exit, ptr @ws2401_enable._entry, ptr @ws2401_enable._entry_ptr, ptr @ws2401_get_modes._entry, ptr @ws2401_get_modes._entry_ptr, ptr @ws2401_power_on._entry, ptr @ws2401_power_on._entry.101, ptr @ws2401_power_on._entry.105, ptr @ws2401_power_on._entry.109, ptr @ws2401_power_on._entry.112, ptr @ws2401_power_on._entry.116, ptr @ws2401_power_on._entry.22, ptr @ws2401_power_on._entry.26, ptr @ws2401_power_on._entry.29, ptr @ws2401_power_on._entry.33, ptr @ws2401_power_on._entry.37, ptr @ws2401_power_on._entry.41, ptr @ws2401_power_on._entry.45, ptr @ws2401_power_on._entry.49, ptr @ws2401_power_on._entry.53, ptr @ws2401_power_on._entry.57, ptr @ws2401_power_on._entry.61, ptr @ws2401_power_on._entry.65, ptr @ws2401_power_on._entry.69, ptr @ws2401_power_on._entry.73, ptr @ws2401_power_on._entry.77, ptr @ws2401_power_on._entry.81, ptr @ws2401_power_on._entry.85, ptr @ws2401_power_on._entry.89, ptr @ws2401_power_on._entry.93, ptr @ws2401_power_on._entry.97, ptr @ws2401_power_on._entry_ptr, ptr @ws2401_power_on._entry_ptr.102, ptr @ws2401_power_on._entry_ptr.106, ptr @ws2401_power_on._entry_ptr.110, ptr @ws2401_power_on._entry_ptr.113, ptr @ws2401_power_on._entry_ptr.117, ptr @ws2401_power_on._entry_ptr.24, ptr @ws2401_power_on._entry_ptr.27, ptr @ws2401_power_on._entry_ptr.30, ptr @ws2401_power_on._entry_ptr.34, ptr @ws2401_power_on._entry_ptr.38, ptr @ws2401_power_on._entry_ptr.42, ptr @ws2401_power_on._entry_ptr.46, ptr @ws2401_power_on._entry_ptr.50, ptr @ws2401_power_on._entry_ptr.54, ptr @ws2401_power_on._entry_ptr.58, ptr @ws2401_power_on._entry_ptr.62, ptr @ws2401_power_on._entry_ptr.66, ptr @ws2401_power_on._entry_ptr.70, ptr @ws2401_power_on._entry_ptr.74, ptr @ws2401_power_on._entry_ptr.78, ptr @ws2401_power_on._entry_ptr.82, ptr @ws2401_power_on._entry_ptr.86, ptr @ws2401_power_on._entry_ptr.90, ptr @ws2401_power_on._entry_ptr.94, ptr @ws2401_power_on._entry_ptr.98, ptr @ws2401_read_mtp_id._entry, ptr @ws2401_read_mtp_id._entry.120, ptr @ws2401_read_mtp_id._entry.123, ptr @ws2401_read_mtp_id._entry.126, ptr @ws2401_read_mtp_id._entry_ptr, ptr @ws2401_read_mtp_id._entry_ptr.122, ptr @ws2401_read_mtp_id._entry_ptr.125, ptr @ws2401_read_mtp_id._entry_ptr.129, ptr @ws2401_set_brightness._entry, ptr @ws2401_set_brightness._entry.136, ptr @ws2401_set_brightness._entry.139, ptr @ws2401_set_brightness._entry_ptr, ptr @ws2401_set_brightness._entry_ptr.137, ptr @ws2401_set_brightness._entry_ptr.140, ptr @ws2401_unprepare._entry, ptr @ws2401_unprepare._entry.131, ptr @ws2401_unprepare._entry_ptr, ptr @ws2401_unprepare._entry_ptr.132, ptr @ws2401_driver, ptr @.str, ptr @ws2401_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ws2401_dbi_read_commands, ptr @ws2401_drm_funcs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ws2401_bl_ops, ptr @ws2401_bl_props, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ws2401_power_on._rs, ptr @.str.21, ptr @.str.23, ptr @ws2401_power_on._rs.25, ptr @ws2401_power_on._rs.28, ptr @ws2401_power_on._rs.32, ptr @ws2401_power_on._rs.36, ptr @ws2401_power_on._rs.40, ptr @ws2401_power_on._rs.44, ptr @ws2401_power_on._rs.48, ptr @ws2401_power_on._rs.52, ptr @ws2401_power_on._rs.56, ptr @ws2401_power_on._rs.60, ptr @ws2401_power_on._rs.64, ptr @ws2401_power_on._rs.68, ptr @ws2401_power_on._rs.72, ptr @ws2401_power_on._rs.76, ptr @ws2401_power_on._rs.80, ptr @ws2401_power_on._rs.84, ptr @ws2401_power_on._rs.88, ptr @ws2401_power_on._rs.92, ptr @ws2401_power_on._rs.96, ptr @ws2401_power_on._rs.100, ptr @ws2401_power_on._rs.104, ptr @ws2401_power_on._rs.108, ptr @ws2401_power_on._rs.111, ptr @ws2401_power_on._rs.115, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.128, ptr @ws2401_enable._rs, ptr @ws2401_disable._rs, ptr @ws2401_unprepare._rs, ptr @ws2401_unprepare._rs.130, ptr @ws2401_get_modes.bus_format, ptr @lms380kf01_480_800_mode, ptr @.str.133, ptr @.str.134, ptr @ws2401_set_brightness._rs, ptr @ws2401_set_brightness._rs.135, ptr @ws2401_set_brightness._rs.138], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_dbi_read_commands to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_bl_props to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.48 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.52 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.64 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.92 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.96 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.100 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.104 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.108 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.111 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._rs.115 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_power_on._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_read_mtp_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_read_mtp_id._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_read_mtp_id._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_read_mtp_id._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_enable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_disable._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_unprepare._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_unprepare._rs.130 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_unprepare._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_get_modes.bus_format to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lms380kf01_480_800_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_set_brightness._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_set_brightness._rs.135 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_set_brightness._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_set_brightness._rs.138 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ws2401_set_brightness._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ws2401_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ws2401_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ws2401_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_probe(ptr noundef %spi) #2 align 64 {
entry:
  %id1.i = alloca i8, align 1
  %id2.i = alloca i8, align 1
  %id3.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 192, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 4
  %regulators = getelementptr inbounds %struct.ws2401, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %regulators, align 4
  %arrayidx4 = getelementptr %struct.ws2401, ptr %call.i, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.2, ptr %arrayidx4, align 4
  %call7 = tail call i32 @devm_regulator_bulk_get(ptr noundef %spi, i32 noundef 2, ptr noundef %regulators) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call7, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef 7) #5
  %reset = getelementptr inbounds %struct.ws2401, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call12 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %4, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %dbi = getelementptr inbounds %struct.ws2401, ptr %call.i, i32 0, i32 1
  %call20 = tail call i32 @mipi_dbi_spi_init(ptr noundef %spi, ptr noundef %dbi, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call20, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %read_commands = getelementptr inbounds %struct.ws2401, ptr %call.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %read_commands to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ws2401_dbi_read_commands, ptr %read_commands, align 4
  %call26 = tail call fastcc i32 @ws2401_power_on(ptr noundef nonnull %call.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id1.i) #5
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %id1.i, align 1, !annotation !234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id2.i) #5
  %7 = ptrtoint ptr %id2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %id2.i, align 1, !annotation !234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id3.i) #5
  %8 = ptrtoint ptr %id3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %id3.i, align 1, !annotation !234
  %call.i140 = call i32 @mipi_dbi_command_read(ptr noundef %dbi, i8 noundef zeroext -38, ptr noundef nonnull %id1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool.not.i = icmp eq i32 %call.i140, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.118) #8
  br label %ws2401_read_mtp_id.exit

if.end.i:                                         ; preds = %if.end24
  %call2.i = call i32 @mipi_dbi_command_read(ptr noundef %dbi, i8 noundef zeroext -37, ptr noundef nonnull %id2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.121) #8
  br label %ws2401_read_mtp_id.exit

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = call i32 @mipi_dbi_command_read(ptr noundef %dbi, i8 noundef zeroext -36, ptr noundef nonnull %id3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  br i1 %tobool11.not.i, label %do.end20.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.124) #8
  br label %ws2401_read_mtp_id.exit

do.end20.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %id1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id1.i, align 1
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %id2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id2.i, align 1
  %conv22.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id3.i, align 1
  %conv23.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.127, i32 noundef %conv.i, i32 noundef %conv22.i, i32 noundef %conv23.i) #8
  br label %ws2401_read_mtp_id.exit

ws2401_read_mtp_id.exit:                          ; preds = %do.end20.i, %do.end15.i, %do.end7.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id3.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id2.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i) #5
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %22, i32 noundef 1) #5
  %call.i141 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #5
  %panel = getelementptr inbounds %struct.ws2401, ptr %call.i, i32 0, i32 2
  call void @drm_panel_init(ptr noundef %panel, ptr noundef %spi, ptr noundef nonnull @ws2401_drm_funcs, i32 noundef 17) #5
  %call29 = call i32 @drm_panel_of_backlight(ptr noundef %panel) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %ws2401_read_mtp_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call29, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end33:                                         ; preds = %ws2401_read_mtp_id.exit
  %backlight = getelementptr inbounds %struct.ws2401, ptr %call.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %backlight, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %do.body, label %do.body55

do.body:                                          ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ws2401_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ws2401_probe, %if.then41)) #5
          to label %do.end [label %if.then41], !srcloc !235

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ws2401_probe.__UNIQUE_ID_ddebug309, ptr noundef %spi, ptr noundef nonnull @.str.11) #5
  br label %do.end

do.end:                                           ; preds = %if.then41, %do.body
  %call43 = call ptr @devm_backlight_device_register(ptr noundef %spi, ptr noundef nonnull @.str.12, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @ws2401_bl_ops, ptr noundef nonnull @ws2401_bl_props) #5
  %25 = ptrtoint ptr %backlight to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call43, ptr %backlight, align 4
  %cmp.i142 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then49, label %do.end.if.end71_crit_edge

do.end.if.end71_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call43 to i32
  %call53 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %26, ptr noundef nonnull @.str.13) #5
  br label %cleanup

do.body55:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ws2401_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ws2401_probe, %if.then67)) #5
          to label %if.end71 [label %if.then67], !srcloc !235

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ws2401_probe.__UNIQUE_ID_ddebug310, ptr noundef %spi, ptr noundef nonnull @.str.14) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %do.body55, %do.end.if.end71_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @drm_panel_add(ptr noundef %panel) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ws2401_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ws2401_probe, %if.then85)) #5
          to label %cleanup [label %if.then85], !srcloc !235

if.then85:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ws2401_probe.__UNIQUE_ID_ddebug311, ptr noundef %spi, ptr noundef nonnull @.str.15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.end71, %if.then49, %if.then31, %if.then22, %if.then15, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ %call18, %if.then15 ], [ %call23, %if.then22 ], [ %call32, %if.then31 ], [ %call53, %if.then49 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then85 ], [ 0, %if.end71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %panel = getelementptr inbounds %struct.ws2401, ptr %1, i32 0, i32 2
  tail call void @drm_panel_remove(ptr noundef %panel) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_spi_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ws2401_power_on(ptr noundef %ws) unnamed_addr #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  %d53 = alloca [2 x i8], align 2
  %d74 = alloca [1 x i8], align 1
  %d95 = alloca [1 x i8], align 1
  %d116 = alloca [1 x i8], align 1
  %d137 = alloca [2 x i8], align 2
  %d158 = alloca [6 x i8], align 1
  %d179 = alloca [6 x i8], align 1
  %d200 = alloca [2 x i8], align 2
  %d221 = alloca [10 x i8], align 1
  %d242 = alloca [6 x i8], align 1
  %d263 = alloca [3 x i8], align 1
  %d284 = alloca [9 x i8], align 1
  %d305 = alloca [4 x i8], align 4
  %d326 = alloca [1 x i8], align 1
  %d347 = alloca [17 x i8], align 1
  %d368 = alloca [17 x i8], align 1
  %d389 = alloca [17 x i8], align 1
  %d410 = alloca [17 x i8], align 1
  %d431 = alloca [17 x i8], align 1
  %d452 = alloca [17 x i8], align 1
  %d475 = alloca [1 x i8], align 1
  %d496 = alloca [1 x i8], align 1
  %d517 = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbi1 = getelementptr inbounds %struct.ws2401, ptr %ws, i32 0, i32 1
  %regulators = getelementptr inbounds %struct.ws2401, ptr %ws, i32 0, i32 6
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ws, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 10) #5
  %reset = getelementptr inbounds %struct.ws2401, ptr %ws, i32 0, i32 5
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 10) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ws2401_power_on.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ws2401_power_on, %if.then8)) #5
          to label %do.end12 [label %if.then8], !srcloc !235

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ws, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ws2401_power_on.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.20) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %if.end
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %spi = getelementptr inbounds %struct.ws2401, ptr %ws, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi, align 4
  %call17 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 17, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end12.if.end30_crit_edge, label %do.body20

do.end12.if.end30_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body20:                                        ; preds = %do.end12
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body20.if.end30_crit_edge, label %do.end26

do.body20.if.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.23, i32 noundef %call17, i32 noundef 17) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %do.body20.if.end30_crit_edge, %do.end12.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  %call38 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 17, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end30.if.end51_crit_edge, label %do.body41

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.body41:                                        ; preds = %if.end30
  %call42 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.25, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.if.end51_crit_edge, label %do.end47

do.body41.if.end51_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23, i32 noundef %call38, i32 noundef 17) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %do.body41.if.end51_crit_edge, %if.end30.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 50) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d53) #5
  %12 = ptrtoint ptr %d53 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 23130, ptr %d53, align 2
  %13 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi, align 4
  %call59 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -16, ptr noundef nonnull %d53, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end51.if.end72_crit_edge, label %do.body62

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.body62:                                        ; preds = %if.end51
  %call63 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.28, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body62.if.end72_crit_edge, label %do.end68

do.body62.if.end72_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.23, i32 noundef %call59, i32 noundef 240) #8
  br label %if.end72

if.end72:                                         ; preds = %do.end68, %do.body62.if.end72_crit_edge, %if.end51.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d53) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d74) #5
  %15 = ptrtoint ptr %d74 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 18, ptr %d74, align 1
  %16 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi, align 4
  %call80 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -72, ptr noundef nonnull %d74, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end72.if.end93_crit_edge, label %do.body83

if.end72.if.end93_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.body83:                                        ; preds = %if.end72
  %call84 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.32, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body83.if.end93_crit_edge, label %do.end89

do.body83.if.end93_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.23, i32 noundef %call80, i32 noundef 184) #8
  br label %if.end93

if.end93:                                         ; preds = %do.end89, %do.body83.if.end93_crit_edge, %if.end72.if.end93_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d74) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d95) #5
  %18 = ptrtoint ptr %d95 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %d95, align 1
  %19 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi, align 4
  %call101 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 54, ptr noundef nonnull %d95, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end93.if.end114_crit_edge, label %do.body104

if.end93.if.end114_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

do.body104:                                       ; preds = %if.end93
  %call105 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.36, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %do.body104.if.end114_crit_edge, label %do.end110

do.body104.if.end114_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

do.end110:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.23, i32 noundef %call101, i32 noundef 54) #8
  br label %if.end114

if.end114:                                        ; preds = %do.end110, %do.body104.if.end114_crit_edge, %if.end93.if.end114_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d95) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d116) #5
  %21 = ptrtoint ptr %d116 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 112, ptr %d116, align 1
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi, align 4
  %call122 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 58, ptr noundef nonnull %d116, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end114.if.end135_crit_edge, label %do.body125

if.end114.if.end135_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.body125:                                       ; preds = %if.end114
  %call126 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.40, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body125.if.end135_crit_edge, label %do.end131

do.body125.if.end135_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.23, i32 noundef %call122, i32 noundef 58) #8
  br label %if.end135

if.end135:                                        ; preds = %do.end131, %do.body125.if.end135_crit_edge, %if.end114.if.end135_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d116) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d137) #5
  %24 = ptrtoint ptr %d137 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 15, ptr %d137, align 2
  %25 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi, align 4
  %call143 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -65, ptr noundef nonnull %d137, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end135.if.end156_crit_edge, label %do.body146

if.end135.if.end156_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end156

do.body146:                                       ; preds = %if.end135
  %call147 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.44, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %do.body146.if.end156_crit_edge, label %do.end152

do.body146.if.end156_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end156

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.23, i32 noundef %call143, i32 noundef 191) #8
  br label %if.end156

if.end156:                                        ; preds = %do.end152, %do.body146.if.end156_crit_edge, %if.end135.if.end156_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d137) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d158) #5
  %27 = call ptr @memcpy(ptr %d158, ptr @__const.ws2401_power_on.d.47, i32 6)
  %28 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi, align 4
  %call164 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -67, ptr noundef nonnull %d158, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end156.if.end177_crit_edge, label %do.body167

if.end156.if.end177_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.body167:                                       ; preds = %if.end156
  %call168 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.48, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %do.body167.if.end177_crit_edge, label %do.end173

do.body167.if.end177_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.end173:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.23, i32 noundef %call164, i32 noundef 189) #8
  br label %if.end177

if.end177:                                        ; preds = %do.end173, %do.body167.if.end177_crit_edge, %if.end156.if.end177_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d158) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d179) #5
  %30 = call ptr @memcpy(ptr %d179, ptr @__const.ws2401_power_on.d.51, i32 6)
  %31 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi, align 4
  %call185 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -66, ptr noundef nonnull %d179, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end177.if.end198_crit_edge, label %do.body188

if.end177.if.end198_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

do.body188:                                       ; preds = %if.end177
  %call189 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.52, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %do.body188.if.end198_crit_edge, label %do.end194

do.body188.if.end198_crit_edge:                   ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

do.end194:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.23, i32 noundef %call185, i32 noundef 190) #8
  br label %if.end198

if.end198:                                        ; preds = %do.end194, %do.body188.if.end198_crit_edge, %if.end177.if.end198_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d179) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d200) #5
  %33 = ptrtoint ptr %d200 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 527, ptr %d200, align 2
  %34 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi, align 4
  %call206 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -65, ptr noundef nonnull %d200, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end198.if.end219_crit_edge, label %do.body209

if.end198.if.end219_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

do.body209:                                       ; preds = %if.end198
  %call210 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.56, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %do.body209.if.end219_crit_edge, label %do.end215

do.body209.if.end219_crit_edge:                   ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

do.end215:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.23, i32 noundef %call206, i32 noundef 191) #8
  br label %if.end219

if.end219:                                        ; preds = %do.end215, %do.body209.if.end219_crit_edge, %if.end198.if.end219_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d200) #5
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %d221) #5
  %36 = call ptr @memcpy(ptr %d221, ptr @__const.ws2401_power_on.d.59, i32 10)
  %37 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi, align 4
  %call227 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -13, ptr noundef nonnull %d221, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end219.if.end240_crit_edge, label %do.body230

if.end219.if.end240_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end240

do.body230:                                       ; preds = %if.end219
  %call231 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.60, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %do.body230.if.end240_crit_edge, label %do.end236

do.body230.if.end240_crit_edge:                   ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end240

do.end236:                                        ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.23, i32 noundef %call227, i32 noundef 243) #8
  br label %if.end240

if.end240:                                        ; preds = %do.end236, %do.body230.if.end240_crit_edge, %if.end219.if.end240_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %d221) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d242) #5
  %39 = call ptr @memcpy(ptr %d242, ptr @__const.ws2401_power_on.d.63, i32 6)
  %40 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi, align 4
  %call248 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -14, ptr noundef nonnull %d242, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.end240.if.end261_crit_edge, label %do.body251

if.end240.if.end261_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end261

do.body251:                                       ; preds = %if.end240
  %call252 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.64, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %do.body251.if.end261_crit_edge, label %do.end257

do.body251.if.end261_crit_edge:                   ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end261

do.end257:                                        ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.23, i32 noundef %call248, i32 noundef 242) #8
  br label %if.end261

if.end261:                                        ; preds = %do.end257, %do.body251.if.end261_crit_edge, %if.end240.if.end261_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d242) #5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d263) #5
  %42 = call ptr @memcpy(ptr %d263, ptr @__const.ws2401_power_on.d.67, i32 3)
  %43 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spi, align 4
  %call269 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -12, ptr noundef nonnull %d263, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end261.if.end282_crit_edge, label %do.body272

if.end261.if.end282_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

do.body272:                                       ; preds = %if.end261
  %call273 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.68, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %do.body272.if.end282_crit_edge, label %do.end278

do.body272.if.end282_crit_edge:                   ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

do.end278:                                        ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.23, i32 noundef %call269, i32 noundef 244) #8
  br label %if.end282

if.end282:                                        ; preds = %do.end278, %do.body272.if.end282_crit_edge, %if.end261.if.end282_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d263) #5
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %d284) #5
  %45 = call ptr @memcpy(ptr %d284, ptr @__const.ws2401_power_on.d.71, i32 9)
  %46 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spi, align 4
  %call290 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -11, ptr noundef nonnull %d284, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end282.if.end303_crit_edge, label %do.body293

if.end282.if.end303_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303

do.body293:                                       ; preds = %if.end282
  %call294 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.72, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %do.body293.if.end303_crit_edge, label %do.end299

do.body293.if.end303_crit_edge:                   ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end303

do.end299:                                        ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.23, i32 noundef %call290, i32 noundef 245) #8
  br label %if.end303

if.end303:                                        ; preds = %do.end299, %do.body293.if.end303_crit_edge, %if.end282.if.end303_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %d284) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d305) #5
  %48 = ptrtoint ptr %d305 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 335577088, ptr %d305, align 4
  %49 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spi, align 4
  %call311 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -10, ptr noundef nonnull %d305, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %if.end303.if.end324_crit_edge, label %do.body314

if.end303.if.end324_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end324

do.body314:                                       ; preds = %if.end303
  %call315 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.76, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %do.body314.if.end324_crit_edge, label %do.end320

do.body314.if.end324_crit_edge:                   ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end324

do.end320:                                        ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.23, i32 noundef %call311, i32 noundef 246) #8
  br label %if.end324

if.end324:                                        ; preds = %do.end320, %do.body314.if.end324_crit_edge, %if.end303.if.end324_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d305) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d326) #5
  %51 = ptrtoint ptr %d326 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %d326, align 1
  %52 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi, align 4
  %call332 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -57, ptr noundef nonnull %d326, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %tobool333.not = icmp eq i32 %call332, 0
  br i1 %tobool333.not, label %if.end324.if.end345_crit_edge, label %do.body335

if.end324.if.end345_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end345

do.body335:                                       ; preds = %if.end324
  %call336 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.80, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %do.body335.if.end345_crit_edge, label %do.end341

do.body335.if.end345_crit_edge:                   ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end345

do.end341:                                        ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.23, i32 noundef %call332, i32 noundef 199) #8
  br label %if.end345

if.end345:                                        ; preds = %do.end341, %do.body335.if.end345_crit_edge, %if.end324.if.end345_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d326) #5
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d347) #5
  %54 = call ptr @memcpy(ptr %d347, ptr @__const.ws2401_power_on.d.87, i32 17)
  %55 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spi, align 4
  %call353 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -25, ptr noundef nonnull %d347, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %if.end345.if.end366_crit_edge, label %do.body356

if.end345.if.end366_crit_edge:                    ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end366

do.body356:                                       ; preds = %if.end345
  %call357 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.84, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call357)
  %tobool358.not = icmp eq i32 %call357, 0
  br i1 %tobool358.not, label %do.body356.if.end366_crit_edge, label %do.end362

do.body356.if.end366_crit_edge:                   ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end366

do.end362:                                        ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.23, i32 noundef %call353, i32 noundef 231) #8
  br label %if.end366

if.end366:                                        ; preds = %do.end362, %do.body356.if.end366_crit_edge, %if.end345.if.end366_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d347) #5
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d368) #5
  %57 = call ptr @memcpy(ptr %d368, ptr @__const.ws2401_power_on.d.87, i32 17)
  %58 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spi, align 4
  %call374 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -22, ptr noundef nonnull %d368, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool375.not = icmp eq i32 %call374, 0
  br i1 %tobool375.not, label %if.end366.if.end387_crit_edge, label %do.body377

if.end366.if.end387_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end387

do.body377:                                       ; preds = %if.end366
  %call378 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.88, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %tobool379.not = icmp eq i32 %call378, 0
  br i1 %tobool379.not, label %do.body377.if.end387_crit_edge, label %do.end383

do.body377.if.end387_crit_edge:                   ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end387

do.end383:                                        ; preds = %do.body377
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.23, i32 noundef %call374, i32 noundef 234) #8
  br label %if.end387

if.end387:                                        ; preds = %do.end383, %do.body377.if.end387_crit_edge, %if.end366.if.end387_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d368) #5
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d389) #5
  %60 = call ptr @memcpy(ptr %d389, ptr @__const.ws2401_power_on.d.95, i32 17)
  %61 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi, align 4
  %call395 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -24, ptr noundef nonnull %d389, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call395)
  %tobool396.not = icmp eq i32 %call395, 0
  br i1 %tobool396.not, label %if.end387.if.end408_crit_edge, label %do.body398

if.end387.if.end408_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end408

do.body398:                                       ; preds = %if.end387
  %call399 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.92, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call399)
  %tobool400.not = icmp eq i32 %call399, 0
  br i1 %tobool400.not, label %do.body398.if.end408_crit_edge, label %do.end404

do.body398.if.end408_crit_edge:                   ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end408

do.end404:                                        ; preds = %do.body398
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.23, i32 noundef %call395, i32 noundef 232) #8
  br label %if.end408

if.end408:                                        ; preds = %do.end404, %do.body398.if.end408_crit_edge, %if.end387.if.end408_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d389) #5
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d410) #5
  %63 = call ptr @memcpy(ptr %d410, ptr @__const.ws2401_power_on.d.95, i32 17)
  %64 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %spi, align 4
  %call416 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -21, ptr noundef nonnull %d410, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call416)
  %tobool417.not = icmp eq i32 %call416, 0
  br i1 %tobool417.not, label %if.end408.if.end429_crit_edge, label %do.body419

if.end408.if.end429_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end429

do.body419:                                       ; preds = %if.end408
  %call420 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.96, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420)
  %tobool421.not = icmp eq i32 %call420, 0
  br i1 %tobool421.not, label %do.body419.if.end429_crit_edge, label %do.end425

do.body419.if.end429_crit_edge:                   ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end429

do.end425:                                        ; preds = %do.body419
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.23, i32 noundef %call416, i32 noundef 235) #8
  br label %if.end429

if.end429:                                        ; preds = %do.end425, %do.body419.if.end429_crit_edge, %if.end408.if.end429_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d410) #5
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d431) #5
  %66 = call ptr @memcpy(ptr %d431, ptr @__const.ws2401_power_on.d.103, i32 17)
  %67 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spi, align 4
  %call437 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -23, ptr noundef nonnull %d431, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call437)
  %tobool438.not = icmp eq i32 %call437, 0
  br i1 %tobool438.not, label %if.end429.if.end450_crit_edge, label %do.body440

if.end429.if.end450_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end450

do.body440:                                       ; preds = %if.end429
  %call441 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.100, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call441)
  %tobool442.not = icmp eq i32 %call441, 0
  br i1 %tobool442.not, label %do.body440.if.end450_crit_edge, label %do.end446

do.body440.if.end450_crit_edge:                   ; preds = %do.body440
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end450

do.end446:                                        ; preds = %do.body440
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.23, i32 noundef %call437, i32 noundef 233) #8
  br label %if.end450

if.end450:                                        ; preds = %do.end446, %do.body440.if.end450_crit_edge, %if.end429.if.end450_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d431) #5
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d452) #5
  %69 = call ptr @memcpy(ptr %d452, ptr @__const.ws2401_power_on.d.103, i32 17)
  %70 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %spi, align 4
  %call458 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -20, ptr noundef nonnull %d452, i32 noundef 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call458)
  %tobool459.not = icmp eq i32 %call458, 0
  br i1 %tobool459.not, label %if.end450.if.end471_crit_edge, label %do.body461

if.end450.if.end471_crit_edge:                    ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end471

do.body461:                                       ; preds = %if.end450
  %call462 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.104, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call462)
  %tobool463.not = icmp eq i32 %call462, 0
  br i1 %tobool463.not, label %do.body461.if.end471_crit_edge, label %do.end467

do.body461.if.end471_crit_edge:                   ; preds = %do.body461
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end471

do.end467:                                        ; preds = %do.body461
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.23, i32 noundef %call458, i32 noundef 236) #8
  br label %if.end471

if.end471:                                        ; preds = %do.end467, %do.body461.if.end471_crit_edge, %if.end450.if.end471_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d452) #5
  %internal_bl = getelementptr inbounds %struct.ws2401, ptr %ws, i32 0, i32 7
  %72 = ptrtoint ptr %internal_bl to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %internal_bl, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool473.not = icmp eq i8 %73, 0
  br i1 %tobool473.not, label %if.else, label %if.then474

if.then474:                                       ; preds = %if.end471
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d475) #5
  %74 = ptrtoint ptr %d475 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 44, ptr %d475, align 1
  %75 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %spi, align 4
  %call481 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -58, ptr noundef nonnull %d475, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call481)
  %tobool482.not = icmp eq i32 %call481, 0
  br i1 %tobool482.not, label %if.then474.if.end494_crit_edge, label %do.body484

if.then474.if.end494_crit_edge:                   ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end494

do.body484:                                       ; preds = %if.then474
  %call485 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.108, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call485)
  %tobool486.not = icmp eq i32 %call485, 0
  br i1 %tobool486.not, label %do.body484.if.end494_crit_edge, label %do.end490

do.body484.if.end494_crit_edge:                   ; preds = %do.body484
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end494

do.end490:                                        ; preds = %do.body484
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.23, i32 noundef %call481, i32 noundef 198) #8
  br label %if.end494

if.end494:                                        ; preds = %do.end490, %do.body484.if.end494_crit_edge, %if.then474.if.end494_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d475) #5
  br label %cleanup

if.else:                                          ; preds = %if.end471
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d496) #5
  %77 = ptrtoint ptr %d496 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %d496, align 1
  %78 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %spi, align 4
  %call502 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -58, ptr noundef nonnull %d496, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call502)
  %tobool503.not = icmp eq i32 %call502, 0
  br i1 %tobool503.not, label %if.else.if.end515_crit_edge, label %do.body505

if.else.if.end515_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end515

do.body505:                                       ; preds = %if.else
  %call506 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.111, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call506)
  %tobool507.not = icmp eq i32 %call506, 0
  br i1 %tobool507.not, label %do.body505.if.end515_crit_edge, label %do.end511

do.body505.if.end515_crit_edge:                   ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end515

do.end511:                                        ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.23, i32 noundef %call502, i32 noundef 198) #8
  br label %if.end515

if.end515:                                        ; preds = %do.end511, %do.body505.if.end515_crit_edge, %if.else.if.end515_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d496) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d517) #5
  %80 = ptrtoint ptr %d517 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 -23131, ptr %d517, align 2
  %81 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spi, align 4
  %call523 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -16, ptr noundef nonnull %d517, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call523)
  %tobool524.not = icmp eq i32 %call523, 0
  br i1 %tobool524.not, label %if.end515.if.end536_crit_edge, label %do.body526

if.end515.if.end536_crit_edge:                    ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end536

do.body526:                                       ; preds = %if.end515
  %call527 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_power_on._rs.115, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call527)
  %tobool528.not = icmp eq i32 %call527, 0
  br i1 %tobool528.not, label %do.body526.if.end536_crit_edge, label %do.end532

do.body526.if.end536_crit_edge:                   ; preds = %do.body526
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end536

do.end532:                                        ; preds = %do.body526
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.23, i32 noundef %call523, i32 noundef 240) #8
  br label %if.end536

if.end536:                                        ; preds = %do.end532, %do.body526.if.end536_crit_edge, %if.end515.if.end536_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d517) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end536, %if.end494, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_command_stackbuf(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dbi_command_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -128
  %call1 = tail call fastcc i32 @ws2401_power_on(ptr noundef %add.ptr.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_enable(ptr noundef %panel) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbi1 = getelementptr i8, ptr %panel, i32 -124
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %spi = getelementptr i8, ptr %panel, i32 -16
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %call3 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 41, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %entry
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_enable._rs, ptr noundef nonnull @__func__.ws2401_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %call3, i32 noundef 41) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_disable(ptr noundef %panel) #2 align 64 {
entry:
  %d = alloca [0 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbi1 = getelementptr i8, ptr %panel, i32 -124
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d) #5
  %spi = getelementptr i8, ptr %panel, i32 -16
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %call3 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 40, ptr noundef nonnull %d, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %entry
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_disable._rs, ptr noundef nonnull @__func__.ws2401_disable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end10_crit_edge, label %do.end

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %call3, i32 noundef 40) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %do.body.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d) #5
  call void @msleep(i32 noundef 25) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  %d14 = alloca [0 x i8], align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbi1 = getelementptr i8, ptr %panel, i32 -124
  %internal_bl = getelementptr i8, ptr %panel, i32 60
  %0 = ptrtoint ptr %internal_bl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %internal_bl, align 4, !range !236
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #5
  %2 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %d, align 1
  %spi = getelementptr i8, ptr %panel, i32 -16
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %call3 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -58, ptr noundef nonnull %d, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end12_crit_edge, label %do.body

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.body:                                          ; preds = %if.then
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_unprepare._rs, ptr noundef nonnull @__func__.ws2401_unprepare) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.if.end12_crit_edge, label %do.end

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %call3, i32 noundef 198) #8
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge, %if.then.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry.if.end13_crit_edge
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d14) #5
  %spi16 = getelementptr i8, ptr %panel, i32 -16
  %5 = ptrtoint ptr %spi16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi16, align 4
  %call20 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext 16, ptr noundef nonnull %d14, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end13.if.end33_crit_edge, label %do.body23

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.body23:                                        ; preds = %if.end13
  %call24 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_unprepare._rs.130, ptr noundef nonnull @__func__.ws2401_unprepare) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body23.if.end33_crit_edge, label %do.end29

do.body23.if.end33_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.23, i32 noundef %call20, i32 noundef 16) #8
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %do.body23.if.end33_crit_edge, %if.end13.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d14) #5
  call void @msleep(i32 noundef 120) #5
  %reset.i = getelementptr i8, ptr %panel, i32 32
  %7 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 1) #5
  %regulators.i = getelementptr i8, ptr %panel, i32 36
  %call.i = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @lms380kf01_480_800_mode) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.133) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %4 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %bpc, align 8
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 26
  %5 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 27
  %8 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height_mm, align 4
  %conv5 = zext i16 %9 to i32
  %height_mm7 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %height_mm7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5, ptr %height_mm7, align 4
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %11 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %bus_flags, align 8
  %call10 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull @ws2401_get_modes.bus_format, i32 noundef 1) #5
  tail call void @drm_mode_set_name(ptr noundef nonnull %call1) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 28
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ws2401_set_brightness(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %d = alloca [1 x i8], align 1
  %d14 = alloca [1 x i8], align 1
  %d35 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dbi1 = getelementptr inbounds %struct.ws2401, ptr %1, i32 0, i32 1
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %2 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.if.then_crit_edge

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.lor.lhs.false.i_crit_edge

backlight_is_blank.exit.i.lor.lhs.false.i_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl, align 8
  %phi.cast = trunc i32 %9 to i8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.else.i, %backlight_is_blank.exit.i.lor.lhs.false.i_crit_edge
  %retval.0.i.ph.ph = phi i8 [ %phi.cast, %if.else.i ], [ 0, %backlight_is_blank.exit.i.lor.lhs.false.i_crit_edge ]
  %10 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp2.not.i = icmp eq i32 %.pr, 0
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
  br i1 %tobool.i.not, label %if.else, label %backlight_is_blank.exit.if.then_crit_edge

backlight_is_blank.exit.if.then_crit_edge:        ; preds = %backlight_is_blank.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %backlight_is_blank.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #5
  %13 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %d, align 1
  %spi = getelementptr inbounds %struct.ws2401, ptr %1, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi, align 4
  %call5 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -58, ptr noundef nonnull %d, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then.if.end13_crit_edge, label %do.body

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.body:                                          ; preds = %if.then
  %call7 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_set_brightness._rs, ptr noundef nonnull @__func__.ws2401_set_brightness) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.if.end13_crit_edge, label %do.end

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.23, i32 noundef %call5, i32 noundef 198) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body.if.end13_crit_edge, %if.then.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #5
  br label %if.end56

if.else:                                          ; preds = %backlight_is_blank.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d14) #5
  %16 = ptrtoint ptr %d14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 44, ptr %d14, align 1
  %spi16 = getelementptr inbounds %struct.ws2401, ptr %1, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %spi16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi16, align 4
  %call20 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -58, ptr noundef nonnull %d14, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else.if.end33_crit_edge, label %do.body23

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.body23:                                        ; preds = %if.else
  %call24 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_set_brightness._rs.135, ptr noundef nonnull @__func__.ws2401_set_brightness) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body23.if.end33_crit_edge, label %do.end29

do.body23.if.end33_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.23, i32 noundef %call20, i32 noundef 198) #8
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %do.body23.if.end33_crit_edge, %if.else.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d14) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d35) #5
  %19 = ptrtoint ptr %d35 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %retval.0.i.ph.ph, ptr %d35, align 1
  %20 = ptrtoint ptr %spi16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi16, align 4
  %call41 = call i32 @mipi_dbi_command_stackbuf(ptr noundef %dbi1, i8 noundef zeroext -60, ptr noundef nonnull %d35, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end33.if.end54_crit_edge, label %do.body44

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.body44:                                        ; preds = %if.end33
  %call45 = call i32 @___ratelimit(ptr noundef nonnull @ws2401_set_brightness._rs.138, ptr noundef nonnull @__func__.ws2401_set_brightness) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body44.if.end54_crit_edge, label %do.end50

do.body44.if.end54_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef %call41, i32 noundef 196) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %do.body44.if.end54_crit_edge, %if.end33.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d35) #5
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.end13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !40, !41, !43, !44, !46, !48, !49, !50, !51, !52, !53, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !201, !202, !203, !204, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__initcall__kmod_panel_widechips_ws2401__312_437_ws2401_driver_init6, !1, !"__initcall__kmod_panel_widechips_ws2401__312_437_ws2401_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 437, i32 1}
!2 = !{ptr @__exitcall_ws2401_driver_exit, !1, !"__exitcall_ws2401_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 439, i32 1}
!5 = !{ptr @__UNIQUE_ID_description314, !6, !"__UNIQUE_ID_description314", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 440, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 441, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 433, i32 11}
!12 = !{ptr @ws2401_driver, !13, !"ws2401_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 429, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 359, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 360, i32 29}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 365, i32 34}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 367, i32 34}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 370, i32 34}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 375, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 388, i32 5}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 391, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ws2401_probe.__UNIQUE_ID_ddebug309, !29, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 393, i32 40}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 397, i32 5}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 399, i32 3}
!40 = !{ptr @ws2401_probe.__UNIQUE_ID_ddebug310, !39, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 405, i32 2}
!43 = !{ptr @ws2401_probe.__UNIQUE_ID_ddebug311, !42, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!44 = !{ptr @ws2401_dbi_read_commands, !45, !"ws2401_dbi_read_commands", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 50, i32 17}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 137, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ws2401_power_on._entry, !47, !"_entry", i1 false, i1 false}
!52 = !{ptr @ws2401_power_on._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 149, i32 2}
!55 = !{ptr @ws2401_power_on.__UNIQUE_ID_ddebug308, !54, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 155, i32 2}
!58 = !{ptr @ws2401_power_on._rs, !57, !"_rs", i1 false, i1 false}
!59 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ws2401_power_on._entry.22, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @ws2401_power_on._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ws2401_power_on._rs.25, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 156, i32 2}
!64 = !{ptr @ws2401_power_on._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ws2401_power_on._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ws2401_power_on._rs.28, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 160, i32 2}
!68 = !{ptr @ws2401_power_on._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ws2401_power_on._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @ws2401_power_on._rs.32, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 162, i32 2}
!72 = !{ptr @ws2401_power_on._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ws2401_power_on._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ws2401_power_on._rs.36, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 164, i32 2}
!76 = !{ptr @ws2401_power_on._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ws2401_power_on._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ws2401_power_on._rs.40, !79, !"_rs", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 166, i32 2}
!80 = !{ptr @ws2401_power_on._entry.41, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ws2401_power_on._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @ws2401_power_on._rs.44, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 167, i32 2}
!84 = !{ptr @ws2401_power_on._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ws2401_power_on._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @ws2401_power_on._rs.48, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 168, i32 2}
!88 = !{ptr @ws2401_power_on._entry.49, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ws2401_power_on._entry_ptr.50, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @ws2401_power_on._rs.52, !91, !"_rs", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 170, i32 2}
!92 = !{ptr @ws2401_power_on._entry.53, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ws2401_power_on._entry_ptr.54, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @ws2401_power_on._rs.56, !95, !"_rs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 172, i32 2}
!96 = !{ptr @ws2401_power_on._entry.57, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ws2401_power_on._entry_ptr.58, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @ws2401_power_on._rs.60, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 173, i32 2}
!100 = !{ptr @ws2401_power_on._entry.61, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ws2401_power_on._entry_ptr.62, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @ws2401_power_on._rs.64, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 179, i32 2}
!104 = !{ptr @ws2401_power_on._entry.65, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ws2401_power_on._entry_ptr.66, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ws2401_power_on._rs.68, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 181, i32 2}
!108 = !{ptr @ws2401_power_on._entry.69, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ws2401_power_on._entry_ptr.70, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ws2401_power_on._rs.72, !111, !"_rs", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 182, i32 2}
!112 = !{ptr @ws2401_power_on._entry.73, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ws2401_power_on._entry_ptr.74, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @ws2401_power_on._rs.76, !115, !"_rs", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 185, i32 2}
!116 = !{ptr @ws2401_power_on._entry.77, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ws2401_power_on._entry_ptr.78, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @ws2401_power_on._rs.80, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 186, i32 2}
!120 = !{ptr @ws2401_power_on._entry.81, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ws2401_power_on._entry_ptr.82, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @ws2401_power_on._rs.84, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 189, i32 2}
!124 = !{ptr @ws2401_power_on._entry.85, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ws2401_power_on._entry_ptr.86, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @ws2401_power_on._rs.88, !127, !"_rs", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 192, i32 2}
!128 = !{ptr @ws2401_power_on._entry.89, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ws2401_power_on._entry_ptr.90, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @ws2401_power_on._rs.92, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 195, i32 2}
!132 = !{ptr @ws2401_power_on._entry.93, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ws2401_power_on._entry_ptr.94, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @ws2401_power_on._rs.96, !135, !"_rs", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 198, i32 2}
!136 = !{ptr @ws2401_power_on._entry.97, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ws2401_power_on._entry_ptr.98, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @ws2401_power_on._rs.100, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 201, i32 2}
!140 = !{ptr @ws2401_power_on._entry.101, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ws2401_power_on._entry_ptr.102, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @ws2401_power_on._rs.104, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 204, i32 2}
!144 = !{ptr @ws2401_power_on._entry.105, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ws2401_power_on._entry_ptr.106, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @ws2401_power_on._rs.108, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 209, i32 3}
!148 = !{ptr @ws2401_power_on._entry.109, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ws2401_power_on._entry_ptr.110, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @ws2401_power_on._rs.111, !151, !"_rs", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 211, i32 3}
!152 = !{ptr @ws2401_power_on._entry.112, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ws2401_power_on._entry_ptr.113, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @ws2401_power_on._rs.115, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 217, i32 3}
!156 = !{ptr @ws2401_power_on._entry.116, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ws2401_power_on._entry_ptr.117, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.118, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 112, i32 3}
!160 = !{ptr @.str.119, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ws2401_read_mtp_id._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ws2401_read_mtp_id._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.121, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 117, i32 3}
!165 = !{ptr @ws2401_read_mtp_id._entry.120, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ws2401_read_mtp_id._entry_ptr.122, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.124, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 122, i32 3}
!169 = !{ptr @ws2401_read_mtp_id._entry.123, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @ws2401_read_mtp_id._entry_ptr.125, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.127, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 125, i32 2}
!173 = !{ptr @.str.128, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @ws2401_read_mtp_id._entry.126, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @ws2401_read_mtp_id._entry_ptr.129, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @ws2401_drm_funcs, !177, !"ws2401_drm_funcs", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 310, i32 37}
!178 = !{ptr @ws2401_enable._rs, !179, !"_rs", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 265, i32 2}
!180 = !{ptr @__func__.ws2401_enable, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ws2401_enable._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @ws2401_enable._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @ws2401_disable._rs, !184, !"_rs", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 249, i32 2}
!185 = !{ptr @__func__.ws2401_disable, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ws2401_disable._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @ws2401_disable._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @ws2401_unprepare._rs, !189, !"_rs", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 238, i32 3}
!190 = !{ptr @__func__.ws2401_unprepare, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @ws2401_unprepare._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @ws2401_unprepare._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @ws2401_unprepare._rs.130, !194, !"_rs", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 239, i32 2}
!195 = !{ptr @ws2401_unprepare._entry.131, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @ws2401_unprepare._entry_ptr.132, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @ws2401_get_modes.bus_format, !198, !"bus_format", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 280, i32 19}
!199 = !{ptr @.str.133, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 290, i32 3}
!201 = !{ptr @.str.134, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @ws2401_get_modes._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @ws2401_get_modes._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @lms380kf01_480_800_mode, !205, !"lms380kf01_480_800_mode", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 80, i32 38}
!206 = !{ptr @ws2401_bl_ops, !207, !"ws2401_bl_ops", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 334, i32 35}
!208 = !{ptr @ws2401_set_brightness._rs, !209, !"_rs", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 325, i32 3}
!210 = !{ptr @__func__.ws2401_set_brightness, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ws2401_set_brightness._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @ws2401_set_brightness._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @ws2401_set_brightness._rs.135, !214, !"_rs", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 327, i32 3}
!215 = !{ptr @ws2401_set_brightness._entry.136, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @ws2401_set_brightness._entry_ptr.137, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @ws2401_set_brightness._rs.138, !218, !"_rs", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 328, i32 3}
!219 = !{ptr @ws2401_set_brightness._entry.139, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @ws2401_set_brightness._entry_ptr.140, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @ws2401_bl_props, !222, !"ws2401_bl_props", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 338, i32 42}
!223 = !{ptr @ws2401_match, !224, !"ws2401_match", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/panel/panel-widechips-ws2401.c", i32 423, i32 34}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{!"auto-init"}
!235 = !{i64 2148181814, i64 2148181819, i64 2148181832, i64 2148181876, i64 2148181910, i64 2148181931}
!236 = !{i8 0, i8 2}
